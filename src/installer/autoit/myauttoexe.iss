; v2.15 Build(212)

[Components]
Name: "autoit\myauttoexe"; Description: "myAutToExe"; Types: full;

[Files]
Source: "{#MySrcDir}\autoit\myAutToExe\*"; DestDir: "{app}\autoit\myAutToExe"; Components: "autoit\myauttoexe"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\myAutToExe"; Filename: "{app}\autoit\myAutToExe\myAutToExe.exe"; Components: "autoit\myauttoexe"
Name: "{app}\sendto+\sendto\AutoIt decompilers\myAutToExe"; Filename: "{app}\autoit\myAutToExe\myAutToExe.exe"; Components: "autoit\myauttoexe"