; v1.14.4
; https://github.com/wickyhu/simple-assembly-explorer

[Components]
Name: "dotnet\sae"; Description: "Simple Assembly Explorer (SAE)"; Types: full;

[Files]
Source: "{#MySrcDir}\dotnet\sae\32\*"; DestDir: "{app}\dotnet\sae\32"; Components: "dotnet\sae"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\dotnet\sae\64\*"; DestDir: "{app}\dotnet\sae\64"; Components: "dotnet\sae"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\SAE (x86)"; Filename: "{app}\dotnet\sae\32\SimpleAssemblyExplorer.exe"; Components: "dotnet\sae"
Name: "{app}\sendto+\sendto\Dotnet\SAE (x86)"; Filename: "{app}\dotnet\sae\32\SimpleAssemblyExplorer.exe"; Components: "dotnet\sae"
Name: "{group}\{#MyAppName}\SAE (x64)"; Filename: "{app}\dotnet\sae\64\SimpleAssemblyExplorer.exe"; Components: "dotnet\sae"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Dotnet\SAE (x64)"; Filename: "{app}\dotnet\sae\64\SimpleAssemblyExplorer.exe"; Components: "dotnet\sae"; Check: Is64BitInstallMode