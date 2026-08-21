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

; v0.0.9.9
; https://github.com/ExeinfoASL/ASL

[Components]
Name: "pe\exeinfope"; Description: "Exeinfo PE"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\exeinfope\*"; DestDir: "{app}\pe\exeinfope"; Components: "pe\exeinfope"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Exeinfo PE"; Filename: "{app}\\peexeinfope\exeinfope.exe"; WorkingDir: "{app}\pe\exeinfope"; Components: "pe\exeinfope"
Name: "{app}\sendto+\sendto\PE\Exeinfo PE"; Filename: "{app}\pe\exeinfope\exeinfope.exe"; WorkingDir: "{app}\pe\exeinfope"; Components: "pe\exeinfope"