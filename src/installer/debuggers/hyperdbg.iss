; v0.1.0
; https://github.com/HyperDbg/HyperDbg

[Components]
Name: "debuggers\hyperdbg"; Description: "HyperDbg"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\debuggers\hyperdbg\*"; DestDir: "{app}\debuggers\hyperdbg"; Components: "debuggers\hyperdbg"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode
