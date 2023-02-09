#!/bin/bash

#Script: Ops 201 Class XX Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 
#Purpose: 1.Write a script that creates four directories/ 2.put the name of the for dir in an array /3. reference the array to create .txt file without ref to the path

#Main

mkdir dir1 dir2 dir3 dir4

arr1=("./dir1/" "./dir2/" "./dir3/" "./dir4/")

touch ${arr1[0]}file.txt ${arr1[1]}file.txt ${arr1[2]}file.txt ${arr1[3]}file.txt

#End