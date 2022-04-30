; v1.3.5
; https://github.com/skylot/jadx

[Components]
Name: "java\jadx"; Description: "Dex to Java decompiler (JADX)"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\java\jadx\*"; DestDir: "{app}\java\jadx"; Components: "java\jadx"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\JADX"; Filename: "{app}\java\jadx\bin\jadx-gui.bat"; Components: "java\jadx";
Name: "{app}\sendto+\sendto\Java Decompilers\JADX"; Filename: "{app}\java\jadx\bin\jadx-gui.bat"; Components: "java\jadx";