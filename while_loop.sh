#!/bin/bash

###print odd numbers
i=1
j=10

while [ "$i" -le "$j" ]
do
	echo "$i"
	let i=i+2
done
