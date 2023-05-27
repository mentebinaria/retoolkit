; v1.0.5.0
; https://dennisbabkin.com/winapisearch/

[Components]
Name: "pe\winapisearch"; Description: "WinAPI Search"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\winapisearch\*"; DestDir: "{app}\pe\winapisearch"; Components: "pe\winapisearch"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\WinAPI Search x32"; Filename: "{app}\pe\winapisearch\WinApiSearch32.exe"; WorkingDir: "{app}\winapisearch\"; Components: "pe\winapisearch"
Name: "{app}\sendto+\sendto\PE\WinAPI Search x32"; Filename: "{app}\pe\winapisearch\WinApiSearch32.exe"; WorkingDir: "{app}\winapisearch\"; Components: "pe\winapisearch"
Name: "{group}\{#MyAppName}\WinAPI Search x64"; Filename: "{app}\pe\winapisearch\WinApiSearch64.exe"; WorkingDir: "{app}\winapisearch\"; Components: "pe\winapisearch"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\PE\WinAPI Search x64"; Filename: "{app}\pe\winapisearch\WinApiSearch64.exe"; WorkingDir: "{app}\winapisearch\"; Components: "pe\winapisearch"; Check: Is64BitInstallMode