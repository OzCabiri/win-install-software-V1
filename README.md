<a id="readme-top"></a>

<br/>
<div align="center">
<h1 align="center">Powershell software installer</h1>
  <p align="center">
    <h2>Just some powershell script to install softwares I need.</h2>
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About</a>
    </li>
    <li>
      <a href="#preperations">Preperations</a>
      <ul>
        <li><a href="#backup">Prerequisites</a></li>
        <li><a href="#clean-installation">Clean Installation</a></li>
      </ul>
    </li>
    <li>
      <a href="#installing-windows-and-drivers">Installing Windows and Drivers</a>
      <ul>
        <li><a href="#install-windows">Install Windows</a></li>
        <li><a href="#setup-windows">Setup Windows</a></li>
        <li><a href="#install-upadtes-and-drivers">Install Updates and Drivers</a></li>
        <li><a href="#bios-modifications">BIOS Modifications</a></li>
      </ul>
    </li>
    <li><a href="#twick-windows">Twick Windows</a></li>
    <li>
      <a href="#software-download">Software Download</a>
      <ul>
        <li><a href="#essentials">Essentials</a></li>
        <li><a href="#media">Media</a></li>
        <li><a href="#design">Design</a></li>
        <li><a href="#tuning-and-benchmarking">Tuning and Benchmarking</a></li>
        <li><a href="#programming">Programming</a></li>
        <li><a href="#lighting-control">Lighting Control</a></li>
        <li><a href="#games">Games</a></li>
      </ul>
    </li>
    <li>
      <a href="#environment-setup">Environment Setup</a>
      <ul>
        <li><a href="#programs">Programs</a></li>
        <li><a href="#development">Development</a></li>
        <li><a href="#steam">Steam 3</a></li>
      </ul>
    </li>
  </ol>
</details>

## About The Project
These are some powershell scripts to install software using winget with some console output.</br>
Also added some scripts to ensure things were added to PATH in case they weren't automatically.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

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
Adds Java/Git to PATH.

### configure-c.ps1
Adds C commands to PATH, assuming you MSYS2 (msys64 folder in default location)

<p align="right">(<a href="#readme-top">back to top</a>)</p>