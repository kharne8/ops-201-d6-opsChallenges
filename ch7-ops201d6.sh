#!/bin/bash

#Script: Ops 201 Class 7 Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 14 FEB 2023
#Purpose: Write a script that populates selected system info

#Main

#display name of the computer
echo "Computer Name"
sudo lshw | grep -m1 'product:' 

#display the cpu info
echo "CPU Info"
sudo lshw | grep -A 5 'cpu' | grep -E 'product:|vendor:|physical id:|bus info:|width:' | grep -v 'bus info:'

#display the ram info
echo "RAM Info"
sudo lshw | grep -A 6 'memory' | grep -E 'description:|physical id:|size:'

#display the display adapter info
echo "RAM Info"
sudo lshw | grep -A 14 'display' | grep -E 'description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:'

#display the network adapter info
echo "RAM Info"
sudo lshw | grep -A 20 'network' | grep -E 'description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|clock:|capabilities:|configuration:|resources:'


#End