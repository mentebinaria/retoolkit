; v1.10.0
; https://github.com/activescott/lessmsi

[Components]
Name: "ole\lessmsi"; Description: "Less MSIerables (lessmsi)"; Types: full;

[Files]
Source: "{#MySrcDir}\ole\lessmsi\*"; DestDir: "{app}\ole\lessmsi"; Components: "ole\lessmsi"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Less MSIerables (lessmsi)"; Filename: "{app}\ole\lessmsi\lessmsi-gui.exe"; Components: "ole\lessmsi"
Name: "{app}\sendto+\sendto\OLE file analysis\Less MSIerables (lessmsi)"; Filename: "{app}\ole\lessmsi\lessmsi-gui.exe"; Components: "ole\lessmsi"