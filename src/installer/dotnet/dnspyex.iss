; v6.1.9

[Components]
Name: "dotnet\dnspyex"; Description: "dnSpyEx"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\dnSpyEx\*"; DestDir: "{app}\dotnet\dnSpyEx"; Components: "dotnet\dnspyex"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\dnSpyEx (x86))"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win32\dnSpy.exe"; Components: "dotnet\dnspyex"
Name: "{app}\sendto+\sendto\Dotnet\dnSpyEx (x86)"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win32\dnSpy.exe"; Components: "dotnet\dnspyex"
Name: "{group}\{#MyAppName}\dnSpyEx (x64)"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win64\dnSpy.exe"; Components: "dotnet\dnspyex"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Dotnet\dnSpyEx (x64)"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win64\dnSpy.exe"; Components: "dotnet\dnspyex"; Check: Is64BitInstallMode