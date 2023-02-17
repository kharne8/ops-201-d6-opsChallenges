#!/bin/bash

#Script: Ops 201 Class 9 Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 16 FEB 2020
#Purpose: Write scripts that print logs 

#Main

Get-EventLog _LogName System - After (Get-Date).AddDays(-1) | Out-File "C:\Users\Marco\Desktop\last_24.txt"





#End