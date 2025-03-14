# Definieren der URL für den Firefox-Download
$firefoxUrl = "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=de"

# Definieren des Pfades, wo die Installationsdatei gespeichert werden soll
$installerPath = "$env:TEMP\FirefoxInstaller.exe"

# Herunterladen der Firefox-Installationsdatei
Invoke-WebRequest -Uri $firefoxUrl -OutFile $installerPath

# Installieren von Firefox
Start-Process -FilePath $installerPath -ArgumentList "/S" -Wait

# Aufräumen: Löschen der Installationsdatei
Remove-Item -Path $installerPath

# Erfolgsmeldung
Write-Host "Firefox wurde erfolgreich installiert."