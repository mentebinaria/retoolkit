; v0.11

[Components]
Name: "autoit\exe2aut"; Description: "Exe2Aut"; Types: full;

[Files]
Source: "{#MySrcDir}\autoit\exe2aut\*"; DestDir: "{app}\autoit\exe2aut"; Components: "autoit\exe2aut"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Exe2Aut"; Filename: "{app}\autoit\exe2aut\Exe2Aut.exe"; Components: "autoit\exe2aut"
Name: "{app}\sendto+\sendto\AutoIt decompilers\Exe2Aut"; Filename: "{app}\autoit\exe2aut\Exe2Aut.exe"; Components: "autoit\exe2aut"