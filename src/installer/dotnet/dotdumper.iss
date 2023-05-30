; v1.1
; https://github.com/advanced-threat-research/DotDumper

[Components]
Name: "dotnet\dotdumper"; Description: "DotDumper"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\dotdumper\*"; DestDir: "{app}\dotnet\dotdumper"; Components: "dotnet\dotdumper"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\DotDumper"; Filename: "{app}\dotnet\dotdumper\DotDumperGUI.exe"; Components: "dotnet\dotdumper"
Name: "{app}\sendto+\sendto\Dotnet\DotDumper"; Filename: "{app}\dotnet\dotdumper\DotDumperGUI.exe"; Components: "dotnet\dotdumper"