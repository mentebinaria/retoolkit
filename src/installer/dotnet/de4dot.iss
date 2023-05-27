; v3.1.41592.3405
; https://github.com/de4dot/de4dot

[Components]
Name: "dotnet\de4dot"; Description: "de4dot"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\de4dot-net35\*"; DestDir: "{app}\dotnet\de4dot"; Components: "dotnet\de4dot"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\de4dot GUI"; Filename: "{app}\dotnet\de4dot\de4dot_gui.exe"; Components: "dotnet\de4dot"
Name: "{app}\sendto+\sendto\Dotnet\de4dot GUI"; Filename: "{app}\dotnet\de4dot\de4dot_gui.exe"; Components: "dotnet\de4dot"