#!/bin/bash

#Script: Ops 201 Class 13 Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 22 FEB 2023
#Purpose: Create a script that diplays info about domain

#Main

echo "Please type a domain: "
read domain

echo "WHOIS information for $domain:"
whois $domain

echo "DIG information for $domain:"
dig $domain

echo "HOST information for $domain:"
host $domain

echo "NSLOOKUP information for $domain:"
nslookup $domain


#End