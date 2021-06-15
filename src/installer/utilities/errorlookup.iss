; v2.4.1

[Components]
Name: "utilities\errorlookup"; Description: "Error Lookup"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\errorlookup\*"; DestDir: "{app}\errorlookup"; Components: "utilities\errorlookup"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Error Lookup"; Filename: "{app}\errorlookup\ErrorLookup.exe"; WorkingDir: "{app}\errorlookup"; Components: "utilities\errorlookup"
Name: "{app}\sendto+\sendto\Utilities\Error Lookup"; Filename: "{app}\errorlookup\ErrorLookup.exe"; WorkingDir: "{app}\errorlookup"; Components: "utilities\errorlookup"