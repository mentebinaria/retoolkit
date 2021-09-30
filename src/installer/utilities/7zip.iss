; v21.03 beta
; https://www.7-zip.org

[Components]
Name: "utilities\7zip"; Description: "7-Zip"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\7zip\*.exe"; DestDir: "{app}\7zip"; Components: "utilities\7zip"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\7zip\7z2103-x64.exe"; Parameters: "/S"; Components: "utilities\7zip"; Check: Is64BitInstallMode
Filename: "{app}\7zip\7z2103.exe"; Parameters: "/S"; Components: "utilities\7zip";  Check: not Is64BitInstallMode
