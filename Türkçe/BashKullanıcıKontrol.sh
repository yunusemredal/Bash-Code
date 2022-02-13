#!/bin/bash
if [ $(id -u) -eq 1000 ]; then  
    read -p "Kullanıcı Adınız : " username
    read -s -p " Şifreniz : " password 
    egrep "^$username" /etc/passwd > /dev/null
    if [ $? -eq 0 ];then
        echo "$username kullanıcı zaten var ..."
        exit 1 
    else
        pass=$(perl -e 'print crypt($ARGV[0]),"password")' $password)
        useradd -m -p $pass $username
        [ $? -eq 0 ] && echo "Kullanıcı eklendi ... " || echo "kullanıcı eklenemedi..."
    fi
else 
    echo " LÜTFEN ROOT OLARAK GİRİNİZ..."
    exit 2 
fi 


