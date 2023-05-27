; v0.91
; https://github.com/zodiacon/SystemExplorer

[Components]
Name: "processinspection\sysexp"; Description: "System Explorer"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\processinspection\systemexplorer\SysExp.exe"; DestDir: "{app}\systemexplorer"; Components: "processinspection\sysexp"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\System Explorer"; Filename: "{app}\systemexplorer\SysExp.exe"; WorkingDir: "{app}\systemexplorer"; Components: "processinspection\sysexp"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Process Inspection\System Explorer"; Filename: "{app}\systemexplorer\SysExp.exe"; WorkingDir: "{app}\systemexplorer"; Components: "processinspection\sysexp"; Check: Is64BitInstallMode