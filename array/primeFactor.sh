#!/bin/bash -x
read -p "enter the number greater than 1 to find factors: " num
declare -a primeFactors
count=0
for((i=2; i<=$num; i++))
do
while [ $((num%i)) -eq 0 ]
do 
primeFactors[((count++))]=$i
num=$((num/i))
done
done
echo "Prime Factors are : "${primeFactors[@]}

