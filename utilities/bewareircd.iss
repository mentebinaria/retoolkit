; v1.6.3

[Components]
Name: "utilities\bewareircd"; Description: "beware ircd"; Types: full;

[Files]
Source: "{#MySrcDir}\bewareircd\*"; DestDir: "{app}\bewareircd"; Components: "utilities\bewareircd"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\beware ircd"; Filename: "{app}\bewareircd\bircd.exe"; WorkingDir: "{app}\bewareircd"; Components: "utilities\bewareircd"
Name: "{userdesktop}\{#MyAppName}\beware ircd"; Filename: "{app}\bewareircd\bircd.exe"; WorkingDir: "{app}\bewareircd"; Components: "utilities\bewareircd"