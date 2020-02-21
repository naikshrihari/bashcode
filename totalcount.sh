#!/bin/bash
totalcount(){

list=`cat totalfiles.txt| grep -Ev "^total"| awk '{print $1}'`

count=0
for i in `echo "$list"`
do
        count=`expr "$count" + "$i"`
done

echo "Total no. of files: "$count""
}

totalcount

