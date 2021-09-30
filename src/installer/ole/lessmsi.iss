; v1.8.2
; https://github.com/activescott/lessmsi

[Components]
Name: "ole\lessmsi"; Description: "Less MSIérables (lessmsi)"; Types: full;

[Files]
Source: "{#MySrcDir}\ole\lessmsi\*"; DestDir: "{app}\ole\lessmsi"; Components: "ole\lessmsi"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Less MSIérables (lessmsi)"; Filename: "{app}\ole\lessmsi\lessmsi-gui.exe"; Components: "ole\lessmsi"
Name: "{app}\sendto+\sendto\OLE file analysis\Less MSIérables (lessmsi)"; Filename: "{app}\ole\lessmsi\lessmsi-gui.exe"; Components: "ole\lessmsi"