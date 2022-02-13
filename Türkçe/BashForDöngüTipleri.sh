#!/bin/bash

clear
#1 den başlayıp sayıyı beşer beşer artırarak ekrana çıktı verir. 
#for döngüsü : a..b..c , a ile b sayısı aralığı belirler. c sayısı ise artış hızını
for i in {1..30..5}
do
    echo $i
done
sleep 2 
clear

#terstenden olur . 
for j in {30..5..5}
do
    echo $j
done
sleep 2 
clear
#klasik for kullanımıda mevcuttur. 
for (( d=1; d<=10; d++ ))
do
    echo $d
done

sleep 2
clear
f=1 
harfler='A B C D E F G H I J K L M N O P R S T U V Y Z W '
#döngüye girecek verileri in kelimesinden sonra yazabilirsiniz. veya bir diziye atayıp kullanabilirsiniz. 
for gunler in Pazartesi Salı Çarşamba Perşembe Cuma Cumartesi Pazar 
do  
    echo $((f++)). gün $gunler
done
sleep 2
clear
t=1
for harf in $harfler
do 
    echo "kümede bulunan iligli harfler " $((t++)). harf: $harf
done
sleep 1
clear

y=0
#y sayısı 1 ve 10'a kadar tüm değerleri almasını belirtilmiştir. artış hızı ise do döngüsünde verilmiştir. 
for y in {1..10}
do
    p=$[$[ $RANDOM % 900 ] +100 ]
    
    echo $((y++)).sayi:$p
    sleep 1 
    l=$(( l + p ))
done 
echo toplam: $l 