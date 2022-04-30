; v0.81
; https://github.com/merces/pev

[Components]
Name: "peanalysers\pev"; Description: "pev"; Types: full;

[Files]
Source: "{#MySrcDir}\peanalysers\pev\*"; DestDir: "{app}\pev"; Components: "peanalysers\pev"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\pev"; Filename: "{app}\pev\run.bat"; WorkingDir: "{app}\pev"; Components: "peanalysers\pev"
Name: "{app}\sendto+\sendto\PE analysers\pev"; Filename: "{app}\pev\run.bat"; WorkingDir: "{app}\pev"; Components: "peanalysers\pev"