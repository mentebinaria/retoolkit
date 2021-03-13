; v7.0.0.6372-preview3

[Components]
Name: "dotnet\ilspy"; Description: "ILSpy"; Types: full;

[Files]
Source: "{#MySrcDir}\ilspy\*"; DestDir: "{app}\ilspy"; Components: "dotnet\ilspy"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\ILSpy"; Filename: "{app}\ilspy\ILSpy.exe"; WorkingDir: "{app}\ilspy"; Components: "dotnet\ilspy"
Name: "{userdesktop}\{#MyAppName}\ILSpy"; Filename: "{app}\ilspy\ILSpy.exe"; WorkingDir: "{app}\ilspy"; Components: "dotnet\ilspy"
Name: "{userdesktop}\{#MyAppName}\ILSpy"; Filename: "{app}\ilspy\ILSpy.exe"; WorkingDir: "{app}\ilspy"; Components: "dotnet\ilspy"