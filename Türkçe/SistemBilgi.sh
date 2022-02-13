#!/bin/bash
#Sistemden bazi bilgileri alalim...

username=$(whoami)

echo "Kullanici Adiniz : $username:"

echo "Tarih :$(date)"

saat=$(date +' %H')
dakika=$(date +' %M')
saniye=$(date +' %S')

echo "saat : $saat dakika : $dakika saniye : $saniye"

# gun ay yil gibi bilgileri alalim ...

gun=$(date +'%d')
ay=$(date +' %m')
yil=$(date +'%Y')

echo Gun : $gun
sleep 2
echo AY : $ay
sleep 2
echo YIL : $yil


