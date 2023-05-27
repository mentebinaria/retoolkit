; v9.51
; https://www.winitor.com

[Components]
Name: "pe\pestudio"; Description: "pestudio"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\pestudio\*"; DestDir: "{app}\pe\pestudio"; Components: "pe\pestudio"; Flags: ignoreversion recursesubdirs createallsubdirs 

[Icons]
Name: "{group}\{#MyAppName}\pestudio"; Filename: "{app}\pe\pestudio\pestudio.exe"; WorkingDir: "{app}\pe\pestudio"; Components: "pe\pestudio"
Name: "{app}\sendto+\sendto\PE\pestudio"; Filename: "{app}\pe\pestudio\pestudio.exe"; WorkingDir: "{app}\pe\pestudio"; Components: "pe\pestudio"