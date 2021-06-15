; v0.91

[Components]
Name: "processmonitors\sysexp"; Description: "System Explorer"; Types: full;

[Files]
Source: "{#MySrcDir}\processmonitors\systemexplorer\SysExp.exe"; DestDir: "{app}\systemexplorer"; Components: "processmonitors\sysexp"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\System Explorer"; Filename: "{app}\systemexplorer\SysExp.exe"; WorkingDir: "{app}\systemexplorer"; Components: "processmonitors\sysexp"
Name: "{app}\sendto+\sendto\Process monitors\System Explorer"; Filename: "{app}\systemexplorer\SysExp.exe"; WorkingDir: "{app}\systemexplorer"; Components: "processmonitors\sysexp"