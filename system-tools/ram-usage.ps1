$os = Get-CimInstance Win32_OperatingSystem

$totalRAM = [math]::Round($os.TotalVisibleMemorySize / 1MB, 2)
$freeRAM = [math]::Round($os.FreePhysicalMemory / 1MB, 2)

Write-Host "Total RAM: $totalRAM GB"
Write-Host "Free RAM : $freeRAM GB"