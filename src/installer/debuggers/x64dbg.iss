; snapshot_2023-03-04_02-26
; https://x64dbg.com/

[Components]
Name: "debuggers\x64dbg"; Description: "x64dbg"; Types: full compact;

[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\*"; DestDir: "{app}\debuggers\x64dbg"; Components: "debuggers\x64dbg"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}\x64dbg"; Filename: "{app}\debuggers\x64dbg\release\x96dbg.exe"; Components: "debuggers\x64dbg"
Name: "{app}\sendto+\sendto\Debuggers\x64dbg"; Filename: "{app}\debuggers\x64dbg\release\x96dbg.exe"; Components: "debuggers\x64dbg"
; Documentation
Name: "{app}\sendto+\sendto\Documentation\x64dbg"; Filename: "{app}\debuggers\x64dbg\release\x64dbg.chm"; Components: "debuggers\x64dbg"

; Scripts

[Components]
Name: "debuggers\x64dbg\scripts"; Description: "x64dbg Scripts"; Types: full;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\scripts\*"; DestDir: "{app}\debuggers\x64dbg\scripts"; Components: "debuggers\x64dbg\scripts"; Flags: ignoreversion recursesubdirs createallsubdirs

; Plugins

[Components]
Name: "debuggers\x64dbg\plugins"; Description: "x64dbg Plugins"; Types: full compact;

; Checksec v0.1
; https://github.com/klks/checksec
[Components]
Name: "debuggers\x64dbg\plugins\checksec"; Description: "checksec"; Types: full compact;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\32\checksec\*"; DestDir: "{app}\debuggers\x64dbg\release\x32\plugins"; Components: "debuggers\x64dbg\plugins\checksec"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\64\checksec\*"; DestDir: "{app}\debuggers\x64dbg\release\x64\plugins"; Components: "debuggers\x64dbg\plugins\checksec"; Flags: ignoreversion recursesubdirs createallsubdirs

; MapoAnalyzer v1.3
; http://maposafe.net/index/news/show/id/14.html (down)
[Components]
Name: "debuggers\x64dbg\plugins\mapoanalyzer"; Description: "MapoAnalyzer"; Types: full compact;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\32\mapoanalyzer\*"; DestDir: "{app}\debuggers\x64dbg\release\x32\plugins"; Components: "debuggers\x64dbg\plugins\mapoanalyzer"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\64\mapoanalyzer\*"; DestDir: "{app}\debuggers\x64dbg\release\x64\plugins"; Components: "debuggers\x64dbg\plugins\mapoanalyzer"; Flags: ignoreversion recursesubdirs createallsubdirs

; Multiline Ultimate Assembler v2.3.6
; https://github.com/m417z/Multiline-Ultimate-Assembler
[Components]
Name: "debuggers\x64dbg\plugins\multiasm"; Description: "Multiline Ultimate Assembler"; Types: full compact;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\32\multiasm\*"; DestDir: "{app}\debuggers\x64dbg\release\x32\plugins"; Components: "debuggers\x64dbg\plugins\multiasm"; Flags: ignoreversion recursesubdirs createallsubdirs
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\64\multiasm\*"; DestDir: "{app}\debuggers\x64dbg\release\x64\plugins"; Components: "debuggers\x64dbg\plugins\multiasm"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]
Name: "{app}\sendto+\sendto\Documentation\Multiline Ultimate Assembler"; Filename: "{app}\documentation\multiasm.chm"; Components: "debuggers\x64dbg\plugins\multiasm"

; OllyDumpEx v1.82
; http://low-priority.appspot.com/ollydumpex/
[Components]
Name: "debuggers\x64dbg\plugins\ollydumpex"; Description: "OllyDumpEx"; Types: full compact;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\32\ollydumpex\*"; DestDir: "{app}\debuggers\x64dbg\release\x32\plugins"; Components: "debuggers\x64dbg\plugins\ollydumpex"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\64\ollydumpex\*"; DestDir: "{app}\debuggers\x64dbg\release\x64\plugins"; Components: "debuggers\x64dbg\plugins\ollydumpex"; Flags: ignoreversion recursesubdirs createallsubdirs

; ScyllaHide v2023-03-24_13-03
; https://github.com/x64dbg/ScyllaHide
[Components]
Name: "debuggers\x64dbg\plugins\scyllahide"; Description: "ScyllaHide"; Types: full compact;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\32\scyllahide\*"; DestDir: "{app}\debuggers\x64dbg\release\x32\plugins"; Components: "debuggers\x64dbg\plugins\scyllahide"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\64\scyllahide\*"; DestDir: "{app}\debuggers\x64dbg\release\x64\plugins"; Components: "debuggers\x64dbg\plugins\scyllahide"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]
Name: "{app}\sendto+\sendto\Documentation\ScyllaHide"; Filename: "{app}\documentation\ScyllaHide.pdf"; Components: "debuggers\x64dbg\plugins\scyllahide"

; SlothBP v1.0.21
; https://github.com/x64dbg/SlothBP
[Components]
Name: "debuggers\x64dbg\plugins\slothbp"; Description: "SlothBP"; Types: full compact;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\32\slothbp\*"; DestDir: "{app}\debuggers\x64dbg\release\x32\plugins"; Components: "debuggers\x64dbg\plugins\slothbp"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\64\slothbp\*"; DestDir: "{app}\debuggers\x64dbg\release\x64\plugins"; Components: "debuggers\x64dbg\plugins\slothbp"; Flags: ignoreversion recursesubdirs createallsubdirs

; SwissArmyKnife v9-26-2020
; https://github.com/Nukem9/SwissArmyKnife
[Components]
Name: "debuggers\x64dbg\plugins\swissarmyknife"; Description: "SwissArmyKnife"; Types: full compact;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\32\swissarmyknife\*"; DestDir: "{app}\debuggers\x64dbg\release\x32\plugins"; Components: "debuggers\x64dbg\plugins\swissarmyknife"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\64\swissarmyknife\*"; DestDir: "{app}\debuggers\x64dbg\release\x64\plugins"; Components: "debuggers\x64dbg\plugins\swissarmyknife"; Flags: ignoreversion recursesubdirs createallsubdirs

; xAnalyzer v2.5.6
; https://github.com/ThunderCls/xAnalyzer
[Components]
Name: "debuggers\x64dbg\plugins\xanalyzer"; Description: "xAnalyzer"; Types: full compact;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\32\xanalyzer\*"; DestDir: "{app}\debuggers\x64dbg\release\x32\plugins"; Components: "debuggers\x64dbg\plugins\xanalyzer"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\64\xanalyzer\*"; DestDir: "{app}\debuggers\x64dbg\release\x64\plugins"; Components: "debuggers\x64dbg\plugins\xanalyzer"; Flags: ignoreversion recursesubdirs createallsubdirs

; xSelectBlock v0.1
; https://github.com/morsisko/xSelectBlock
[Components]
Name: "debuggers\x64dbg\plugins\xselectblock"; Description: "xSelectBlock"; Types: full compact;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\32\xselectblock\*"; DestDir: "{app}\debuggers\x64dbg\release\x32\plugins"; Components: "debuggers\x64dbg\plugins\xselectblock"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\64\xselectblock\*"; DestDir: "{app}\debuggers\x64dbg\release\x64\plugins"; Components: "debuggers\x64dbg\plugins\xselectblock"; Flags: ignoreversion recursesubdirs createallsubdirs

; YaraGen v0.1
; https://github.com/mrexodia/YaraGen
[Components]
Name: "debuggers\x64dbg\plugins\yaragen"; Description: "YaraGen"; Types: full compact;
[Files]
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\32\yaragen\*"; DestDir: "{app}\debuggers\x64dbg\release\x32\plugins"; Components: "debuggers\x64dbg\plugins\yaragen"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#MySrcDir}\debuggers\x64dbg\plugins\64\yaragen\*"; DestDir: "{app}\debuggers\x64dbg\release\x64\plugins"; Components: "debuggers\x64dbg\plugins\yaragen"; Flags: ignoreversion recursesubdirs createallsubdirs
