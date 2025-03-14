# Mozilla Firefox wird installiert...
Write-Host "Mozilla Firefox wird installiert..."

# Temporärer Download-Pfad
$tempDir = $env:TEMP
$firefoxInstaller = "$tempDir\firefox_installer.exe"

# Download-URL für Mozilla Firefox (64-Bit-Version)
$firefoxURL = "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=de"

# Firefox herunterladen
Write-Host "Lade Mozilla Firefox herunter..."
Invoke-WebRequest -Uri $firefoxURL -OutFile $firefoxInstaller

# Firefox installieren
Write-Host "Installiere Mozilla Firefox..."
Start-Process -FilePath $firefoxInstaller -ArgumentList "/S" -Wait

# Temporäre Datei bereinigen
Write-Host "Bereinige temporäre Dateien..."
Remove-Item -Path $firefoxInstaller -Force

Write-Host "Mozilla Firefox wurde erfolgreich installiert!"
Read-Host "Drücke Enter, um fortzufahren..."