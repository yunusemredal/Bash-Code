#!/bin/bash
clear
#This program examples case loop. 
#Program need the number , if user enter the number case will be active . 
echo -n "Please enter the number:"

case $number in 
    1 ) echo "User enter the one"
        ;;
    2 ) echo "User enter the two"
        ;;
    3 ) echo "User enter the three"
        ;;
    *) echo "This value not true."
            echo "Please enter the 1-3 range number ."