; =================================================================
; Instalador da Tradução PT-BR — The Quintessential Quintuplets:
; Five Memories Spent With You (goto02)
; =================================================================
; Aplica patches binários (xdelta3) nos arquivos config/scenario/motion
; sem distribuir os arquivos originais do jogo.
;
; Requisitos para compilar: Inno Setup 6+
; Arquivos usados (precisam existir nesses caminhos SÓ na hora de compilar):
;   D:\freemote\xdelta3-3.0.11-x86_64.exe
;   D:\freemote\patches\*.xdelta  (6 arquivos)
; =================================================================

#define MyAppName "Tradução PT-BR - Gotoubun no Hanayome: Five Memories"
#define MyAppVersion "1.0"
#define MyAppPublisher "Fan Translation"
#define SteamAppId "2507620"

[Setup]
AppId={{9F2C4E1A-6B3D-4A8E-9C1F-2D5B7E8A0F31}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={code:GetGameDir}


SetupIconFile=images\logo.ico

DisableProgramGroupPage=yes
DisableWelcomePage=no
DirExistsWarning=no
AppendDefaultDirName=no
Uninstallable=no
OutputDir=D:\freemote\instalador\output
OutputBaseFilename=Instalar_Traducao_PTBR_Gotoubun_Five_Memories
Compression=lzma2/max
SolidCompression=yes
WizardStyle=modern
WizardBackImageFile=images\fundo_gradiente.png
PrivilegesRequired=lowest
ArchitecturesInstallIn64BitMode=x64compatible

WizardSmallImageFile=images\logo_55.png,images\logo_69.png,images\logo_83.png,images\logo_110.png
WizardImageAlphaFormat=defined
WizardImageFile=images\lateral.png


[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Files]
Source: "D:\freemote\xdelta3-3.0.11-x86_64.exe"; DestDir: "{tmp}"; DestName: "xdelta3.exe"; Flags: dontcopy
Source: "D:\freemote\patches\config_body.xdelta"; DestDir: "{tmp}"; Flags: dontcopy
Source: "D:\freemote\patches\config_info.xdelta"; DestDir: "{tmp}"; Flags: dontcopy
Source: "D:\freemote\patches\scenario_body.xdelta"; DestDir: "{tmp}"; Flags: dontcopy
Source: "D:\freemote\patches\scenario_info.xdelta"; DestDir: "{tmp}"; Flags: dontcopy
Source: "D:\freemote\patches\motion_body.xdelta"; DestDir: "{tmp}"; Flags: dontcopy
Source: "D:\freemote\patches\motion_info.xdelta"; DestDir: "{tmp}"; Flags: dontcopy

[Code]
var
  FalhaGeral: Boolean;
  QtdFalhas: Integer;          // quantos arquivos falharam
  ErrosPatch: String;          // lista dos arquivos com erro (uma única mensagem no final)
  HouveBackupApagado: Boolean; // algum backup .original defeituoso foi apagado
  HouvePermissao: Boolean;     // algum erro parece ser de permissão / jogo aberto

{ ---------- Utilidades ---------- }

// Uma pasta "windata" válida é a que contém os arquivos do jogo
function PastaWindataValida(Dir: String): Boolean;
begin
  Result := FileExists(AddBackslash(Dir) + 'scenario_body.bin');
end;

// Lê uma linha no formato VDF da Steam:  "chave"   "valor"
function ParseVdfLine(Line: String; var Key, Value: String): Boolean;
var
  P: Integer;
  Rest: String;
begin
  Result := False;
  Key := '';
  Value := '';

  P := Pos('"', Line);
  if P = 0 then Exit;
  Rest := Copy(Line, P + 1, Length(Line));

  P := Pos('"', Rest);
  if P = 0 then Exit;
  Key := Copy(Rest, 1, P - 1);
  Rest := Copy(Rest, P + 1, Length(Rest));

  P := Pos('"', Rest);
  if P = 0 then Exit;
  Rest := Copy(Rest, P + 1, Length(Rest));

  P := Pos('"', Rest);
  if P = 0 then Exit;
  Value := Copy(Rest, 1, P - 1);

  Result := True;
end;

// Procura o jogo dentro de UMA biblioteca da Steam
function TentarBiblioteca(Lib: String): String;
var
  SteamApps, InstallDir, Dir, Key, Value: String;
  Linhas: TArrayOfString;
  I: Integer;
begin
  Result := '';
  SteamApps := AddBackslash(Lib) + 'steamapps\';
  InstallDir := 'goto02';

  // O appmanifest diz o nome real da pasta do jogo
  if LoadStringsFromFile(SteamApps + 'appmanifest_{#SteamAppId}.acf', Linhas) then
  begin
    for I := 0 to GetArrayLength(Linhas) - 1 do
      if ParseVdfLine(Linhas[I], Key, Value) then
        if CompareText(Key, 'installdir') = 0 then
          InstallDir := Value;
  end;

  Dir := SteamApps + 'common\' + InstallDir + '\windata';
  if PastaWindataValida(Dir) then
    Result := Dir;
end;

// Procura o jogo na biblioteca principal e em todas as bibliotecas extras
function AcharJogoNaSteam(SteamPath: String): String;
var
  Linhas: TArrayOfString;
  I: Integer;
  Key, Value, Lib: String;
begin
  Result := TentarBiblioteca(SteamPath);
  if Result <> '' then Exit;

  if LoadStringsFromFile(AddBackslash(SteamPath) + 'steamapps\libraryfolders.vdf', Linhas) then
  begin
    for I := 0 to GetArrayLength(Linhas) - 1 do
    begin
      if ParseVdfLine(Linhas[I], Key, Value) then
      begin
        // formato novo: "path" "D:\\SteamLibrary"   |   formato antigo: "1" "D:\\SteamLibrary"
        if (CompareText(Key, 'path') = 0) or
           ((StrToIntDef(Key, -1) >= 0) and (Pos(':', Value) > 0)) then
        begin
          Lib := Value;
          StringChangeEx(Lib, '\\', '\', True);
          Result := TentarBiblioteca(Lib);
          if Result <> '' then Exit;
        end;
      end;
    end;
  end;
end;

// Plano B: entrada de desinstalação do jogo no registro
function TentarUninstall(RootKey: Integer): String;
var
  Loc: String;
begin
  Result := '';
  if RegQueryStringValue(RootKey,
       'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App {#SteamAppId}',
       'InstallLocation', Loc) then
    if PastaWindataValida(AddBackslash(Loc) + 'windata') then
      Result := AddBackslash(Loc) + 'windata';
end;

function DetectarPastaDoJogo: String;
var
  SteamPath: String;
begin
  Result := '';

  // 1) Pasta da Steam do usuário atual (mais confiável)
  if RegQueryStringValue(HKCU, 'Software\Valve\Steam', 'SteamPath', SteamPath) then
  begin
    StringChangeEx(SteamPath, '/', '\', True);
    Result := AcharJogoNaSteam(SteamPath);
    if Result <> '' then Exit;
  end;

  // 2) Pasta da Steam registrada na máquina (visões 32 e 64 bits)
  if RegQueryStringValue(HKLM32, 'SOFTWARE\Valve\Steam', 'InstallPath', SteamPath) then
  begin
    Result := AcharJogoNaSteam(SteamPath);
    if Result <> '' then Exit;
  end;
  if RegQueryStringValue(HKLM64, 'SOFTWARE\Valve\Steam', 'InstallPath', SteamPath) then
  begin
    Result := AcharJogoNaSteam(SteamPath);
    if Result <> '' then Exit;
  end;

  // 3) Entrada de desinstalação do jogo (várias visões do registro)
  Result := TentarUninstall(HKLM32);
  if Result <> '' then Exit;
  Result := TentarUninstall(HKLM64);
  if Result <> '' then Exit;
  Result := TentarUninstall(HKCU);
end;

function GetGameDir(Param: String): String;
begin
  Result := DetectarPastaDoJogo;
  if Result = '' then
    Result := 'C:\Program Files (x86)\Steam\steamapps\common\goto02\windata';
end;

{ ---------- Aplicação dos patches ---------- }

procedure ExtrairArquivosTemp;
begin
  ExtractTemporaryFile('xdelta3.exe');
  ExtractTemporaryFile('config_body.xdelta');
  ExtractTemporaryFile('config_info.xdelta');
  ExtractTemporaryFile('scenario_body.xdelta');
  ExtractTemporaryFile('scenario_info.xdelta');
  ExtractTemporaryFile('motion_body.xdelta');
  ExtractTemporaryFile('motion_info.xdelta');
end;

// Roda o xdelta3. Devolve True se o patch foi aplicado e gerou o arquivo de saída.
// "Executou" diz se o xdelta3 chegou a rodar (False = nem abriu, ex.: bloqueado por antivírus).
function RodarXdelta(Xdelta, Fonte, PatchFile, Saida: String;
  var Codigo: Integer; var Executou: Boolean): Boolean;
begin
  if FileExists(Saida) then
    DeleteFile(Saida);

  Executou := Exec(Xdelta,
    '-d -f -s "' + Fonte + '" "' + PatchFile + '" "' + Saida + '"',
    '', SW_HIDE, ewWaitUntilTerminated, Codigo);

  Result := Executou and (Codigo = 0) and FileExists(Saida);

  if (not Result) and FileExists(Saida) then
    DeleteFile(Saida);
end;

const
  RES_OK      = 0;  // patch aplicado
  RES_REFEITO = 1;  // patch aplicado; o backup antigo estava defeituoso e foi refeito
  RES_APAGADO = 2;  // falhou: o arquivo atual não é o original (backup recém-criado foi apagado)
  RES_FALHOU  = 3;  // falhou por outro motivo

// Guarda o erro para mostrar tudo numa única mensagem no final
procedure RegistrarErro(Nome, Motivo: String);
begin
  FalhaGeral := True;
  QtdFalhas := QtdFalhas + 1;
  ErrosPatch := ErrosPatch + '  - ' + Nome + ': ' + Motivo + #13#10;
end;

// Apaga o ".original" de um arquivo. Devolve True se existia e foi apagado.
function ApagarBackup(GameDir, Nome: String): Boolean;
var
  Backup: String;
begin
  Backup := AddBackslash(GameDir) + Nome + '.original';
  Result := FileExists(Backup) and DeleteFile(Backup);
end;

function ApplyPatch(GameDir, FileName, PatchName: String): Integer;
var
  OriginalFile, PatchFile, BackupFile, TempOutput, Xdelta: String;
  ResultCode, ResultCode2: Integer;
  Executou, Executou2, BackupNovo, BackupApagado, Refeito, Sucesso: Boolean;
begin
  Result := RES_FALHOU;
  OriginalFile := AddBackslash(GameDir) + FileName;
  PatchFile := ExpandConstant('{tmp}\') + PatchName;
  Xdelta := ExpandConstant('{tmp}\xdelta3.exe');
  BackupFile := OriginalFile + '.original';
  TempOutput := OriginalFile + '.new';
  BackupApagado := False;
  Refeito := False;

  if not FileExists(OriginalFile) then
  begin
    RegistrarErro(FileName, 'arquivo não encontrado (confira se a pasta é a "windata")');
    Exit;
  end;

  // Backup (só na primeira vez). Depois, o backup é sempre a fonte do patch.
  BackupNovo := not FileExists(BackupFile);
  if BackupNovo then
  begin
    if not FileCopy(OriginalFile, BackupFile, False) then
    begin
      HouvePermissao := True;
      RegistrarErro(FileName, 'não consegui fazer o backup');
      Exit;
    end;
  end;

  if (not FileExists(Xdelta)) or (not FileExists(PatchFile)) then
  begin
    RegistrarErro(FileName, 'arquivos internos do instalador não foram extraídos (baixe o instalador de novo)');
    Exit;
  end;

  Sucesso := RodarXdelta(Xdelta, BackupFile, PatchFile, TempOutput, ResultCode, Executou);

  // O patch não aceitou o backup. Se o xdelta3 rodou de verdade, o backup é suspeito.
  if (not Sucesso) and Executou then
  begin
    if BackupNovo then
    begin
      // O backup acabou de ser copiado do arquivo atual do jogo, e esse arquivo não
      // bate com o original (já está modificado ou o jogo foi atualizado).
      // O arquivo do jogo continua intacto, então é seguro apagar essa cópia.
      DeleteFile(BackupFile);
      BackupApagado := True;
    end
    else if RodarXdelta(Xdelta, OriginalFile, PatchFile, TempOutput, ResultCode2, Executou2) then
    begin
      // Backup antigo: o arquivo atual do jogo (ex.: depois de "verificar integridade"
      // na Steam) aceitou o patch, então era o backup que estava errado. Refaz o backup.
      DeleteFile(BackupFile);
      if FileCopy(OriginalFile, BackupFile, False) then
      begin
        Sucesso := True;
        Refeito := True;
      end
      else
      begin
        DeleteFile(TempOutput);
        HouvePermissao := True;
        RegistrarErro(FileName, 'o backup antigo estava defeituoso e foi apagado, mas não consegui criar outro');
        Exit;
      end;
    end;
  end;

  if not Sucesso then
  begin
    if FileExists(TempOutput) then
      DeleteFile(TempOutput);

    if BackupApagado then
    begin
      HouveBackupApagado := True;
      RegistrarErro(FileName, 'o arquivo atual já está modificado (backup .original apagado)');
      Result := RES_APAGADO;
    end
    else if not Executou then
      RegistrarErro(FileName, 'não consegui executar o xdelta3 (antivírus?)')
    else
      RegistrarErro(FileName, 'o patch não bate com o arquivo (jogo atualizado?), código ' + IntToStr(ResultCode));
    Exit;
  end;

  if not DeleteFile(OriginalFile) then
  begin
    DeleteFile(TempOutput);
    HouvePermissao := True;
    RegistrarErro(FileName, 'não consegui substituir o arquivo (o jogo está aberto?)');
    Exit;
  end;

  RenameFile(TempOutput, OriginalFile);

  if Refeito then
    Result := RES_REFEITO
  else
    Result := RES_OK;
end;

// Os arquivos vêm em pares (body + info): se um está errado, o outro também está.
procedure ProcessarPar(GameDir, Corpo, PatchCorpo, Info, PatchInfo: String);
var
  R: Integer;
  Apagou: Boolean;
begin
  R := ApplyPatch(GameDir, Corpo, PatchCorpo);

  if R = RES_APAGADO then
  begin
    // O corpo está modificado, então o par também está: apaga o backup dele e
    // NÃO processa (senão criaria um backup novo a partir do arquivo modificado).
    if ApagarBackup(GameDir, Info) then
    begin
      HouveBackupApagado := True;
      RegistrarErro(Info, 'não processado (o par falhou); backup .original apagado');
    end
    else
      RegistrarErro(Info, 'não processado (o par falhou)');
    Exit;
  end;

  if R = RES_FALHOU then
  begin
    RegistrarErro(Info, 'não processado (o par falhou)');
    Exit;
  end;

  // O backup antigo do corpo estava defeituoso, então o do par provavelmente também:
  // apaga para ser refeito a partir do arquivo atual.
  if R = RES_REFEITO then
    Apagou := ApagarBackup(GameDir, Info);

  R := ApplyPatch(GameDir, Info, PatchInfo);
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  GameDir, Msg: String;
begin
  if CurStep = ssPostInstall then
  begin
    FalhaGeral := False;
    QtdFalhas := 0;
    ErrosPatch := '';
    HouveBackupApagado := False;
    HouvePermissao := False;

    ExtrairArquivosTemp;
    GameDir := ExpandConstant('{app}');

    ProcessarPar(GameDir, 'config_body.bin', 'config_body.xdelta',
                          'config_info.psb.m', 'config_info.xdelta');
    ProcessarPar(GameDir, 'scenario_body.bin', 'scenario_body.xdelta',
                          'scenario_info.psb.m', 'scenario_info.xdelta');
    ProcessarPar(GameDir, 'motion_body.bin', 'motion_body.xdelta',
                          'motion_info.psb.m', 'motion_info.xdelta');

    if FalhaGeral then
    begin
      Msg := 'A tradução NÃO foi aplicada em ' + IntToStr(QtdFalhas) + ' de 6 arquivos:' + #13#10#13#10 +
             ErrosPatch + #13#10;

      if HouveBackupApagado then
        Msg := Msg + 'Os arquivos atuais do jogo não são os originais, então os backups ' +
               '".original" criados a partir deles foram apagados (para não ficarem backups defeituosos).' + #13#10#13#10;

      if HouvePermissao then
        Msg := Msg + 'Se o jogo estiver aberto ou em "Program Files", feche-o e/ou execute o ' +
               'instalador como administrador.' + #13#10#13#10;

      Msg := Msg + 'Verifique a integridade dos arquivos do jogo pela Steam e rode o instalador de novo.';
      MsgBox(Msg, mbError, MB_OK);
    end
    else
      MsgBox('Tradução aplicada com sucesso!' + #13#10#13#10 +
             'Os arquivos originais foram salvos com a extensão ".original" ' +
             'na mesma pasta, caso precise reverter.',
             mbInformation, MB_OK);
  end;
end;

{ ---------- Espaço em disco (inclui o backup dos originais) ---------- }

const
  // ~13,3 MB: o valor que o Inno já mostrava antes (arquivos do próprio instalador)
  EspacoBaseBytes = 13946060;

// Converte bytes em MB com 1 casa decimal e vírgula (ex.: 13,3)
function FormatarMB(Bytes: Int64): String;
var
  Decimos: Int64;
begin
  Decimos := (Bytes * 10 + 524288) div 1048576;
  Result := IntToStr(Decimos div 10) + ',' + IntToStr(Decimos mod 10);
end;

// Aceita a pasta "windata" ou a pasta do jogo que contém a "windata"
function ResolverWindata(Dir: String): String;
begin
  Dir := RemoveBackslashUnlessRoot(Dir);
  if (not PastaWindataValida(Dir)) and PastaWindataValida(Dir + '\windata') then
    Result := Dir + '\windata'
  else
    Result := Dir;
end;

// Soma o tamanho do arquivo do jogo SOMENTE se o backup ".original" ainda não existe
procedure SomarBackupFaltante(Dir, Nome: String; var Total: Int64);
var
  Tamanho: Int64;
begin
  if FileExists(AddBackslash(Dir) + Nome + '.original') then
    Exit;
  if FileSize64(AddBackslash(Dir) + Nome, Tamanho) then
    Total := Total + Tamanho;
end;

// Quanto espaço os backups que ainda NÃO foram feitos vão ocupar
function BackupNecessario(Dir: String): Int64;
var
  Total: Int64;
begin
  Total := 0;
  SomarBackupFaltante(Dir, 'config_body.bin', Total);
  SomarBackupFaltante(Dir, 'config_info.psb.m', Total);
  SomarBackupFaltante(Dir, 'scenario_body.bin', Total);
  SomarBackupFaltante(Dir, 'scenario_info.psb.m', Total);
  SomarBackupFaltante(Dir, 'motion_body.bin', Total);
  SomarBackupFaltante(Dir, 'motion_info.psb.m', Total);
  Result := Total;
end;

// Atualiza o texto "Pelo menos X MB..." da tela de destino
procedure AtualizarEspacoNecessario;
var
  Backup: Int64;
begin
  Backup := BackupNecessario(ResolverWindata(WizardForm.DirEdit.Text));

  if Backup > 0 then
    WizardForm.DiskSpaceLabel.Caption :=
      'Pelo menos ' + FormatarMB(EspacoBaseBytes + Backup) + ' MB livres são requeridos ' +
      '(inclui ' + FormatarMB(Backup) + ' MB de backup dos originais).'
  else
    WizardForm.DiskSpaceLabel.Caption :=
      'Pelo menos ' + FormatarMB(EspacoBaseBytes) + ' MB de espaço livre em disco são requeridos.';
end;

procedure DirEditAlterado(Sender: TObject);
begin
  WizardForm.NextButton.Enabled := Trim(WizardForm.DirEdit.Text) <> '';
  AtualizarEspacoNecessario;
end;

{ ---------- Interface do instalador ---------- }

// Aceita tanto a pasta "windata" quanto a pasta do jogo (que contém a windata)
function NextButtonClick(CurPageID: Integer): Boolean;
var
  Dir: String;
  Necessario, Livre, Total: Int64;
begin
  Result := True;
  if CurPageID = wpSelectDir then
  begin
    Dir := ResolverWindata(WizardDirValue);

    if not PastaWindataValida(Dir) then
    begin
      MsgBox('Não encontrei os arquivos do jogo nessa pasta.' + #13#10#13#10 +
             'Selecione a pasta "windata" (dentro da pasta do jogo) ou a própria pasta ' +
             'do jogo que contém a "windata".', mbError, MB_OK);
      Result := False;
      Exit;
    end;

    if CompareText(Dir, RemoveBackslashUnlessRoot(WizardDirValue)) <> 0 then
      WizardForm.DirEdit.Text := Dir;

    // Confere o espaço livre (instalador + backups que ainda faltam)
    Necessario := EspacoBaseBytes + BackupNecessario(Dir);
    if GetSpaceOnDisk64(Dir, Livre, Total) then
    begin
      if Livre < Necessario then
      begin
        if MsgBox('Espaço livre insuficiente no disco selecionado.' + #13#10#13#10 +
                  'Necessário: ' + FormatarMB(Necessario) + ' MB' + #13#10 +
                  'Disponível: ' + FormatarMB(Livre) + ' MB' + #13#10#13#10 +
                  'Deseja continuar mesmo assim?',
                  mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDNO then
          Result := False;
      end;
    end;
  end;
end;

{ Faz a imagem lateral (boas-vindas e tela final) ir até o fim da janela.
  A imagem fica na página original (nada de esconder/mostrar). O que muda é que
  a área das páginas passa a ocupar a janela inteira e os botões são trazidos
  para a frente, ficando por cima da imagem. }
procedure EstenderImagemLateral;
var
  AlturaTotal, FundoInterno: Integer;
begin
  AlturaTotal := WizardForm.ClientHeight - WizardForm.OuterNotebook.Top;

  // Guarda onde terminava a área das telas internas (destino, progresso, etc.)
  FundoInterno := WizardForm.InnerNotebook.Top + WizardForm.InnerNotebook.Height;

  WizardForm.OuterNotebook.Height := AlturaTotal;

  // Devolve as telas internas ao tamanho original: sem isso, textos presos
  // à parte de baixo (como o "Pelo menos X MB...") desciam para a linha dos botões
  WizardForm.InnerNotebook.Height := FundoInterno - WizardForm.InnerNotebook.Top;

  WizardForm.WizardBitmapImage.Top := 0;
  WizardForm.WizardBitmapImage.Height := AlturaTotal;
  WizardForm.WizardBitmapImage2.Top := 0;
  WizardForm.WizardBitmapImage2.Height := AlturaTotal;

  WizardForm.BackButton.BringToFront;
  WizardForm.NextButton.BringToFront;
  WizardForm.CancelButton.BringToFront;
end;

procedure InitializeWizard();
begin
  WizardForm.WelcomeLabel2.Caption :=
    'Este instalador aplica a tradução PT-BR por cima do jogo original.' + #13#10#13#10 +
    'Se você tem o jogo pela Steam, a pasta é detectada automaticamente na próxima tela. ' +
    'Caso contrário (ou se a pasta detectada estiver errada), clique em "Procurar" e ' +
    'selecione a pasta do jogo (ou a pasta "windata" dentro dela).' + #13#10#13#10 +
    'Um backup dos arquivos originais é feito automaticamente antes de qualquer alteração.';

  EstenderImagemLateral;

  WizardForm.DirEdit.OnChange := @DirEditAlterado;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpSelectDir then
    AtualizarEspacoNecessario;
end;
