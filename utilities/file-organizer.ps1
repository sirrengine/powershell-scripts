$targetFolder = "$HOME\Downloads"

Set-Location $targetFolder

$files = Get-ChildItem -File

foreach ($file in $files) {

    $extension = $file.Extension.ToLower()

    switch ($extension) {

        ".jpg" { $folder = "Images" }
        ".png" { $folder = "Images" }
        ".mp4" { $folder = "Videos" }
        ".pdf" { $folder = "Documents" }
        ".txt" { $folder = "TextFiles" }

        default { $folder = "Others" }
    }

    if (!(Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder
    }

    Move-Item $file.Name -Destination $folder
}

Write-Host "Files organized successfully."