; v1.6.0
; https://github.com/mentebinaria/elfparser-ng

[Components]
Name: "elf\eflparserng"; Description: "elfparser-ng"; Types: full compact;

[Files]
Source: "{#MySrcDir}\elf\elfparser-ng\*"; DestDir: "{app}\elf\elfparser-ng"; Components: "elf\eflparserng"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\elfparser-ng"; Filename: "{app}\elf\elfparser-ng\elfparser-ng.exe"; WorkingDir: "{app}\elf\eflparserng"; Comment: "ELF analyzer"; Components: "elf\eflparserng"
Name: "{app}\sendto+\sendto\ELF\elfparser-ng"; Filename: "{app}\elf\elfparser-ng\elfparser-ng.exe"; WorkingDir: "{app}\elf\eflparserng"; Comment: "ELF analyzer"; Components: "elf\eflparserng"