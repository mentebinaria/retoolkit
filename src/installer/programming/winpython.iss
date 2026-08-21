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

; Winpython64-3.13.15.0dotb3.zip
; https://github.com/winpython/winpython

[Components]
Name: "programming\winpython"; Description: "Python 3 (WinPython)"; Types: full;

[Files]
Source: "{#MySrcDir}\programming\winpython\*"; DestDir: "{app}\programming\winpython"; Components: "programming\winpython"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Python IDLE (GUI)"; Filename: "{app}\programming\winpython\IDLE (Python GUI).exe"; Components: "programming\winpython"
Name: "{app}\sendto+\sendto\Programming\Python IDLE (GUI)"; Filename: "{app}\programming\winpython\IDLE (Python GUI).exe"; Components: "programming\winpython"
Name: "{group}\{#MyAppName}\Python Command Prompt"; Filename: "{app}\programming\winpython\WinPython Command Prompt.exe"; Components: "programming\winpython"
Name: "{app}\sendto+\sendto\Programming\Python Command Prompt"; Filename: "{app}\programming\winpython\WinPython Command Prompt.exe"; Components: "programming\winpython"