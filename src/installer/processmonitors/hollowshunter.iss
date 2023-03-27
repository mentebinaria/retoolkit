; v0.3.5
; https://github.com/hasherezade/hollows_hunter

[Components]
Name: "processmonitors\hollowshunter"; Description: "hollows_hunter"; Types: full;

[Files]
Source: "{#MySrcDir}\processmonitors\hollowshunter\32\*"; DestDir: "{app}\bin"; Components: "processmonitors\hollowshunter"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: not Is64BitInstallMode
Source: "{#MySrcDir}\processmonitors\hollowshunter\64\*"; DestDir: "{app}\bin"; Components: "processmonitors\hollowshunter"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode