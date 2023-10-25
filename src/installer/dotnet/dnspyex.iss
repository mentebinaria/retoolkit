; v6.4.1
; https://github.com/dnSpyEx/dnSpy

[Components]
Name: "dotnet\dnspyex"; Description: "dnSpyEx"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\dnSpyEx\dnSpy-net-win32\*"; DestDir: "{app}\dotnet\dnSpyEx\dnSpy-net-win32"; Components: "dotnet\dnspyex"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\dotnet\dnSpyEx\dnSpy-net-win64\*"; DestDir: "{app}\dotnet\dnSpyEx\dnSpy-net-win64"; Components: "dotnet\dnspyex"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\dnSpyEx (x86))"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win32\dnSpy.exe"; Components: "dotnet\dnspyex"
Name: "{app}\sendto+\sendto\Dotnet\dnSpyEx (x86)"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win32\dnSpy.exe"; Components: "dotnet\dnspyex"
Name: "{group}\{#MyAppName}\dnSpyEx (x64))"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win64\dnSpy.exe"; Components: "dotnet\dnspyex"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Dotnet\dnSpyEx (x64)"; Filename: "{app}\dotnet\dnSpyEx\dnSpy-net-win64\dnSpy.exe"; Components: "dotnet\dnspyex"; Check: Is64BitInstallMode