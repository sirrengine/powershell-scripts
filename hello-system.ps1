Write-Host "Welcome to Sirrengine PowerShell Lab"

$username = $env:USERNAME
$computer = $env:COMPUTERNAME

Write-Host "User: $username"
Write-Host "Computer: $computer"
Write-Host "PowerShell Version:"
$PSVersionTable.PSVersion