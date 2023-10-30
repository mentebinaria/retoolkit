; v0.05
; https://github.com/horsicq/XELFViewer

[Components]
Name: "elf\xelfviewer"; Description: "XELFViewer"; Types: full compact;

[Files]
Source: "{#MySrcDir}\elf\xelfviewer\32\*"; DestDir: "{app}\elf\xelfviewer"; Components: "elf\xelfviewer"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: not Is64BitInstallMode
Source: "{#MySrcDir}\elf\xelfviewer\64\*"; DestDir: "{app}\elf\xelfviewer"; Components: "elf\xelfviewer"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\XELFViewer"; Filename: "{app}\elf\xelfviewer\xelfviewer.exe"; WorkingDir: "{app}\elf\xelfviewer\"; Components: "elf\xelfviewer"
Name: "{app}\sendto+\sendto\ELF\XELFViewer"; Filename: "{app}\elf\xelfviewer\xelfviewer.exe"; WorkingDir: "{app}\elf\xelfviewer\"; Components: "elf\xelfviewer"