#!/bin/bash -x
a=$((RANDOM%1000))
b=$((RANDOM%1000))
c=$((RANDOM%1000))
d=$((RANDOM%1000))
e=$((RANDOM%1000))
sum=$(($a+$b+$c+$d+$e))
echo $sum
avg=$((sum/5))
echo $avg
