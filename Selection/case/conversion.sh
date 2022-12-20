#!/bin/bash -x
read -p "Enter the source unit : " srcunit
read -p "Enter the destination unit : " destunit
read -p "Enter the value : " value
ft=feet
in=inches
m=meter

case "$srcunit-$destunit" in
$ft-$in) value1=$(($value*12))
;;
$in-$ft) value2=$(($value/12))
;;
$ft-$m) value3=$(awk "BEGIN{print($value*1000/3280)}")
;;
$m-$ft) value4=$(awk "BEGIN{print($value*3.280)}")
;;
*) echo "cant do conversion"
;;
esac
