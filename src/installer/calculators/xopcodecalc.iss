; v0.05
; https://github.com/horsicq/XOpcodeCalc

[Components]
Name: "calculators\xopcodecalc"; Description: "XOpcodeCalc"; Types: full;

[Files]
Source: "{#MySrcDir}\calculators\xopcodecalc\*"; DestDir: "{app}\calculators\xopcodecalc"; Components: "calculators\xopcodecalc"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: Is64BitInstallMode

[Icons]
Name: "{group}\{#MyAppName}\XOpcodeCalc"; Filename: "{app}\calculators\xopcodecalc\xocalc.exe"; WorkingDir: "{app}\calculators\xopcodecalc"; Components: "calculators\xopcodecalc"
Name: "{app}\sendto+\sendto\Calculators\XOpcodeCalc"; Filename: "{app}\calculators\xopcodecalc\xocalc.exe"; WorkingDir: "{app}\calculators\xopcodecalc"; Components: "calculators\xopcodecalc"