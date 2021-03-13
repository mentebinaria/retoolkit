; v1.66

[Components]
Name: "decompilers\jdgui"; Description: "Java Decompiler (JD-GUI)"; Types: full;

[Files]
Source: "{#MySrcDir}\jd-gui\*"; DestDir: "{app}\jd-gui"; Components: "decompilers\jdgui"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\JD-GUI"; Filename: "{app}\jd-gui\jd-gui.exe"; WorkingDir: "{app}\jd-gui"; Components: "decompilers\jdgui"
Name: "{userdesktop}\{#MyAppName}\JD-GUI"; Filename: "{app}\jd-gui\jd-gui.exe"; WorkingDir: "{app}\jd-gui"; Components: "decompilers\jdgui"