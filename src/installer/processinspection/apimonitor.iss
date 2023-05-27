; v2 Alpha-r13
; http://www.rohitab.com/apimonitor

[Components]
Name: "processinspection\apimonitor"; Description: "API Monitor"; Types: full;

[Files]
Source: "{#MySrcDir}\processinspection\apimonitor\*"; DestDir: "{app}\processinspection\apimonitor"; Components: "processinspection\apimonitor"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\API Monitor (x64)"; Filename: "{app}\processinspection\apimonitor\apimonitor-x64.exe"; WorkingDir: "{app}\processinspection\apimonitor"; Components: "processinspection\apimonitor"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Process Inspection\API Monitor (x64)"; Filename: "{app}\processinspection\apimonitor\apimonitor-x64.exe"; WorkingDir: "{app}\processinspection\apimonitor"; Components: "processinspection\apimonitor"; Check: Is64BitInstallMode
Name: "{group}\{#MyAppName}\API Monitor (x86)"; Filename: "{app}\processinspection\apimonitor\apimonitor-x86.exe"; WorkingDir: "{app}\processinspection\apimonitor"; Components: "processinspection\apimonitor"
Name: "{app}\sendto+\sendto\Process Inspection\API Monitor (x86)"; Filename: "{app}\processinspection\apimonitor\apimonitor-x86.exe"; WorkingDir: "{app}\processinspection\apimonitor"; Components: "processinspection\apimonitor"