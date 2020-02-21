#!/bin/bash

read -p "Enter directory name: " fname

echo "using ls -i only"
ls -i "$fname"

echo "using ls -il for listing "
ls -il "$fname" | awk '{print $1," ",$10}'| grep -Ev "^total"

