#!/bin/bash

createGroup () {
	$(groupadd "$1")
	createUser
}

createUser () {
	read -p "Enter the UID: " uid
        read -p "Enter the shell: " shell
        read -p "Enter the home directory: " hdir
        read -p "Enter the secondary group: " sgroup
        if [ -z $(cat /etc/group | grep -Ew "$sgroup") ]
        then
        	createGroup "$sgroup"
        fi

        $(useradd "$uname" -s "$shell" -d "$hdir" -u "$uid" -G "$sgroup")


}


checkUser () {

	read -p "Enter the user name: " uname

	exist=$(cat /etc/passwd | grep -Ew "$uname")
	echo "$exist"

	if [ -n "$exist" ]
	then
        	data=$(cat /etc/passwd | grep -Ew "^$uname" | awk -F":" '{print "|UID:",$3," |shell:", $7,"|home:", $6}')
        	echo "userdata : "$data""
	else
		echo "User Unavailable!!! So creating a User"
        	createUser "$uname"


	fi

}

checkUser 
