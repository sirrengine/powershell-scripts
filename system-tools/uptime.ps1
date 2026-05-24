$os = Get-CimInstance Win32_OperatingSystem

$lastBoot = $os.LastBootUpTime
$current = Get-Date

$uptime = $current - $lastBoot

Write-Host "System Uptime:"
Write-Host "$($uptime.Days) Days, $($uptime.Hours) Hours"