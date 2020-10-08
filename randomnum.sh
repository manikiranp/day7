#!/bin/bash 

#1
for (( i=0; i<=9; i++ ))
do
num[$i]=$(($RANDOM%900 +100))
printf  "${num[$i]}\n "
done

if [[ ${num[0]} -lt ${num[1]} ]]; then	#second largest element
first=${num[1]}
second=${num[0]}
else
first=${num[0]}
second=${num[1]}
fi

for (( i=2; i<=9; i++ ))
do
if [[ ${num[i]} -gt $first ]]; then
second=$first
first=${num[i]}
elif [[ ${num[i]} -gt $second ]]; then
second=${num[i]}
fi
done

if [[ ${num[0]} -lt ${num[1]} ]]; then	#second smallest element
small1=${num[0]}
small2=${num[1]}
else
small2=${num[0]}
small1=${num[1]}
fi

for (( i=2; i<=9; i++ ))
do
if [[ ${num[i]} -lt $small1 ]]; then
small2=$small1
small1=${num[i]}
elif [[ ${num[i]} -lt $small2 ]]; then
small2=${num[i]}
fi
done
echo "Second largest  number is: $second"
echo "Second smallest number is: $small2"



