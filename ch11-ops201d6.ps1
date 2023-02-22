#Script: Ops 201 Class 11 Ops Challenge Solution
#Author: Marco Aliaga
#Date of latest revision: 21 FEB 2023
#Purpose: Write Powershell scripts that enables and disables certain Windows 10 features.

#Main

# Enable File and Printer Sharing
Set-NetFirewallRule -DisplayName "File and Printer Sharing (SMB-In)" -Enabled True

# Allow ICMP traffic
New-NetFirewallRule -DisplayName "ICMP Allow Incoming V4 echo request" -Protocol ICMPv4 -IcmpType 8 -Enabled True

# Enable Remote management
Enable-PSRemoting -Force

# Remove bloatware
Get-AppxPackage *Bing* | Remove-AppxPackage
Get-AppxPackage *Office.Sway* | Remove-AppxPackage
Get-AppxPackage *OneNote* | Remove-AppxPackage
Get-AppxPackage *3DBuilder* | Remove-AppxPackage

# Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disable SMBv1
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB1 -Type DWORD -Value 0 -Force
Set-SmbServerConfiguration -EnableSMB1Protocol $false

# To automate the process I put the call the .ps1 inside a .bat file
powershell.exe -ExecutionPolicy Bypass -File "C:\Users\marco\Documents\automated.bat"

#End