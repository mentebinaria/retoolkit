; v0.3.1

[Components]
Name: "hexadecimaleditors\rehex"; Description: "Reverse Engineers' Hex Editor"; Types: full compact;

[Files]
Source: "{#MySrcDir}\rehex\*"; DestDir: "{app}\rehex"; Components: "hexadecimaleditors\rehex"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Reverse Engineers' Hex Editor"; Filename: "{app}\rehex\rehex.exe"; WorkingDir: "{app}\rehex"; Comment: "Hexadecimal editor"; Components: "hexadecimaleditors\rehex"
Name: "{userdesktop}\{#MyAppName}\Reverse Engineers' Hex Editor"; Filename: "{app}\rehex\rehex.exe"; WorkingDir: "{app}\rehex"; Comment: "Hexadecimal editor"; Components: "hexadecimaleditors\rehex"