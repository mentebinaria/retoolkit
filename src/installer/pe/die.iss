; v3.0.7
; https://github.com/horsicq/DIE-engine

[Components]
Name: "pe\die"; Description: "Detect It Easy"; Types: full compact;

[Files]
Source: "{#MySrcDir}\pe\die\*"; DestDir: "{app}\pe\die"; Components: "pe\die"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Detect It Easy"; Filename: "{app}\pe\die\die.exe"; WorkingDir: "{app}\pe\die"; Comment: "Compiler/linker/protector detector"; Components: "pe\die"
Name: "{app}\sendto+\sendto\PE\Detect It Easy"; Filename: "{app}\pe\die\die.exe"; WorkingDir: "{app}\pe\die"; Comment: "Compiler/linker/protector detector"; Components: "pe\die"