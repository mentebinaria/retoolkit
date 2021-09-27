; v0.5.4
; https://github.com/hasherezade/pe-bear-releases

[Components]
Name: "peanalysers\pebear"; Description: "PE-Bear"; Types: full;

[Files]
Source: "{#MySrcDir}\peanalysers\PE-bear\*"; DestDir: "{app}\PE-bear"; Components: "peanalysers\pebear"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\PE-bear"; Filename: "{app}\PE-bear\PE-bear.exe"; WorkingDir: "{app}\PE-bear"; Components: "peanalysers\pebear"
Name: "{app}\sendto+\sendto\PE analysers\PE-bear"; Filename: "{app}\PE-bear\PE-bear.exe"; WorkingDir: "{app}\PE-bear"; Components: "peanalysers\pebear"