; v7.94
; https://nmap.org/

[Components]
Name: "network\nmap"; Description: "Nmap (plus Zenmap, Ndiff, Ncat, and Nping)"; Types: full;

[Files]
Source: "{#MySrcDir}\network\nmap\*.exe"; DestDir: "{app}\network\nmap"; Components: "network\nmap"; Flags: ignoreversion recursesubdirs createallsubdirs

; nmap needs npcap, which doesn't support silent install mode, hence we prompt the user to interactively install it first
[Run]
Filename: "{app}\network\nmap\npcap-1.75.exe"; Components: "network\nmap"
Filename: "{app}\network\nmap\nmap-7.94-setup.exe"; Parameters: "/S /D={app}\network\nmap"; Components: "network\nmap"

; create a Zenmap shortcut under Network folder
[Icons]
Name: "{app}\sendto+\sendto\Network\Nmap - Zenmap GUI"; Filename: "{app}\network\nmap\zenmap\bin\pythonw.exe"; Parameters: "-c ""from zenmapGUI.App import run;run()"""; WorkingDir: "{app}\network\nmap"; IconFilename: "{app}\network\nmap\nmap.exe"; Components: "network\nmap"

[UninstallRun]
Filename: "{app}\network\nmap\Uninstall.exe"; Parameters: "/S"; Components: "network\nmap"