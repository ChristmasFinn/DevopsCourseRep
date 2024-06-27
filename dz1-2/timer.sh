#!/usr/bin/bash


for ((j=2; j>1; j++))
do
read -p "Enter the number: " NUMBER

if [[ $NUMBER =~ [^[:digit:]] ]];
	then
		echo "Only positive digits allowed. Try again."
	elif [ -z NUMBER ]; 
then
	echo "Number has not been entered. Try again."
else
	for((x=NUMBER; x>0; x--))
	do
		NUMBER=$x
		echo $NUMBER
	done

	read -p "1:Continue, 0:EXIT " K

	if [[ $K == 1 ]]; then
		echo "Loading"
		j=1
	elif [[ $K == 0 ]]; then
		echo "Closing"
		j=0
	else
		echo "Wrong format."
	fi

fi

done
echo "The End."



