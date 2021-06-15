; v1.66

[Components]
Name: "java\jdgui"; Description: "Java Decompiler (JD-GUI)"; Types: full;

[Files]
Source: "{#MySrcDir}\java\jd-gui\*"; DestDir: "{app}\java\jd-gui"; Components: "java\jdgui"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\JD-GUI"; Filename: "{app}\java\jd-gui\jd-gui.exe"; Components: "java\jdgui"
Name: "{app}\sendto+\sendto\Java Decompilers\JD-GUI"; Filename: "{app}\java\jd-gui\jd-gui.exe"; Components: "java\jdgui"