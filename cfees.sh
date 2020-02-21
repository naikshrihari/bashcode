#!/bin/bash

c=$1

echo "This program displays fees of given cousre"
echo "Cousres are: dbda, dac, ditiss, vlsi, hpca, desd"
fees(){

if [ "$c" == "dbda" ]
then
	echo "dbda course fee 1.3 L"
elif [ "$c" == "dac" ]
then
        echo "dac course fee 0.9 L"
elif [ "$c" == "ditiss" ]
then
        echo "ditiss course fee 0.8 L"
elif [ "$c" == "vlsi" ]
then
        echo "dbda course fee 1.4 L"
elif [ "$c" == "hpca" ]
then
        echo "hpca course fee 1.5 L"
elif [ "$c" == "desd" ]
then
        echo "desd course fee 1.2 L"
else
	echo "invalid Course name"
fi
}

fees $1
