; v9.45
; https://www.winitor.com

[Components]
Name: "peanalysers\pestudio"; Description: "pestudio"; Types: full;

[Files]
Source: "{#MySrcDir}\peanalysers\pestudio\*"; DestDir: "{app}\pestudio"; Components: "peanalysers\pestudio"; Flags: ignoreversion recursesubdirs createallsubdirs 

[Icons]
Name: "{group}\{#MyAppName}\pestudio"; Filename: "{app}\pestudio\pestudio.exe"; WorkingDir: "{app}\pestudio"; Components: "peanalysers\pestudio"
Name: "{app}\sendto+\sendto\PE analysers\pestudio"; Filename: "{app}\pestudio\pestudio.exe"; WorkingDir: "{app}\pestudio"; Components: "peanalysers\pestudio"