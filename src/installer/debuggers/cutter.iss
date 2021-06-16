; v2.0.2

[Components]
Name: "debuggers\cutter"; Description: "Cutter"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\debuggers\cutter\*"; DestDir: "{app}\debuggers\cutter"; Components: "debuggers\cutter"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\Cutter"; Filename: "{app}\debuggers\cutter\cutter.exe"; Components: "debuggers\cutter"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Debuggers\Cutter"; Filename: "{app}\debuggers\cutter\cutter.exe"; Components: "debuggers\cutter"; Check: Is64BitInstallMode