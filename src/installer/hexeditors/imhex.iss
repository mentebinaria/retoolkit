; v1.8.1

[Components]
Name: "hexeditors\imhex"; Description: "ImHex"; Types: full;

[Files]
Source: "{#MySrcDir}\hexeditors\imhex\*"; DestDir: "{app}\hexeditors\imhex"; Components: "hexeditors\imhex"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\ImHex"; Filename: "{app}\hexeditors\imhex\imhex.exe"; Components: "hexeditors\imhex"
Name: "{app}\sendto+\sendto\Hex Editors\ImHex"; Filename: "{app}\hexeditors\imhex\imhex.exe"; Components: "hexeditors\imhex"