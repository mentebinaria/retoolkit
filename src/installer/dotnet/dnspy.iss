; v6.1.8

[Components]
Name: "dotnet\dnspy"; Description: "dnSpy"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\dnSpy\*"; DestDir: "{app}\dotnet\dnSpy"; Components: "dotnet\dnspy"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\dnSpy (x86))"; Filename: "{app}\dotnet\dnSpy\dnSpy-x86.exe"; Components: "dotnet\dnspy"
Name: "{app}\sendto+\sendto\Dotnet\dnSpy (x86)"; Filename: "{app}\dotnet\dnSpy\dnSpy-x86.exe"; Components: "dotnet\dnspy"
Name: "{group}\{#MyAppName}\dnSpy (x64)"; Filename: "{app}\dotnet\dnSpy\dnSpy.exe"; Components: "dotnet\dnspy"
Name: "{app}\sendto+\sendto\Dotnet\dnSpy (x64)"; Filename: "{app}\dotnet\dnSpy\dnSpy.exe"; Components: "dotnet\dnspy"