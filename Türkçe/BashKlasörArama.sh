#!/bin/bash
 echo "Lütfen aradığınız dizini giriniz .  "
 read dizin 




if [ -d "$dizin" ]; then
	echo "bu dizin zaten sistemde mevcut..."
	
else
	echo "$dizin kulasörü bulunamadı..."
	
	echo -n "Klasörü oluşturmak ister misiniz [E/H]:"


	read cevap
	
	if [ "$cevap" == "E" ]; then
	
		mkdir $dizin
		echo "Klasör oluşturuldu..."
	else
		echo "Klasörü olşturmadık..."
	fi
fi

