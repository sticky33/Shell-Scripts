#!/bin/bash

#A simple mac_changer
echo "A simple Mac_Changer
----------------------------------------"
read -p "Enter your interface:" interface
function current_mac(){
ifconfig $interface | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'
}
echo "Your current mac is $(current_mac)"
read -p "Enter the new mac-address:" mac

sudo ifconfig $interface down
sudo ifconfig $interface hw ether $mac
sudo ifconfig $interface up

echo "mac_address changed successfully changed to $mac"
