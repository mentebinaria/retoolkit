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

; v8.9.7
; https://notepad-plus-plus.org/

[Components]
Name: "utilities\npp"; Description: "Notepad++"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\npp\*"; DestDir: "{app}\utilities\npp"; Components: "utilities\npp"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\utilities\npp\npp.8.9.7.Installer.x64.exe"; Parameters: "/S /D={app}\utilities\npp"; Components: "utilities\npp"; Check: Is64BitInstallMode
Filename: "{app}\utilities\npp\npp.8.9.7.Installer.exe"; Parameters: "/S /D={app}\utilities\npp"; Components: "utilities\npp"; Check: not Is64BitInstallMode

[Icons]
Name: "{app}\sendto+\sendto\Utilities\Notepad++"; Filename: "{app}\utilities\npp\notepad++.exe"; WorkingDir: "{app}\utilities\npp"; Components: "utilities\npp"

[UninstallRun]
Filename: "{app}\utilities\npp\uninstall.exe"; Parameters: "/S"; Components: "utilities\npp"