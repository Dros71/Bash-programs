#!/usr/bin/bash

gcd ()
{
	M=$1
	N=$2
	let "A=$M%$N"
	let "B=$N%$M"
	if [[ $A -eq 0 ]]
	then
		echo "GCD is $N"
	elif [[ $B -eq 0 ]]
        then
                echo "GCD is $M"
	elif [[ $M -gt $N ]]
        then
                gcd $A $N
	elif [[ $M -lt $N ]]
        then
                gcd $B $M
	fi
   	
}

while [[ 1 -gt 0 ]]
do
	read input_1 input_2
	if [[ $input_1 -eq "" ]]
	then
        	echo "bye"
        	exit
	fi
	gcd $input_1 $input_2
done
