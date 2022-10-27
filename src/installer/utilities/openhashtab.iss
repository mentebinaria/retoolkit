; v3.0.2
; https://github.com/namazso/OpenHashTab

; We don't extract the main executable form the original installer because OpenHashTab
; registers many components

[Components]
Name: "utilities\openhashtab"; Description: "OpenHashTab"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\openhashtab\*.exe"; DestDir: "{app}\openhashtab"; Components: "utilities\openhashtab"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\openhashtab\OpenHashTab_setup.exe"; Parameters: "/verysilent /currentuser"; Components: "utilities\openhashtab"
