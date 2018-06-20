#!bin/bash

echo "Please choose what to run: 1) = show ip on eth0 2) = show available ip's on subnet 3) = ping ip 4x. Use 'Ctrl+c' to quit."

read choice

if [ "$choice" -eq 1 ]; then
ip addr show eth0
elif [ "$choice" -eq 2 ]; then
echo "Please input subnet address:"
read subnet
sudo arp-scan -I eth0 $subnet/24
elif [ "$choice" -eq 3 ]; then
echo "Please enter IP address to ping:"
read IP
sudo ping $IP -c 4
fi
