; v0.0.75
; https://blog.didierstevens.com/programs/oledump-py/

[Components]
Name: "ole\oledump"; Description: "oledump"; Types: full;

[Files]
Source: "{#MySrcDir}\ole\oledump\*"; DestDir: "{app}\programming\winpython\scripts\oledump"; Components: "ole\oledump"; Flags: ignoreversion recursesubdirs createallsubdirs