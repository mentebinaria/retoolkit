; v0.0.6.3 2020.07.22
[Components]
Name: "peanalysers\exeinfope"; Description: "Exeinfo PE"; Types: full;

[Files]
Source: "{#MySrcDir}\exeinfope\*"; DestDir: "{app}\exeinfope"; Components: "peanalysers\exeinfope"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Exeinfo PE"; Filename: "{app}\exeinfope\exeinfope.exe"; WorkingDir: "{app}\exeinfope"; Components: "peanalysers\exeinfope"
Name: "{userdesktop}\{#MyAppName}\Exeinfo PE"; Filename: "{app}\exeinfope\exeinfope.exe"; WorkingDir: "{app}\exeinfope"; Components: "peanalysers\exeinfope"