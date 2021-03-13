; v3.0.0

[Components]
Name: "hexadecimaleditors\fhex"; Description: "Fhex"; Types: full;

[Files]
Source: "{#MySrcDir}\fhex\*"; DestDir: "{app}\fhex"; Components: "hexadecimaleditors\fhex"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Fhex"; Filename: "{app}\fhex\fhex.exe"; WorkingDir: "{app}\fhex"; Comment: "Fhex hexadecimal editor"; Components: "hexadecimaleditors\fhex"
Name: "{userdesktop}\{#MyAppName}\Fhex"; Filename: "{app}\fhex\fhex.exe"; WorkingDir: "{app}\fhex"; Comment: "Fhex hexadecimal editor"; Components: "hexadecimaleditors\fhex"

; [Registry]
; Root: HKCR; Subkey: "*\shell\fhex"; ValueType: string; ValueData: "Edit with Fhex"
; Root: HKCR; Subkey: "*\shell\fhex"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\fhex\fhex.exe,0"
; Root: HKCR; Subkey: "*\shell\fhex\command"; ValueType: string; ValueData: "{app}\fhex\fhex.exe %1"