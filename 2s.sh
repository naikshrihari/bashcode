#!/bin/bash

###script to create bckp for aspecific user home dir
echo "this script will create backup for the home dir under /home only"

read -p "Enter user's name: " uname

echo "Your backup file will be stored in /root with name as <username.tar>"

tar -cvf /root/"$uname".tar /home/"$uname"
