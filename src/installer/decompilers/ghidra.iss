; v9.24

[Components]
Name: "decompilers\ghidra"; Description: "Ghidra"; Types: full; Check: Is64BitInstallMode

[Files]
Source: "{#MySrcDir}\decompilers\ghidra\*"; DestDir: "{app}\decompilers\ghidra"; Components: "decompilers\ghidra"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\Ghidra"; Filename: "{app}\decompilers\ghidra\ghidraRun.bat"; Components: "decompilers\ghidra"; IconFilename: "{app}\decompilers\ghidra\support\ghidra.ico"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Decompilers\Ghidra"; Filename: "{app}\decompilers\ghidra\ghidraRun.bat"; Components: "decompilers\ghidra"; IconFilename: "{app}\decompilers\ghidra\support\ghidra.ico"; Check: Is64BitInstallMode