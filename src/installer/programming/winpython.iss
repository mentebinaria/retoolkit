; v5.3.20221233
; https://github.com/winpython/winpython

[Components]
Name: "programming\winpython"; Description: "Python 3 (WinPython)"; Types: full;

[Files]
Source: "{#MySrcDir}\programming\winpython\*"; DestDir: "{app}\programming\winpython"; Components: "programming\winpython"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Python IDLE (GUI)"; Filename: "{app}\programming\winpython\IDLE (Python GUI).exe"; Components: "programming\winpython"
Name: "{app}\sendto+\sendto\Programming\Python IDLE (GUI)"; Filename: "{app}\programming\winpython\IDLE (Python GUI).exe"; Components: "programming\winpython"
Name: "{group}\{#MyAppName}\Python Command Prompt"; Filename: "{app}\programming\winpython\WinPython Command Prompt.exe"; Components: "programming\winpython"
Name: "{app}\sendto+\sendto\Programming\Python Command Prompt"; Filename: "{app}\programming\winpython\WinPython Command Prompt.exe"; Components: "programming\winpython"