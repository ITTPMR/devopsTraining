Write-Host "Script for remoting in PowerShell"

# Enable the Windows Remote Management Service
Get-Service WINRM

# Configures the computer to receive remote commands
Enable-PSRemoting -Force -SkipNetworkProfileCheck

# Gets the registered session configurations on the computer. Session configurations with names that begin with "Microsoft".
# Get-PSSessionConfiguration -Name Microsoft*

# create two remote computers
$session = New-PSSession -ComputerName localhost, ITT-RIYAZ-M

# PSSessions that are connected to localhost computer
Get-PSSession -ComputerName localhost

$command = {
  # Get-Process
  # Get-Service
  ls
}

#Runs commands on local and remote computers
Invoke-Command -computerName localhost -FilePath c:\ps\tune.ps1 -ScriptBlock {command}

Enter-PSSession -ComputerName localhost  # Start an interactive session
Write-Host "Session created"

# Access a file
Get-Content C:\Users\p.m.riyaz\Desktop\frommypc.txt
HOSTNAME.EXE

Exit-PSSession
Remove-PSSession $session
write-host "Session is closed"