; v0.0.8.0
; https://github.com/ExeinfoASL/ASL

[Components]
Name: "pe\exeinfope"; Description: "Exeinfo PE"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\exeinfope\*"; DestDir: "{app}\pe\exeinfope"; Components: "pe\exeinfope"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Exeinfo PE"; Filename: "{app}\\peexeinfope\exeinfope.exe"; WorkingDir: "{app}\pe\exeinfope"; Components: "pe\exeinfope"
Name: "{app}\sendto+\sendto\PE\Exeinfo PE"; Filename: "{app}\pe\exeinfope\exeinfope.exe"; WorkingDir: "{app}\pe\exeinfope"; Components: "pe\exeinfope"