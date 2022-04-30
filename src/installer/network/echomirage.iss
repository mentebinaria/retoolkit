; v3.1
; https://sourceforge.net/projects/echomirage.oldbutgold.p/

[Components]
Name: "network\echomirage"; Description: "Echo Mirage"; Types: full;

[Files]
Source: "{#MySrcDir}\network\echomirage\*"; DestDir: "{app}\network\echomirage"; Components: "network\echomirage"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Echo Mirage"; Filename: "{app}\network\echomirage\EchoMirage.exe"; WorkingDir: "{app}\network\echomirage"; Components: "network\echomirage"
Name: "{app}\sendto+\sendto\Network\Echo Mirage"; Filename: "{app}\network\echomirage\EchoMirage.exe"; WorkingDir: "{app}\network\echomirage"; Components: "network\echomirage"