; v1.2.0

[Components]
Name: "java\jadx"; Description: "Dex to Java decompiler (JADX)"; Types: full;

[Files]
Source: "{#MySrcDir}\java\jadx\*"; DestDir: "{app}\java\jadx"; Components: "java\jadx"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\JADX"; Filename: "{app}\java\jadx\jadx-gui-1.2.0.exe"; Components: "java\jadx"
Name: "{app}\sendto+\sendto\Java Decompilers\JADX"; Filename: "{app}\java\jadx\jadx-gui-1.2.0.exe"; Components: "java\jadx"