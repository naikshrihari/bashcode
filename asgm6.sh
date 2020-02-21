#!/bin/bash

read -p "Enter either Y,y,N or n:" inp
if [ "$inp" == Y -o "$inp" == y ]
then
	echo "YES"
elif [ "$inp" == N -o "$inp" == n ]
then
	echo "NO"
fi
