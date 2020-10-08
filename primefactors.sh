#!/bin/bash 

#3
#any factor of n is always less than n/2
read -p "Enter a number to get its prime factors: " n

for (( i=2; i<=$(($n/2)); i++ ))
do
        if [ $(($n%$i)) -eq 0 ]; then
                count=0
                for (( j=1; j<=$i; j++ ))
                do
                if [ $(($i%$j)) -eq 0 ]; then
                count=$(( $count+1 ))
                fi
                done
        fi
if [[ $count -eq 2 && $(($n%$i)) -eq 0 ]]; then       #1 and number itself
primefactors[$j]=$i
fi
done
echo "Prime factors of $n are: ${primefactors[@]}"






