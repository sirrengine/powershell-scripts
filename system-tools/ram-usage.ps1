$os = Get-CimInstance Win32_OperatingSystem

$totalRAM = [math]::Round($os.TotalVisibleMemorySize / 1MB, 2)
$freeRAM = [math]::Round($os.FreePhysicalMemory / 1MB, 2)
$usedRAM = $totalRAM - $freeRAM
$percentUsed = [math]::Round(($usedRAM / $totalRAM) * 100, 1)

# Visual Progress Bar
$barLength = 20
$filledLength = [math]::Round(($percentUsed / 100) * $barLength)
$bar = ("#" * $filledLength) + ("-" * ($barLength - $filledLength))

# Determine color based on usage
$color = "Green"
if ($percentUsed -gt 85) { $color = "Red" }
elseif ($percentUsed -gt 60) { $color = "Yellow" }

Write-Host "RAM Usage Report" -ForegroundColor Cyan
Write-Host "----------------"
Write-Host "Total RAM: $totalRAM GB"
Write-Host "Used RAM : $usedRAM GB ($percentUsed%)"
Write-Host "Free RAM : $freeRAM GB"
Write-Host "[$bar]" -ForegroundColor $color
