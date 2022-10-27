; v2.5.0.0
; https://mh-nexus.de

; We extract the main executable form the original installer to make things easier

[Components]
Name: "hexeditors\hxd"; Description: "HxD"; Types: full;

[Files]
Source: "{#MySrcDir}\hexeditors\hxd\*"; DestDir: "{app}\hexeditors\hxd"; Components: "hexeditors\hxd"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\HxD"; Filename: "{app}\hexeditors\hxd\HxD.exe"; Components: "hexeditors\hxd"
Name: "{app}\sendto+\sendto\Hex Editors\HxD"; Filename: "{app}\hexeditors\hxd\HxD.exe"; Components: "hexeditors\hxd"