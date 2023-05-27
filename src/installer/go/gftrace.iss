; v3.1
; https://github.com/leandrofroes/gftrace

[Components]
Name: "go\gftrace"; Description: "gftrace"; Types: full;

[Files]
Source: "{#MySrcDir}\go\gftrace\*"; DestDir: "{app}\bin"; Components: "go\gftrace"; Flags: ignoreversion recursesubdirs createallsubdirs