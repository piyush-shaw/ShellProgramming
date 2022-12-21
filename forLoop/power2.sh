#!/bin/bash -x
read -p "Enter the nth number :" n
for(( count=0; count<n; count++))
do
echo $((2**count))
done

