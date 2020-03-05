#!/bin/bash
source yadhelp.sh
source yadprojet.sh
source option.sh
test=1
ma=0 #Menu Again
while [[ $test == 1 ]]
do

	
			echo "bienvenue dans l'applicaation"


echo -e "1--Lister les utilisateurs"
echo -e "2--changer mot de passe"
echo -e "3--Decrypter"
echo -e "4--Restorer les donées "
echo -e "5--Afficher help"
echo -e "6--afficher avec menu graphique"
read choix
ma=1
			test=2
			if [[ $choix == 0 ]]; then
			test=2
			else
			case $choix in
			1 )
					y= sudo cat /etc/passwd | cut -d: -f1
					echo $y
			 ;;
			2 )
					echo -e "5--Saisir le nom d'utlisateru"
			read nomuser
			passwd $nomuser ;;
			3 )
					sudo unshadow /etc/passwd /etc/shadow > pass.txt
			john pass.txt
			john --show pass.txt | cut -d: -f1,2;;	
			4)	;;
			5 )
					cat help.txt ;;	
			6)		
					yprojet ;;		
			esac
			ma=1
			test=2
		fi
done
while [[ $ma ==  1 ]]; do
	#statements
	echo
	echo
	echo
	echo "Voulez-vous faire une autre tâche ?"
	echo "1)Oui"
	echo "2)Non"
	read leave
	echo
	echo
	echo
	clear
	if [[ $leave == 1 ]]; then
		#statements
	echo "bienvenue dans l'applicaation"

echo -e "1--Lister les utilisateurs"
echo -e "2--changer mot de passe"
echo -e "3--Decrypter"
echo -e "4--Restorer les donées "
echo -e "5--Afficher help"
echo -e "6--afficher avec menu graphique"
read choix

			if [[ $choix == 0 ]]; then
			ma=0
			else
			case $choix in
			1 )
					y= sudo cat /etc/passwd | cut -d: -f1
		echo $y
			 ;;
			2 )
					echo -e "5--Saisir le nom d'utlisateru"
			read nomuser
			passwd $nomuser ;;
			3 )
					sudo unshadow /etc/passwd /etc/shadow > pass.txt
			john pass.txt
			john --show pass.txt | cut -d: -f1,2 ;;	
			4)	;;
			5 )
					cat help.txt ;;	
			6)		
					yprojet;;				
			esac
			fi
	else
		ma=0;
	fi

done

