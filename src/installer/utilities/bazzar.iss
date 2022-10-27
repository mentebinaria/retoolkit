; v0.2
; https://github.com/AandersonL/bazzar

[Components]
Name: "utilities\bazzar"; Description: "bazzar (MalwareBazaar CLI tool)"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\bazzar\bazzar.exe"; DestDir: "{app}\bin"; Components: "utilities\bazzar"; Flags: ignoreversion recursesubdirs createallsubdirs