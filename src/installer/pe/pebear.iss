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

; v0.7.2
; https://github.com/hasherezade/pe-bear

[Components]
Name: "pe\pebear"; Description: "PE-Bear"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\pe-bear\*"; DestDir: "{app}\pe\pe-bear"; Components: "pe\pebear"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\PE-bear"; Filename: "{app}\pe\pe-bear\PE-bear.exe"; WorkingDir: "{app}\pe\PE-bear"; Components: "pe\pebear"
Name: "{app}\sendto+\sendto\PE\PE-bear"; Filename: "{app}\pe\pe-bear\PE-bear.exe"; WorkingDir: "{app}\pe\PE-bear"; Components: "pe\pebear"