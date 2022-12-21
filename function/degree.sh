#!/bin/bash -x
a=0.555
b=1.8
c=32
read -p "Please select option 1)C_to_F 2)F_to_C : " option
read -p "Enter the temperature: " degree
function deg_conversion(){
case $option in
1)
if [ $degree -gt 0 ] && [ $degree -lt 100 ]
then
tf=$(awk "BEGIN {print ($degree*$b)+$c}")
echo "$tf F"
else
echo "invalid input"
fi
;;
2)
if [ $degree -gt 32 ] && [ $degree -lt 212 ]
then
tc=$(awk "BEGIN {print ($degree-$c)*$a}")
echo "$tc C"
else
echo "invalid input"
fi
;;
*) echo "invalid option"
;;
esac
}
result=$(deg_conversion $option $degree)
echo $result

