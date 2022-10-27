; v22.01
; https://www.7-zip.org

; We don't extract the main executable form the original installer because 7-Zip installs many a few libraries
; and registers shell extensions (right-click menu)

[Components]
Name: "utilities\7zip"; Description: "7-Zip"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\7zip\*.exe"; DestDir: "{app}\7zip"; Components: "utilities\7zip"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\7zip\7z2201-x64.exe"; Parameters: "/S"; Components: "utilities\7zip"; Check: Is64BitInstallMode
Filename: "{app}\7zip\7z2201.exe"; Parameters: "/S"; Components: "utilities\7zip";  Check: not Is64BitInstallMode
