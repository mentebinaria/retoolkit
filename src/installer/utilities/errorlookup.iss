; v1.0.0.1

[Components]
Name: "utilities\errorlookup"; Description: "Error Lookup"; Types: full;

[Files]
Source: "{#MySrcDir}\zodiacon\ErrorLookup.exe"; DestDir: "{app}\zodiacon"; Components: "utilities\errorlookup"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Error Lookup"; Filename: "{app}\zodiacon\ErrorLookup.exe"; WorkingDir: "{app}\zodiacon"; Components: "utilities\errorlookup"
Name: "{userdesktop}\{#MyAppName}\Error Lookup"; Filename: "{app}\zodiacon\ErrorLookup.exe"; WorkingDir: "{app}\zodiacon"; Components: "utilities\errorlookup"