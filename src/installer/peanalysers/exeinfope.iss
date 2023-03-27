; v0.0.7.7
; https://github.com/ExeinfoASL/ASL

[Components]
Name: "peanalysers\exeinfope"; Description: "Exeinfo PE"; Types: full;

[Files]
Source: "{#MySrcDir}\peanalysers\exeinfope\*"; DestDir: "{app}\peanalysers\exeinfope"; Components: "peanalysers\exeinfope"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Exeinfo PE"; Filename: "{app}\\peanalysersexeinfope\exeinfope.exe"; WorkingDir: "{app}\peanalysers\exeinfope"; Components: "peanalysers\exeinfope"
Name: "{app}\sendto+\sendto\PE analysers\Exeinfo PE"; Filename: "{app}\peanalysers\exeinfope\exeinfope.exe"; WorkingDir: "{app}\peanalysers\exeinfope"; Components: "peanalysers\exeinfope"