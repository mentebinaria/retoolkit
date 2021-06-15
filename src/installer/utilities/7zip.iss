; v21.02 alpha

[Components]
Name: "utilities\7zip"; Description: "7zip"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\7zip\*.exe"; DestDir: "{app}\7zip"; Components: "utilities\7zip"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
; In order to install 7Zip, we just try to run both as we couldn't
; find a way to check the archtecture. We use /S (silent) switch so
; users will not see any error messages
Filename: "{app}\7zip\7z2102-x64.exe"; Parameters: "/S"; Components: "utilities\7zip";
Filename: "{app}\7zip\7z2102.exe"; Parameters: "/S"; Components: "utilities\7zip";
