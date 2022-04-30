; v4.1.1.0
; https://www.mitec.cz/ssv.html

[Components]
Name: "ole\ssview"; Description: "Structured Storage Viewer"; Types: full;

[Files]
Source: "{#MySrcDir}\ole\ssview\*"; DestDir: "{app}\ssview"; Components: "ole\ssview"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Structured Storage Viewer"; Filename: "{app}\ssview\SSView.exe"; WorkingDir: "{app}\ssview"; Components: "ole\ssview"
Name: "{app}\sendto+\sendto\OLE file analysis\Structured Storage Viewer"; Filename: "{app}\ssview\SSView.exe"; WorkingDir: "{app}\ssview"; Components: "ole\ssview"