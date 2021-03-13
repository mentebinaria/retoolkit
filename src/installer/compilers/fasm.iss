; v1.73.27

[Components]
Name: "compilers\fasm"; Description: "fasm (flat assembler)"; Types: full;

[Files]
Source: "{#MySrcDir}\fasm\*"; DestDir: "{app}\fasm"; Components: "compilers\fasm"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\fasm"; Filename: "{app}\fasm\fasmw.exe"; WorkingDir: "{app}\fasm"; Components: "compilers\fasm"
Name: "{userdesktop}\{#MyAppName}\fasm"; Filename: "{app}\fasm\fasmw.exe"; WorkingDir: "{app}\fasm"; Components: "compilers\fasm"