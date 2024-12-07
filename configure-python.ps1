# To run this file you will need to open Powershell as administrator and first run: Set-ExecutionPolicy Unrestricted
# Then source this script by running: .\configure-python.ps1

function Add-PythonToPath {
    # Add Python to PATH
    Write-Host "Adding Python to PATH..." -ForegroundColor Yellow
    $pythonBasePath = "$env:LOCALAPPDATA\Programs\Python"
    $pythonPath = Get-ChildItem -Path $pythonBasePath -Directory | Sort-Object Name -Descending | Select-Object -First 1 | ForEach-Object { $_.FullName }
    
    if ($pythonPath) {
        setx PATH "$env:Path;$pythonPath"
        Write-Host "Python added to PATH." -ForegroundColor Green
    } else {
        Write-Host "Python directory not found in $pythonBasePath." -ForegroundColor Red
    }
}
function Install-Pip {
    # Install pip
    Write-Host "Installing pip..." -ForegroundColor Yellow
    python -m ensurepip --upgrade
    python -m pip install --upgrade pip
    Write-Host "Pip installed." -ForegroundColor Green
}
function Add-PipToPath {
    # Add pip to PATH
    Write-Host "Adding pip to PATH..." -ForegroundColor Yellow
    $pipPath = Split-Path -Path (Get-Command python | Select-Object -ExpandProperty Source) -Parent
    $pipPath = Join-Path -Path $pipPath -ChildPath "Scripts"
    setx PATH "$env:Path;$pipPath"
    Write-Host "Pip added to PATH." -ForegroundColor Green
}

if (-not (Get-Command python)) {
    Write-Host "Python is not in PATH." -ForegroundColor Red
    Add-PythonToPath
}

if (-not (python -m pip --version)) {
    Write-Host "Pip is not installed." -ForegroundColor Red
    Install-Pip
}
if (-not (Get-Command pip)) {
    Write-Host "Pip is not in PATH." -ForegroundColor Red
    Add-PipToPath
}

# Install Python packages
Write-Host "Installing Python packages..." -ForegroundColor Yellow
pip install --upgrade pip
pip install numpy pandas matplotlib scikit-learn scipy
Write-Host "Python packages installed." -ForegroundColor Green

exit