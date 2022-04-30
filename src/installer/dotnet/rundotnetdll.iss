; v2.2
; https://github.com/enkomio/RunDotNetDll

[Components]
Name: "dotnet\rundotnetdll"; Description: "RunDotNetDll"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\rundotnetdll\*"; DestDir: "{app}\bin"; Components: "dotnet\rundotnetdll"; Flags: ignoreversion recursesubdirs createallsubdirs