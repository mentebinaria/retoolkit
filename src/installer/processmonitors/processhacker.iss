; v2.39.124

[Components]
Name: "processmonitors\processhacker"; Description: "Process Hacker"; Types: full;

[Files]
Source: "{#MySrcDir}\processhacker\*"; DestDir: "{app}\processhacker"; Components: "processmonitors\processhacker"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Process Hacker (x64)"; Filename: "{app}\processhacker\x64\ProcessHacker.exe"; WorkingDir: "{app}\processhacker\x64"; Components: "processmonitors\processhacker"
Name: "{userdesktop}\{#MyAppName}\Process Hacker (x64)"; Filename: "{app}\processhacker\x64\ProcessHacker.exe"; WorkingDir: "{app}\processhacker\x64"; Components: "processmonitors\processhacker"
Name: "{group}\{#MyAppName}\Process Hacker (x86)"; Filename: "{app}\processhacker\x86\ProcessHacker.exe"; WorkingDir: "{app}\processhacker\x86"; Components: "processmonitors\processhacker"
Name: "{userdesktop}\{#MyAppName}\Process Hacker (x86)"; Filename: "{app}\processhacker\x86\ProcessHacker.exe"; WorkingDir: "{app}\processhacker\x86"; Components: "processmonitors\processhacker"