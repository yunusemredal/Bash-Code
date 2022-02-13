#!/bin/bash
#root = 0 , normal user = 1 
if [ $(id -u) -eq 1000 ];
    then
        read -p "User Name : "  username
        read -s -p "Password: " password
        egrep "^$username" /etc/passwd > /dev/null
        if [ $? -eq 0 ];
            then 
                echo "This username have in system. $username "
                exit 1 
        else
            pass=$(perl -e 'print crypy($ARGV[0]), "password")' $password)
            useradd -m -p $pass $username
            [ $? -eq 0 ] && echo "User added in the system... " || echo "This user couldn't add the system."
        fi
else 
    echo "Please access the root user...."
    exit 2 
fi