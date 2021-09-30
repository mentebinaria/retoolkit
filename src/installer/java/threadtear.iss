; v3.0.1
; https://github.com/GraxCode/threadtear/

[Components]
Name: "java\threadtear"; Description: "Threadtear"; Types: full;

[Files]
Source: "{#MySrcDir}\java\threadtear\*"; DestDir: "{app}\java\threadtear"; Components: "java\threadtear"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Threadtear"; Filename: "{app}\java\threadtear\threadtear-gui-3.0.1-all.jar"; WorkingDir: "{app}\java\threadtear"; Components: "java\recaf"
Name: "{app}\sendto+\sendto\Java Decompilers\Threadtear"; Filename: "{app}\java\threadtear\threadtear-gui-3.0.1-all.jar"; Components: "java\threadtear"