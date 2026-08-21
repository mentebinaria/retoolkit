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

; v26.02
; https://www.7-zip.org

; We don't extract the main executable form the original installer because 7-Zip installs many a few libraries
; and registers shell extensions (right-click menu)

[Components]
Name: "utilities\7zip"; Description: "7-Zip"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\7zip\*.exe"; DestDir: "{app}\utilities\7zip"; Components: "utilities\7zip"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\utilities\7zip\7z2602-x64.exe"; Parameters: "/S /D={app}\utilities\7zip"; Components: "utilities\7zip"; Check: Is64BitInstallMode
Filename: "{app}\utilities\7zip\7z2602.exe"; Parameters: "/S /D={app}\utilities\7zip"; Components: "utilities\7zip";  Check: not Is64BitInstallMode

[Icons]
Name: "{app}\sendto+\sendto\Utilities\7-Zip"; Filename: "{app}\utilities\7zip\7zFM.exe"; WorkingDir: "{app}\utilities\7zip"; Components: "utilities\7zip"

[UninstallRun]
Filename: "{app}\utilities\7zip\Uninstall.exe"; Parameters: "/S"; Components: "utilities\7zip"