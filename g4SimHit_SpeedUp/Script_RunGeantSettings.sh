#!/bin/bash

source Parameters_two.sh $varnames
echo ${my_array[@]}

for VAL in "${my_array[@]}"; do
        LOG=log_${varnames}_${VAL/0./}.txt
        ROOT=PPD-RunIISummer20UL17Sim-${VAL/0./}.root
        echo $varnames $VAL
        cmsRun PPD_RunIISummer20UL17SIM_0_cfg.py paramNames=$varnames paramValues=$VAL >& $LOG
        echo $VAL $(grep "Total loop" $LOG | tail -n 1 | rev | cut -d' ' -f1 | rev)
done
