; v1.1.1
; https://github.com/m417z/UWPSpy

[Components]
Name: "pe\uwpspy"; Description: "UWPSpy"; Types: full

[Files]
Source: "{#MySrcDir}\pe\uwpspy\*"; DestDir: "{app}\pe\uwpspy"; Components: "pe\uwpspy"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\UWPSpy"; Filename: "{app}\pe\uwpspy\UWPSpy.exe"; WorkingDir: "{app}\pe\uwpspy"; Comment: "Inspect UWP apps"; Components: "pe\uwpspy"
Name: "{app}\sendto+\sendto\PE\UWPSpy"; Filename: "{app}\pe\uwpspy\UWPSpy.exe"; WorkingDir: "{app}\pe\uwpspy"; Comment: "Inspect UWP apps"; Components: "pe\uwpspy"