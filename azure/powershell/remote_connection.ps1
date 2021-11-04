Write-Host "Welcome to the example of remoting in PowerShell"
Write-Host "The following cmdlet will be executed on two servers"

Invoke-Command -ComputerName testserver1,testeserver2 -ScriptBlock {Write-Host "Local system name is" $localhost}
Write-Host "Executing a script on remote server"
Invoke-Command -ComputerName Server01, Server02 -FilePath C:\Users\p.m.riyaz\Desktop\master-nogit\Week1 - Power Shell\check_armstrong_number
Write-Host "script executed successfully"
Write-Host "Creating session example"
$cr=Get-Credential
$se = New-PSSession -Credential $cr -ComputerName testserver1,testserver2
Enter-PSSession $se
Write-Host "Session created"
Exit-PSSession
Remove-PSSession $sess
write-host "Session is closed"