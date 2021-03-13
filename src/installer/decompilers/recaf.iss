; v2.18.0

[Components]
Name: "decompilers\recaf"; Description: "Recaf"; Types: full;

[Files]
Source: "{#MySrcDir}\recaf\*"; DestDir: "{app}\recaf"; Components: "decompilers\recaf"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Recaf"; Filename: "{app}\recaf\recaf.jar"; WorkingDir: "{app}\recaf"; Components: "decompilers\recaf"; IconFilename: "{app}\recaf\recaf.ico"
Name: "{userdesktop}\{#MyAppName}\Recaf"; Filename: "{app}\recaf\recaf.jar"; WorkingDir: "{app}\recaf"; Components: "decompilers\recaf"; IconFilename: "{app}\recaf\recaf.ico"