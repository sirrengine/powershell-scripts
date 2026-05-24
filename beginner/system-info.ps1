Write-Host "System Information"
Write-Host "------------------"

Get-ComputerInfo | Select-Object `
WindowsProductName,
WindowsVersion,
CsName,
CsManufacturer,
CsModel