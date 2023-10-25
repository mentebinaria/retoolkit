; v2.4
; https://github.com/pxb1988/dex2jar

[Components]
Name: "android\dex2jar"; Description: "dex2jar tools"; Types: full;

[Files]
Source: "{#MySrcDir}\android\dex2jar\*"; DestDir: "{app}\android\dex2jar"; Components: "android\dex2jar"; Flags: ignoreversion recursesubdirs createallsubdirs