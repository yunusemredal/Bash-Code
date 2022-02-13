#!/bin/bash

clear 


function cikarma {
		cikarma=$((sayi1-sayi2))
		echo $sayi1 "-" $sayi2 "=" $cikarma
		}
function carpma {
		if [ $sayi1 == '0' ] || [ $sayi2 == '0' ];
			then 
			  	echo "Sonuç : 0"
			else
				carpma=$(( sayi1 * sayi2 ))
				echo $sayi1 "*" $sayi2 "=" $carpma
		fi
		}
function bolme { 
		if [ $sayi2 == 0  ];
			then 
		  		echo "Sonuç : Tanımsız !"
			else
				bolme=$((sayi1/sayi2))
				echo $sayi1 "/" $sayi2 "=" $bolme
		fi
		}	
function toplama {
		toplama=$((sayi1+sayi2))
		echo $sayi1 "+" $sayi2 "=" $toplama
		}	
function ustAlma {
		ustAlma=$((sayi1**sayi2))
		echo $sayi1 "^" $sayi2 "=" $ustAlma
		}
while (true)

do

echo "Lütfen 1.sayının değerini giriniz :  "

read sayi1

echo "Lütfen 2.sayının değerini giriniz :  "

read sayi2

sleep 1

echo "*******************************"
echo "Lütfen bir işlem seçiniz:  "
echo " Toplama İşlemi için 1"
echo " Çıkarma İşlemi için 2"
echo " Çarpma İşlemi İçin 3"
echo " Bölme İşlemi İçin 4"
echo " Üs Alma işlemi için 5 "
echo "*******************************"

read islem

sleep 1

echo "*******************************"

case $islem in

	1) echo "Toplama İşlemi Sonucunda:"
		toplama;
	    ;;

	2) echo "Çıkarma İşlemi Sonucunda:"
		cikarma;
	    ;;

	3) echo "Çarpma İşlemi Sonucunda:"
		carpma;
	    ;;

	4) echo "Bölme İşlemi Sonucunda:"
		bolme;
	    ;;

	5) echo "Üs Alma İşlemi Sonucunda:"
		ustAlma;
	    ;;

	*) echo "Uygun değer girilmedi..."
	   echo "1 ile 5  arasında  değer girilmeli..."
esac

sleep 1

echo "Tekrar hesaplama yapmak ister misiniz?  Evet(E) Hayır(H)"
read devam
clear
if [ $devam == 'H' ];
then
	break
fi
done

echo "Uygulamayı Kullandığınız İçin Teşekkür Ederiz..."
echo "Uygulamadan Çıkış Yapılıyor"
sleep 3 
echo "##########_ %99"
sleep 2
echo"####### %100 DONE "
clear
