; v0.7.6
; https://blog.didierstevens.com/programs/pdf-tools/

[Components]
Name: "pdf\pdfparser"; Description: "pdf-parser"; Types: full;

[Files]
Source: "{#MySrcDir}\pdf\pdf-parser\pdf-parser.py"; DestDir: "{app}\programming\winpython\scripts"; Components: "pdf\pdfparser"; Flags: ignoreversion recursesubdirs createallsubdirs