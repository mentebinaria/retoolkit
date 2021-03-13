; v0.91

[Components]
Name: "processmonitors\sysexp"; Description: "System Explorer"; Types: full;

[Files]
Source: "{#MySrcDir}\zodiacon\SysExp.exe"; DestDir: "{app}\zodiacon"; Components: "processmonitors\sysexp"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\System Explorer"; Filename: "{app}\zodiacon\SysExp.exe"; WorkingDir: "{app}\zodiacon"; Components: "processmonitors\sysexp"
Name: "{userdesktop}\{#MyAppName}\System Explorer"; Filename: "{app}\zodiacon\SysExp.exe"; WorkingDir: "{app}\zodiacon"; Components: "processmonitors\sysexp"