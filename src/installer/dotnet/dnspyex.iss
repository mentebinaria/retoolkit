; Copyright 2021-2026 Fernando Mercês
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

; v6.6.0
; https://github.com/dnSpyEx/dnSpy

[Components]
Name: "dotnet\dnspyex"; Description: "dnSpyEx"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\dnSpyEx\dnSpy-net-win32\*"; DestDir: "{app}\dotnet\dnSpyEx\dnSpy-net-win32"; Components: "dotnet\dnspyex"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\dotnet\dnSpyEx\dnSpy-net-win64\*"; DestDir: "{app}\dotnet\dnSpyEx\dnSpy-net-win64"; Components: "dotnet\dnspyex"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\dnSpyEx (x86)"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win32\dnSpy.exe"; Components: "dotnet\dnspyex"
Name: "{app}\sendto+\sendto\Dotnet\dnSpyEx (x86)"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win32\dnSpy.exe"; Components: "dotnet\dnspyex"
Name: "{group}\{#MyAppName}\dnSpyEx (x64)"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win64\dnSpy.exe"; Components: "dotnet\dnspyex"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Dotnet\dnSpyEx (x64)"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win64\dnSpy.exe"; Components: "dotnet\dnspyex"; Check: Is64BitInstallMode