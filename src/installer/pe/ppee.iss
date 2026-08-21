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

; v1.14
; https://mzrst.com/

[Components]
Name: "pe\ppee"; Description: "PPEE (puppy)"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\ppee\*"; DestDir: "{app}\pe\ppee"; Components: "pe\ppee"; Flags: ignoreversion recursesubdirs createallsubdirs 

[Icons]
Name: "{group}\{#MyAppName}\PPEE (puppy)"; Filename: "{app}\pe\ppee\PPEE.exe"; WorkingDir: "{app}\pe\ppee"; Components: "pe\ppee"
Name: "{app}\sendto+\sendto\PE\PPEE (puppy)"; Filename: "{app}\pe\ppee\PPEE.exe"; WorkingDir: "{app}\pe\ppee"; Components: "pe\ppee"