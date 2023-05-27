; v1.1
; https://github.com/hasherezade/dll_to_exe

[Components]
Name: "pe\dll_to_exe"; Description: "DLL_to_EXE"; Types: full

[Files]
Source: "{#MySrcDir}\pe\dll_to_exe\dll_to_exe.exe"; DestDir: "{app}\bin"; Components: "pe\dll_to_exe"; Flags: ignoreversion recursesubdirs createallsubdirs