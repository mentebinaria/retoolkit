; v2.21.13
; https://github.com/Col-E/Recaf

[Components]
Name: "java\recaf"; Description: "Recaf"; Types: full;

[Files]
Source: "{#MySrcDir}\java\recaf\*"; DestDir: "{app}\java\recaf"; Components: "java\recaf"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Recaf"; Filename: "{app}\recaf\recaf-2.21.13-J8-jar-with-dependencies.jar"; WorkingDir: "{app}\java\recaf"; Components: "java\recaf"; IconFilename: "{app}\java\recaf\recaf.ico"
Name: "{app}\sendto+\sendto\Java Decompilers\Recaf"; Filename: "{app}\java\recaf\recaf-2.21.13-J8-jar-with-dependencies.jar"; Components: "java\recaf"; IconFilename: "{app}\java\recaf\recaf.ico"