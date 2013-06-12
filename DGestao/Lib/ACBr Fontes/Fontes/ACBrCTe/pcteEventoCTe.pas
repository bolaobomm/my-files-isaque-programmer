////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//              PCN - Projeto Cooperar NFe                                    //
//                                                                            //
//   Descri��o: Classes para gera��o/leitura dos arquivos xml da NFe          //
//                                                                            //
//        site: www.projetocooperar.org/nfe                                   //
//       email: projetocooperar@zipmail.com.br                                //
//       forum: http://br.groups.yahoo.com/group/projeto_cooperar_nfe/        //
//     projeto: http://code.google.com/p/projetocooperar/                     //
//         svn: http://projetocooperar.googlecode.com/svn/trunk/              //
//                                                                            //
// Coordena��o: (c) 2009 - Paulo Casagrande                                   //
//                                                                            //
//      Equipe: Vide o arquivo leiame.txt na pasta raiz do projeto            //
//                                                                            //
//      Vers�o: Vide o arquivo leiame.txt na pasta raiz do projeto            //
//                                                                            //
//     Licen�a: GNU Lesser General Public License (GNU LGPL)                  //
//                                                                            //
//              - Este programa � software livre; voc� pode redistribu�-lo    //
//              e/ou modific�-lo sob os termos da Licen�a P�blica Geral GNU,  //
//              conforme publicada pela Free Software Foundation; tanto a     //
//              vers�o 2 da Licen�a como (a seu crit�rio) qualquer vers�o     //
//              mais nova.                                                    //
//                                                                            //
//              - Este programa � distribu�do na expectativa de ser �til,     //
//              mas SEM QUALQUER GARANTIA; sem mesmo a garantia impl�cita de  //
//              COMERCIALIZA��O ou de ADEQUA��O A QUALQUER PROP�SITO EM       //
//              PARTICULAR. Consulte a Licen�a P�blica Geral GNU para obter   //
//              mais detalhes. Voc� deve ter recebido uma c�pia da Licen�a    //
//              P�blica Geral GNU junto com este programa; se n�o, escreva    //
//              para a Free Software Foundation, Inc., 59 Temple Place,       //
//              Suite 330, Boston, MA - 02111-1307, USA ou consulte a         //
//              licen�a oficial em http://www.gnu.org/licenses/gpl.txt        //
//                                                                            //
//    Nota (1): - Esta  licen�a  n�o  concede  o  direito  de  uso  do nome   //
//              "PCN  -  Projeto  Cooperar  NFe", n�o  podendo o mesmo ser    //
//              utilizado sem previa autoriza��o.                             //
//                                                                            //
//    Nota (2): - O uso integral (ou parcial) das units do projeto esta       //
//              condicionado a manuten��o deste cabe�alho junto ao c�digo     //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

{$I ACBr.inc}

unit pcteEventoCTe;

interface

uses SysUtils, Classes,
     {$IFNDEF VER130}
     Variants,
     {$ENDIF}
     pcnAuxiliar, pcnConversao;

type
  TInfEvento      = class;
  TDetEvento      = class;
  TRetInfEvento   = class;
  EventoException = class(Exception);

  TInfCorrecaoCollection  = class;
  TInfCorrecaoCollectionItem = class;

  TInfEvento = class
  private
    FID: String;
    FtpAmbiente: TpcnTipoAmbiente;
    FCNPJ: String;
    FcOrgao: integer;
    FChave: String;
    FDataEvento: TDateTime;
    FTpEvento: TpcnTpEvento;
    FnSeqEvento: Integer;
    FVersaoEvento: String;
    FDetEvento: TDetEvento;

    function getcOrgao: Integer;
    function getVersaoEvento: String;
    function getDescEvento: string;
    function getTipoEvento: string;
  public
    constructor Create;
    destructor Destroy; override;
    function DescricaoTipoEvento(TipoEvento:TpcnTpEvento): String;

    property id: String              read FID             write FID;
    property cOrgao: Integer         read getcOrgao       write FcOrgao;
    property tpAmb: TpcnTipoAmbiente read FtpAmbiente     write FtpAmbiente;
    property CNPJ: String            read FCNPJ           write FCNPJ;
    property chCTe: String           read FChave          write FChave;
    property dhEvento: TDateTime     read FDataEvento     write FDataEvento;
    property tpEvento: TpcnTpEvento  read FTpEvento       write FTpEvento;
    property nSeqEvento: Integer     read FnSeqEvento     write FnSeqEvento;
    property versaoEvento: String    read getVersaoEvento write FversaoEvento;
    property detEvento: TDetEvento   read FDetEvento      write FDetEvento;
    property DescEvento: string      read getDescEvento;
    property TipoEvento: string      read getTipoEvento;
  end;

  TDetEvento = class(TPersistent)
  private
    FdescEvento: String;
    FnProt: string;

    FxJust: string;    // Cancelamento

    FvICMS: Currency;  // EPEC
    FvTPrest: Currency;
    FvCarga: Currency;
    Ftoma: TpcteTomador;
    FUF: string;
    FCNPJCPF: String;
    FIE: String;
    Fmodal: TpcteModal;
    FUFIni: String;
    FUFFim: String;

    FxRegistro: String; // MultiModal
    FnDoc: String;

    FinfCorrecao: TInfCorrecaoCollection;
    procedure SetCorrecao(const Value: TInfCorrecaoCollection);
  public
    constructor Create;
    destructor Destroy; override;

    property descEvento: String read FdescEvento write FdescEvento;
    property nProt: String      read FnProt      write FnProt;

    property xJust: String      read FxJust      write FxJust;

    property vICMS: Currency    read FvICMS      write FvICMS;
    property vTPrest: Currency  read FvTPrest    write FvTPrest;
    property vCarga: Currency   read FvCarga     write FvCarga;
    property toma: TpcteTomador read Ftoma       write Ftoma;
    property UF: string         read FUF         write FUF;
    property CNPJCPF: String    read FCNPJCPF    write FCNPJCPF;
    property IE: String         read FIE         write FIE;
    property modal: TpcteModal  read Fmodal      write Fmodal;
    property UFIni: String      read FUFIni      write FUFIni;
    property UFFim: String      read FUFFim      write FUFFim;

    property xRegistro: String  read FxRegistro  write FxRegistro;
    property nDoc: String       read FnDoc       write FnDoc;

    property infCorrecao: TInfCorrecaoCollection read FinfCorrecao write SetCorrecao;
  end;

  TInfCorrecaoCollection = class(TCollection)
  private
    function GetItem(Index: Integer): TInfCorrecaoCollectionItem;
    procedure SetItem(Index: Integer; Value: TInfCorrecaoCollectionItem);
  public
    constructor Create(AOwner: TPersistent);
    function Add: TInfCorrecaoCollectionItem;
    property Items[Index: Integer]: TInfCorrecaoCollectionItem read GetItem write SetItem; default;
  end;

  TInfCorrecaoCollectionItem = class(TCollectionItem)
  private
    FgrupoAlterado: String;
    FcampoAlterado: String;
    FvalorAlterado: String;
    FnroItemAlterado: Integer;
    FCondUso: String;

    procedure setCondUso(const Value: String);
  public
    constructor Create; reintroduce;
    destructor Destroy; override;
  published
    property grupoAlterado: String    read FgrupoAlterado   write FgrupoAlterado;
    property campoAlterado: String    read FcampoAlterado   write FcampoAlterado;
    property valorAlterado: String    read FvalorAlterado   write FvalorAlterado;
    property nroItemAlterado: Integer read FnroItemAlterado write FnroItemAlterado;
    property xCondUso: String         read FCondUso         write setCondUso;
  end;

  TRetInfEvento = class
  private
    FId: String;
    FtpAmb: TpcnTipoAmbiente;
    FverAplic: String;
    FcOrgao: Integer;
    FcStat: Integer;
    FxMotivo: String;
    FchCTe: String;
    FtpEvento: TpcnTpEvento;
    FxEvento: String;
    FnSeqEvento: Integer;
    FCNPJDest: String;
    FemailDest: String;
    FdhRegEvento: TDateTime;
    FnProt: String;
    FXML: AnsiString;
  public
  published
    property Id: string              read FId          write FId;
    property tpAmb: TpcnTipoAmbiente read FtpAmb       write FtpAmb;
    property verAplic: string        read FverAplic    write FverAplic;
    property cOrgao: Integer         read FcOrgao      write FcOrgao;
    property cStat: integer          read FcStat       write FcStat;
    property xMotivo: string         read FxMotivo     write FxMotivo;
    property chCTe: String           read FchCTe       write FchCTe;
    property tpEvento: TpcnTpEvento  read FtpEvento    write FtpEvento;
    property xEvento: String         read FxEvento     write FxEvento;
    property nSeqEvento: Integer     read FnSeqEvento  write FnSeqEvento;
    property CNPJDest: string        read FCNPJDest    write FCNPJDest;
    property emailDest: String       read FemailDest   write FemailDest;
    property dhRegEvento: TDateTime  read FdhRegEvento write FdhRegEvento;
    property nProt: String           read FnProt       write FnProt;
    property XML: AnsiString         read FXML         write FXML;
  end;

implementation

{ TInfEvento }

constructor TInfEvento.Create;
begin
  inherited Create;
  FDetEvento  := TDetEvento.Create;
  FnSeqEvento := 0;
end;

destructor TInfEvento.Destroy;
begin
  FDetEvento.Free;
  inherited;
end;

function TInfEvento.getcOrgao: integer;
//  (AC,AL,AP,AM,BA,CE,DF,ES,GO,MA,MT,MS,MG,PA,PB,PR,PE,PI,RJ,RN,RS,RO,RR,SC,SP,SE,TO);
//  (12,27,16,13,29,23,53,32,52,21,51,50,31,15,25,41,26,22,33,24,43,11,14,42,35,28,17);
begin
  Result := StrToInt(copy(FChave, 1, 2));

  {Estados que utilizam a SVAN: ES, MA, PA, PI, RN}
  {Devem utilizar 91}
  if Result in [32,21,15,22,24] then
    Result := 91;
end;

function TInfEvento.getDescEvento: string;
begin
  case fTpEvento of
    teCCe         : Result := 'Carta de Correcao';
    teCancelamento: Result := 'Cancelamento';
    teEPEC        : Result := 'EPEC';
    teMultiModal  : Result := 'Registro Multimodal';
  else
    raise EventoException.Create('Descri��o do Evento n�o Implementado!');
  end;
end;

function TInfEvento.getTipoEvento: string;
begin
  case FTpEvento of
    teCCe         : Result := '110110'; // Somete para a vers�o 2.0
    teCancelamento: Result := '110111'; // Somete para a vers�o 2.0
    teEPEC        : Result := '110113';
    teMultiModal  : Result := '110160'; // Somete para a vers�o 2.0
  else
    raise EventoException.Create('Tipo do Evento n�o Implementado!');
  end;
end;

function TInfEvento.getVersaoEvento: String;
begin
  Result := '1.04';
end;

function TInfEvento.DescricaoTipoEvento(TipoEvento: TpcnTpEvento): String;
begin
  case TipoEvento of
    teCCe         : Result := 'CARTA DE CORRE��O ELETR�NICA';
    teCancelamento: Result := 'CANCELAMENTO DO CT-e';
    teEPEC        : Result := 'EPEC';
    teMultiModal  : Result := 'REGISTRO MULTIMODAL';
  else
    Result := 'N�o Definido';
  end;
end;

{ TInfCorrecaoCollection }

function TInfCorrecaoCollection.Add: TInfCorrecaoCollectionItem;
begin
  Result := TInfCorrecaoCollectionItem(inherited Add);
  Result.create;
end;

constructor TInfCorrecaoCollection.Create(AOwner: TPersistent);
begin
  inherited Create(TInfCorrecaoCollectionItem);
end;

function TInfCorrecaoCollection.GetItem(
  Index: Integer): TInfCorrecaoCollectionItem;
begin
  Result := TInfCorrecaoCollectionItem(inherited GetItem(Index));
end;

procedure TInfCorrecaoCollection.SetItem(Index: Integer;
  Value: TInfCorrecaoCollectionItem);
begin
  inherited SetItem(Index, Value);
end;

{ TInfCorrecaoCollectionItem }

constructor TInfCorrecaoCollectionItem.Create;
begin

end;

destructor TInfCorrecaoCollectionItem.Destroy;
begin

  inherited;
end;

procedure TInfCorrecaoCollectionItem.setCondUso(const Value: String);
begin
  FCondUso := Value;

  if FCondUso = '' then
    FCondUso := 'A Carta de Correcao e disciplinada pelo Art. 58-B do CONVENIO/' +
                'SINIEF 06/89: Fica permitida a utilizacao de carta de correcao,' +
                ' para regularizacao de erro ocorrido na emissao de documentos' +
                ' fiscais relativos a prestacao de servico de transporte, desde' +
                ' que o erro nao esteja  relacionado com: I - as variaveis que' +
                ' determinam o valor do imposto tais como: base de calculo,' +
                ' aliquota, diferenca de preco, quantidade, valor da prestacao;' +
                ' II - a correcao de dados cadastrais que implique mudanca do' +
                ' emitente, tomador, remetente ou do destinatario; III - a data' +
                ' de emissao ou de saida.';
end;

{ TDetEvento }

constructor TDetEvento.Create;
begin
  FinfCorrecao := TInfCorrecaoCollection.Create(Self);
end;

destructor TDetEvento.Destroy;
begin
  FInfCorrecao.Free;
  inherited;
end;

procedure TDetEvento.SetCorrecao(const Value: TInfCorrecaoCollection);
begin
  FInfCorrecao.Assign(Value);
end;

end.
