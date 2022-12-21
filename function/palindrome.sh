#!/bin/bash -x
read -p "Enter the number to check palindrome: " number
originalNumber=$number
function palindromeCheck() {
while [ $number -ne 0 ]
do
rem=$(($number%10))
rev=$((rev*10+rem))
number=$(($number/10))
done
echo $rev
if [ $originalNumber -eq $rev ]
then
echo "number is palindrome"
else
echo "number is not palindrome"
fi
}
echo result="$(palindromeCheck $number)"
