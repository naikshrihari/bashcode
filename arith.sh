#!/bin/bash

read -p "Enter 1st integer: " one
read -p "Enter 2nd integer: " two

sum=`expr "$one" + "$two"`
echo "Sum: "$sum""
if [ "$one" -lt "$two" ]
then
	echo "swapping the values"
	diff=`expr "$two" - "$one"`
else
	diff=`expr "$one" - "$two"`
fi
echo "Difference: "$diff""
prod=`expr "$one" \* "$two"`
echo "Product: "$prod""
div=`expr "$one" / "$two"`
echo "Division: "$div""
echo "END"
