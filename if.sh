#!/bin/bash

uuid=`id -u`

###if statement in bash

if [ "$uuid" -eq 0 ]
then
	echo "I'm groot"
else
	echo "You are normal user"
fi 
