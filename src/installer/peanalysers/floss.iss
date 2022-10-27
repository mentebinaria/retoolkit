; v2.1.0
; https://github.com/mandiant/flare-floss

[Components]
Name: "peanalysers\floss"; Description: "FLOSS"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\peanalysers\floss\floss.exe"; DestDir: "{app}\bin"; Components: "peanalysers\floss"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode