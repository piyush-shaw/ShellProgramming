#!/bin/bash -x
declare -a arr
temp=0
for((i=0; i<10; i++))
do
arr[$i]=$((100+RANDOM%900))
done
for((i=0; i<10; i++))
do
for((j=$(($i+1)); j<10; j++))
do
if [ ${arr[$i]} -gt ${arr[$j]} ]
then
temp=${arr[$i]}
arr[$i]=${arr[$j]}
arr[$j]=$temp
fi
done
done
echo ${arr[@]}
echo "second largest number = ${arr[8]}"
echo "second smallest number = ${arr[1]}"

