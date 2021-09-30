; v0.8.0 Alpha 4
; https://github.com/goretk/redress

[Components]
Name: "peanalysers\redress"; Description: "redress"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\peanalysers\redress\redress.exe"; DestDir: "{app}\bin"; Components: "peanalysers\redress"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode