; v9.09

[Components]
Name: "peanalysers\pestudio"; Description: "pestudio"; Types: full;

[Files]
Source: "{#MySrcDir}\pestudio\*"; DestDir: "{app}\pestudio"; Components: "peanalysers\pestudio"; Flags: ignoreversion recursesubdirs createallsubdirs 

[Icons]
Name: "{group}\{#MyAppName}\pestudio"; Filename: "{app}\pestudio\pestudio.exe"; WorkingDir: "{app}\pestudio"; Components: "peanalysers\pestudio"
Name: "{userdesktop}\{#MyAppName}\pestudio"; Filename: "{app}\pestudio\pestudio.exe"; WorkingDir: "{app}\pestudio"; Components: "peanalysers\pestudio"