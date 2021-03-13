[Components]
Name: "decompilers\exe2aut"; Description: "Exe2Aut"; Types: full;

[Files]
Source: "{#MySrcDir}\exe2aut\*"; DestDir: "{app}\exe2aut"; Components: "decompilers\exe2aut"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Exe2Aut"; Filename: "{app}\exe2aut\Exe2Aut.exe"; WorkingDir: "{app}\exe2aut"; Components: "decompilers\exe2aut"
Name: "{userdesktop}\{#MyAppName}\Exe2Aut"; Filename: "{app}\exe2aut\Exe2Aut.exe"; WorkingDir: "{app}\exe2aut"; Components: "decompilers\exe2aut"