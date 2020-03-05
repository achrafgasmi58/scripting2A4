#!/bin/bash
source yadprojet.sh
while getopts "dcrvhg"  option
do 
case $option in
d)	y= sudo cat /etc/passwd | cut -d: -f1
		echo $y ;;
c)	echo -e "5--Saisir le nom d'utlisateru"
			read nomuser
			passwd $nomuser ;;
r)	sudo unshadow /etc/passwd /etc/shadow > pass.txt
			john pass.txt
			john --show pass.txt | cut -d: -f1,2 ;;
v)	;;
h)	cat help.txt;;
g)	yprojet;;
esac	
done

