{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2004 Daniel Simoes de Almeida               }
{                                                                              }
{ Colaboradores nesse arquivo: Alexandre Rocha Lima e Marcondes                }
{                                                                              }
{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{ Esse arquivo usa a classe  SynaSer   Copyright (c)2001-2003, Lukas Gebauer   }
{  Project : Ararat Synapse     (Found at URL: http://www.ararat.cz/synapse/)  }
{                                                                              }
{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }
{                                                                              }
{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim�es de Almeida  -  daniel@djsystem.com.br  -  www.djsystem.com.br  }
{              Pra�a Anita Costa, 34 - Tatu� - SP - 18270-410                  }
{                                                                              }
{******************************************************************************}

{$I ACBr.inc}

unit ACBrSMSDaruma;

interface

uses
  ACBrSMSClass, Classes;

type
  TACBrSMSDaruma = class(TACBrSMSClass)
  private

  public
    constructor Create(AOwner: TComponent);

    procedure TrocarBandeja(const ASinCard: TACBrSMSSinCard); override;
    procedure EnviarSMS(const ATelefone: AnsiString;
      const AMensagem: AnsiString; var AIndice: String); override;
    procedure ListarMensagens(const AFiltro: TACBrSMSFiltro;
      const APath: AnsiString); override;

  end;

implementation

uses
  ACBrDevice, ACBrUtil, SysUtils;

{ TACBrSMSDaruma }

constructor TACBrSMSDaruma.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  fpBandejasSimCard := 2;
end;

procedure TACBrSMSDaruma.TrocarBandeja(const ASinCard: TACBrSMSSinCard);
var
  cmd: AnsiString;
  Tentativas: Integer;
  Sincr: TACBrSMSSincronismo;
begin
  case ASinCard of
    sin1: cmd := 'ATL1';
    sin2: cmd := 'ATL2';
  end;

  fpDevice.Serial.Purge;
  Self.EnviarComando(cmd);

  if not Self.ATResult then
    raise EACBrSMSException.Create('N�o foi poss�vel efetuar a troca da bandeja.')
  else
  begin
    // aguardar a sincroniza��o com a operadora
    Tentativas := 0;
    repeat
      Sincr := EstadoSincronismo;
      Inc(Tentativas);
    until (Sincr = sinSincronizado) or (Tentativas >= 30);

    if Tentativas > 30 then
      raise EACBrSMSException.Create('N�o foi possivel sincronizar o SinCard com a operadora de telefonia.');
  end;
end;

procedure TACBrSMSDaruma.ListarMensagens(const AFiltro: TACBrSMSFiltro;
  const APath: AnsiString);
var
  cmd: AnsiString;
  Retorno: String;
  I: Integer;
begin
  case AFiltro of
    fltTudo:     cmd := 'AT+CMGL="ALL"';
    fltLidas:    cmd := 'AT+CMGL="REC READ"';
    fltNaoLidas: cmd := 'AT+CMGL="REC UNREAD"';
  end;

  Self.EnviarComando(cmd);
  if Self.ATResult then
  begin
    Retorno := EmptyStr;
    for I := 0 to Length(fpUltimaResposta) - 1 do
    begin
      if not(fpUltimaResposta[I] in [#0, #5, #$18, #$C]) then
        Retorno := Retorno + fpUltimaResposta[I];
    end;

    fpUltimaResposta := Trim(Retorno);
    WriteToTXT(APath, fpUltimaResposta, False, True);
  end;
end;

procedure TACBrSMSDaruma.EnviarSMS(const ATelefone,
  AMensagem: AnsiString; var AIndice: String);
var
  Cmd: AnsiString;
  Ret: AnsiString;
begin
  // verificar se o sincard est� sincronizado **********************************
  if EstadoSincronismo <> sinSincronizado then
    raise EACBrSMSException.Create(FALHA_SINCARD_SINCRONIZADO);


  // definir o modo de envio ***************************************************
  Cmd := 'AT+CMGF=1';
  Self.EnviarComando(Cmd);
  if not Self.ATResult then
    raise EACBrSMSException.Create(FALHA_INICIALIZACAO + sLineBreak + fpUltimaResposta);


  // definir o n�mero de telefone do destinat�rio ******************************
  Cmd := 'AT+CMGS="' + ATelefone + '"';
  Self.EnviarComando(Cmd);
  if not Self.ATResult then
    raise EACBrSMSException.Create(FALHA_NUMERO_TELEFONE + sLineBreak + fpUltimaResposta);


  // Enviar a mensagem *********************************************************
  Cmd := Trim(AMensagem) + CTRL_Z;
  Self.EnviarComando(Cmd);
  if not Self.ATResult then
    raise EACBrSMSException.Create(FALHA_ENVIAR_MENSAGEM + sLineBreak + fpUltimaResposta);


  // verificar se foi retornado indice da mensagem *****************************
  Ret := fpUltimaResposta;
  if Pos(':', Ret) >= 0 then
  begin
    // separar o indice da mensagem
    Ret := Trim(Copy(Ret, Pos(':', Ret) + 1, Length(Ret)));
    Ret := Trim(Copy(Ret, 1, Pos('OK', Ret) - 1));

    AIndice := IntToStr(StrToIntDef(Trim(Ret), -1));
    if AIndice = '-1' then
      raise EACBrSMSException.Create(FALHA_INDICE_MENSAGEM + sLineBreak + fpUltimaResposta);
  end
  else
    AIndice := '-1';
end;

end.

