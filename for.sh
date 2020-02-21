#!/bin/bash
echo "hello"
### saving the home dir in homedir variable
homedir=`awk '{print $6}' /etc/passwd | grep -Ewv "/" |less `
echo "$homedir"

### dump home dirctory ()
awk -F: '{print $6}' /etc/passwd | grep -Ewv "/" > /root/home_dir

for i in `cat /root/home_dir`
do 
	du -sh "$i"
done
