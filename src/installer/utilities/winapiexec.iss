; v1.2
; https://github.com/m417z/winapiexec

[Components]
Name: "utilities\winapiexec"; Description: "winapiexec "; Types: full;

[Files]
Source: "{#MySrcDir}\utilities\winapiexec\*"; DestDir: "{app}\utilities\winapiexec"; Components: "utilities\winapiexec"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
; Documentation
Name: "{app}\sendto+\sendto\Documentation\winapiexec"; Filename: "{app}\utilities\winapiexec\readme.txt"; Components: "utilities\winapiexec"