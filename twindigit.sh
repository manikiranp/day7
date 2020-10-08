#!/bin/bash -x
#5

for (( i=1; i<=100; i++ ))
do
rem=$(($i%10))
quo=$(($i/10))
	if [ $rem -eq $quo ]; then
	num=$((($quo*10)+$rem))
	twin[$i]=$num
	fi
done
echo "${twin[@]}"
