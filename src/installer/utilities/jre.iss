; v8u301
; https://www.java.com/en/download/manual.jsp

[Components]
Name: "utilities\jre"; Description: "Java Runtime Environment (JRE)"; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\jre\*.exe"; DestDir: "{app}\jre"; Components: utilities\jre or java; Flags: ignoreversion recursesubdirs createallsubdirs

[Run]
Filename: "{app}\jre\jre-8u301-windows-x64.exe"; Parameters: "/s"; Components: utilities\jre or java; Check: Is64BitInstallMode
Filename: "{app}\jre\jre-8u301-windows-i586.exe"; Parameters: "/s"; Components: utilities\jre or java;  Check: not Is64BitInstallMode
; The following program associates .jar files with java binary, allowing double-clicking them to run
; https://johann.loefflmann.net/en/software/jarfix/index.html
Filename: "{app}\jre\jarfix.exe"; Parameters: "/s"; Components: utilities\jre or java

