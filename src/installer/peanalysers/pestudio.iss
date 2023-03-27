; v9.48
; https://www.winitor.com

[Components]
Name: "peanalysers\pestudio"; Description: "pestudio"; Types: full;

[Files]
Source: "{#MySrcDir}\peanalysers\pestudio\*"; DestDir: "{app}\peanalysers\pestudio"; Components: "peanalysers\pestudio"; Flags: ignoreversion recursesubdirs createallsubdirs 

[Icons]
Name: "{group}\{#MyAppName}\pestudio"; Filename: "{app}\peanalysers\pestudio\pestudio.exe"; WorkingDir: "{app}\peanalysers\pestudio"; Components: "peanalysers\pestudio"
Name: "{app}\sendto+\sendto\PE analysers\pestudio"; Filename: "{app}\peanalysers\pestudio\pestudio.exe"; WorkingDir: "{app}\peanalysers\pestudio"; Components: "peanalysers\pestudio"