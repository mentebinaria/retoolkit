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

; v3.5
; https://github.com/4n0nym0us/4n4lDetector

[Components]
Name: "pe\4n4ldetector"; Description: "4n4lDetector"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\4n4ldetector\*"; DestDir: "{app}\pe\4n4ldetector"; Components: "pe\4n4ldetector"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\4n4lDetector"; Filename: "{app}\pe\4n4ldetector\4N4LDetector.exe"; WorkingDir: "{app}\pe\4n4ldetector"; Components: "pe\4n4ldetector"
Name: "{app}\sendto+\sendto\PE\4n4lDetector"; Filename: "{app}\pe\4n4ldetector\4N4LDetector.exe"; WorkingDir: "{app}\pe\4n4ldetector"; Components: "pe\4n4ldetector"