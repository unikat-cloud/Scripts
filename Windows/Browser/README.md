# CMD-Skripte zur Installation von Firefox und Chrome

Dieses Repository enthält CMD-Skripte, mit denen du Mozilla Firefox und Google Chrome automatisch unter Windows installieren kannst. Die Skripte laden die Installationsprogramme von den offiziellen Websites herunter, führen die Installation durch und bereinigen anschließend die temporären Dateien.

## Voraussetzungen

- **Windows-Betriebssystem**: Die Skripte sind für Windows entwickelt.
- **Administratorrechte**: Du benötigst Administratorrechte, um Software zu installieren.
- **curl**: Der Befehl `curl` ist ab Windows 10 standardmäßig verfügbar. Falls nicht, kannst du ihn über die Windows-Funktionen aktivieren oder alternativ PowerShell verwenden.

## Anleitung

### 1. Skripte herunterladen

1. Lade die gewünschten Skripte aus diesem Repository herunter.

2. Speichere die Skripte in einem beliebigen Verzeichnis auf deinem Computer, z.B. `C:\Skripte`.

### 2. Skripte ausführen

1. Öffne die Eingabeaufforderung (CMD) als Administrator:
   - Drücke `Win + X` und wähle **Eingabeaufforderung (Administrator)** oder **Windows PowerShell (Administrator)**.

2. Navigiere zu dem Verzeichnis, in dem du die Skripte gespeichert hast:
   ```cmd
   cd C:\Skripte

3. Führe das gewünschte Skript aus.

4. Warte, bis das Skript die Installation abgeschlossen hat. Du siehst eine Bestätigungsmeldung, sobald die Installation erfolgreich war.

### 3. Optionen

- **Stille Installation**: Die Skripte führen standardmäßig eine stille Installation durch, d.h. ohne Benutzerinteraktion. Wenn du die Installation mit Benutzeroberfläche möchtest, bearbeite die Skripte und entferne die Parameter `-ms` (Firefox) oder `/silent /install` (Chrome).
- **Temporäre Dateien**: Die Installationsprogramme werden im temporären Ordner (`%TEMP%`) gespeichert und nach der Installation automatisch gelöscht.

## Wichtige Hinweise

- **Sicherheit**: Lade Skripte nur aus vertrauenswürdigen Quellen herunter. Die Skripte in diesem Repository verweisen auf die offiziellen Download-Links von Mozilla und Google.
- **Fehlerbehebung**: Falls ein Skript nicht funktioniert, überprüfe, ob `curl` verfügbar ist und ob du Administratorrechte hast.

## Lizenz

Diese Skripte sind frei verfügbar und können nach Belieben verwendet und modifiziert werden. Es wird keine Haftung für Schäden übernommen, die durch die Verwendung dieser Skripte entstehen.

---