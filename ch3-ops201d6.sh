#!/bin/bash

#Script: Ops 201 Class 03 Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 8 FEB 2023
#Purpose: Write a script that print the login history of userson this computer.
#Streach Goals: Include a function that accepts an argument and uses it

#Main

printMe=$(last)

printLogdUsers(){ 

    echo "This is your login history:"
    echo "$printMe"

}

printLogdUsers

# Strech

printHistory(){

    echo "This is your login history:"
    echo "$1"

}

var1="$(last)"

printHistory "$var1"

#End