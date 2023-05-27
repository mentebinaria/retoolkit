; v0.5.5.7
; https://github.com/hasherezade/pe-bear-releases

[Components]
Name: "pe\pebear"; Description: "PE-Bear"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\pe-bear\*"; DestDir: "{app}\pe\pe-bear"; Components: "pe\pebear"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\PE-bear"; Filename: "{app}\pe\pe-bear\PE-bear.exe"; WorkingDir: "{app}\pe\PE-bear"; Components: "pe\pebear"
Name: "{app}\sendto+\sendto\PE\PE-bear"; Filename: "{app}\pe\pe-bear\PE-bear.exe"; WorkingDir: "{app}\pe\PE-bear"; Components: "pe\pebear"