# To run this file you will need to open Powershell as administrator and first run: Set-ExecutionPolicy Unrestricted
# Then source this script by running: .\configure-git.ps1

function Add-GitToPath {
    # Add Git to PATH
    Write-Host "Adding Git to PATH..." -ForegroundColor Yellow
    $gitPath = "$env:ProgramFiles\Git\cmd"
    setx PATH "$env:Path;$gitPath"
    Write-Host "Git added to PATH." -ForegroundColor Green
}

if (-not (Get-Command git)) {
    Write-Host "Git is not in PATH." -ForegroundColor Red
    Add-GitToPath
} else {
    Write-Host "Git is already in PATH." -ForegroundColor Green
}

exit