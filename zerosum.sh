#!/bin/bash 
#4
read -p "Enter total number to be input:" n
echo "Enter the integers: "
read -a arr
echo ${arr[@]}
IFS=$'\n' sorted=($(sort <<<"${arr[*]}"))
echo "${sorted[@]}"

for (( i=0; i<=$(($n-2)); i++ ))
do
	for (( j=$(($i+1)); j<=$(($n-1)); j++ ))
	do
		for (( k=$(($j+1)); k<=$n; k++ ))
		do
		x=$((${arr[i]}+${arr[j]}))
		if [ $(($x+${arr[k]})) -eq 0 ]; then
		echo "${arr[i]} ${arr[j]} ${arr[k]}"
		fi
		done
	done
done
