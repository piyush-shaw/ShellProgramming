#!/bin/bash -x
a=$((100 + RANDOM%900))
b=$((100 + RANDOM%900)) 
c=$((100 + RANDOM%900)) 
d=$((100 + RANDOM%900)) 
e=$((100 + RANDOM%900))
if [ $a -lt $b ] && [ $a -lt $c ] && [ $a -lt $d ] && [ $a -lt $e ]
then
echo "$a is minimum value"
else
echo "$a is maximum value"
fi
if[ $b -lt $a ] && [ $b -lt $c ] && [ $b -lt $d ] && [ $b -lt $e ]
then
echo "$b is minimum value"
else      
echo "$b is maximum value"
fi
if[ $c -lt $a ] && [ $c -lt $b ] && [ $c -lt $d ] && [ $c -lt $e ]
then
echo "$c is minimum value"
else
echo "$c is maximum value"
fi
if[ $d -lt $a ] && [ $d -lt $b ] && [ $d -lt $c ] && [ $d -lt $e ]
then
echo "$d is minimum value"
else
echo "$d is maximum value"
fi
if[ $e -lt $a ] && [ $e -lt $b ] && [ $e -lt $c ] && [ $e -lt $d ]
then
echo "$e is minimum value"
else
echo "$e is maximum value"
fi
