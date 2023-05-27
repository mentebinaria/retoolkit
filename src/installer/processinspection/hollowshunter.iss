; v0.3.6
; https://github.com/hasherezade/hollows_hunter

[Components]
Name: "processinspection\hollowshunter"; Description: "hollows_hunter"; Types: full;

[Files]
Source: "{#MySrcDir}\processinspection\hollowshunter\32\*"; DestDir: "{app}\bin"; Components: "processinspection\hollowshunter"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: not Is64BitInstallMode
Source: "{#MySrcDir}\processinspection\hollowshunter\64\*"; DestDir: "{app}\bin"; Components: "processinspection\hollowshunter"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode