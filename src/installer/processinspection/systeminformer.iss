; v3.0.7270
; https://systeminformer.sourceforge.io/

[Components]
Name: "processinspection\systeminformer"; Description: "System Informer"; Types: full;

[Files]
Source: "{#MySrcDir}\processinspection\systeminformer\*"; DestDir: "{app}\systeminformer"; Components: "processinspection\systeminformer"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\System Informer (x64)"; Filename: "{app}\systeminformer\amd64\SystemInformer.exe"; WorkingDir: "{app}\systeminformer\amd64"; Components: "processinspection\systeminformer"; Check: Is64BitInstallMode
Name: "{app}\sendto+\sendto\Process Inspection\System Informer (x64)"; Filename: "{app}\systeminformer\amd64\SystemInformer.exe"; WorkingDir: "{app}\systeminformer\amd64"; Components: "processinspection\systeminformer"; Check: Is64BitInstallMode
Name: "{group}\{#MyAppName}\System Informer (x86)"; Filename: "{app}\systeminformer\i386\SystemInformer.exe"; WorkingDir: "{app}\systeminformer\i386"; Components: "processinspection\systeminformer"
Name: "{app}\sendto+\sendto\Process Inspection\System Informer (x86)"; Filename: "{app}\systeminformer\i386\SystemInformer.exe"; WorkingDir: "{app}\systeminformer\i386"; Components: "processinspection\systeminformer"