; v1.2.0.1
; https://autoclose.net/forcetoolkit.html

; We extract the main executable form the original installer to make things easier

[Components]
Name: "utilities\forcetoolkit"; Description: "ForceToolkit"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\forcetoolkit\*"; DestDir: "{app}\utilities\forcetoolkit"; Components: "utilities\forcetoolkit"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\ForceToolkit"; Filename: "{app}\utilities\forcetoolkit\ForceToolkit.exe"; Components: "utilities\forcetoolkit"
Name: "{app}\sendto+\sendto\Utilities\ForceToolkit"; Filename: "{app}\utilities\forcetoolkit\ForceToolkit.exe"; Components: "utilities\forcetoolkit"