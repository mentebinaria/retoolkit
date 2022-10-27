; v5.1.8 (build 360)
; http://www.angusj.com/resourcehacker/

[Components]
Name: "peresourceeditors\reshack"; Description: "Resource Hacker"; Types: full;

[Files]
Source: "{#MySrcDir}\peanalysers\reshack\*"; DestDir: "{app}\peanalysers\reshack"; Components: "peresourceeditors\reshack"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Resource Hacker"; Filename: "{app}\peanalysers\reshack\ResourceHacker.exe"; WorkingDir: "{app}\peanalysers\reshack"; Components: "peresourceeditors\reshack"
Name: "{app}\sendto+\sendto\PE analysers\Resource Hacker"; Filename: "{app}\peanalysers\reshack\ResourceHacker.exe"; WorkingDir: "{app}\peanalysers\reshack"; Components: "peresourceeditors\reshack"