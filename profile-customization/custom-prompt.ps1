function prompt {

    $location = Get-Location

    Write-Host "[Sirrengine]" -NoNewline -ForegroundColor Cyan
    Write-Host " $location" -NoNewline -ForegroundColor Yellow
    Write-Host " >" -NoNewline -ForegroundColor Green

    return " "
}