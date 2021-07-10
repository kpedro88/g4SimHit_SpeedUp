import FWCore.ParameterSet.Config as cms
import sys
from PPD_RunIISummer20UL17SIM_0_cfg import process

class parameters:

        def __init__(self,name):
                self.name=name
                self.value=[v for v in float(sys.argv[2])]
        def Print(self):
                process.g4SimHits.MagneticField.ConfGlobalMFM.OCMS.StepperParam.self.name = cms.double(self.value[0])

p1=parameters('EnergyThSimple')
parameters.Print(p1)

