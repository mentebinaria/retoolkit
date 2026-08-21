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

; v11.0
; https://github.com/icsharpcode/ILSpy

[Components]
Name: "dotnet\ilspy"; Description: "ILSpy"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\ilspy\*"; DestDir: "{app}\dotnet\ilspy"; Components: "dotnet\ilspy"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\ILSpy"; Filename: "{app}\dotnet\ilspy\ILSpy.exe"; Components: "dotnet\ilspy"
Name: "{app}\sendto+\sendto\Dotnet\ILSpy"; Filename: "{app}\dotnet\ilspy\ILSpy.exe"; Components: "dotnet\ilspy"