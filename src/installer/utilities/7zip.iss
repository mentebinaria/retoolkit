; v23.00 (beta)
; https://www.7-zip.org

; We don't extract the main executable form the original installer because 7-Zip installs many a few libraries
; and registers shell extensions (right-click menu)

[Components]
Name: "utilities\7zip"; Description: "7-Zip"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\7zip\*.exe"; DestDir: "{app}\utilities\7zip"; Components: "utilities\7zip"; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\utilities\7zip\7z2300-x64.exe"; Parameters: "/S /D={app}\utilities\7zip"; Components: "utilities\7zip"; Check: Is64BitInstallMode
Filename: "{app}\utilities\7zip\7z2300.exe"; Parameters: "/S /D={app}\utilities\7zip"; Components: "utilities\7zip";  Check: not Is64BitInstallMode

[Icons]
Name: "{app}\sendto+\sendto\Utilities\7-Zip"; Filename: "{app}\utilities\7zip\7zFM.exe"; WorkingDir: "{app}\utilities\7zip"; Components: "utilities\7zip"

[UninstallRun]
Filename: "{app}\utilities\7zip\Uninstall.exe"; Parameters: "/S"; Components: "utilities\7zip"