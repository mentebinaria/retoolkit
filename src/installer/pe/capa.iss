; v5.1.0
; https://github.com/mandiant/capa

[Components]
Name: "pe\capa"; Description: "capa"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\pe\capa\capa.exe"; DestDir: "{app}\bin"; Components: "pe\capa"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode