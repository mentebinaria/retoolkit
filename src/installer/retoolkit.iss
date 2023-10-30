#define MyAppName "retoolkit"
#define MyAppVersion "2023.10"
#define MyAppPublisher "Mente Binária"
#define MyAppURL "https://github.com/mentebinaria/retoolkit"
#define MySrcDir "d:\ret\"

[Setup]
AppId={{BB46345D-F5E9-408E-AA39-64A5EDD92E30}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
; PrivilegesRequired=lowest
OutputBaseFilename={#MyAppName}_{#MyAppVersion}_setup
WizardStyle=modern
; Compression=none
SetupIconFile="..\..\assets\retoolkit.ico"
UninstallDisplayIcon="{app}\sendto+\retoolkit.ico"
ArchitecturesInstallIn64BitMode=x64
UsePreviousTasks=yes
ChangesEnvironment=yes

[Components]
Name: "android"; Description: "Android Tools"; Types: full;
#include "android\dex2jar.iss"

[Components]
Name: "autoit"; Description: "AutoIt Decompilers"; Types: full;
#include "autoit\exe2aut.iss"
#include "autoit\myauttoexe.iss"

[Components]
Name: "calculators"; Description: "Calculators"; Types: full;
#include "calculators\xopcodecalc.iss"

[Components]
Name: "cobaltstrike"; Description: "Cobalt Strike Beacon Analysis"; Types: full;
#include "cobaltstrike\1768.iss"
#include "cobaltstrike\cobaltstrikescan.iss"

[Components]
Name: "debuggers"; Description: "Debuggers"; Types: full;
#include "debuggers\hyperdbg.iss"
#include "debuggers\x64dbg.iss"

[Components]
Name: "decompilers"; Description: "Decompilers"; Types: full;
#include "decompilers\cutter.iss"
#include "decompilers\ghidra.iss"

[Components]
Name: "delphi"; Description: "Delphi Tools"; Types: full;
#include "delphi\idr.iss"

[Components]
Name: "dotnet"; Description: "Dotnet Tools"; Types: full;
#include "dotnet\de4dot.iss"
#include "dotnet\dnspyex.iss"
#include "dotnet\dotdumper.iss"
#include "dotnet\extremedumper.iss"
#include "dotnet\ilspy.iss"
#include "dotnet\rundotnetdll.iss"
#include "dotnet\sae.iss"

[Components]
Name: "elf"; Description: "ELF Tools"; Types: full;
#include "elf\elfparserng.iss"
#include "elf\xelfviewer.iss"

[Components]
Name: "go"; Description: "Go Tools"; Types: full;
#include "go\gftrace.iss"
#include "go\goresym.iss"
#include "go\redress.iss"

[Components]
Name: "hexeditors"; Description: "Hex Editors"; Types: full;
#include "hexeditors\fhex.iss"
#include "hexeditors\hxd.iss"
#include "hexeditors\imhex.iss"
#include "hexeditors\rehex.iss"

[Components]
Name: "java"; Description: "Java"; Types: full;
#include "java\jadx.iss"
#include "java\jdgui.iss"
#include "java\recaf.iss"

[Components]
Name: "ole"; Description: "OLE/Compound File Binary File analysis (.msi, .doc, etc)"; Types: full;
#include "ole\lessmsi.iss"
#include "ole\officemalscanner.iss"
#include "ole\oledump.iss"
#include "ole\ssview.iss"

[Components]
Name: "network"; Description: "Network"; Types: full;
#include "network\fakenet.iss"
#include "network\echomirage.iss"
#include "network\nmap.iss"

[Components]
Name: "pdf"; Description: "PDF Tools"; Types: full;
#include "pdf\pdf-parser.iss"
#include "pdf\pdfid.iss"

[Components]
Name: "pe"; Description: "PE Tools"; Types: full;
#include "pe\4n4ldetector.iss"
#include "pe\capa.iss"
#include "pe\die.iss"
#include "pe\dll_to_exe.iss"
#include "pe\exeinfope.iss"
#include "pe\floss.iss"
#include "pe\pe_unmapper.iss"
#include "pe\peanatomist.iss"
#include "pe\pebear.iss"
#include "pe\pestudio.iss"
#include "pe\pev.iss"
#include "pe\reshack.iss"
#include "pe\stud_pe.iss"
#include "pe\winapisearch.iss"
#include "pe\uwpspy.iss"

[Components]
Name: "processinspection"; Description: "Process Inspection"; Types: full;
#include "processinspection\apimonitor.iss"
#include "processinspection\filegrab.iss"
#include "processinspection\hollowshunter.iss"
#include "processinspection\pesieve.iss"
#include "processinspection\observer.iss"
#include "processinspection\systeminformer.iss"
#include "processinspection\xntsv.iss"

[Components]
Name: "programming"; Description: "Programming"; Types: full;
#include "programming\devcpp.iss"
#include "programming\fasm.iss"
#include "programming\winpython.iss"

[Components]
Name: "signature"; Description: "Signature"; Types: full;
#include "signature\yara.iss"

[Components]
Name: "systeminformation"; Description: "System Information"; Types: full;
#include "systeminformation\winobjex64.iss"

[Components]
Name: "unpacking"; Description: "Unpacking"; Types: full;
#include "unpacking\novmp.iss"
#include "unpacking\mal_unpack.iss"
#include "unpacking\qunpack.iss"
#include "unpacking\upx.iss"
#include "unpacking\xvolkolak.iss"

[Components]
Name: "utilities"; Description: "Utilities"; Types: full;
#include "utilities\7zip.iss"
#include "utilities\bazzar.iss"
#include "utilities\cyberchef.iss"
#include "utilities\entropy.iss"
#include "utilities\errorlookup.iss"
#include "utilities\forcetoolkit.iss"
#include "utilities\jdk.iss"
#include "utilities\manw.iss"
#include "utilities\npp.iss"
#include "utilities\openhashtab.iss"
#include "utilities\regshot.iss"
#include "utilities\vt.iss"
#include "utilities\winapiexec.iss"
#include "utilities\wub.iss"

; Use SendTo+ [https://github.com/lifenjoiner/sendto-plus/] for context menus
; as Windows limits the number of entries added via MUIVerb in Registry
[Files]
Source: "{#MySrcDir}\sendto+\sendto+_x64.exe"; Destdir: "{app}\sendto+\"; Check: Is64BitInstallMode
Source: "{#MySrcDir}\sendto+\sendto+_x86.exe"; Destdir: "{app}\sendto+\"; Check: not Is64BitInstallMode
Source: "{#MySrcDir}\sendto+\LICENSE"; Destdir: "{app}\sendto+\"
Source: "{#MySrcDir}\sendto+\readme.md"; Destdir: "{app}\sendto+\"
Source: "{#MySrcDir}\retoolkit.ico"; Destdir: "{app}\sendto+\"

; Create a shortcut in "SendTo" user folder
[Icons]
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\sendto+\sendto+_x86.exe"; WorkingDir: "{app}\sendto+\"; IconFilename: "{app}\sendto+\retoolkit.ico"; Check: not Is64BitInstallMode
; retoolkit desktop shortcut
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\sendto+\sendto+_x64.exe"; WorkingDir: "{app}\sendto+\"; IconFilename: "{app}\sendto+\retoolkit.ico"; HotKey: "ctrl+]"; Check: Is64BitInstallMode
; cmd.exe desktop shortcut
Name: "{userdesktop}\cmd"; Filename: "cmd.exe"; WorkingDir: "{sys}\cmd.exe"; Tasks: cmddesktop

; Add an item in the right-click menu for all files
[Registry]
Root: HKCR; Subkey: "*\shell\retoolkit"; Flags: uninsdeletekey
Root: HKCR; Subkey: "*\shell\retoolkit"; ValueType: string; ValueName: "Icon"; ValueData: "{app}\sendto+\retoolkit.ico"
Root: HKCR; Subkey: "*\shell\retoolkit"; ValueType: string; ValueName: "Position"; ValueData: "top"
Root: HKCR; Subkey: "*\shell\retoolkit\command"; Flags: uninsdeletekey
Root: HKCR; Subkey: "*\shell\retoolkit\command"; ValueType: string; ValueName: ""; ValueData: "cmd /c ""start /d {app}\sendto+ {app}\sendto+\sendto+_x64.exe ""%1"""""

; Add documentation menu
#include "documentation.iss"

[InstallDelete]
Type: files; Name: "{localappdata}\Microsoft\WindowsApps\python.exe"; Tasks: msstorepython
Type: files; Name: "{localappdata}\Microsoft\WindowsApps\python3*.exe"; Tasks: msstorepython

[Tasks]
Name: "addtopath"; Description: "Add programs to PATH (requires logging in again)";
Name: "cmddesktop"; Description: "Create a cmd.exe shortcut on desktop";
Name: "msstorepython"; Description: "Delete useless python.exe from Microsoft Store";
Name: "wub"; Description: "Disable Windows Update to reduce the noise in network captures (side effect: MS Store won't work until you re-enable it)";

[Code]
procedure EnvAddPath(Path: string);
var
    Paths: string;
begin
    { Retrieve current path (use empty string if entry not exists) }
    if not RegQueryStringValue(HKEY_CURRENT_USER, 'Environment', 'Path', Paths)
    then Paths := '';

    { Skip if string already found in path }
    if Pos(';' + Uppercase(Path) + ';', ';' + Uppercase(Paths) + ';') > 0 then exit;

    { App string to the end of the path variable }
    Paths := Paths + ';'+ Path //+';'

    { Overwrite (or create if missing) path environment variable }
    if RegWriteStringValue(HKEY_CURRENT_USER, 'Environment', 'Path', Paths)
    then Log(Format('The [%s] added to PATH: [%s]', [Path, Paths]))
    else Log(Format('Error while adding the [%s] to PATH: [%s]', [Path, Paths]));
end;

procedure EnvRemovePath(Path: string);
var
    Paths: string;
    P: Integer;
begin
    { Skip if registry entry not exists }
    if not RegQueryStringValue(HKEY_CURRENT_USER, 'Environment', 'Path', Paths) then
        exit;

    { Skip if string not found in path }
    P := Pos(';' + Uppercase(Path) + ';', ';' + Uppercase(Paths) + ';');
    if P = 0 then exit;

    { Update path variable }
    Delete(Paths, P - 1, Length(Path) + 1);

    { Overwrite path environment variable }
    if RegWriteStringValue(HKEY_CURRENT_USER, 'Environment', 'Path', Paths)
    then Log(Format('The [%s] removed from PATH: [%s]', [Path, Paths]))
    else Log(Format('Error while removing the [%s] from PATH: [%s]', [Path, Paths]));
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
    if CurStep = ssPostInstall then
    begin
      EnvAddPath(ExpandConstant('{app}') + '\bin');
      if WizardIsComponentSelected('android\dex2jar') then EnvAddPath(ExpandConstant('{app}') + '\android\dex2jar');
      if WizardIsComponentSelected('compilers\devcpp') then EnvAddPath(ExpandConstant('{app}') + '\compilers\devcpp\TDM-GCC-64\bin');
      if WizardIsComponentSelected('debuggers\hyperdbg') then EnvAddPath(ExpandConstant('{app}') + '\debuggers\hyperdbg');
      if WizardIsComponentSelected('dotnet\de4dot') then EnvAddPath(ExpandConstant('{app}') + '\dotnet\de4dot');
      if WizardIsComponentSelected('ole\lessmsi') then EnvAddPath(ExpandConstant('{app}') + '\ole\lessmsi');
      if WizardIsComponentSelected('ole\officemalscanner') then EnvAddPath(ExpandConstant('{app}') + '\ole\officemalscanner');
      if WizardIsComponentSelected('processinspection\hollowshunter') then EnvAddPath(ExpandConstant('{app}') + '\processinspection\hollowshunter');
      if WizardIsComponentSelected('processinspection\observer') then EnvAddPath(ExpandConstant('{app}') + '\processinspection\observer');
      if WizardIsComponentSelected('processinspection\pesieve') then EnvAddPath(ExpandConstant('{app}') + '\processinspection\pesieve');
      if WizardIsComponentSelected('programming\winpython') then EnvAddPath(ExpandConstant('{app}') + '\programming\winpython\python-3.11.3.amd64');
      if WizardIsComponentSelected('utilities\winapiexec') then EnvAddPath(ExpandConstant('{app}') + '\utilities\winapiexec');
    end
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
    if CurUninstallStep = usPostUninstall then
    begin
      EnvRemovePath(ExpandConstant('{app}') + '\bin');
      EnvRemovePath(ExpandConstant('{app}') + '\android\dex2jar');
      EnvRemovePath(ExpandConstant('{app}') + '\compilers\devcpp\TDM-GCC-64\bin');
      EnvRemovePath(ExpandConstant('{app}') + '\debuggers\hyperdbg');
      EnvRemovePath(ExpandConstant('{app}') + '\dotnet\de4dot');
      EnvRemovePath(ExpandConstant('{app}') + '\ole\lessmsi');
      EnvRemovePath(ExpandConstant('{app}') + '\ole\officemalscanner');
      EnvRemovePath(ExpandConstant('{app}') + '\processinspection\hollowshunter');
      EnvRemovePath(ExpandConstant('{app}') + '\processinspection\observer');
      EnvRemovePath(ExpandConstant('{app}') + '\processinspection\pesieve');
      EnvRemovePath(ExpandConstant('{app}') + '\programming\winpython\python-3.11.3.amd64');
      EnvRemovePath(ExpandConstant('{app}') + '\utilities\winapiexec');
    end
end;
