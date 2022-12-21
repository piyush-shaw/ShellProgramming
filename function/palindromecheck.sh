#!/bin/bash -x
function isPalindrome() {
local temp=$1
rev=0
while [ $temp -ne 0 ]
do
rem=$(($temp%10))
rev=$(($rev*10+$rem))
temp=$(($temp/10))
done
echo $rev
}

function isPrime(){
checkNumber=$1
count=0
for((counter=2; counter<checkNumber; counter++))
do
if [ $((checkNumber%counter)) -eq 0 ]
then
count=$((count+1))
fi
done
if [ $count -eq 0 ]
then
echo "$checkNumber is prime"
else
echo "$checkNumber is not prime"
fi
}

read -p "Please select option 1)Prime check 2)Palindrome check 3)check 
palindrome is prime : " option
case $option in
1) read -p "enter the number to check prime : " primeNum
isPrime $primeNum
;;
2) read -p "Enter the number to check palindrome " palinNum
if [ $palinNum -eq $(isPalindrome $palinNum) ]
then
echo "$palinNum is palindrome number"
else
echo "$palinNum is not palindrome number"
fi
;;
3) read -p "enter the number to palindrome and prime : " primepalin
isPrime $(isPalindrome $primepalin)
;;
*) invalid option
;;
esac
