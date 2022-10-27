; v0.5.4
; https://github.com/solemnwarning/rehex

[Components]
Name: "hexeditors\rehex"; Description: "Reverse Engineers' Hex Editor"; Types: full compact;

[Files]
Source: "{#MySrcDir}\hexeditors\rehex\*"; DestDir: "{app}\hexeditors\rehex"; Components: "hexeditors\rehex"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Reverse Engineers' Hex Editor"; Filename: "{app}\hexeditors\rehex\rehex.exe"; Components: "hexeditors\rehex"
Name: "{app}\sendto+\sendto\Hex editors\Reverse Engineers' Hex Editor"; Filename: "{app}\hexeditors\rehex\rehex.exe"; Components: "hexeditors\rehex"