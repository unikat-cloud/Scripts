@echo off
REM Dieser Befehl lädt den Opera-Installer von der offiziellen Opera-Website herunter und installiert Opera.

REM Setze die URL des Opera-Installers
set "operaURL=https://download.opera.com/download/get/?id=58483&location=415&nothanks=yes&sub=marine&utm_tryagain=yes"

REM Setze den Pfad, wo das Installationsprogramm gespeichert werden soll
set "installerPath=%TEMP%\OperaInstaller.exe"

REM Lade den Opera-Installer herunter
curl -o "%installerPath%" "%operaURL%"

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

echo Opera wurde erfolgreich installiert.
pause