#!/bin/bash

source Parameters.sh
source Parameters_two.sh $varnames

PRU=changes_${par}.txt
PRU1=changes_${varnames}.txt

if [ $# -eq 0 ]; then
        for par in "${!parameters[@]}"; do
                for VAL in "${!parameters[$par]}"; do
                        LOG=log_${par}_${VAL}.txt
                        echo $par $VAL
                        cmsRun PPD_RunIISummer20UL17SIM_0_cfg.py paramNames=$par paramValues=$VAL >& $LOG
                        echo $VAL $(grep "Total loop" $LOG | tail -n 1 | rev | cut -d' ' -f1 | rev) | tee -a $PRU
                done
        done
else
        for VAL in "${!parameters[$varnames]}"; do
                LOG=log_${varnames}_${VAL}.txt
                echo $varnames $VAL
                cmsRun PPD_RunIISummer20UL17SIM_0_cfg.py paramNames=$varnames paramValues=$VAL >& $LOG
                echo $VAL $(grep "Total loop" $LOG | tail -n 1 | rev | cut -d' ' -f1 | rev) | tee -a $PRU1
        done
fi

