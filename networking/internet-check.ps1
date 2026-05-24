$test = Test-Connection google.com -Quiet -Count 2

if ($test) {
    Write-Host "Internet is working."
}
else {
    Write-Host "No internet connection."
}