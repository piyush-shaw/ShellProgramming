#!/bin/bash -x
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
conversion1=`$a+$b*$c`
conversion2=`$a%$b+$c`
conversion3=`$c+$a/$b`
conversion4=`$a*$b+$c`
if [ $conversion1 -lt $conversion2 ] && [ $conversion1 -lt $conversion3 ] && [ $conversion1 -lt $conversion4 ]
then
echo "$conversion1 is minimum"
elif [ $conversion2 -lt $conversion1 ] && [ $conversion2 -lt $conversion3 ] && [ $conversion2 -lt $conversion4 ]
then
echo "$conversion2 is minimum"
elif [ $conversion3 -lt $conversion1 ] && [ $conversion3 -lt $conversion2 ] && [ $conversion3 -lt $conversion4 ]
then
echo "$conversion3 is minimum"
else
echo "$conversion4 is minimum"
fi
if [ $conversion1 -gt $conversion2 ] && [ $conversion1 -gt $conversion3 ] && [ $conversion1 -gt $conversion4 ]
then
echo "$conversion1 is maximum"
elif [ $conversion2 -gt $conversion1 ] && [ $conversion2 -gt $conversion3 ] && [ $conversion2 -gt $conversion4 ]
then
echo "$conversion2 is maximum"
if [ $conversion3 -gt $conversion1 ] && [ $conversion3 -gt $conversion2 ] && [ $conversion3 -gt $conversion4 ]
then
echo "$conversion3 is maximum"
else
echo "$conversion4 is maximum"
fi
