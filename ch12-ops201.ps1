#Script: Ops 201 Class 12 Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 21 FEB 2023
#Purpose: Create a sting that uses Select-String that holds ipconfig/all and stores it on a txt file

#Main

#  > creates a network_report.txt and populated it with ipconfig /all results
# ADDED A FUNCTION
createReport(){
ipconfig /all > network_report.txt
}

# call func to create report
createReport

# I use select-string to look for a pattern that matches \d = number - 0 to 9, {1,3} = tells \d to match 1 to 3 digits, \. backlash escapes the dot and all together finds somehtign that ressembles ip address number
Select-String -Path network_report.txt -Pattern "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}" | foreach.Object {$_.Matches.value}

# lastly we remove the txt file that I created
Remove-Item network_report.txt



# Streach Goals

#End