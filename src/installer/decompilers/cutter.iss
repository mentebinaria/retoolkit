; v2.2.0
; https://cutter.re/

[Components]
Name: "decompilers\cutter"; Description: "Cutter"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\decompilers\cutter\*"; DestDir: "{app}\decompilers\cutter"; Components: "decompilers\cutter"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\Cutter"; Filename: "{app}\decompilers\cutter\cutter.exe"; Components: "decompilers\cutter"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Decompilers\Cutter"; Filename: "{app}\decompilers\cutter\cutter.exe"; Components: "decompilers\cutter"; Check: Is64BitInstallMode