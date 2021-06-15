; v1.73.27

[Components]
Name: "compilers\fasm"; Description: "fasm (flat assembler)"; Types: full;

[Files]
Source: "{#MySrcDir}\compilers\fasm\*"; DestDir: "{app}\compilers\fasm"; Components: "compilers\fasm"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\fasm"; Filename: "{app}\compilers\fasm\fasmw.exe"; Components: "compilers\fasm"
Name: "{app}\sendto+\sendto\Compilers\fasm"; Filename: "{app}\compilers\fasm\fasmw.exe"; Components: "compilers\fasm"

; [Registry]
; Root: HKCR; Subkey: "*\shell\retoolkit\shell\compilers\shell\fasm"; ValueType: string; ValueName: "MUIVerb"; ValueData: "fasm"; Components: "compilers\fasm"
; Root: HKCR; Subkey: "*\shell\retoolkit\shell\compilers\shell\fasm"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\compilers\fasm\fasmw.exe,0"; Components: "compilers\fasm"
; Root: HKCR; Subkey: "*\shell\retoolkit\shell\compilers\shell\fasm\command"; ValueType: string; ValueData: "{app}\compilers\fasm\fasmw.exe"; Components: "compilers\fasm"
; Root: HKCR; Subkey: ".asm\shell\retoolkit.fasm"; ValueType: string; ValueName: "MUIVerb"; ValueData: "Open with fasm"; Components: "compilers\fasm"; Flags: uninsdeletekey
; Root: HKCR; Subkey: ".asm\shell\retoolkit.fasm"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\compilers\fasm\fasmw.exe,0"; Components: "compilers\fasm"
; Root: HKCR; Subkey: ".asm\shell\retoolkit.fasm\command"; ValueType: string; ValueData: "{app}\compilers\fasm\fasmw.exe ""%1"""; Components: "compilers\fasm"
