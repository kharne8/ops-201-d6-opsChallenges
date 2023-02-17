#Script: Ops 201 Class 9 Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 16 FEB 2020
#Purpose: Write scripts that print logs 

#Main
# to tun on PowerShell => & "C:\Users\YOUR_USERNAME\Documents\NAME_OF_SCRIPT"

Output all events from System log from the last 24hrs into a txt file
Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Format-List Souce, Message | Out-File "C:\Users\Marco\Desktop\last_24.txt"

Ouput all erros from System event log into a txt file
Get-EventLog -LogName System -EntryType Error | Format-List Souce, Message | Out-File "C:\Users\Marco\Desktop\errors.txt"

Print to the screen all events with a ID 16
Get-EventLog -LogName System -InstanceId 16 | Format-List Souce, Message

Print to the screen the most recent 20 entries on system event log
Get-EventLog -LogName System -Newest 20 | Format-List Souce, Message

Print to the screen the latest 500 entries without the ... and show entire text
Get-EventLog -LogName System -Newest 500 | Format-List Souce, Message

#End