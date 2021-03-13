; v0.81

[Components]
Name: "peanalysers\pev"; Description: "pev"; Types: full;

[Files]
Source: "{#MySrcDir}\pev\*"; DestDir: "{app}\pev"; Components: "peanalysers\pev"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\pev"; Filename: "{app}\pev\pev.bat"; WorkingDir: "{app}\pev"; Components: "peanalysers\pev"
Name: "{userdesktop}\{#MyAppName}\pev"; Filename: "{app}\pev\run.bat"; WorkingDir: "{app}\pev"; Components: "peanalysers\pev"