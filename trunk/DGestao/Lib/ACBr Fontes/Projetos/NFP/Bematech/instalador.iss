; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Bematech_NFP"
#define MyAppVerName "Bematech NFP 1.0"
#define MyAppPublisher "Projeto ACBr"
#define MyAppURL "http://acbr.sf.net/"
#define MyAppExeName "Bematech_NFP.exe"

[Setup]
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\BematechNFP
DefaultGroupName=Bematech NFP
LicenseFile=licenca.txt
OutputBaseFilename=Instalador_Bematech_NFP
SetupIconFile=impressora.ico
Compression=lzma
SolidCompression=yes

[Types]
Name: "usuario"; Description: "Instala��o Usu�rio";
Name: "desenvolvedor"; Description: "Instala��o Desenvolvedor(Com Fontes)"

[Components]
Name: "programa"; Description: "Programa Bematech_NFP"; Types: usuario desenvolvedor; Flags: fixed
Name: "fontes"; Description: "Fontes em Delphi"; Types: desenvolvedor

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkedonce
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "Bematech_NFP.exe"; DestDir: "{app}"; Flags: ignoreversion;  Components: programa
Source: "BemaFI32.dll"; DestDir: "{app}"; Flags: ; Components: programa
Source: "BemaFI32.ini"; DestDir: "{app}"; Flags: ; Components: programa
Source: "BemaMFD2.dll"; DestDir: "{app}"; Flags: ; Components: programa
Source: "BemaMFD.dll"; DestDir: "{app}"; Flags: ; Components: programa
Source: "Bematech_NFP.dpr"; DestDir: "{app}\fontes"; Flags: ; Components: fontes
Source: "Bematech_NFP.dof"; DestDir: "{app}\fontes"; Flags: ; Components: fontes
Source: "principal.pas"; DestDir: "{app}\fontes"; Flags: ; Components: fontes
Source: "principal.xfm"; DestDir: "{app}\fontes"; Flags: ; Components: fontes
Source: "instalador.iss"; DestDir: "{app}\fontes"; Flags: ; Components: fontes
Source: "impressora.ico"; DestDir: "{app}\fontes"; Flags: ; Components: fontes

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#MyAppName}}"; Flags: nowait postinstall skipifsilent
