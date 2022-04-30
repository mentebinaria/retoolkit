; v1.0.0
; https://github.com/goretk/redress

[Components]
Name: "peanalysers\redress"; Description: "redress"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\peanalysers\redress\redress.exe"; DestDir: "{app}\bin"; Components: "peanalysers\redress"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode