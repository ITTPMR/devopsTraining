Write-Host "Script for remoting in PowerShell"

# Configures the computer to receive remote commands
Enable-PSRemoting -Force -SkipNetworkProfileCheck

# Gets the registered session configurations on the computer. Session configurations with names that begin with "Microsoft".
Get-PSSessionConfiguration  -Name Microsoft*

# create PSSessions on local computer
$session = New-PSSession -ComputerName localhost
Get-PSSession

$command = {
  # Get-Process
  # Get-Service
  ls
}
#Runs commands on local and remote computers
Invoke-Command -Session $session -ScriptBlock {command}

Enter-PSSession -Session $session  # Start an interactive session
Write-Host "Session created"

# Access a file
Get-Content C:\Users\p.m.riyaz\Desktop\frommypc.txt
HOSTNAME.EXE

Exit-PSSession
Remove-PSSession $session
write-host "Session is closed"