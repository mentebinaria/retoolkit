; v1.0.4.0
; https://dennisbabkin.com/winapisearch/

[Components]
Name: "peanalysers\winapisearch"; Description: "WinAPI Search"; Types: full;

[Files]
Source: "{#MySrcDir}\peanalysers\winapisearch\*"; DestDir: "{app}\peanalysers\winapisearch"; Components: "peanalysers\winapisearch"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\WinAPI Search x32"; Filename: "{app}\peanalysers\winapisearch\WinApiSearch32.exe"; WorkingDir: "{app}\winapisearch\"; Components: "peanalysers\winapisearch"
Name: "{app}\sendto+\sendto\PE analysers\WinAPI Search x32"; Filename: "{app}\peanalysers\winapisearch\WinApiSearch32.exe"; WorkingDir: "{app}\winapisearch\"; Components: "peanalysers\winapisearch"
Name: "{group}\{#MyAppName}\WinAPI Search x64"; Filename: "{app}\peanalysers\winapisearch\WinApiSearch64.exe"; WorkingDir: "{app}\winapisearch\"; Components: "peanalysers\winapisearch"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\PE analysers\WinAPI Search x64"; Filename: "{app}\peanalysers\winapisearch\WinApiSearch64.exe"; WorkingDir: "{app}\winapisearch\"; Components: "peanalysers\winapisearch"; Check: Is64BitInstallMode