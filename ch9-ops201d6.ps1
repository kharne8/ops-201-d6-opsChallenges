#Script: Ops 201 Class 9 Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 16 FEB 2020
#Purpose: Write scripts that print logs 

#Main
# to tun on PowerShell => & "C:\Users\YOUR_USERNAME\Documents\NAME_OF_SCRIPT"

Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Out-File "C:\Users\Marco\Desktop\last_24.txt"

Get-EventLog -LogName System -EntryType Error (Get-Date).AddDays(-1) | Out-File "C:\Users\Marco\Desktop\errors.txt"



#End