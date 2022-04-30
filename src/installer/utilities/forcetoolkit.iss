; v1.0.0.1
; https://autoclose.net/forcetoolkit.html

[Components]
Name: "utilities\forcetoolkit"; Description: "ForceToolkit"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\forcetoolkit\*"; DestDir: "{app}\utilities\forcetoolkit"; Components: "utilities\forcetoolkit"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\ForceToolkit"; Filename: "{app}\utilities\forcetoolkit\ForceToolkit.exe"; WorkingDir: "{app}\utilities\forcetoolkit"; Components: "utilities\forcetoolkit"
Name: "{app}\sendto+\sendto\Utilities\ForceToolkit"; Filename: "{app}\utilities\forcetoolkit\ForceToolkit.exe"; WorkingDir: "{app}\utilities\forcetoolkit"; Components: "utilities\forcetoolkit"