; v3.2.0
; https://github.com/mandiant/capa

[Components]
Name: "peanalysers\capa"; Description: "capa"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\peanalysers\capa\capa.exe"; DestDir: "{app}\bin"; Components: "peanalysers\capa"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode