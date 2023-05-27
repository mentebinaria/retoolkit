; v2.2.0
; https://github.com/mandiant/flare-floss

[Components]
Name: "pe\floss"; Description: "FLOSS"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\pe\floss\floss.exe"; DestDir: "{app}\bin"; Components: "pe\floss"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode