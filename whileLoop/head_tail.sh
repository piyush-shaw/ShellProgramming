#!/bin/bash -x
wins=0
head_count=0
tail_count=0
while [ $wins -lt 11 ]
do
flip=$((RANDOM%2))
if [ $flip -eq 0 ]
then
head_count=$(($head_count+1))
else
tail_count=$(($tail_count+1))
fi
wins=$(($wins+1))
done
echo "tail occuring times : $tail_count"
echo "head occuring times : $head_count"

