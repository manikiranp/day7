#!/bin/bash -x

counter=0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Oranges"

echo ${Fruits[@]}
echo ${Fruits[0]}
echo ${Fruits[1]}
echo ${#Fruits[@]}	 #len of array
echo ${#Fruits}		#len of 1st element
echo ${#Fruits[1]}	#len of 2nd element
echo ${!Fruits[@]}	#prints key vaues


