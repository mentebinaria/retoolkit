; v4.3

[Components]
Name: "unpacking\qunpack"; Description: "QuickUnpack"; Types: full;

[Files]
Source: "{#MySrcDir}\unpacking\qunpack\*"; DestDir: "{app}\qunpack"; Components: "unpacking\qunpack"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\QuickUnpack (x86)"; Filename: "{app}\qunpack\QUnpack32\Explorer.exe"; WorkingDir: "{app}\qunpack\QUnpack32"; Components: "unpacking\qunpack"; Check: not Is64BitInstallMode
Name: "{app}\sendto+\sendto\Unpacking\QuickUnpack (x86)"; Filename: "{app}\qunpack\QUnpack32\Explorer.exe"; WorkingDir: "{app}\qunpack\QUnpack32"; Components: "unpacking\qunpack"; Check: not Is64BitInstallMode
Name: "{group}\{#MyAppName}\QuickUnpack (x64)"; Filename: "{app}\qunpack\QUnpack64\Explorer.exe"; WorkingDir: "{app}\qunpack\QUnpack64"; Components: "unpacking\qunpack"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Unpacking\QuickUnpack (x64)"; Filename: "{app}\qunpack\QUnpack64\Explorer.exe"; WorkingDir: "{app}\qunpack\QUnpack64"; Components: "unpacking\qunpack"; Check: Is64BitInstallMode