; v1.4.11
; https://github.com/mandiant/flare-fakenet-ng

[Components]
Name: "network\fakenet"; Description: "FakeNet-NG"; Types: full;

[Files]
Source: "{#MySrcDir}\network\fakenet\*"; DestDir: "{app}\network\fakenet"; Components: "network\fakenet"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\FakeNet-NG"; Filename: "{app}\network\fakenet\fakenet.exe"; WorkingDir: "{app}\network\fakenet"; Components: "network\fakenet"
Name: "{app}\sendto+\sendto\Network\FakeNet-NG"; Filename: "{app}\network\fakenet\fakenet.exe"; WorkingDir: "{app}\network\fakenet"; Components: "network\fakenet"