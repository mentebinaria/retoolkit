; v0.5.3.2 (x86)

[Components]
Name: "peanalysers\pebear"; Description: "PE-Bear"; Types: full;

[Files]
Source: "{#MySrcDir}\PE-bear\*"; DestDir: "{app}\PE-bear"; Components: "peanalysers\pebear"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\PE-bear"; Filename: "{app}\PE-bear\PE-bear.exe"; WorkingDir: "{app}\PE-bear"; Components: "peanalysers\pebear"
Name: "{userdesktop}\{#MyAppName}\PE-bear"; Filename: "{app}\PE-bear\PE-bear.exe"; WorkingDir: "{app}\PE-bear"; Components: "peanalysers\pebear"