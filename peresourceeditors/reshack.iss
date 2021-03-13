; v5.1.8 (build 360)

[Components]
Name: "peresourceeditors\reshack"; Description: "Resource Hacker"; Types: full;

[Files]
Source: "{#MySrcDir}\reshack\*"; DestDir: "{app}\reshack"; Components: "peresourceeditors\reshack"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Resource Hacker"; Filename: "{app}\reshack\ResourceHacker.exe"; WorkingDir: "{app}\reshack"; Components: "peresourceeditors\reshack"
Name: "{userdesktop}\{#MyAppName}\Resource Hacker"; Filename: "{app}\reshack\ResourceHacker.exe"; WorkingDir: "{app}\reshack"; Components: "peresourceeditors\reshack"