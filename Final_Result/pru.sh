#!/bin/bash
source Parameters_three.sh ${args[0]} ${args[1]}

for VAL in "${!parameters[${args[0]}]}"; do
        for val in "${!parameters[${args[1]}]}";do
                LOG=log_${args[0]}_and_${args[1]}_${VAL}_${val}.txt
                PRU1=changes_${args[0]}_and_${args[1]}.txt
                echo ${args[0]} ${args[1]} $VAL $val
                cmsRun PPD_RunIISummer20UL17SIM_0_cfg.py paramNames=${args[0]}, ${args[1]} paramValues=$VAL, $val >& $LOG
                echo $VAL $val $(grep "Total loop" $LOG | tail -n 1 | rev | cut -d' ' -f1 | rev) | tee -a $PRU1
        done
done
