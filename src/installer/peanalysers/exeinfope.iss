; v0.0.7.2
; http://www.exeinfo.o7.pl/

[Components]
Name: "peanalysers\exeinfope"; Description: "Exeinfo PE"; Types: full;

[Files]
Source: "{#MySrcDir}\peanalysers\exeinfope\*"; DestDir: "{app}\exeinfope"; Components: "peanalysers\exeinfope"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Exeinfo PE"; Filename: "{app}\exeinfope\exeinfope.exe"; WorkingDir: "{app}\exeinfope"; Components: "peanalysers\exeinfope"
Name: "{app}\sendto+\sendto\PE analysers\Exeinfo PE"; Filename: "{app}\exeinfope\exeinfope.exe"; WorkingDir: "{app}\exeinfope"; Components: "peanalysers\exeinfope"