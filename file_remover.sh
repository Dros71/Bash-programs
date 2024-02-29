#/usr/bin/bash

echo "Enter directory you want to clean (in a home)"
read dir
cd ~/$dir
files=$(ls)
for i in $files
do
	if [[ -f $i ]]
	then
		echo "Do you want to delete file $i? (y/n), <Enter> for out"
		read ans
		case $ans in
			y) rm $i ;;
			n) continue ;;
			'') break ;;
			*) echo "Wrong operation"
			   exit ;;
		esac
	fi
done
