; v21.01

[Components]
Name: "utilities\7zip"; Description: "7zip"; Types: full;

[Files]
Source: "{#MySrcDir}\7zip\7z2101.exe"; DestDir: "{app}\7zip"; Components: "utilities\7zip"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\7zip\7z2101.exe"; Parameters: "/S"; Components: "utilities\7zip"; Flags: postinstall shellexec

