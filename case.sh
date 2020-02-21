#!/bin/bash

read -p "Enter the partition name: " part
sp=`df -h |grep -Ev "^tmpfs"| grep -E "$part"| awk '{print $5}'`
echo "$sp"

case $sp in
[0-9]%)
	echo "Khali pada hai"
	;;
1[0-9]%)
	echo "Kuch toh kaam kar lo"
	;;
[2-5][0-9]%)
	echo "Ab lag raha hai kuch kaam kiya"
	;;
[6-8][0-9]%)
	echo "Bohot kaam kar liya. bekar files nikalo"
	;;
[9][0-8]%)
	echo "Kabhi safai bhi kar lo disk ki!!"
	;;
99%|100%)
	echo "ab toh naya disk lana hi padega"
	;;
*)
	echo "samajh nahi aaya kya likha hai"
	;;
esac

echo "END"
