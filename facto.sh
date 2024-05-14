#! /bin/bash

RESULT=1
STEP=$1

echo "USING FOR/ACC"
for((i=1; $STEP+1 - $i;i++)); do
 CURRENT=$(($i * $RESULT))
 if [ $CURRENT -gt $2 ]; then
    exit 0
 fi
 echo $CURRENT
 RESULT=$CURRENT
done

RESULT=1
echo "USING FOR/IN"
for i in $(seq 1 $STEP); do
 CURRENT=$(($i * $RESULT))
 if [ $CURRENT -gt $2 ]; then
    exit 0
 fi
 echo $CURRENT
 RESULT=$CURRENT
done
