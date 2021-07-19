#!/bin/bash

echo 'Enter the values: '
read val1 val2 val3
#echo $val1 $val2 $val3
my_array=()
my_array+=($val1 $val2 $val3)

for VAL in "${my_array[@]}"; do
        LOG=log_kevin_${VAL/0./}.txt
        ROOT=PPD-RunIISummer20UL17Sim-${VAL/0./}.root
        echo $1 $VAL
        cmsRun PPD_RunIISummer20UL17SIM_0_cfg.py paramNames=$1 paramValues=$VAL >& $LOG
        echo $VAL $(grep "Total loop" $LOG | tail -n 1 | rev | cut -d' ' -f1 | rev)
done
