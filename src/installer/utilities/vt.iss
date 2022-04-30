; v0.10.2
; https://github.com/VirusTotal/vt-cli

[Components]
Name: "utilities\vt"; Description: "vt (VirusTotal CLI tool)"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\vt\vt.exe"; DestDir: "{app}\bin"; Components: "utilities\vt"; Flags: ignoreversion recursesubdirs createallsubdirs