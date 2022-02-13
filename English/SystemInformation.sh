#!/bin/bash
#Let's get  information from system...

username=$(whoami)

echo "User name : $username:"

echo "Date  :$(date)"

hours=$(date +' %H')
minute=$(date +' %M')
second=$(date +' %S')

echo "Hours : $hours Minute: $minute Second : $second"

# Let's get day, month and year data from system  ...

day=$(date +'%d')
month=$(date +' %m')
year=$(date +'%Y')

echo Day : $day
sleep 2
echo Month : $month
sleep 2
echo Year : $year


