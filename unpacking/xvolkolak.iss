; v0.22

[Components]
Name: "unpacking\xvolkolak"; Description: "XVolkolak"; Types: full;

[Files]
Source: "{#MySrcDir}\xvolkolak\*"; DestDir: "{app}\xvolkolak"; Components: "unpacking\xvolkolak"; Flags: ignoreversion recursesubdirs createallsubdirs 

[Icons]
Name: "{group}\{#MyAppName}\XVolkolak"; Filename: "{app}\xvolkolak\xvlk.exe"; WorkingDir: "{app}\xvolkolak"; Components: "unpacking\xvolkolak"
Name: "{userdesktop}\{#MyAppName}\XVolkolak"; Filename: "{app}\xvolkolak\xvlk.exe"; WorkingDir: "{app}\xvolkolak"; Components: "unpacking\xvolkolak"