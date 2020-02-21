#!/bin/bash

### take username as input and return uid
read -p "Enter username: " uname
grep -E "^$uname:" /etc/passwd | awk -F: '{print "UID: ",$3}'

###alternate ways
echo "using cut and awk on id command"
id "$uname" |cut -d"=" -f2 | cut -d"(" -f1
id "$uname" |awk -F= '{print $2}'| awk -F"(" '{print $1}'

###using id -u username
echo "using id -u command"
id -u "$uname"

###using -w in /etc/passwd
echo "using -w in grep /etc/passwd"
grep -Ew "^$uname" /etc/passwd | awk -F: '{print $3}'
