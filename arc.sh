#!/bin/bash
o=$1
a=$2
b=$3

add(){
sum=`expr $1 + $2`
echo "Addtion: "$sum""
}

sub(){
diff=`expr $1 - $2`
echo "Difference: "$diff""
}


if [ "$o" == "add" ]
then
	add $a $b
elif [ "$o" == "sub" ]
then
	if [ "$a" -gt "$b" ]
	then
		sub $a $b
	else
		sub $b $a
	fi
fi
echo "END"
