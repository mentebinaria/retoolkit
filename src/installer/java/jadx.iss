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

; v1.5.6
; https://github.com/skylot/jadx

[Components]
Name: "java\jadx"; Description: "Dex to Java decompiler (JADX)"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\java\jadx\*"; DestDir: "{app}\java\jadx"; Components: "java\jadx"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\JADX"; Filename: "{app}\java\jadx\bin\jadx-gui.bat"; Components: "java\jadx";
Name: "{app}\sendto+\sendto\Java\JADX"; Filename: "{app}\java\jadx\bin\jadx-gui.bat"; Components: "java\jadx";