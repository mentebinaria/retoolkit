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

; v4.6.8
; https://www.wireshark.org/download.html

[Components]
Name: "network\wireshark"; Description: "Wireshark"; Types: full;

[Files]
Source: "{#MySrcDir}\network\npcap\npcap-1.88.exe"; DestDir: "{app}\network\npcap"; Components: "network\wireshark"; Check: not NpcapInstalled
Source: "{#MySrcDir}\network\wireshark\*"; DestDir: "{app}\network\wireshark"; Components: "network\wireshark"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Wireshark"; Filename: "{app}\network\wireshark\WiresharkPortable64.exe"; WorkingDir: "{app}\network\wireshark"; Components: "network\wireshark"
Name: "{app}\sendto+\sendto\Network\Wireshark"; Filename: "{app}\network\wireshark\WiresharkPortable64.exe"; WorkingDir: "{app}\network\wireshark"; Components: "network\wireshark"

[Run]
Filename: "{app}\network\wireshark\npcap-1.88.exe"; Check: not NpcapInstalled; Components: "network\wireshark"