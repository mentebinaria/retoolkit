; v2.15 Build(212)

[Components]
Name: "decompilers\myauttoexe"; Description: "myAutToExe"; Types: full;

[Files]
Source: "{#MySrcDir}\myAutToExe\*"; DestDir: "{app}\myAutToExe"; Components: "decompilers\myauttoexe"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\myAutToExe"; Filename: "{app}\myAutToExe\myAutToExe.exe"; WorkingDir: "{app}\myAutToExe"; Components: "decompilers\myauttoexe"
Name: "{userdesktop}\{#MyAppName}\myAutToExe"; Filename: "{app}\myAutToExe\myAutToExe.exe"; WorkingDir: "{app}\myAutToExe"; Components: "decompilers\myauttoexe"