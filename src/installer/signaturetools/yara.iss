; v4.0.5

[Components]
Name: "signaturetools\yara"; Description: "YARA"; Types: full;

[Files]
Source: "{#MySrcDir}\bin\yara*"; DestDir: "{app}\bin"; Components: "signaturetools\yara"; Flags: ignoreversion recursesubdirs createallsubdirs