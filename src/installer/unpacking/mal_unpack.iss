; v0.9.7
; https://github.com/hasherezade/mal_unpack

[Components]
Name: "unpacking\mal_unpack"; Description: "MalUnpack"; Types: full;

[Files]
Source: "{#MySrcDir}\unpacking\mal_unpack\32\mal_unpack.exe"; DestDir: "{app}\bin"; Components: "unpacking\mal_unpack"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: not Is64BitInstallMode
Source: "{#MySrcDir}\unpacking\mal_unpack\64\mal_unpack.exe"; DestDir: "{app}\bin"; Components: "unpacking\mal_unpack"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode