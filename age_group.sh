#/usr/bin/bash

while [[ 1 -gt 0 ]]
do
	echo "enter your name:"
	read name
	if [[ $name == '' ]]
	then
		echo "bye"
		exit
	fi
	echo "enter your age:"
	read age
	if [[ $age -eq 0 ]]
	then
		echo "bye"
		exit
	fi
	group=""
	case $age in
		[1-9|[1][0-6]) group="child"
		;;
		[1][7-9]|[2][0-5]) group="youth"
		;;
		*) group="adult"		# Hahaha "I write -100 and your script is still working!"
	esac
	echo "$name, your group is $group"
done
