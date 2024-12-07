# To run this file you will need to open Powershell as administrator and first run: Set-ExecutionPolicy Unrestricted
# Then source this script by running: .\configure-c.ps1

function Add-CToPath {
    # Add C to PATH
    Write-Host "Adding C to PATH..." -ForegroundColor Yellow
    $cPath = "C:\msys64\ucrt64\bin"
    setx PATH "$env:Path;$cPath"
    Write-Host "C added to PATH." -ForegroundColor Green
}

if (-not (Get-Command gcc)) {
    Write-Host "C is not in PATH." -ForegroundColor Red
    Add-CToPath
} else {
    Write-Host "C is already in PATH." -ForegroundColor Green
}

exit