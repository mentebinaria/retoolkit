; v9.27.6

[Components]
Name: "utilities\cyberchef"; Description: "CyberChef"; Types: full;

[Files]
Source: "{#MySrcDir}\cyberchef\*"; DestDir: "{app}\cyberchef"; Components: "utilities\cyberchef"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\CyberChef"; Filename: "{app}\cyberchef\CyberChef_v9.27.6.html"; WorkingDir: "{app}\cyberchef"; Components: "utilities\cyberchef"
Name: "{userdesktop}\{#MyAppName}\CyberChef"; Filename: "{app}\cyberchef\CyberChef_v9.27.6.html"; WorkingDir: "{app}\cyberchef"; Components: "utilities\cyberchef"