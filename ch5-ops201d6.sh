#!/bin/bash

#Script: Ops 201 Class 05 Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 10 FEB 2023
#Purpose: Write a script that displays running processes and ask user for PID and kilss processes with that PID.

#Main

killList(){
    echo "This are your targets:"
    ps -e -o pid,cmd=
}

killSwitch(){
    read -p "Enter the PID of the process you want to kill: " pid
    kill "$pid"
    echo "This process is no more"
}

while true; do
    echo "1. Display the kill list "
    echo "2. Kill a process "
    echo "3. Sayonara!"
    read -p "Please choose " choice

    case $choice in
        1) killList;;
        2) killSwitch;;
        3) break;;
        *) echo "Thats no a choice killer"
    esac
done


#End