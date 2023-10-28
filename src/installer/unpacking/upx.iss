; v4.2.0
; https://github.com/upx/upx

[Components]
Name: "unpacking\upx"; Description: "UPX"; Types: full;

[Files]
Source: "{#MySrcDir}\unpacking\upx\32\upx.exe"; DestDir: "{app}\bin"; Components: "unpacking\upx"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: not Is64BitInstallMode
Source: "{#MySrcDir}\unpacking\upx\64\upx.exe"; DestDir: "{app}\bin"; Components: "unpacking\upx"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode