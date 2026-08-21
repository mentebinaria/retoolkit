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

; v2.1.1
; https://github.com/hfiref0x/WinObjEx64

[Components]
Name: "systeminformation\winobjex64"; Description: "WinObjEx64"; Types: full;

[Files]
Source: "{#MySrcDir}\systeminformation\winobjex64\*"; DestDir: "{app}\systeminformation\winobjex64"; Components: "systeminformation\winobjex64"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\WinObjEx64"; Filename: "{app}\systeminformation\winobjex64\WinObjEx64.exe"; WorkingDir: "{app}\systeminformation\winobjex64"; Components: "systeminformation\winobjex64"
Name: "{app}\sendto+\sendto\System Information\WinObjEx64"; Filename: "{app}\systeminformation\winobjex64\WinObjEx64.exe"; WorkingDir: "{app}\systeminformation\winobjex64"; Components: "systeminformation\winobjex64"