; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MathProcessor"
#define MyAppVersion "1.0.2.0"
#define MyAppPublisher "Kashif Imran"
#define MyAppURL "http://www.mathiversity.com/"
#define MyAppExeName "MathProcessor.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2113CC00-E521-4F4D-A935-03B2307D1735}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName=Math Processor
LicenseFile=LICENSE
OutputDir=dist
OutputBaseFilename=math-processor-{#MyAppVersion}-setup
SetupIconFile=visual-studio\MathProcessor\app_icon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "visual-studio\MathProcessor\bin\Release\MathProcessor.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\bin\Release\ICSharpCode.SharpZipLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\bin\Release\MathProcessorLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\bin\Release\MathProcessor.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\bin\Release\README.html"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "visual-studio\MathProcessor\Examples\dancing_curves.txt"; DestDir: "{app}\Examples"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\Examples\ExportTruthTable.txt"; DestDir: "{app}\Examples"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\Examples\fibonacci.txt"; DestDir: "{app}\Examples"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\Examples\plot.txt"; DestDir: "{app}\Examples"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\Examples\prime_test.txt"; DestDir: "{app}\Examples"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\Examples\StandarDeviation.txt"; DestDir: "{app}\Examples"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\Examples\tables.txt"; DestDir: "{app}\Examples"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\Examples\table_test.txt"; DestDir: "{app}\Examples"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\Examples\truthExample.txt"; DestDir: "{app}\Examples"; Flags: ignoreversion
Source: "visual-studio\MathProcessor\Examples\user_table.txt"; DestDir: "{app}\Examples"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCR; SubKey: ".mp"; ValueType: string; ValueData: "Math Processor File"; Flags: uninsdeletekey
Root: HKCR; SubKey: "Math Processor File"; ValueType: string; ValueData: "Math Processor File"; Flags: uninsdeletekey
Root: HKCR; SubKey: "Math Processor File\Shell\Open\Command"; ValueType: string; ValueData: """{app}\MathProcessor.exe"" ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: "Math Processor File\DefaultIcon"; ValueType: string; ValueData: "{app}\MathProcessor.exe,0"; Flags: uninsdeletevalue

[Dirs]
Name: "{app}\Examples"
