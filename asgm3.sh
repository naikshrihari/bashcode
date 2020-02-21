#!/bin/bash
read -p "Enter Username" uname
#grep -Ew "$uname" /etc/group | grep ":$uname" | cut -d: -f1
pg=$(id "$uname" | awk '{print $2}' | cut -d= -f2 | cut -d"(" -f2 | cut -d")" -f1)
gg=$(id "$uname" | awk '{print $3}' | cut -d= -f2 | sed 's/,/\n/g' | cut -d"(" -f2 | cut -d")" -f1)
sg=$(echo "$gg"|grep -Ev "$pg")
echo "$sg"
## here $pg means primary group
