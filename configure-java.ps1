# To run this file you will need to open Powershell as administrator and first run: Set-ExecutionPolicy Unrestricted
# Then source this script by running: .\configure-java.ps1

# function to add java to path
function Add-JavaToPath {
    # Add Java to PATH
    Write-Host "Adding Java to PATH..." -ForegroundColor Yellow
    $javaPath = "$env:ProgramFiles\Eclipse Adoptium\jdk-21.0.5.11-hotspot"
    if ($javaPath) {
        $javaPath = Join-Path -Path $javaPath -ChildPath "bin"
        setx PATH "$env:Path;$javaPath"
        Write-Host "Java added to PATH." -ForegroundColor Green
    } else {
        Write-Host "Java directory not found." -ForegroundColor Red
    }
}

if (-not (Get-Command java)) {
    Write-Host "Java is not in PATH." -ForegroundColor Red
    Add-JavaToPath
} else {
    Write-Host "Java is already in PATH." -ForegroundColor Green
}

exit