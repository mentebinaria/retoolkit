; Copyright 2021-2026 Fernando Mercês
; Copyright 2026 Danielly Nunes
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;    http://www.apache.org/licenses/LICENSE-2.0

; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

; v7.991
; https://nmap.org/

[Components]
Name: "network\nmap"; Description: "Nmap (plus Zenmap, Ndiff, Ncat, and Nping)"; Types: full;

[Files]
Source: "{#MySrcDir}\network\nmap\npcap-1.88.exe"; DestDir: "{app}\network\nmap"; Components: "network\nmap"; Check: not NpcapInstalled
Source: "{#MySrcDir}\network\nmap\*.exe"; DestDir: "{app}\network\nmap"; Components: "network\nmap"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\network\nmap\npcap-1.88.exe"; Check: not NpcapInstalled; Components: "network\nmap"; Flags: waituntilterminated
Filename: "{app}\network\nmap\nmap-7.991-setup.exe"; Parameters: "/S /D={app}\network\nmap"; Components: "network\nmap"

[Icons]
Name: "{app}\sendto+\sendto\Network\Nmap - Zenmap GUI"; Filename: "{app}\network\nmap\zenmap\bin\pythonw.exe"; Parameters: "-c ""from zenmapGUI.App import run;run()"""; WorkingDir: "{app}\network\nmap"; IconFilename: "{app}\network\nmap\nmap.exe"; Components: "network\nmap"

[UninstallRun]
Filename: "{app}\network\nmap\Uninstall.exe"; Parameters: "/S"; Components: "network\nmap"