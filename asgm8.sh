#!/bin/bash

ops (){

if [ "$1" == "add" ]
then
	 expr "$2" + "$3"
elif [ "$1" == "sub" ]
then
	if [ "$2" -lt "$3" ]
	then
		echo "Swapping"
		expr "$3" - "$2"
	else
		expr "$2" - "$3"
	fi
fi
}

ops $1 $2 $3
