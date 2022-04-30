; v1.73.30
; https://flatassembler.net

[Components]
Name: "programming\fasm"; Description: "fasm (flat assembler)"; Types: full;

[Files]
Source: "{#MySrcDir}\programming\fasm\*"; DestDir: "{app}\programming\fasm"; Components: "programming\fasm"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\fasm"; Filename: "{app}\programming\fasm\fasmw.exe"; Components: "programming\fasm"
Name: "{app}\sendto+\sendto\Programming\fasm"; Filename: "{app}\programming\fasm\fasmw.exe"; Components: "programming\fasm"

; [Registry]
; Root: HKCR; Subkey: "*\shell\retoolkit\shell\programming\shell\fasm"; ValueType: string; ValueName: "MUIVerb"; ValueData: "fasm"; Components: "programming\fasm"
; Root: HKCR; Subkey: "*\shell\retoolkit\shell\programming\shell\fasm"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\programming\fasm\fasmw.exe,0"; Components: "programming\fasm"
; Root: HKCR; Subkey: "*\shell\retoolkit\shell\programming\shell\fasm\command"; ValueType: string; ValueData: "{app}\programming\fasm\fasmw.exe"; Components: "programming\fasm"
; Root: HKCR; Subkey: ".asm\shell\retoolkit.fasm"; ValueType: string; ValueName: "MUIVerb"; ValueData: "Open with fasm"; Components: "programming\fasm"; Flags: uninsdeletekey
; Root: HKCR; Subkey: ".asm\shell\retoolkit.fasm"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\programming\fasm\fasmw.exe,0"; Components: "programming\fasm"
; Root: HKCR; Subkey: ".asm\shell\retoolkit.fasm\command"; ValueType: string; ValueData: "{app}\programming\fasm\fasmw.exe ""%1"""; Components: "programming\fasm"
