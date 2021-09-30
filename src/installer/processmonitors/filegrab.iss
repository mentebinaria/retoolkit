; v0.4
; https://github.com/merces/filegrab

[Components]
Name: "processmonitors\filegrab"; Description: "FileGrab"; Types: full;

[Files]
Source: "{#MySrcDir}\processmonitors\filegrab\*"; DestDir: "{app}\filegrab"; Components: "processmonitors\filegrab"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\FileGrab"; Filename: "{app}\filegrab\FileGrab.exe"; WorkingDir: "{app}\filegrab"; Components: "processmonitors\filegrab"
Name: "{app}\sendto+\sendto\Process monitors\FileGrab"; Filename: "{app}\filegrab\FileGrab.exe"; WorkingDir: "{app}\filegrab"; Components: "processmonitors\filegrab"