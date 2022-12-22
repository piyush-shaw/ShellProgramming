#!/bin/bash -x
declare -A same_month
select_month=$((RANDOM%12+1))
case $select_month in
1) month="january"
;;
2) month="february"
;;
3) month="march"
;;
4) month="april"
;;
5) month="may"
;;
6) month="june"
;;
7) month="july"
;;
8) month="august"
;;
9) month="september"
;;
10) month="october"
;;
11) month="november"
;;
12) month="december"
;;
*) echo "Invalid option"
;;
esac
echo "Indiviual having birthdays on $month are "
j=0
for((i=0; i<=50; i++))
do
birthMonth=$((RANDOM%12+1))
if [ $birthMonth -eq $select_month ]
then
same_month[$j]="Person "$i""
j=$(($j+1))
fi
done
echo ${same_month[@]}
