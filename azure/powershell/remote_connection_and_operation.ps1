Enable-PSRemoting -Force

Get-PSSessionConfiguration

$session = New-PSSession -ComputerName localhost -ConfigurationName PowerShell.5.1

Invoke-Command -Session $session -ScriptBlock { $PSVersionTable }