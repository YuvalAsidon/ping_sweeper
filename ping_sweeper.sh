#!/bin/bash

read -p "Please enter the subnet that you want: " SUBNET

if [[ $SUBNET =~ /^[0-9]{1,3}+\.[0-9]{1,3}+\.[0-9]{1,3}+$/ ]]; then
	for IP in $(seq 1 254); do
		ping -c 1 $SUBNET.$IP
	done 
else
	echo "fail"
fi 