#!/bin/bash -x
#4
read -p "Enter total number to be input:" num
echo "Enter the integers: "
read -a arr
echo ${arr[@]
IFS=$'' sorted=($(sort <<<"${arr[@]}")); unset IFS
printf "%s\n" "${sorted[@]}"

for (( i=0; i<=$(($n-2)); i++ ))
do
	for (( j=(($i+1)); j<=(($n-1)); j++ ))
	do
		for (( k=(($j+1)); k<=$n; k++ ))
		do
		if [ $((${arr[i]}+${arr[j]}+${arr[k]} -eq 0 ]; then
		echo "${arr[i]} ${arr[j]} ${arr[k]}"
		fi
		done
	done
done
