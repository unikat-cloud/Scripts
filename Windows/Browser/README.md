# CMD-Skripte zur Installation von Firefox und Chrome

Dieses Repository enthält CMD-Skripte, mit denen du Mozilla Firefox und Google Chrome automatisch unter Windows installieren kannst. Die Skripte laden die Installationsprogramme von den offiziellen Websites herunter, führen die Installation durch und bereinigen anschließend die temporären Dateien.

## Voraussetzungen

- **Windows-Betriebssystem**: Die Skripte sind für Windows entwickelt.
- **Administratorrechte**: Du benötigst Administratorrechte, um Software zu installieren.
- **curl**: Der Befehl `curl` ist ab Windows 10 standardmäßig verfügbar. Falls nicht, kannst du ihn über die Windows-Funktionen aktivieren oder alternativ PowerShell verwenden.

## Anleitung

### 1. Skripte herunterladen

1. Lade die gewünschten Skripte aus diesem Repository herunter:
   - [Firefox-Installationsskript](firefox_install.cmd)
   - [Chrome-Installationsskript](chrome_install.cmd)

2. Speichere die Skripte in einem beliebigen Verzeichnis auf deinem Computer, z.B. `C:\Skripte`.

### 2. Skripte ausführen

1. Öffne die Eingabeaufforderung (CMD) als Administrator:
   - Drücke `Win + X` und wähle **Eingabeaufforderung (Administrator)** oder **Windows PowerShell (Administrator)**.

2. Navigiere zu dem Verzeichnis, in dem du die Skripte gespeichert hast:
   ```cmd
   cd C:\Skripte