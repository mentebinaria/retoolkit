; v8.4.6
; https://notepad-plus-plus.org/

[Components]
Name: "utilities\npp"; Description: "Notepad++"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\npp\*"; DestDir: "{app}\utilities\npp"; Components: "utilities\npp"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\utilities\npp\npp.8.4.6.Installer.exe"; Parameters: "/S"; Components: "utilities\npp"