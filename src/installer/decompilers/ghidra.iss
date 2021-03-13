; v9.22

[Components]
Name: "decompilers\ghidra"; Description: "Ghidra"; Types: full;

[Files]
Source: "{#MySrcDir}\ghidra\*"; DestDir: "{app}\ghidra"; Components: "decompilers\ghidra"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Ghidra"; Filename: "{app}\ghidra\ghidraRun.bat"; WorkingDir: "{app}\ghidra"; Components: "decompilers\ghidra"; IconFilename: "{app}\ghidra\support\ghidra.ico"
Name: "{userdesktop}\{#MyAppName}\Ghidra"; Filename: "{app}\ghidra\ghidraRun.bat"; WorkingDir: "{app}\ghidra"; Components: "decompilers\ghidra"; IconFilename: "{app}\ghidra\support\ghidra.ico"