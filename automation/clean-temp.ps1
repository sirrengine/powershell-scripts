$tempFolder = "$env:TEMP"

Get-ChildItem $tempFolder -Recurse |
Remove-Item -Force -Recurse -ErrorAction SilentlyContinue

Write-Host "Temporary files cleaned."