$sourceFolder = "$HOME\Documents"
$backupFolder = "$HOME\Desktop\Backup"

if (!(Test-Path $backupFolder)) {
    New-Item -ItemType Directory -Path $backupFolder
}

Copy-Item "$sourceFolder\*" -Destination $backupFolder -Recurse

Write-Host "Backup completed successfully."