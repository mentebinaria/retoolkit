; v2.3
; https://github.com/mandiant/GoReSym

[Components]
Name: "go\goresym"; Description: "GoReSym"; Types: full;

[Files]
Source: "{#MySrcDir}\go\goresym\goresym.exe"; DestDir: "{app}\bin"; Components: "go\goresym"; Flags: ignoreversion recursesubdirs createallsubdirs