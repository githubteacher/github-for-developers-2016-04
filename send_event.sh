#!/bin/bash
count=$1

for i in {1..100}
#for i in {1..$count}
#for { set i 1 } { $i < $count}
do
   #echo "Welcome $i times"
	let "SEQ=i % 3"
	echo "SEQ=" $SEQ
	logger -p user.info -t MPP_Test -i "DEGRADED: MPP_Test: 50$SEQ # PSR Situation Test"
	sleep 5
	logger -p user.info -t MPP_Test -i "CRITICAL: MPP_Test: 50$SEQ # PSR Situation Test"
	sleep 5
	logger -p user.info -t MPP_Test -i "FATAL: MPP_Test: 50$SEQ # PSR Situation Test"
	sleep 5
done

