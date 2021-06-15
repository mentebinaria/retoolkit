; v1.8.1

[Components]
Name: "msi\lessmsi"; Description: "Less MSIérables (lessmsi)"; Types: full;

[Files]
Source: "{#MySrcDir}\msi\lessmsi\*"; DestDir: "{app}\msi\lessmsi"; Components: "msi\lessmsi"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\Less MSIérables (lessmsi)"; Filename: "{app}\msi\lessmsi\lessmsi-gui.exe"; Components: "msi\lessmsi"
Name: "{app}\sendto+\sendto\MSI analysis\Less MSIérables (lessmsi)"; Filename: "{app}\msi\lessmsi\lessmsi-gui.exe"; Components: "msi\lessmsi"