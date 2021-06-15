; v01.04.2017

[Components]
Name: "delphi\idr"; Description: "Interactive Delphi Reconstructor"; Types: full;

[Files]
Source: "{#MySrcDir}\delphi\idr\*"; DestDir: "{app}\delphi\idr"; Components: "delphi\idr"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Interactive Delphi Reconstructor"; Filename: "{app}\delphi\idr\Idr.exe"; Components: "delphi\idr"
Name: "{app}\sendto+\sendto\Delphi\Interactive Delphi Reconstructor"; Filename: "{app}\delphi\idr\Idr.exe"; Components: "delphi\idr"