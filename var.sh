#!/bin/bash

uname=`awk -F: '{print $1}' /etc/passwd`
echo "$uname">/root/uname_redir

unametopfive=`cat /root/uname_redir | head -n 5`
echo "$unametopfive"
