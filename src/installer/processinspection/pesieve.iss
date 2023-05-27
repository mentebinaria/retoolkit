; v0.3.5
; https://github.com/hasherezade/pe-sieve/

[Components]
Name: "processinspection\pesieve"; Description: "PE-sieve"; Types: full;

[Files]
Source: "{#MySrcDir}\processinspection\pesieve\32\pe-sieve.exe"; DestDir: "{app}\bin"; Components: "processinspection\pesieve"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: not Is64BitInstallMode
Source: "{#MySrcDir}\processinspection\pesieve\64\pe-sieve.exe"; DestDir: "{app}\bin"; Components: "processinspection\pesieve"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode