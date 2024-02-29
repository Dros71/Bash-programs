#/usr/bin/bash

cd ~/Загрузки/
files=$(ls)
for i in $files
do
	echo "Do you want to delete file $i? (y/n), <Enter> for out"
	read ans
	case $ans in
		y) rm $i ;;
		n) continue ;;
		'') break ;;
		*) echo "Wrong operation"
		   exit ;;
	esac
done
