#!/bin/bash

NCPU=$(cat /proc/cpuinfo | grep processor | wc -l)
# check for hyperthreading
if grep -q " ht " /proc/cpuinfo; then
	NCPU=$((NCPU/2))
fi

for VAL in 0.015 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5; do
	# use other CPUs
	declare -A PIDS
	for ((busy=2;busy<=$NCPU;busy++)); do
		yes >& /dev/null &
		PIDS[$busy]=$!
	done

	LOG=log_${VAL/0./}.txt
	cmsRun varyParam.py $VAL >& $LOG
	echo $VAL $(grep "Total loop" $LOG | tail -n 1 | rev | cut -d' ' -f1 | rev)

	# kill busy processes
	for PID in ${PIDS[@]}; do
		kill $PID >& /dev/null
		wait $PID >& /dev/null
	done
done
