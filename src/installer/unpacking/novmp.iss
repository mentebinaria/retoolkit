; v1.0.6
; https://github.com/can1357/NoVmp

[Components]
Name: "unpacking\novmp"; Description: "NoVmp"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\unpacking\novmp\NoVmp.exe"; DestDir: "{app}\bin"; Components: "unpacking\novmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode