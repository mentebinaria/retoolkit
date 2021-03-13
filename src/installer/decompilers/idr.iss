; v01.04.2017

[Components]
Name: "decompilers\idr"; Description: "Interactive Delphi Reconstructor"; Types: full;

[Files]
Source: "{#MySrcDir}\idr\*"; DestDir: "{app}\idr"; Components: "decompilers\idr"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Interactive Delphi Reconstructor"; Filename: "{app}\idr\Idr.exe"; WorkingDir: "{app}\idr"; Components: "decompilers\idr"
Name: "{userdesktop}\{#MyAppName}\Interactive Delphi Reconstructor"; Filename: "{app}\idr\Idr.exe"; WorkingDir: "{app}\idr"; Components: "decompilers\idr"