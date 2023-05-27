; v0.4
; https://github.com/mentebinaria/filegrab

[Components]
Name: "processinspection\filegrab"; Description: "FileGrab"; Types: full;

[Files]
Source: "{#MySrcDir}\processinspection\filegrab\*"; DestDir: "{app}\filegrab"; Components: "processinspection\filegrab"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\FileGrab"; Filename: "{app}\filegrab\FileGrab.exe"; WorkingDir: "{app}\filegrab"; Components: "processinspection\filegrab"
Name: "{app}\sendto+\sendto\Process monitors\FileGrab"; Filename: "{app}\filegrab\FileGrab.exe"; WorkingDir: "{app}\filegrab"; Components: "processinspection\filegrab"