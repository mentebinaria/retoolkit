; v6.3
; https://github.com/Embarcadero/Dev-Cpp/

[Components]
Name: "programming\devcpp"; Description: "Embarcadero Dev-C++"; Types: full;

[Files]
Source: "{#MySrcDir}\programming\devcpp\*"; DestDir: "{app}\programming\devcpp"; Components: "programming\devcpp"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\DevCpp"; Filename: "{app}\programming\devcpp\devcpp.exe"; Components: "programming\devcpp"
Name: "{app}\sendto+\sendto\Programming\DevCpp"; Filename: "{app}\programming\devcpp\devcpp.exe"; Components: "programming\devcpp"