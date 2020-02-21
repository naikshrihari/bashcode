#!/bin/bash -x

procid=`ps -e |grep -Ew "systemd$"|awk '{print $1}'`
if [ "$procname" -eq 1 ]
then
	echo "This machine is running systemd"
fi

###using string compare

