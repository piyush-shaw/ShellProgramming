#!/bin/bash -x
declare -a arr
function arraySum() {
sum=0
for i in ${arr[@]}
do
sum=$((sum+i))
done
echo $sum
}
arr=(-1 -2 -3 1 2 3)
echo "Sum is : $(arraySum ${arr[@]})"
