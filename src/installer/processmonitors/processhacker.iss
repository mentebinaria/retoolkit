; v2.39.124
; https://github.com/processhacker/processhacker

[Components]
Name: "processmonitors\processhacker"; Description: "Process Hacker"; Types: full;

[Files]
Source: "{#MySrcDir}\processmonitors\processhacker\*"; DestDir: "{app}\processhacker"; Components: "processmonitors\processhacker"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Process Hacker (x64)"; Filename: "{app}\processhacker\x64\ProcessHacker.exe"; WorkingDir: "{app}\processhacker\x64"; Components: "processmonitors\processhacker"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Process monitors\Process Hacker (x64)"; Filename: "{app}\processhacker\x64\ProcessHacker.exe"; WorkingDir: "{app}\processhacker\x64"; Components: "processmonitors\processhacker"; Check: Is64BitInstallMode
Name: "{group}\{#MyAppName}\Process Hacker (x86)"; Filename: "{app}\processhacker\x86\ProcessHacker.exe"; WorkingDir: "{app}\processhacker\x86"; Components: "processmonitors\processhacker"
Name: "{app}\sendto+\sendto\Process monitors\Process Hacker (x86)"; Filename: "{app}\processhacker\x86\ProcessHacker.exe"; WorkingDir: "{app}\processhacker\x86"; Components: "processmonitors\processhacker"