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

; v12.1.3
; https://github.com/NationalSecurityAgency/ghidra/

[Components]
Name: "decompilers\ghidra"; Description: "Ghidra"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\decompilers\ghidra\*"; DestDir: "{app}\decompilers\ghidra"; Components: "decompilers\ghidra"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\Ghidra"; Filename: "{app}\decompilers\ghidra\ghidraRun.bat"; Components: "decompilers\ghidra"; IconFilename: "{app}\decompilers\ghidra\support\ghidra.ico"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Decompilers\Ghidra"; Filename: "{app}\decompilers\ghidra\ghidraRun.bat"; Components: "decompilers\ghidra"; IconFilename: "{app}\decompilers\ghidra\support\ghidra.ico"; Check: Is64BitInstallMode
; Documentation
Name: "{app}\sendto+\sendto\Documentation\Ghidra"; Filename: "{app}\decompilers\ghidra\docs"; Components: "decompilers\ghidra"