#!/bin/bash
read -p "Enter name of file system: " fsname

df -h | grep -Ew "^$fsname" | awk '{print $5,$6}'

