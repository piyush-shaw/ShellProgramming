#!/bin/bash -x
echo "Addition of two ((RANDOM)) dice number"
dice1=$((RANDOM%6))
dice2=$((RANDOM%6))
sum=$(($dice1+$dice2))
echo $sum
