#!/bin/bash -x
echo "Think of any number between 1 to 100"
low=1
high=100
mid=0
mid=$(((low+high)/2))
notMagicNum=1
while [ $notMagicNum -eq 1 ]
do
if [ $low -eq $mid ]
then
notMagicNum=0
echo "The magic num is $low"
else
read -p "the number is less than $mid (y/n): " choice
fi
if [ "$choice" == "y" ]
then
high=$mid
elif [ "$choice" == "n" ]
then
low=$mid
else
echo "Invalid choice"
fi
mid=$(((low+high)/2))
done
