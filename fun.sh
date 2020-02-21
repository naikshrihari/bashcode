#!/bin/bash

a=$1
b=$2

add() {
sum=`expr "$1" + "$2"`
echo "Addition: "$sum""
}

sub(){
diff=`expr "$1" - "$2"`
echo "Substraction: "$diff""
}

add $a $b
sub $a $b
echo "Swapping "
sub $b $a
