; v1.6.3

[Components]
Name: "network\bewareircd"; Description: "beware ircd"; Types: full;

[Files]
Source: "{#MySrcDir}\network\bewareircd\*"; DestDir: "{app}\bewareircd"; Components: "network\bewareircd"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\beware ircd"; Filename: "{app}\bewareircd\bircd.exe"; WorkingDir: "{app}\bewareircd"; Components: "network\bewareircd"
Name: "{app}\sendto+\sendto\Network tools\beware ircd"; Filename: "{app}\bewareircd\bircd.exe"; WorkingDir: "{app}\bewareircd"; Components: "network\bewareircd"