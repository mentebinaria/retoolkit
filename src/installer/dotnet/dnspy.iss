; v6.1.8

[Components]
Name: "dotnet\dnspy"; Description: "dnSpy"; Types: full;

[Files]
Source: "{#MySrcDir}\dnSpy\*"; DestDir: "{app}\dnSpy"; Components: "dotnet\dnspy"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\dnSpy (x86))"; Filename: "{app}\dnSpy\dnSpy-x86.exe"; WorkingDir: "{app}\dnSpy"; Components: "dotnet\dnspy"
Name: "{userdesktop}\{#MyAppName}\dnSpy (x86)"; Filename: "{app}\dnSpy\dnSpy-x86.exe"; WorkingDir: "{app}\dnSpy"; Components: "dotnet\dnspy"
Name: "{group}\{#MyAppName}\dnSpy (x64)"; Filename: "{app}\dnSpy\dnSpy.exe"; WorkingDir: "{app}\dnSpy"; Components: "dotnet\dnspy"
Name: "{userdesktop}\{#MyAppName}\dnSpy (x64)"; Filename: "{app}\dnSpy\dnSpy.exe"; WorkingDir: "{app}\dnSpy"; Components: "dotnet\dnspy"