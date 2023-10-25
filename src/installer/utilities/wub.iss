; v1.8
; https://www.sordum.org/9470/windows-update-blocker-v1-8/

[Components]
Name: "utilities\wub"; Description: "Windows Update Blocker"; Types: full;


[Files]
Source: "{#MySrcDir}\utilities\wub\*.exe"; DestDir: "{app}\utilities\wub"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: "utilities\wub"

[Run]
Filename: "{app}\utilities\wub\Wub_x64.exe"; Parameters: "/D"; Check: Is64BitInstallMode; Components: "utilities\wub"; Tasks: wub
Filename: "{app}\utilities\wub\Wub.exe"; Parameters: "/D"; Check: not Is64BitInstallMode; Components: "utilities\wub"; Tasks: wub

[Icons]
Name: "{app}\sendto+\sendto\Utilities\Windows Update Blocker"; Filename: "{app}\utilities\wub\Wub_x64.exe"; Components: "utilities\wub"; Check: Is64BitInstallMode;
Name: "{app}\sendto+\sendto\Utilities\Windows Update Blocker"; Filename: "{app}\utilities\wub\Wub.exe"; Components: "utilities\wub"; Check: not Is64BitInstallMode;