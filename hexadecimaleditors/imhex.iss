; v1.7.0

[Components]
Name: "hexadecimaleditors\imhex"; Description: "ImHex"; Types: full;

[Files]
Source: "{#MySrcDir}\imhex\*"; DestDir: "{app}\imhex"; Components: "hexadecimaleditors\fhex"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\ImHex"; Filename: "{app}\imhex\imhex.exe"; WorkingDir: "{app}\imhex"; Components: "hexadecimaleditors\imhex"
Name: "{userdesktop}\{#MyAppName}\ImHex"; Filename: "{app}\imhex\imhex.exe"; WorkingDir: "{app}\imhex"; Components: "hexadecimaleditors\imhex"