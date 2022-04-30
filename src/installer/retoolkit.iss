#define MyAppName "retoolkit"
#define MyAppVersion "2022.04"
#define MyAppPublisher "Mente Bin�ria"
#define MyAppURL "https://github.com/mentebinaria/retoolkit"
#define MySrcDir "d:\ret\"

[Setup]
AppId={{BB46345D-F5E9-408E-AA39-64A5EDD92E30}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
;PrivilegesRequired=lowest
OutputBaseFilename={#MyAppName}_{#MyAppVersion}_setup
WizardStyle=modern
;Compression=none
SetupIconFile="..\..\assets\retoolkit.ico"
ArchitecturesInstallIn64BitMode=x64

[Components]
Name: "android"; Description: "Android tools"; Types: full;
#include "android\dex2jar.iss"

[Components]
Name: "autoit"; Description: "AutoIt decompilers"; Types: full;
#include "autoit\exe2aut.iss"
#include "autoit\myauttoexe.iss"

[Components]
Name: "cobaltstrike"; Description: "Cobalt Strike beacon analysis"; Types: full;
#include "cobaltstrike\1768.iss"
#include "cobaltstrike\cobaltstrikescan.iss"

[Components]
Name: "debuggers"; Description: "Debuggers"; Types: full;
#include "debuggers\cutter.iss"
#include "debuggers\x64dbg.iss"

[Components]
Name: "decompilers"; Description: "Decompilers"; Types: full;
#include "decompilers\ghidra.iss"

[Components]
Name: "delphi"; Description: "Delphi Tools"; Types: full;
#include "delphi\idr.iss"

[Components]
Name: "dotnet"; Description: "Dotnet Tools"; Types: full;
#include "dotnet\de4dot.iss"
#include "dotnet\dnspyex.iss"
#include "dotnet\ilspy.iss"
#include "dotnet\rundotnetdll.iss"

[Components]
Name: "elf"; Description: "ELF Tools"; Types: full;
#include "elf\elfparserng.iss"

[Components]
Name: "hexeditors"; Description: "Hex Editors"; Types: full;
#include "hexeditors\fhex.iss"
#include "hexeditors\imhex.iss"
#include "hexeditors\rehex.iss"

[Components]
Name: "java"; Description: "Java decompilers"; Types: full;
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
Name: "network"; Description: "Network tools"; Types: full;
#include "network\echomirage.iss"

[Components]
Name: "pdf"; Description: "PDF tools"; Types: full;
#include "pdf\pdf-parser.iss"
#include "pdf\pdfid.iss"

[Components]
Name: "peanalysers"; Description: "PE analysers"; Types: full;
#include "peanalysers\capa.iss"
#include "peanalysers\die.iss"
#include "peanalysers\exeinfope.iss"
#include "peanalysers\floss.iss"
#include "peanalysers\pebear.iss"
#include "peanalysers\pestudio.iss"
#include "peanalysers\pev.iss"
#include "peanalysers\redress.iss"
#include "peanalysers\reshack.iss"

[Components]
Name: "processmonitors"; Description: "Process monitors"; Types: full;
#include "processmonitors\apimonitor.iss"
#include "processmonitors\filegrab.iss"
#include "processmonitors\hollowshunter.iss"
#include "processmonitors\pesieve.iss"
#include "processmonitors\processhacker.iss"
#include "processmonitors\sysexp.iss"

[Components]
Name: "programming"; Description: "Programming"; Types: full;
#include "programming\devcpp.iss"
#include "programming\fasm.iss"
#include "programming\winpython.iss"

[Components]
Name: "signaturetools"; Description: "Signature tools"; Types: full;
#include "signaturetools\yara.iss"

[Components]
Name: "unpacking"; Description: "Unpacking"; Types: full;
#include "unpacking\novmp.iss"
#include "unpacking\qunpack.iss"
#include "unpacking\upx.iss"
#include "unpacking\xvolkolak.iss"

[Components]
Name: "utilities"; Description: "Utilities"; Types: full;
#include "utilities\7zip.iss"
#include "utilities\cyberchef.iss"
#include "utilities\entropy.iss"
#include "utilities\errorlookup.iss"
#include "utilities\forcetoolkit.iss"
#include "utilities\jdk.iss"
#include "utilities\manw.iss"
#include "utilities\npp.iss"
#include "utilities\vt.iss"
#include "utilities\winapiexec.iss"

; Shortcut to program's folder
;[Icons]
;Name: "{userdesktop}\{#MyAppName}\Explore all tools"; Filename: "{app}"

; SendTo+ shortcuts
; Copy the application

[Files]
Source: "{#MySrcDir}\sendto+\sendto+_x64.exe"; Destdir: "{app}\sendto+\"; Check: Is64BitInstallMode
Source: "{#MySrcDir}\sendto+\sendto+_x86.exe"; Destdir: "{app}\sendto+\"; Check: not Is64BitInstallMode
Source: "{#MySrcDir}\sendto+\LICENSE"; Destdir: "{app}\sendto+\"
Source: "{#MySrcDir}\sendto+\readme.md"; Destdir: "{app}\sendto+\"
Source: "{#MySrcDir}\retoolkit.ico"; Destdir: "{app}\sendto+\"

; Create a shortcut in "SendTo" user folder
[Icons]
Name: "{userappdata}\Microsoft\Windows\SendTo\{#MyAppName}"; Filename: "{app}\sendto+\sendto+_x64.exe"; WorkingDir: "{app}\sendto+\"; IconFilename: "{app}\sendto+\retoolkit.ico"; Check: Is64BitInstallMode
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\sendto+\sendto+_x64.exe"; WorkingDir: "{app}\sendto+\"; IconFilename: "{app}\sendto+\retoolkit.ico"; Check: Is64BitInstallMode
Name: "{userappdata}\Microsoft\Windows\SendTo\{#MyAppName}"; Filename: "{app}\sendto+\sendto+_x86.exe"; WorkingDir: "{app}\sendto+\"; IconFilename: "{app}\sendto+\retoolkit.ico"; Check: not Is64BitInstallMode
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\sendto+\sendto+_x86.exe"; WorkingDir: "{app}\sendto+\"; IconFilename: "{app}\sendto+\retoolkit.ico"; Check: not Is64BitInstallMode

[Tasks]
Name: "addtopath"; Description: "Add programs to PATH (requires logging in again)";

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
      if WizardIsComponentSelected('compilers\devcpp') then EnvAddPath(ExpandConstant('{app}') + '\compilers\devcpp\TDM-GCC-64\bin');
      if WizardIsComponentSelected('dotnet\de4dot') then EnvAddPath(ExpandConstant('{app}') + '\dotnet\de4dot');
      if WizardIsComponentSelected('utilities\winapiexec') then EnvAddPath(ExpandConstant('{app}') + '\utilities\winapiexec');
      if WizardIsComponentSelected('ole\officemalscanner') then EnvAddPath(ExpandConstant('{app}') + '\ole\officemalscanner');
      if WizardIsComponentSelected('android\dex2jar') then EnvAddPath(ExpandConstant('{app}') + '\android\dex2jar');
      if WizardIsComponentSelected('processmonitors\pesieve') then EnvAddPath(ExpandConstant('{app}') + '\processmonitors\pesieve');
      if WizardIsComponentSelected('processmonitors\hollowshunter') then EnvAddPath(ExpandConstant('{app}') + '\processmonitors\hollowshunter');
      EnvAddPath(ExpandConstant('{app}') + '\bin');
    end
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
    if CurUninstallStep = usPostUninstall then
    begin
      EnvRemovePath(ExpandConstant('{app}') + '\compilers\devcpp\TDM-GCC-64\bin');
      EnvRemovePath(ExpandConstant('{app}') + '\dotnet\de4dot');
      EnvRemovePath(ExpandConstant('{app}') + '\utilities\winapiexec');
      EnvRemovePath(ExpandConstant('{app}') + '\ole\officemalscanner');
      EnvRemovePath(ExpandConstant('{app}') + '\android\dex2jar');
      EnvRemovePath(ExpandConstant('{app}') + '\processmonitors\pesieve');
      EnvRemovePath(ExpandConstant('{app}') + 'processmonitors\hollowshunter');
      EnvRemovePath(ExpandConstant('{app}') + '\bin');
    end
end;