; v0.82
; https://github.com/mentebinaria/readpe

[Components]
Name: "pe\pev"; Description: "pev"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\pev\*"; DestDir: "{app}\pe\pev"; Components: "pe\pev"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\pev"; Filename: "{app}\pe\pev\run.bat"; WorkingDir: "{app}\pe\pev"; Components: "pe\pev"
Name: "{app}\sendto+\sendto\PE\pev"; Filename: "{app}\pe\pev\run.bat"; WorkingDir: "{app}\pe\pev"; Components: "pe\pev"