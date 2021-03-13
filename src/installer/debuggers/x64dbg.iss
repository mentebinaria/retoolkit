; snapshot_2021-02-09_17-28

[Components]
Name: "debuggers\x64dbg"; Description: "x64dbg + plugins + scripts"; Types: full compact;

[Files]
Source: "{#MySrcDir}\x64dbg\*"; DestDir: "{app}\x64dbg"; Components: "debuggers\x64dbg"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\x64dbg"; Filename: "{app}\x64dbg\release\x96dbg.exe"; WorkingDir: "{app}\x64dbg\release"; Components: "debuggers\x64dbg"
Name: "{userdesktop}\{#MyAppName}\x64dbg"; Filename: "{app}\x64dbg\release\x96dbg.exe"; WorkingDir: "{app}\x64dbg\release"; Components: "debuggers\x64dbg"