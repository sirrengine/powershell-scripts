Write-Host "IP Address Information"

Get-NetIPAddress |
Where-Object {
    $_.AddressFamily -eq "IPv4"
}