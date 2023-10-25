; v8.5.8
; https://notepad-plus-plus.org/

[Components]
Name: "utilities\npp"; Description: "Notepad++"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\npp\*"; DestDir: "{app}\utilities\npp"; Components: "utilities\npp"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\utilities\npp\npp.8.5.8.Installer.x64.exe"; Parameters: "/S /D={app}\utilities\npp"; Components: "utilities\npp"; Check: Is64BitInstallMode
Filename: "{app}\utilities\npp\npp.8.5.8.Installer.exe"; Parameters: "/S /D={app}\utilities\npp"; Components: "utilities\npp"; Check: not Is64BitInstallMode

[Icons]
Name: "{app}\sendto+\sendto\Utilities\Notepad++"; Filename: "{app}\utilities\npp\notepad++.exe"; WorkingDir: "{app}\utilities\npp"; Components: "utilities\npp"

[UninstallRun]
Filename: "{app}\utilities\npp\uninstall.exe"; Parameters: "/S"; Components: "utilities\npp"