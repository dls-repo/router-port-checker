#!/bin/bash

# read -p prompts for user input, stores it in the variable 'ip'
read -p "Enter your router's IP address: " ip

# save the output of nmap to a file
nmap -p- $ip > nmap_output.txt

# grep pulls out lines containing 'open', awk prints the first field of those lines
open_ports=$(grep 'open' nmap_output.txt | awk '{ print $1 }')

echo "The following ports are open:"
echo "$open_ports"

