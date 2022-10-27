; v4.0.0.1
; https://github.com/wwh1004/ExtremeDumper

[Components]
Name: "dotnet\extremedumper"; Description: "ExtremeDumper"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\extremedumper\*"; DestDir: "{app}\dotnet\extremedumper"; Components: "dotnet\extremedumper"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\ExtremeDumper (x86)"; Filename: "{app}\dotnet\extremedumper\ExtremeDumper-x86.exe"; Components: "dotnet\extremedumper"
Name: "{app}\sendto+\sendto\Dotnet\ExtremeDumper (x86)"; Filename: "{app}\dotnet\extremedumper\ExtremeDumper-x86.exe"; Components: "dotnet\extremedumper"
Name: "{group}\{#MyAppName}\ExtremeDumper (x64)"; Filename: "{app}\dotnet\extremedumper\ExtremeDumper.exe"; Components: "dotnet\extremedumper"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Dotnet\ExtremeDumper (x64)"; Filename: "{app}\dotnet\extremedumper\ExtremeDumper.exe"; Components: "dotnet\extremedumper"; Check: Is64BitInstallMode