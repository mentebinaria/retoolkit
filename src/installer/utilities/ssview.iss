; v4.0.0.0

[Components]
Name: "utilities\ssview"; Description: "Structured Storage Viewer"; Types: full;

[Files]
Source: "{#MySrcDir}\ssview\*"; DestDir: "{app}\ssview"; Components: "utilities\ssview"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Structured Storage Viewer"; Filename: "{app}\ssview\SSView.exe"; WorkingDir: "{app}\ssview"; Components: "utilities\ssview"
Name: "{userdesktop}\{#MyAppName}\Structured Storage Viewer"; Filename: "{app}\ssview\SSView.exe"; WorkingDir: "{app}\ssview"; Components: "utilities\ssview"