#!/bin/bash

#A simple mac_changer
echo "A simple Mac_Changer
----------------------------------------"
read -p "Enter your interface:" interface
read -p "Enter the new mac-address:" mac

sudo ifconfig $interface down
sudo ifconfig $interface hw ether $mac
sudo ifconfig $interface up

echo "mac_address changed successfully to $mac"
