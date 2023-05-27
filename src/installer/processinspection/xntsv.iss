; v3.0.1
; https://github.com/horsicq/xntsv

[Components]
Name: "processinspection\xntsv"; Description: "XNTSV"; Types: full;

[Files]
Source: "{#MySrcDir}\processinspection\xntsv\*"; DestDir: "{app}\processinspection\xntsv"; Components: "processinspection\xntsv"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\XNTSV"; Filename: "{app}\processinspection\xntsv\xntsv.exe"; Components: "processinspection\xntsv"
Name: "{app}\sendto+\sendto\Process Inspection\XNTSV"; Filename: "{app}\processinspection\xntsv\xntsv.exe"; Components: "processinspection\xntsv"