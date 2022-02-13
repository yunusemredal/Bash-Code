#!/bin/bash
clear
number1=0
number2=0

echo -n "First number"
read number1
echo -n "Second number"
read number2
 
 echo "toplam : $((number1 + number2))"
 echo  "fark : $((number1 - number2))"
 echo  "tçarpim : $((number1 * number2))"
 echo  "bolme : $((number1 / number2))"
  echo  "mod : $((number1 % number2))"
 echo  "us : $((number1 ** number2))"

clear
echo   "Process DONE"
clear



