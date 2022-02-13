#!/bin/bash
clear 
function ornekfonksiyon() {
    value=25
}
ornekfonksiyon
echo $value

sleep 1 

 function ornekfonksiyon1(){
     local value1=32 
     local parametre=$1
     eval $parametre=$value1
 }
ornekfonksiyon1 bilgi

echo $bilgi

sleep 1

function ornekfonksiyon2(){
    local value2=Merhaba
    local parametre1=$1
    if [ $parametre1 ]; then
        eval $parametre1=$value2
    
    fi 
    
}
ornekfonksiyon2 bilgi #bilgi değişkenine değer aldık. 

echo $bilgi

sonuc=$(ornekfonksiyon2)
echo $sonuc
sleep 1

#global değişken örneği  x ve y 

x=200
y=100

function hesapla(){
    local x=$1
    local y=$2
    echo $(( $x + $y ))


}

# global değişkenleri ekrana yazdır... 

echo "x:$x y:$y"



echo "hesapla() fonksiyonun çağırıyorum x:5,  y:10 göndereceğim "
sleep 1 

hesapla 5 10

echo "x:$x ve y:$y hesaplandıktan sonraki durum... "

echo $(( $x + $y ))
