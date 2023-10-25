; v8.1.1
; https://github.com/icsharpcode/ILSpy

[Components]
Name: "dotnet\ilspy"; Description: "ILSpy"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\ilspy\*"; DestDir: "{app}\dotnet\ilspy"; Components: "dotnet\ilspy"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\ILSpy"; Filename: "{app}\dotnet\ilspy\ILSpy.exe"; Components: "dotnet\ilspy"
Name: "{app}\sendto+\sendto\Dotnet\ILSpy"; Filename: "{app}\dotnet\ilspy\ILSpy.exe"; Components: "dotnet\ilspy"