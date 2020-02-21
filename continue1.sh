#!/bin/bash

i=0
while [ "$i" -le 5 ]
do
	echo "before continue: "$i""
	i=`expr "$i" + 1`
	continue
	echo "after continue: "$i""
done
echo "END"
