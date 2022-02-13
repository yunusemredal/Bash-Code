#!/bin/bash

clear 

echo -n "Bir sayı yazınız:"
read sayi

case $sayi in 
    1 ) echo "1 sayısı"
            ;;
    2 ) echo "2 "
            ;;
    3 ) echo "3 "
            ;;
    *) echo "Uygun değer girmediniz. "
        echo "1-3 arasında değer yazınız. "
        

