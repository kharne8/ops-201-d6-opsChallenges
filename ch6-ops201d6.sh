#!/bin/bash

#Script: Ops 201 Class 6 Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 13 FEB 2023
#Purpose: Write a script that detects if a file or directory exist, then creates it if does 
#not exist. It must use at least one array, one loop nad one conditional.

#Main

#first promtp user with option to search for for file or path
read -p "Enter the path of the file or directry: " path

#if returns false user will get promterd that it already exist / if true the it will promt to create it
if [ ! -e "$path" ]; then
    echo "$path does not exist."
    read -p "Do you want to create my guy? (yass/nah): " answer

    #if yass the path stored in variable $answer is use to create new     
    if [ "$answer" == "yass" ]; then
        #if path ends with / the script assumes user wants to create a dir
        if [[ "$path" == */ ]]; then
        mkdir -p "$path"
        echo "Directory $path successfully created my guy" 
    #if path doesnt end with / creates new file
    else
        touch "$path"
        echo "File path was created my guy"
        fi
    #if no input promtp user with no created message
    else
        echo "Nothing was creaed my guy"
    fi
#if path exist prompt user
else
    echo "$path already exist my guy"
fi
#End