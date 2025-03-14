# Google Chrome wird installiert...
Write-Host "Google Chrome wird installiert..."

# Temporärer Download-Pfad
$tempDir = $env:TEMP
$chromeInstaller = "$tempDir\chrome_installer.exe"

# Download-URL für Google Chrome
$chromeURL = "https://dl.google.com/chrome/install/latest/chrome_installer.exe"

# Chrome herunterladen
Write-Host "Lade Google Chrome herunter..."
Invoke-WebRequest -Uri $chromeURL -OutFile $chromeInstaller

# Chrome installieren
Write-Host "Installiere Google Chrome..."
Start-Process -FilePath $chromeInstaller -ArgumentList "/silent /install" -Wait

# Temporäre Datei bereinigen
Write-Host "Bereinige temporäre Dateien..."
Remove-Item -Path $chromeInstaller -Force

Write-Host "Google Chrome wurde erfolgreich installiert!"
Read-Host "Drücke Enter, um fortzufahren..."