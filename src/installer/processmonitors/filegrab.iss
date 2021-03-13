; v0.4

[Components]
Name: "processmonitors\filegrab"; Description: "FileGrab"; Types: full;

[Files]
Source: "{#MySrcDir}\filegrab\*"; DestDir: "{app}\filegrab"; Components: "processmonitors\filegrab"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\FileGrab"; Filename: "{app}\filegrab\FileGrab.exe"; WorkingDir: "{app}\filegrab"; Components: "processmonitors\filegrab"
Name: "{userdesktop}\{#MyAppName}\FileGrab"; Filename: "{app}\filegrab\FileGrab.exe"; WorkingDir: "{app}\filegrab"; Components: "processmonitors\filegrab"