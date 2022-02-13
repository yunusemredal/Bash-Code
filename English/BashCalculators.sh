#!/bin/bash

clear

function add {
    add=$((number1+number2))
    echo $number1 "+" $number2 "=" $add
}
function subtract {
    subtract=$((number1+number2))
    echo $number1 "-" $number2 "=" $subtract
}
function multiply {
    if [ $number1 == '0' ] || [ $number2 == '0'];
        then
            echo "Result is zero (0)"
        else
            multiply=$(( number1*number2))
            echo $number1 "*" $number2 "=" $multiply
    fi
}
function divide {
    if [ $number2 == 0 ] ||[ $number2 == 0 ];
        then
            echo "Result is Undefined because you enter the 0 "
        else
            divide=$((number1/number2))
            echo $number1 "/" $number2 "=" $divide
    fi
}
function squares {
    squares=$((number1**number2))
    echo $number1 "^" $number2 "=" $squares
}
while (true)

do

echo "if you run the divide and multiply function you dont enter the zero . "
echo "Please enter the first number ."
read number1
echo "Please enter the second number."
read number2

sleep 1 
echo "*******************************"
echo "Please select the action you want to do. "
echo "1 for adding process"
echo "2 for subtract process"
echo "3 for multiply process"
echo "4 for divide process"
echo "5 for squares process"
echo "*******************************"
read process

sleep 1 
echo "*******************************"
echo "Process will be start soon"
echo "*******************************"

case $process in 
    1) echo "Adding process result: "
        add;
        ;;
    2) echo "Subtract process result:"
        subtract;
        ;;
    3) echo "Multiply process result;"
        multiply;
        ;;
    4) echo "Divide process result:"
        divide;
        ;;
    5) echo "Squares process result:"
		squares;
        ;;
    *) echo "Please choose the true process... "
    
esac

sleep 2 

echo "Do you want run this program ? "
echo "İf you say yes press E or you say no press H."
read again
clear
  if [ $again == 'H' ];
  then
    break
  fi
done

echo "*******************************"
echo "Thanks for choosing us.. "
echo "Program will be soon cloesed."
sleep 3 
echo "#########_ %90"
sleep 1 
echo "########## %100 "
echo "DONE"
sleep 1 
clear