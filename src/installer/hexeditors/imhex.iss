; v1.10.0

[Components]
Name: "hexeditors\imhex"; Description: "ImHex"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\hexeditors\imhex\*"; DestDir: "{app}\hexeditors\imhex"; Components: "hexeditors\imhex"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\ImHex"; Filename: "{app}\hexeditors\imhex\imhex.exe"; Components: "hexeditors\imhex"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Hex Editors\ImHex"; Filename: "{app}\hexeditors\imhex\imhex.exe"; Components: "hexeditors\imhex"; Check: Is64BitInstallMode