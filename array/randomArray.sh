#!/bin/bash -x
declare -a random
for((i=0; i<10; i++))
do
random[i]=$((RANDOM%900+100))
done
maxElement=${random[0]}
secondMaxElement=${random[0]}
for((i=0; i<10; i++))
do
if [ ${random[$i]} -gt $maxElement ]
then
secondMaxElement=$maxElement
maxElement=${random[$i]}
elif [ ${random[$i]} -gt $secondMaxElement ]
then
secondMaxElement=${random[$i]}
fi
done
minElement=${random[0]}
secondMinElement=${random[0]}
for((i=0; i<10; i++))
do
if [ ${random[$i]} -lt $minElement ]
then
secondMinElement=$minElement
minElement=${random[$i]}
elif [ ${random[$i]} -lt $secondMinElement ]
then
secondMinElement=${random[$i]}
fi
done
echo ${random[@]}
echo "Second largest number = " $secondMaxElement
echo "Second smallest number = " $secondMinElement
