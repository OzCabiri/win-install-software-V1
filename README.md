<br/>
<div align="center">
<h1 align="center">Powershell software installer</h1>
  <p align="center">
    <h2>Just some powershell script to install softwares I need.</h2>
  </p>
</div>

## About The Project
These are some powershell scripts to install software using winget with some console output.</br>
Also added some scripts to ensure things were added to PATH in case they weren't automatically.

## How to use
1. Open Powershell as administrator.
2. run `Set-ExecutionPolicy Unrestricted`
3. run the script `.\script-name`


## What does each script do?
### software-install.ps1
Installs software.

### configure-python.ps1
Adds python to PATH, installs pip and adds it to PATH.</br>
Installs numpy, pandas, matplotlib, scikit-learn, scipy.

### configure-java.ps1 / configure-git.ps1
Adds Java/Git commands to PATH.

### configure-c.ps1
Adds C commands to PATH, assuming you use MSYS2 (msys64 folder in default location)
