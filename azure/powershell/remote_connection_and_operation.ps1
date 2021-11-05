Write-Host "Script fo remoting in PowerShell"

# Configures the computer to receive remote commands
Enable-PSRemoting -Force -SkipNetworkProfileCheck

# Gets the registered session configurations on the computer. Session configurations with names that begin with "Microsoft".
Get-PSSessionConfiguration  -Name Microsoft*

# create PSSessions on local computer
$session = New-PSSession -ComputerName localhost
Get-PSSession

#Runs commands on local and remote computers
Invoke-Command -Session $session -ScriptBlock {ls}

Enter-PSSession -Session $session  # Start an interactive session
Write-Host "Session created"

# Copy-Item -path C:\test\MyTest.txt -Destination c:\frommypc.txt -ToSession $session
# Get-Content c:\frommypc.txt
HOSTNAME.EXE

Exit-PSSession
Remove-PSSession $session
write-host "Session is closed"