; v2 Alpha-r13
; http://www.rohitab.com/apimonitor

[Components]
Name: "processmonitors\apimonitor"; Description: "API Monitor"; Types: full;

[Files]
Source: "{#MySrcDir}\processmonitors\apimonitor\*"; DestDir: "{app}\apimonitor"; Components: "processmonitors\apimonitor"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\API Monitor (x64)"; Filename: "{app}\apimonitor\apimonitor-x64.exe"; WorkingDir: "{app}\apimonitor"; Components: "processmonitors\apimonitor"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Process monitors\API Monitor (x64)"; Filename: "{app}\apimonitor\apimonitor-x64.exe"; WorkingDir: "{app}\apimonitor"; Components: "processmonitors\apimonitor"; Check: Is64BitInstallMode
Name: "{group}\{#MyAppName}\API Monitor (x86)"; Filename: "{app}\apimonitor\apimonitor-x86.exe"; WorkingDir: "{app}\apimonitor"; Components: "processmonitors\apimonitor"
Name: "{app}\sendto+\sendto\Process monitors\API Monitor (x86)"; Filename: "{app}\apimonitor\apimonitor-x86.exe"; WorkingDir: "{app}\apimonitor"; Components: "processmonitors\apimonitor"