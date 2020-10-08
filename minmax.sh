#!/bin/bash 

#2
echo "Ten random numbers:"
for (( i=0; i<=9; i++ ))
do
num[$i]=$(($RANDOM%900 +100))
printf "%s\n" "${num[$i]}"
done

echo "Random numbers after sorting:"
IFS=$'\n' sorted=($(sort <<<"${num[*]}")); unset IFS
printf "%s\n" "${sorted[@]}"

echo "2nd largest number : ${sorted[8]}"
echo "2nd smallest number: ${sorted[1]}"
