; v3.0.1

[Components]
Name: "peanalysers\die"; Description: "Detect It Easy"; Types: full compact;

[Files]
Source: "{#MySrcDir}\die\*"; DestDir: "{app}\die"; Components: "peanalysers\die"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Detect It Easy"; Filename: "{app}\die\die.exe"; WorkingDir: "{app}\die"; Comment: "Compiler/linker/protector detector"; Components: "peanalysers\die"
Name: "{userdesktop}\{#MyAppName}\Detect It Easy"; Filename: "{app}\die\die.exe"; WorkingDir: "{app}\die"; Comment: "Compiler/linker/protector detector"; Components: "peanalysers\die"