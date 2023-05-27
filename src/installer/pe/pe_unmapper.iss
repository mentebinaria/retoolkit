; v1.0
; https://github.com/hasherezade/pe_unmapper

[Components]
Name: "pe\pe_unmapper"; Description: "pe_unmapper"; Types: full

[Files]
Source: "{#MySrcDir}\pe\pe_unmapper\pe_unmapper.exe"; DestDir: "{app}\bin"; Components: "pe\pe_unmapper"; Flags: ignoreversion recursesubdirs createallsubdirs