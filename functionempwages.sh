#!/bin/bash -x

part_time=1
full_time=2
max_hrs_in_month=100
rate_per_hr=20
num_working_days=20

totalworkhrs=0
totalworkingdays=0

function getworkinghrs {
	case $1 in 
		$full_time)
			workhrs=8
			;;
		$part_time)
			workhrs=4
			;;
		*)
			workhrs=0
			;;
	esac
}
while [[ $totalworkhrs -lt $max_hrs_in_month && $totalworkingdays -lt $num_working_days ]]
do
	((totalworkingdays++))
	getworkinghrs $((RANDOM%3))
	totalworkhrs=$(($totalworkhrs + $workhrs))
done
totalsalary=$(($totalworkhrs * $totalworkhrs))

