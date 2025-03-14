@echo off
REM Dieser Befehl lädt den Firefox-Installer von der offiziellen Mozilla-Website herunter und installiert Firefox.

REM Setze die URL des Firefox-Installers
set "firefoxURL=https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=de"

REM Setze den Pfad, wo das Installationsprogramm gespeichert werden soll
set "installerPath=%TEMP%\FirefoxInstaller.exe"

REM Lade den Firefox-Installer herunter
curl -o "%installerPath%" "%firefoxURL%"

REM Führe den Installer aus
start /wait "" "%installerPath%" -ms

REM Lösche das Installationsprogramm nach der Installation
del "%installerPath%"

REM Hinweis: Der Parameter "-ms" führt eine stille Installation durch, d.h. ohne Benutzerinteraktion.
REM Wenn du die Installation mit Benutzeroberfläche möchtest, entferne den Parameter "-ms".

REM Wichtige Informationen:
REM 1. Stelle sicher, dass du Administratorrechte hast, um Software zu installieren.
REM 2. Der Befehl "curl" ist ab Windows 10 standardmäßig verfügbar. Falls nicht, kannst du ihn nachinstallieren oder alternativ "powershell -Command Invoke-WebRequest" verwenden.
REM 3. Der Parameter "-ms" ist nützlich für automatische Installationen, z.B. in Skripten oder auf mehreren Rechnern.
REM 4. Der Installer wird im temporären Ordner (%TEMP%) gespeichert und nach der Installation gelöscht, um Platz zu sparen.

echo Firefox wurde erfolgreich installiert.
pause