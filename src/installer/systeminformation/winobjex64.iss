; v2.0.3
; https://github.com/hfiref0x/WinObjEx64

[Components]
Name: "systeminformation\winobjex64"; Description: "WinObjEx64"; Types: full;

[Files]
Source: "{#MySrcDir}\systeminformation\winobjex64\*"; DestDir: "{app}\systeminformation\winobjex64"; Components: "systeminformation\winobjex64"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\WinObjEx64"; Filename: "{app}\systeminformation\winobjex64\WinObjEx64.exe"; WorkingDir: "{app}\systeminformation\winobjex64"; Components: "systeminformation\winobjex64"
Name: "{app}\sendto+\sendto\Utilities\WinObjEx64"; Filename: "{app}\systeminformation\winobjex64\WinObjEx64.exe"; WorkingDir: "{app}\systeminformation\winobjex64"; Components: "systeminformation\winobjex64"