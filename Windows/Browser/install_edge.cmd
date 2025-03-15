@echo off
REM Dieser Befehl lädt den Microsoft Edge-Installer von der offiziellen Microsoft-Website herunter und installiert Edge.

REM Setze die URL des Edge-Installers
set "edgeURL=https://go.microsoft.com/fwlink/?linkid=2108834&Channel=Stable&language=de"

REM Setze den Pfad, wo das Installationsprogramm gespeichert werden soll
set "installerPath=%TEMP%\EdgeInstaller.exe"

REM Lade den Edge-Installer herunter
curl -o "%installerPath%" "%edgeURL%"

REM Führe den Installer aus
start /wait "" "%installerPath%" /silent /install

REM Lösche das Installationsprogramm nach der Installation
del "%installerPath%"

REM Hinweis: Die Parameter "/silent /install" führen eine stille Installation durch, d.h. ohne Benutzerinteraktion.
REM Wenn du die Installation mit Benutzeroberfläche möchtest, entferne die Parameter "/silent /install".

REM Wichtige Informationen:
REM 1. Stelle sicher, dass du Administratorrechte hast, um Software zu installieren.
REM 2. Der Befehl "curl" ist ab Windows 10 standardmäßig verfügbar. Falls nicht, kannst du ihn nachinstallieren oder alternativ "powershell -Command Invoke-WebRequest" verwenden.
REM 3. Die Parameter "/silent /install" sind nützlich für automatische Installationen, z.B. in Skripten oder auf mehreren Rechnern.
REM 4. Der Installer wird im temporären Ordner (%TEMP%) gespeichert und nach der Installation gelöscht, um Platz zu sparen.

echo Microsoft Edge wurde erfolgreich installiert.
pause