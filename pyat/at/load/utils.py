"""
Conversion utilities for creating pyat elements
"""
import numpy
from warnings import warn
from at.lattice import elements
from at.lattice.utils import AtWarning


CLASS_MAPPING = {'multipole': 'Multipole', 'quadrupole': 'Quadrupole',
                 'thinmultipole': 'ThinMultipole', 'sextupole': 'Sextupole',
                 'aperture': 'Aperture', 'm66': 'M66', 'rfcavity': 'RFCavity',
                 'corrector': 'Corrector', 'rf': 'RFCavity', 'bpm': 'Monitor',
                 'ap': 'Aperture', 'octupole': 'Octupole', 'dipole': 'Dipole',
                 'drift': 'Drift', 'bend': 'Dipole', 'ringparam': 'RingParam',
                 'quad': 'Quadrupole', 'sext': 'Sextupole', 'marker': 'Marker',
                 'monitor': 'Monitor'}

PASS_MAPPING = {'CorrectorPass': 'Corrector', 'BendLinearPass': 'Dipole',
                'QuadLinearPass': 'Quadrupole', 'RFCavityPass': 'RFCavity',
                'CavityPass': 'RFCavity', 'ThinMPolePass': 'ThinMultipole',
                'Matrix66Pass': 'M66', 'BndMPoleSymplectic4Pass': 'Dipole',
                'BndMPoleSymplectic4RadPass': 'Dipole', 'DriftPass': 'Drift',
                'AperturePass': 'Aperture'}


def hasattrs(kwargs, *attributes):
    """Check if the element would have the specified attribute(s), i.e. if they
        are in kwargs; allows checking for multiple attributes in one go.

    Args:
        kwargs (dict): The dictionary of keyword arguments passed to the
                        Element constructor.
        attributes (iterable): A list of strings, the attribute names to be
                                checked.

    Returns:
        bool: A single boolean, True if the element has any of the specified
               attributes.
    """
    for attribute in attributes:
        if attribute in kwargs:
            return True
    return False


def find_class_name(kwargs, quiet=False):
    """Attempts to correctly identify the Class of the element from its kwargs.

    Args:
        kwargs (dict): The dictionary of keyword arguments passed to the
                        Element constructor.

    Returns:
        str: The guessed Class name, as a string.

    Raises:
        AttributeError: if the Class name found in kwargs is not a valid Class
                         in pyAT.
    """

    def low_order(key):
        polynom = numpy.array(kwargs[key], dtype=numpy.float64).reshape(-1)
        try:
            low = numpy.where(polynom != 0.0)[0][0]
        except IndexError:
            low = -1
        return low

    try:
        class_name = kwargs.pop('Class', '')
        return CLASS_MAPPING[class_name.lower()]
    except KeyError:
        if (quiet is False) and (class_name != ''):
            warn(AtWarning("Class '{0}' does not exist.\n{1}".format(class_name, kwargs)))
        fam_name = kwargs.get('FamName', '')
        try:
            return CLASS_MAPPING[fam_name.lower()]
        except KeyError:
            pass_method = kwargs.get('PassMethod', '')
            class_from_pass = PASS_MAPPING.get(pass_method)
            if class_from_pass is not None:
                return class_from_pass
            else:
                length = float(kwargs.get('Length', 0.0))
                if hasattrs(kwargs, 'FullGap', 'FringeInt1', 'FringeInt2',
                            'gK', 'EntranceAngle', 'ExitAngle'):
                    return 'Dipole'
                elif hasattrs(kwargs, 'Voltage', 'Frequency', 'HarmNumber',
                              'PhaseLag', 'TimeLag'):
                    return 'RFCavity'
                elif hasattrs(kwargs, 'Periodicity'):
                    return 'RingParam'
                elif hasattrs(kwargs, 'Limits'):
                    return 'Aperture'
                elif hasattrs(kwargs, 'M66'):
                    return 'M66'
                elif hasattrs(kwargs, 'K'):
                    return 'Quadrupole'
                elif hasattrs(kwargs, 'PolynomB', 'PolynomA'):
                    loworder = low_order('PolynomB')
                    if loworder == 1:
                        return 'Quadrupole'
                    elif loworder == 2:
                        return 'Sextupole'
                    elif loworder == 3:
                        return 'Octupole'
                    elif (pass_method.startswith('StrMPoleSymplectic4') or
                          (length > 0)):
                        return 'Multipole'
                    else:
                        return 'ThinMultipole'
                elif hasattrs(kwargs, 'KickAngle'):
                    return 'Corrector'
                elif length > 0.0:
                    return 'Drift'
                elif hasattrs(kwargs, 'GCR'):
                    return 'Monitor'
                else:
                    return 'Marker'


def element_from_dict(elem_dict, index=None, check=True, quiet=False):
    """return an AT element from a dictionary of attributes
    """

    def sanitise_class(index, class_name, kwargs):
        """Checks that the Class and PassMethod of the element are a valid
            combination. Some Classes and PassMethods are incompatible and
            would raise errors during calculation if left, so we raise an error
            here with a more helpful message.

        Args:
            index:          element index
            class_name:     Proposed class name
            kwargs (dict):  The dictionary of keyword arguments passed to the
                            Element constructor.

        Raises:
            AttributeError: if the PassMethod and Class are incompatible.
        """

        def error_message(message, *args):
            location = '' if index is None else 'Error in element {0}: '.format(index)
            return ''.join((location, 'PassMethod {0} is not compatible with '.format(pass_method),
                            message.format(*args), '\n{0}'.format(kwargs)))

        pass_method = kwargs.get('PassMethod')
        if pass_method is not None:
            pass_to_class = PASS_MAPPING.get(pass_method)
            length = float(kwargs.get('Length', 0.0))
            if (pass_method == 'IdentityPass') and (length != 0.0):
                raise AttributeError(error_message("length {0}.", length))
            elif pass_to_class is not None:
                if pass_to_class != class_name:
                    raise AttributeError(error_message("Class {0}.", class_name))
            elif class_name in ['Marker', 'Monitor', 'RingParam']:
                if pass_method != 'IdentityPass':
                    raise AttributeError(error_message("Class {0}.", class_name))
            elif class_name == 'Drift':
                if pass_method != 'DriftPass':
                    raise AttributeError(error_message("Class {0}.", class_name))

    class_name = find_class_name(elem_dict, quiet=quiet)
    if check:
        sanitise_class(index, class_name, elem_dict)
    cl = getattr(elements, class_name)
    # Remove mandatory attributes from the keyword arguments.
    elem_args = [elem_dict.pop(attr) for attr in cl.REQUIRED_ATTRIBUTES]
    element = cl(*elem_args, **elem_dict)
    return element
