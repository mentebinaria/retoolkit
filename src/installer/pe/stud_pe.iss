; v2.6.1.0
; https://www.cgsoftlabs.ro/studpe.html

[Components]
Name: "pe\stud_pe"; Description: "Stud_PE"; Types: full;

[Files]
Source: "{#MySrcDir}\pe\stud_pe\*"; DestDir: "{app}\pe\stud_pe"; Components: "pe\stud_pe"; Flags: ignoreversion recursesubdirs createallsubdirs 

[Icons]
Name: "{group}\{#MyAppName}\Stud_PE"; Filename: "{app}\pe\stud_pe\Stud_PE.exe"; WorkingDir: "{app}\pe\stud_pe"; Components: "pe\stud_pe"
Name: "{app}\sendto+\sendto\PE\Stud_PE"; Filename: "{app}\pe\stud_pe\Stud_PE.exe"; WorkingDir: "{app}\pe\stud_pe"; Components: "pe\stud_pe"