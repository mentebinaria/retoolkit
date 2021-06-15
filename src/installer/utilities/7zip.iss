; v21.02 alpha

[Components]
Name: "utilities\7zip"; Description: "7zip"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\7zip\*.exe"; DestDir: "{app}\7zip"; Components: "utilities\7zip"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\7zip\7z2102-x64.exe"; Parameters: "/S"; Components: "utilities\7zip"; Check: Is64BitInstallMode
Filename: "{app}\7zip\7z2102.exe"; Parameters: "/S"; Components: "utilities\7zip";  Check: not Is64BitInstallMode
