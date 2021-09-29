; v1.1.2
; https://github.com/Apr4h/CobaltStrikeScan

[Components]
Name: "cobaltstrike\cobaltstrikescan"; Description: "CobaltStrikeScan"; Types: full;

[Files]
Source: "{#MySrcDir}\cobaltstrike\CobaltStrikeScan.exe"; DestDir: "{app}\bin"; Components: "cobaltstrike\cobaltstrikescan"; Flags: ignoreversion recursesubdirs createallsubdirs