function ring=thomx()
ring={...
       atmarker('DEBUT');...
     atrfcavity('RF',0,300000,500023113.724596,30,50000000);...
        atdrift('SD5B',0.74,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD5',0.06,'Energy',50000000);...
   atquadrupole('QP1',0.15,-3.044637,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD2',0.21,'Energy',50000000);...
   atquadrupole('QP2',0.15,7.621329,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD31',0.75375,'Energy',50000000);...
        atsbend('BEND',0.27646,0.785398,0,'MaxOrder',3,'ByError',0,'FullGap',0.02784,'FringeInt1',0.5,'FringeInt2',0.5,'EdgeEffect1',1,'EdgeEffect2',1,'R1',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'R2',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'T1',[0 0 0 0 0 0],'T2',[0 0 0 0 0 0],'Energy',50000000);...
        atdrift('SD3S2',0.125,'Energy',50000000);...
    atsextupole('SX1',1e-06,-6204968,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD3S',0.075,'Energy',50000000);...
   atquadrupole('QP31',0.15,-10.1375,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD3S',0.075,'Energy',50000000);...
    atsextupole('SX3',1e-06,-3115290,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD3S1',0.135,'Energy',50000000);...
   atquadrupole('QP41',0.15,2.401124,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD1S1B',0.06,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD1S1',0.19,'Energy',50000000);...
    atsextupole('SX2',1e-06,2381947,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD1S',0.075,'Energy',50000000);...
   atquadrupole('QP4',0.15,18.06677,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD2',0.21,'Energy',50000000);...
   atquadrupole('QP3',0.15,-16.92568,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD2SB',0.04,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD2S',0.195,'Energy',50000000);...
        atsbend('BEND',0.27646,0.785398,0,'MaxOrder',3,'ByError',0,'FullGap',0.02784,'FringeInt1',0.5,'FringeInt2',0.5,'EdgeEffect1',1,'EdgeEffect2',1,'R1',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'R2',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'T1',[0 0 0 0 0 0],'T2',[0 0 0 0 0 0],'Energy',50000000);...
        atdrift('SD0',0.1,'Energy',50000000);...
        atdrift('SD0',0.1,'Energy',50000000);...
        atsbend('BEND',0.27646,0.785398,0,'MaxOrder',3,'ByError',0,'FullGap',0.02784,'FringeInt1',0.5,'FringeInt2',0.5,'EdgeEffect1',1,'EdgeEffect2',1,'R1',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'R2',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'T1',[0 0 0 0 0 0],'T2',[0 0 0 0 0 0],'Energy',50000000);...
        atdrift('SD2S',0.195,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD2SB',0.04,'Energy',50000000);...
   atquadrupole('QP3',0.15,-16.92568,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD2',0.21,'Energy',50000000);...
   atquadrupole('QP4',0.15,18.06677,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD1S',0.075,'Energy',50000000);...
    atsextupole('SX2',1e-06,2381947,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD1S1',0.19,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD1S1B',0.06,'Energy',50000000);...
   atquadrupole('QP41',0.15,2.401124,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD3S1',0.135,'Energy',50000000);...
    atsextupole('SX3',1e-06,-3115290,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD3S',0.075,'Energy',50000000);...
   atquadrupole('QP31',0.15,-10.1375,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD3S',0.075,'Energy',50000000);...
    atsextupole('SX1',1e-06,-6204968,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD3S2',0.125,'Energy',50000000);...
        atsbend('BEND',0.27646,0.785398,0,'MaxOrder',3,'ByError',0,'FullGap',0.02784,'FringeInt1',0.5,'FringeInt2',0.5,'EdgeEffect1',1,'EdgeEffect2',1,'R1',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'R2',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'T1',[0 0 0 0 0 0],'T2',[0 0 0 0 0 0],'Energy',50000000);...
        atdrift('SD31',0.75375,'Energy',50000000);...
   atquadrupole('QP2',0.15,7.621329,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD2',0.21,'Energy',50000000);...
   atquadrupole('QP1',0.15,-3.044637,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD5',0.06,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD5B',0.74,'Energy',50000000);...
       atmarker('SEPT');...
        atdrift('SD5B',0.74,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD5',0.06,'Energy',50000000);...
   atquadrupole('QP1',0.15,-3.044637,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD2',0.21,'Energy',50000000);...
   atquadrupole('QP2',0.15,7.621329,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD31',0.75375,'Energy',50000000);...
        atsbend('BEND',0.27646,0.785398,0,'MaxOrder',3,'ByError',0,'FullGap',0.02784,'FringeInt1',0.5,'FringeInt2',0.5,'EdgeEffect1',1,'EdgeEffect2',1,'R1',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'R2',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'T1',[0 0 0 0 0 0],'T2',[0 0 0 0 0 0],'Energy',50000000);...
        atdrift('SD3S2',0.125,'Energy',50000000);...
    atsextupole('SX1',1e-06,-6204968,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD3S',0.075,'Energy',50000000);...
   atquadrupole('QP31',0.15,-10.1375,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD3S',0.075,'Energy',50000000);...
    atsextupole('SX3',1e-06,-3115290,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD3S1',0.135,'Energy',50000000);...
   atquadrupole('QP41',0.15,2.401124,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD1S1B',0.06,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD1S1',0.19,'Energy',50000000);...
    atsextupole('SX2',1e-06,2381947,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD1S',0.075,'Energy',50000000);...
   atquadrupole('QP4',0.15,18.06677,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD2',0.21,'Energy',50000000);...
   atquadrupole('QP3',0.15,-16.92568,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD2SB',0.04,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD2S',0.195,'Energy',50000000);...
        atsbend('BEND',0.27646,0.785398,0,'MaxOrder',3,'ByError',0,'FullGap',0.02784,'FringeInt1',0.5,'FringeInt2',0.5,'EdgeEffect1',1,'EdgeEffect2',1,'R1',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'R2',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'T1',[0 0 0 0 0 0],'T2',[0 0 0 0 0 0],'Energy',50000000);...
        atdrift('SD0',0.1,'Energy',50000000);...
        atdrift('SD0',0.1,'Energy',50000000);...
        atsbend('BEND',0.27646,0.785398,0,'MaxOrder',3,'ByError',0,'FullGap',0.02784,'FringeInt1',0.5,'FringeInt2',0.5,'EdgeEffect1',1,'EdgeEffect2',1,'R1',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'R2',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'T1',[0 0 0 0 0 0],'T2',[0 0 0 0 0 0],'Energy',50000000);...
        atdrift('SD2S',0.195,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD2SB',0.04,'Energy',50000000);...
   atquadrupole('QP3',0.15,-16.92568,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD2',0.21,'Energy',50000000);...
   atquadrupole('QP4',0.15,18.06677,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD1S',0.075,'Energy',50000000);...
    atsextupole('SX2',1e-06,2381947,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD1S1',0.19,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD1S1B',0.06,'Energy',50000000);...
   atquadrupole('QP41',0.15,2.401124,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD3S1',0.135,'Energy',50000000);...
    atsextupole('SX3',1e-06,-3115290,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD3S',0.075,'Energy',50000000);...
   atquadrupole('QP31',0.15,-10.1375,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD3S',0.075,'Energy',50000000);...
    atsextupole('SX1',1e-06,-6204968,'Energy',50000000);...
    atcorrector('HCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
    atcorrector('VCOR',1e-06,[0 0],'PolynomA',0,'PolynomB',0,'NumIntSteps',1,'MaxOrder',1,'Energy',50000000);...
        atdrift('SD3S2',0.125,'Energy',50000000);...
        atsbend('BEND',0.27646,0.785398,0,'MaxOrder',3,'ByError',0,'FullGap',0.02784,'FringeInt1',0.5,'FringeInt2',0.5,'EdgeEffect1',1,'EdgeEffect2',1,'R1',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'R2',[1 0 0 0 0 0;0 1 0 0 0 0;0 0 1 0 0 0;0 0 0 1 0 0;0 0 0 0 1 0;0 0 0 0 0 1],'T1',[0 0 0 0 0 0],'T2',[0 0 0 0 0 0],'Energy',50000000);...
        atdrift('SD31',0.75375,'Energy',50000000);...
   atquadrupole('QP2',0.15,7.621329,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD2',0.21,'Energy',50000000);...
   atquadrupole('QP1',0.15,-3.044637,'StrMPoleSymplectic4Pass','Energy',50000000);...
        atdrift('SD5',0.06,'Energy',50000000);...
       atmarker('BPMx');...
       atmarker('BPMz');...
        atdrift('SD5B',0.74,'Energy',50000000);...
       atmarker('FIN');...
};
end
