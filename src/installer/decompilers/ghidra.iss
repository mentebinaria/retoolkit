; v9.24

[Components]
Name: "decompilers\ghidra"; Description: "Ghidra"; Types: full;

[Files]
Source: "{#MySrcDir}\decompilers\ghidra\*"; DestDir: "{app}\decompilers\ghidra"; Components: "decompilers\ghidra"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Ghidra"; Filename: "{app}\decompilers\ghidra\ghidraRun.bat"; Components: "decompilers\ghidra"; IconFilename: "{app}\decompilers\ghidra\support\ghidra.ico"
Name: "{app}\sendto+\sendto\Decompilers\Ghidra"; Filename: "{app}\decompilers\ghidra\ghidraRun.bat"; Components: "decompilers\ghidra"; IconFilename: "{app}\decompilers\ghidra\support\ghidra.ico"