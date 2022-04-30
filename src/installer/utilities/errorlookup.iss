; v2.4.2
; https://github.com/henrypp/errorlookup

[Components]
Name: "utilities\errorlookup"; Description: "Error Lookup"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\errorlookup\32\*"; DestDir: "{app}\errorlookup"; Components: "utilities\errorlookup"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: not Is64BitInstallMode
Source: "{#MySrcDir}\utilities\errorlookup\64\*"; DestDir: "{app}\errorlookup"; Components: "utilities\errorlookup"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\Error Lookup"; Filename: "{app}\errorlookup\ErrorLookup.exe"; WorkingDir: "{app}\errorlookup"; Components: "utilities\errorlookup"
Name: "{app}\sendto+\sendto\Utilities\Error Lookup"; Filename: "{app}\errorlookup\ErrorLookup.exe"; WorkingDir: "{app}\errorlookup"; Components: "utilities\errorlookup"