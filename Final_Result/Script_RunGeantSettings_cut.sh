#!/bin/bash

source CutsParameters.sh

for CUTS in "${!parameters[CutsPerRegion]}"; do
        for VAL in "${!parameters[DefaultCutValue]}";do
                LOG=log_${CutsPerRegion}_and_${DefaultCutValue}_${CUTS}_${VAL}.txt
                LOG_CUT=changes_${CutsPerRegion}_and_${DefaultCutValue}.txt
                echo ${CutsPerRegion} ${DefaultCutValue} $CUTS $VAL
                python PPD_RunIISummer20UL17SIM_0_cfg.py dump=1  paramNames=${CutsPerRegion},${DefaultCutValue} paramValues=$CUTS,$VAL >& $LOG
                echo $CUTS $VAL $(grep "Total loop" $LOG | tail -n 1 | rev | cut -d' ' -f1 | rev) | tee -a $LOG_CUT
        done
done
