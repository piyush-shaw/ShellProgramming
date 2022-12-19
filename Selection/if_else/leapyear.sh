#!/bin/bash -x
read -p "enter the year(YYYY): " y
a=$(($y%4))
b=$(($y%100))
c=$(($y%400))
if [ $a -eq 0 ] && [ $b -ne 0 ] || [ $c -eq 0 ]
then
echo "$y is a leap year"
else
echo "$y is not a leap year"
fi


