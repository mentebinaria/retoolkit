; v0.91
; https://github.com/zodiacon/SystemExplorer

[Components]
Name: "processmonitors\sysexp"; Description: "System Explorer"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\processmonitors\systemexplorer\SysExp.exe"; DestDir: "{app}\systemexplorer"; Components: "processmonitors\sysexp"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\System Explorer"; Filename: "{app}\systemexplorer\SysExp.exe"; WorkingDir: "{app}\systemexplorer"; Components: "processmonitors\sysexp"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Process monitors\System Explorer"; Filename: "{app}\systemexplorer\SysExp.exe"; WorkingDir: "{app}\systemexplorer"; Components: "processmonitors\sysexp"; Check: Is64BitInstallMode