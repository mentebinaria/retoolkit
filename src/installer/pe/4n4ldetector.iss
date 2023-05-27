; v2.3
; https://github.com/4n0nym0us/4n4lDetector

[Components]
Name: "pe\4n4ldetector"; Description: "4n4lDetector"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\4n4ldetector\*"; DestDir: "{app}\pe\4n4ldetector"; Components: "pe\4n4ldetector"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\4n4lDetector"; Filename: "{app}\pe\4n4ldetector\4N4LDetector.exe"; WorkingDir: "{app}\pe\4n4ldetector"; Components: "pe\4n4ldetector"
Name: "{app}\sendto+\sendto\PE\4n4lDetector"; Filename: "{app}\pe\4n4ldetector\4N4LDetector.exe"; WorkingDir: "{app}\pe\4n4ldetector"; Components: "pe\4n4ldetector"