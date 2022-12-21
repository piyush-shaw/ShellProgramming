#!/bin/bash -x
gamble_money=100
bet_place=1
bet_won=0
bet_lose=0
bet_time=0
while [ $gamble_money -gt 0 ] && [ $gamble_money -lt 200 ] && [ $bet_place -eq 1 ]
do
flip=$((RANDOM%2))
if [ $flip -eq 0 ]
then
bet_won=$((bet_won+1))
else
gamble_money=$(($gamble_money-1))
bet_lose=$(($bet_lose+1))
fi
bet_time=$(($bet_time+1))
done
echo "Betting times: $bet_time "
echo "Bet-wons: $bet_wons"
