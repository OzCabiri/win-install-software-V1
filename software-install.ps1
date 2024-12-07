# To run this file open Powershell as administrator
# and run: Set-ExecutionPolicy Unrestricted
# Then source this script by running: .\software-install.ps1

<#
.SYNOPSIS
    Installs an application using winget.

.DESCRIPTION
    This function attempts to install an application using the Windows Package Manager (winget).
    It takes the application name and ID as parameters and provides feedback on the installation status.

.PARAMETER appName
    The name of the application to be installed.

.PARAMETER appID
    The ID of the application to be installed.

.EXAMPLE
    Install-App -appName "7-Zip" -appID "7zip.7zip"

    This command installs the 7-Zip application using winget.

.NOTES
    Ensure that winget is installed and available on the system before using this function.
#>
function Install-App {
    param(
        [string]$appName,
        [string]$appID
    )

    try {
        Write-Host "Attemting to install $appName..." -ForegroundColor Yellow
        winget install --id $appID -e --source winget

        if ($?) {
            Write-Host "$appName installed successfully." -ForegroundColor Green
        } else {
            Write-Host "Failed to install $appName." -ForegroundColor Red
        }
    } catch {
        Write-Host "An error occurred during the installation process: $_" -ForegroundColor Red
    }
}
function Install-Essentials {
    # Install 7-zip
    Install-App -appName "7-Zip" -appID "7zip.7zip"

    #Install Anki
    Install-App -appName "Anki" -appID "Anki.Anki"

    # Install Brave browser
    Install-App -appName "Brave" -appID "Brave.Brave"

    # Install Discord
    Install-App -appName "Discord" -appID "Discord.Discord"

    # Install EarTrumpet
    Install-App -appName "EarTrumpet" -appID "File-New-Project.EarTrumpet"

    # Install Everything Alpha
    Install-App -appName "Everything Alpha (voidtools)" -appID "voidtools.Everything.Alpha"

    # Install Foxit Reader
    Install-App -appName "Foxit Reader" -appID "Foxit.FoxitReader"

    # Install Google Drive
    Install-App -appName "Google Drive" -appID "Google.GoogleDrive"

    # Install Keepass 2.0
    Install-App -appName "Keepass 2.0" -appID "DominikReichl.KeePass"
    # Install Bitwarden
    Install-App -appName "Bitwarden" -appID "Bitwarden.Bitwarden"
    # Install Bitwarden CLI
    Install-App -appName "Bitwarden CLI" -appID "Bitwarden.CLI"

    # Install LibreOffice
    Install-App -appName "LibreOffice" -appID "TheDocumentFoundation.LibreOffice"

    # Install Notepad++
    Install-App -appName "Notepad++" -appID "Notepad++.Notepad++"

    # Install OBS Studio
    Install-App -appName "OBS Studio" -appID "OBSProject.OBSStudio"

    # Install qBittorrent
    Install-App -appName "qBittorrent" -appID "qBittorrent.qBittorrent.Qt6"

    # Install Rainmeter
    Install-App -appName "Rainmeter" -appID "Rainmeter.Rainmeter"

    # Install Remote Mouse
    Install-App -appName "Remote Mouse" -appID "EmoteInteractive.RemoteMouse"

    # Install Ventoy
    Install-App -appName "Ventoy" -appID "Ventoy.Ventoy"

    # Install WinDirStat
    Install-App -appName "WinDirStat" -appID "WinDirStat.WinDirStat"

    # Install Wiresahrk
    Install-App -appName "Wireshark" -appID "WiresharkFoundation.Wireshark"

    # Install Zoom
    Install-App -appName "Zoom" -appID "Zoom.Zoom"
}
function Install-Media {
    # Install Audacity
    Install-App -appName "Audacity" -appID "Audacity.Audacity"

    # Install FFmpeg
    Install-App -appName "FFmpeg" -appID "Gyan.FFmpeg"

    # Install iTunes
    Install-App -appName "iTunes" -appID "Apple.iTunes"

    # Install MKVToolNix
    Install-App -appName "MKVToolNix" -appID "MoritzBunkus.MKVToolNix"

    # Install MPV.net
    Install-App -appName "MPV.net" -appID "mpv.net"

    # Install MusicBee
    Install-App -appName "MusicBee" -appID "MusicBee.MusicBee"

    # Install Subtitle Edit
    Install-App -appName "Subtitle Edit" -appID "Nikse.SubtitleEdit"
}
function Install-Design {
    # Install Canva
    Install-App -appName "Canva" -appID "Canva.Canva"

    # Install Duet Display
    Install-App -appName "Duet Display" -appID "Kairos.DuetDisplay"

    # Install Krita
    Install-App -appName "Krita" -appID "KDE.Krita"
}
function Install-Bench {
    # Install HWiNFO
    Install-App -appName "HWiNFO" -appID "REALiX.HWiNFO"

    # Install CPU-Z
    Install-App -appName "CPU-Z" -appID "CPUID.CPUZ"

    # Install GPU-Z
    Install-App -appName "GPU-Z" -appID "TechPowerUp.GPUZ"

    # Install Cinebench R23
    Install-App -appName "Cinebench R23" -appID "MAXON.CinebenchR23"

    # Install Unigine Heaven Benchmark
    Install-App -appName "Unigine Heaven Benchmark" -appID "Unigine.HeavenBenchmark"

    # Install OCCT
    Install-App -appName "OCCT" -appID "OCBase.OCCT.Personal"

    # Install Geekbench 6
    Install-App -appName "Geekbench 6" -appID "PrimateLabs.Geekbench.6"

    # Install RiveTuner Statistics Server
    Install-App -appName "RivaTuner Statistics Server" -appID "Guru3D.RTSS"
}
function Install-Dev {
    # Install MSYS2
    Install-App -appName "MSYS2" -appID "MSYS2.MSYS2"

    # Isntall Java Development Kit 21
    Install-App -appName "Java Development Kit 21" -appID "EclipseAdoptium.Temurin.21.JDK"

    # Install Python 3.13
    Install-App -appName "Python 3.13" -appID "Python.Python.3.13"

    # Install Git
    Install-App -appName "Git" -appID "Git.Git"

    # Install AutoHotkey
    Install-App -appName "AutoHotkey" -appID "AutoHotkey.AutoHotkey"

    # Install Visual Studio Code
    Install-App -appName "Visual Studio Code" -appID "Microsoft.VisualStudioCode"

    # Install Visual Studio Build Tools 2022
    Install-App -appName "Visual Studio Build Tools 2022" -appID "Microsoft.VisualStudio.2022.BuildTools"

    # Install VirtualBox
    Install-App -appName "VirtualBox" -appID "Oracle.VirtualBox"

    # Install Logisim Evolution
    Install-App -appName "Logisim Evolution" -appID "Logisim-evolution.Logisim-evolution"

    # Install Docker
    Install-App -appName "Docker" -appID "Docker.DockerDesktop"
}
function Install-Games {
    # Install Steam
    Install-App -appName "Steam" -appID "Valve.Steam"
    # Install SteamCMD
    Install-App -appName "SteamCMD" -appID "Valve.SteamCMD"

    # Install Mod Organizer 2
    Install-App -appName "Mod Organizer 2" -appID "ModOrganizer2.modorganizer"
    # Install LOOT
    Install-App -appName "LOOT" -appID "LOOT.LOOT"
}

# Ensure Winget is available (Windows Package Manager)
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "winget is not installed. Please install the Windows Package Manager first."
    exit
}
# Update winget
winget install winget

###################### Install Apps ######################
########### Essential Apps ###########
Install-Essentials

########### Media Apps ###########
Install-Media

########### Design Apps ###########
Install-Design

########### Tuning & Benchmarking Apps ###########
Install-Bench

########### Development Apps ###########
Install-Dev

########### Gaming Apps ###########
Install-Games


Write-Host "Finished installing apps."
