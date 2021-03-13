; v4.3

[Components]
Name: "unpacking\qunpack"; Description: "QuickUnpack"; Types: full;

[Files]
Source: "{#MySrcDir}\qunpack\*"; DestDir: "{app}\qunpack"; Components: "unpacking\qunpack"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\QuickUnpack (x86)"; Filename: "{app}\qunpack\QUnpack32\Explorer.exe"; WorkingDir: "{app}\qunpack\QUnpack32"; Components: "unpacking\qunpack"
Name: "{userdesktop}\{#MyAppName}\QuickUnpack (x86)"; Filename: "{app}\qunpack\QUnpack32\Explorer.exe"; WorkingDir: "{app}\qunpack\QUnpack32"; Components: "unpacking\qunpack"
Name: "{group}\{#MyAppName}\QuickUnpack (x64)"; Filename: "{app}\qunpack\QUnpack64\Explorer.exe"; WorkingDir: "{app}\qunpack\QUnpack64"; Components: "unpacking\qunpack"
Name: "{userdesktop}\{#MyAppName}\QuickUnpack (x64)"; Filename: "{app}\qunpack\QUnpack64\Explorer.exe"; WorkingDir: "{app}\qunpack\QUnpack64"; Components: "unpacking\qunpack"