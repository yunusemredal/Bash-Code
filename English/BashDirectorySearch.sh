#!/bin/bash
 echo "Please, enter the search directory .  "
 read directory




if [ -d "$directory" ]; then
	echo "This directory have in the system...."
	
else
	echo "This $directory no match... "
	
	echo -n "Want you build this directory. You wants press E if you don't want build directory press H   [E/H]:"


	read answer
	
	if [ "$answer" == "E" ]; then
	
		mkdir $directory
		echo "Directory build...."
	else
		echo "Directory can't build..."
	fi
fi

