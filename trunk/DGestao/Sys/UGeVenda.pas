unit UGeVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGrPadraoCadastro, ImgList, IBCustomDataSet, IBUpdateSQL, DB,
  Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls,
  ToolWin, IBTable, ToolEdit, RXDBCtrl, DBClient, Provider, IBStoredProc,
  frxClass, frxDBSet, Menus;

type
  TfrmGeVenda = class(TfrmGrPadraoCadastro)
    lblData: TLabel;
    edDataInicial: TDateTimePicker;
    tblEmpresa: TIBTable;
    dtsEmpresa: TDataSource;
    lblEmpresa: TLabel;
    dbEmpresa: TDBLookupComboBox;
    lblCliente: TLabel;
    dbCliente: TRxDBComboEdit;
    lblDataHora: TLabel;
    dbDataHora: TDBEdit;
    GrpBxDadosProduto: TGroupBox;
    Bevel5: TBevel;
    Bevel6: TBevel;
    pgcMaisDados: TPageControl;
    tbsRecebimento: TTabSheet;
    tbsITitulos: TTabSheet;
    lblProduto: TLabel;
    dbProduto: TRxDBComboEdit;
    dbProdutoNome: TDBEdit;
    dbgProdutos: TDBGrid;
    dbObservacao: TDBMemo;
    lblQuantidade: TLabel;
    dbQuantidade: TDBEdit;
    lblValorUnit: TLabel;
    dbValorUnit: TDBEdit;
    lblDesconto: TLabel;
    dbDesconto: TDBEdit;
    lblValorLiq: TLabel;
    dbValorLiq: TDBEdit;
    lblUnidade: TLabel;
    dbUnidade: TDBEdit;
    lblCFOP: TLabel;
    dbCFOP: TRxDBComboEdit;
    lblAliquota: TLabel;
    dbAliquota: TDBEdit;
    lblCST: TLabel;
    dbCST: TDBEdit;
    lblValorIPI: TLabel;
    dbValorIPI: TDBEdit;
    dbCFOPDescricao: TDBEdit;
    Bevel7: TBevel;
    pnlBotoesProduto: TPanel;
    btnProdutoInserir: TBitBtn;
    btnProdutoEditar: TBitBtn;
    btnProdutoSalvar: TBitBtn;
    btnProdutoExcluir: TBitBtn;
    lblObservacao: TLabel;
    lblFormaPagto: TLabel;
    dbFormaPagto: TDBLookupComboBox;
    lblCondicaoPagto: TLabel;
    dbCondicaoPagto: TDBLookupComboBox;
    lblPrazo01: TLabel;
    dbPrazo01: TDBEdit;
    lblPrazo02: TLabel;
    dbPrazo02: TDBEdit;
    lblPrazo03: TLabel;
    dbPrazo03: TDBEdit;
    lblPrazo04: TLabel;
    dbPrazo04: TDBEdit;
    lblPrazo05: TLabel;
    dbPrazo05: TDBEdit;
    lblPrazo06: TLabel;
    dbPrazo06: TDBEdit;
    lblPrazo07: TLabel;
    dbPrazo07: TDBEdit;
    lblPrazo08: TLabel;
    dbPrazo08: TDBEdit;
    lblPrazo09: TLabel;
    dbPrazo09: TDBEdit;
    lblPrazo10: TLabel;
    dbPrazo10: TDBEdit;
    lblPrazo11: TLabel;
    dbPrazo11: TDBEdit;
    lblPrazo12: TLabel;
    dbPrazo12: TDBEdit;
    lblSerie: TLabel;
    dbSerie: TDBEdit;
    lblNFe: TLabel;
    dbNFe: TDBEdit;
    lblDataEmissao: TLabel;
    dbDataEmissao: TDBEdit;
    lblSituacao: TLabel;
    dbSituacao: TDBEdit;
    pnlBotoesTitulo: TPanel;
    btnRegerarTitulo: TBitBtn;
    btnGerarBoleto: TBitBtn;
    btnTituloEditar: TBitBtn;
    btnTituloExcluir: TBitBtn;
    dbgTitulos: TDBGrid;
    Bevel9: TBevel;
    Bevel10: TBevel;
    lblVendedor: TLabel;
    dbVendedor: TDBLookupComboBox;
    lblValorTotal: TLabel;
    dbValorTotal: TDBEdit;
    lblValorDesconto: TLabel;
    dbValorDesconto: TDBEdit;
    IbDtstTabelaCODEMP: TIBStringField;
    IbDtstTabelaCODCLI: TIBStringField;
    IbDtstTabelaDTVENDA: TDateTimeField;
    IbDtstTabelaSTATUS: TSmallintField;
    IbDtstTabelaDESCONTO: TIBBCDField;
    IbDtstTabelaTOTALVENDA: TIBBCDField;
    IbDtstTabelaOBS: TMemoField;
    IbDtstTabelaFORMAPAG: TIBStringField;
    IbDtstTabelaFATDIAS: TSmallintField;
    IbDtstTabelaSERIE: TIBStringField;
    IbDtstTabelaNFE: TLargeintField;
    IbDtstTabelaDATAEMISSAO: TDateField;
    IbDtstTabelaHORAEMISSAO: TTimeField;
    IbDtstTabelaVERIFICADOR_NFE: TIBStringField;
    IbDtstTabelaXML_NFE: TMemoField;
    IbDtstTabelaVENDEDOR_COD: TIntegerField;
    IbDtstTabelaUSUARIO: TIBStringField;
    IbDtstTabelaFORMAPAGTO_COD: TSmallintField;
    IbDtstTabelaCONDICAOPAGTO_COD: TSmallintField;
    IbDtstTabelaVENDA_PRAZO: TSmallintField;
    IbDtstTabelaPRAZO_01: TSmallintField;
    IbDtstTabelaPRAZO_02: TSmallintField;
    IbDtstTabelaPRAZO_03: TSmallintField;
    IbDtstTabelaPRAZO_04: TSmallintField;
    IbDtstTabelaPRAZO_05: TSmallintField;
    IbDtstTabelaPRAZO_06: TSmallintField;
    IbDtstTabelaPRAZO_07: TSmallintField;
    IbDtstTabelaPRAZO_08: TSmallintField;
    IbDtstTabelaPRAZO_09: TSmallintField;
    IbDtstTabelaPRAZO_10: TSmallintField;
    IbDtstTabelaPRAZO_11: TSmallintField;
    IbDtstTabelaPRAZO_12: TSmallintField;
    IbDtstTabelaNOME: TIBStringField;
    tblVendedor: TIBTable;
    dtsVendedor: TDataSource;
    tblFormaPagto: TIBTable;
    dtsFormaPagto: TDataSource;
    tblCondicaoPagto: TIBTable;
    dtsCondicaoPagto: TDataSource;
    cdsTabelaItens: TIBDataSet;
    IbUpdTabelaItens: TIBUpdateSQL;
    DtSrcTabelaItens: TDataSource;
    qryProduto: TIBDataSet;
    qryCFOP: TIBDataSet;
    btbtnFinalizar: TBitBtn;
    btbtnGerarNFe: TBitBtn;
    Bevel11: TBevel;
    Bevel12: TBevel;
    IbDtstTabelaANO: TSmallintField;
    IbDtstTabelaCODCONTROL: TIntegerField;
    cdsTabelaItensANO: TSmallintField;
    cdsTabelaItensCODCONTROL: TIntegerField;
    cdsTabelaItensSEQ: TSmallintField;
    cdsTabelaItensCODPROD: TIBStringField;
    cdsTabelaItensCODEMP: TIBStringField;
    cdsTabelaItensCODCLI: TIBStringField;
    cdsTabelaItensDTVENDA: TDateTimeField;
    cdsTabelaItensQTDE: TIntegerField;
    cdsTabelaItensPUNIT: TIBBCDField;
    cdsTabelaItensDESCONTO: TIBBCDField;
    cdsTabelaItensPFINAL: TIBBCDField;
    cdsTabelaItensQTDEFINAL: TIntegerField;
    cdsTabelaItensUNID_COD: TSmallintField;
    cdsTabelaItensCFOP_COD: TIntegerField;
    cdsTabelaItensALIQUOTA: TIBBCDField;
    cdsTabelaItensVALOR_IPI: TIBBCDField;
    cdsTabelaItensDESCRI: TIBStringField;
    cdsTabelaItensESTOQUE: TIntegerField;
    cdsTabelaItensUNP_SIGLA: TIBStringField;
    cdsTabelaItensTOTAL_BRUTO: TIBBCDField;
    cdsTabelaItensTOTAL_LIQUIDO: TIBBCDField;
    cdsTabelaItensCFOP_DESCRICAO: TIBStringField;
    cdsTabelaItensCST: TIBStringField;
    qryTitulos: TIBDataSet;
    dtsTitulos: TDataSource;
    qryTitulosANOLANC: TSmallintField;
    qryTitulosNUMLANC: TIntegerField;
    qryTitulosPARCELA: TSmallintField;
    qryTitulosCODBANCO: TIntegerField;
    qryTitulosNOSSONUMERO: TIBStringField;
    qryTitulosCNPJ: TIBStringField;
    qryTitulosTIPPAG: TIBStringField;
    qryTitulosDTEMISS: TDateField;
    qryTitulosDTVENC: TDateField;
    qryTitulosVALORREC: TIBBCDField;
    qryTitulosPERCENTJUROS: TIBBCDField;
    qryTitulosPERCENTMULTA: TIBBCDField;
    qryTitulosPERCENTDESCONTO: TIBBCDField;
    qryTitulosVALORRECTOT: TIBBCDField;
    qryTitulosVALORSALDO: TIBBCDField;
    qryTitulosDATAPROCESSOBOLETO: TDateField;
    qryTitulosLancamento: TStringField;
    qryTitulosBAIXADO: TSmallintField;
    qryTitulosBAIXADO_: TIBStringField;
    qryTitulosDTREC: TDateField;
    IbStrPrcGerarTitulos: TIBStoredProc;
    IbDtstTabelaDTFINALIZACAO_VENDA: TDateField;
    btnTituloQuitar: TBitBtn;
    lblCFOPVenda: TLabel;
    dbCFOPVenda: TRxDBComboEdit;
    IbDtstTabelaCFOP: TIntegerField;
    cdsTabelaItensRESERVA: TIntegerField;
    IbDtstTabelaLOTE_NFE_ANO: TSmallintField;
    IbDtstTabelaLOTE_NFE_NUMERO: TIntegerField;
    IbDtstTabelaNFE_ENVIADA: TSmallintField;
    IbDtstTabelaCANCEL_DATAHORA: TDateTimeField;
    IbDtstTabelaCANCEL_MOTIVO: TMemoField;
    btbtnCancelarVND: TBitBtn;
    ppImprimir: TPopupMenu;
    nmImprimirVenda: TMenuItem;
    nmImprimirDANFE: TMenuItem;
    nmGerarDANFEXML: TMenuItem;
    N1: TMenuItem;
    cdsTabelaItensALIQUOTA_CSOSN: TIBBCDField;
    cdsTabelaItensCSOSN: TIBStringField;
    IbDtstTabelaXML_NFE_FILENAME: TIBStringField;
    qryNFE: TIBDataSet;
    updNFE: TIBUpdateSQL;
    qryNFEANOVENDA: TSmallintField;
    qryNFENUMVENDA: TIntegerField;
    qryNFEDATAEMISSAO: TDateField;
    qryNFEHORAEMISSAO: TTimeField;
    qryNFESERIE: TIBStringField;
    qryNFENUMERO: TIntegerField;
    qryNFECHAVE: TIBStringField;
    qryNFEPROTOCOLO: TIBStringField;
    qryNFERECIBO: TIBStringField;
    qryNFEXML_FILENAME: TIBStringField;
    qryNFEXML_FILE: TMemoField;
    qryNFELOTE_ANO: TSmallintField;
    qryNFELOTE_NUM: TIntegerField;
    cdsTabelaItensDESCONTO_VALOR: TIBBCDField;
    cdsTabelaItensTOTAL_DESCONTO: TIBBCDField;
    btnConsultarProduto: TBitBtn;
    Bevel13: TBevel;
    dbTotalDesconto: TRxDBComboEdit;
    lblTotalDesconto: TLabel;
    edDataFinal: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure IbDtstTabelaNewRecord(DataSet: TDataSet);
    procedure dbClienteButtonClick(Sender: TObject);
    procedure IbDtstTabelaSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbCondicaoPagtoClick(Sender: TObject);
    procedure DtSrcTabelaStateChange(Sender: TObject);
    procedure DtSrcTabelaItensStateChange(Sender: TObject);
    procedure dbFormaPagtoClick(Sender: TObject);
    procedure IbDtstTabelaAfterCancel(DataSet: TDataSet);
    procedure btbtnExcluirClick(Sender: TObject);
    procedure btnProdutoInserirClick(Sender: TObject);
    procedure btnProdutoEditarClick(Sender: TObject);
    procedure btnProdutoExcluirClick(Sender: TObject);
    procedure btnProdutoSalvarClick(Sender: TObject);
    procedure btbtnSalvarClick(Sender: TObject);
    procedure ControlEditExit(Sender: TObject);
    procedure pgcGuiasChange(Sender: TObject);
    procedure btbtnIncluirClick(Sender: TObject);
    procedure btbtnAlterarClick(Sender: TObject);
    procedure dbProdutoButtonClick(Sender: TObject);
    procedure dbCFOPButtonClick(Sender: TObject);
    procedure cdsTabelaItensNewRecord(DataSet: TDataSet);
    procedure btbtnFinalizarClick(Sender: TObject);
    procedure btbtnGerarNFeClick(Sender: TObject);
    procedure qryTitulosCalcFields(DataSet: TDataSet);
    procedure btnRegerarTituloClick(Sender: TObject);
    procedure dbCFOPVendaButtonClick(Sender: TObject);
    procedure btbtnListaClick(Sender: TObject);
    procedure btbtnCancelarVNDClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure nmImprimirVendaClick(Sender: TObject);
    procedure nmImprimirDANFEClick(Sender: TObject);
    procedure btnConsultarProdutoClick(Sender: TObject);
    procedure dbTotalDescontoButtonClick(Sender: TObject);
    procedure btnGerarBoletoClick(Sender: TObject);
  private
    { Private declarations }
    sGeneratorName : String;
    iSeq : Integer;
    SQL_Itens   ,
    SQL_Titulos : TStringList;
    procedure AbrirTabelaItens(const AnoVenda : Smallint; const ControleVenda : Integer);
    procedure AbrirTabelaTitulos(const AnoVenda : Smallint; const ControleVenda : Integer);
    procedure GerarTitulos(const AnoVenda : Smallint; const ControleVenda : Integer);
    procedure CarregarDadosProduto( Codigo : Integer );
    procedure CarregarDadosCFOP( iCodigo : Integer );
    procedure HabilitarDesabilitar_Btns;

    function ValidarQuantidade(Codigo : Integer; Quantidade : Integer) : Boolean;
  public
    { Public declarations }
  end;

var
  frmGeVenda: TfrmGeVenda;

  procedure MostrarControleVendas(const AOwner : TComponent);

implementation

uses UDMBusiness, UGeCliente, UGeCondicaoPagto, UGeProduto, UGeTabelaCFOP,
  DateUtils, IBQuery, UDMNFe, UGeVendaGerarNFe, SysConst, UGeVendaCancelar,
  UGeGerarBoletos;

{$R *.dfm}

procedure MostrarControleVendas(const AOwner : TComponent);
var
  frm : TfrmGeVenda;
  whr : String;
begin
  frm := TfrmGeVenda.Create(AOwner);
  try
    whr := 'cast(v.dtvenda as date) between ' +
            QuotedStr( FormatDateTime('yyyy-mm-dd', frm.edDataInicial.Date) ) + ' and ' +
            QuotedStr( FormatDateTime('yyyy-mm-dd', frm.edDataFinal.Date) );

    with frm, IbDtstTabela do
    begin
      Close;
      SelectSQL.Add('where ' + whr);
      SelectSQL.Add('order by ' + CampoOrdenacao);
      Open;
    end;

    frm.ShowModal;
  finally
    frm.Destroy;
  end;
end;

procedure TfrmGeVenda.FormCreate(Sender: TObject);
begin
  sGeneratorName := 'GEN_VENDAS_CONTROLE_' + FormatFloat('0000', YearOf(GetDateDB));
  
//  IbDtstTabela.GeneratorField.Generator := sGeneratorName;

  inherited;
  
  SQL_Itens := TStringList.Create;
  SQL_Itens.Clear;
  SQL_Itens.AddStrings( cdsTabelaItens.SelectSQL );

  SQL_Titulos := TStringList.Create;
  SQL_Titulos.Clear;
  SQL_Titulos.AddStrings( qryTitulos.SelectSQL );

  edDataInicial.Date := Date;
  edDataFinal.Date   := Date;
  ControlFirstEdit   := dbEmpresa;

  tblEmpresa.Open;
  tblVendedor.Open;
  tblFormaPagto.Open;
  tblCondicaoPagto.Open;

  pgcMaisDados.Height := 150;
  DisplayFormatCodigo := '###0000000';
  NomeTabela     := 'TBVENDAS';
  CampoCodigo    := 'Codcontrol';
  CampoDescricao := 'c.NOME';
  CampoOrdenacao := 'v.dtvenda, c.Nome';

  UpdateGenerator( 'where Ano = ' + FormatFloat('0000', YearOf(Date)) );
end;

procedure TfrmGeVenda.btnFiltrarClick(Sender: TObject);
begin
  WhereAdditional :=  'cast(v.dtvenda as date) between ' +
                        QuotedStr( FormatDateTime('yyyy-mm-dd', edDataInicial.Date) ) + ' and ' +
                        QuotedStr( FormatDateTime('yyyy-mm-dd', edDataFinal.Date) );
  inherited;
end;

procedure TfrmGeVenda.IbDtstTabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
//  IbDtstTabelaAno.Value     := YearOf(GetDateTimeDB);
  IbDtstTabelaDTVENDA.Value := GetDateTimeDB;
  IbDtstTabelaCODEMP.Value  := GetEmpresaIDDefault;
  IbDtstTabelaCODCLI.Value  := GetClienteIDDefault;
  IbDtstTabelaNOME.Value    := GetClienteNomeDefault;
  IbDtstTabelaVENDEDOR_COD.Value      := GetVendedorIDDefault;
  IbDtstTabelaFORMAPAGTO_COD.Value    := GetFormaPagtoIDDefault;
  IbDtstTabelaFORMAPAG.Value          := GetFormaPagtoNomeDefault;
  IbDtstTabelaCONDICAOPAGTO_COD.Value := GetCondicaoPagtoIDDefault;
  IbDtstTabelaCFOP.Value              := GetCfopIDDefault;
  IbDtstTabelaVENDA_PRAZO.Value := 0;
  IbDtstTabelaSTATUS.Value      := STATUS_VND_AND;
  IbDtstTabelaDESCONTO.Value    := 0;
  IbDtstTabelaTOTALVENDA.Value  := 0;
  IbDtstTabelaNFE_ENVIADA.Value := 0;

  IbDtstTabelaSERIE.Clear;
  IbDtstTabelaNFE.Clear;
  IbDtstTabelaLOTE_NFE_ANO.Clear;
  IbDtstTabelaLOTE_NFE_NUMERO.Clear;
end;

procedure TfrmGeVenda.dbClienteButtonClick(Sender: TObject);
var
  iCodigo : Integer;
  sCNPJ ,
  sNome : String;
begin
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    if ( SelecionarCliente(Self, iCodigo, sCNPJ, sNome) ) then
    begin
      IbDtstTabelaCODCLI.AsString := sCNPJ;
      IbDtstTabelaNOME.AsString   := sNome;
    end;
end;

procedure TfrmGeVenda.IbDtstTabelaSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Case Sender.AsInteger of
    STATUS_VND_AND : Text := 'Em atendimento';
    STATUS_VND_ABR : Text := 'Aberta';
    STATUS_VND_FIN : Text := 'Finalizada';
    STATUS_VND_NFE : Text := 'NF-e emitida';
    STATUS_VND_CAN : Text := 'Cancelada';
    else
      Text := Sender.AsString;
  end;
end;

procedure TfrmGeVenda.dbCondicaoPagtoClick(Sender: TObject);
var
  I : Integer;
begin
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    if ( tblCondicaoPagto.Locate('cond_cod', dbCondicaoPagto.Field.AsInteger, []) ) then
    begin
      IbDtstTabelaVENDA_PRAZO.AsInteger := tblCondicaoPagto.FieldByName('Cond_prazo').AsInteger;
      for I := COND_PARCELA_MIN to COND_PARCELA_MAX do
      begin
        IbDtstTabela.FieldByName('PRAZO_' + FormatFloat('00', I)).Clear;
        if ( not tblCondicaoPagto.FieldByName('Cond_prazo_' + FormatFloat('00', I)).IsNull ) then
          IbDtstTabela.FieldByName('PRAZO_' + FormatFloat('00', I)).AsInteger := tblCondicaoPagto.FieldByName('Cond_prazo_' + FormatFloat('00', I)).AsInteger;
      end;
    end;
end;

procedure TfrmGeVenda.DtSrcTabelaStateChange(Sender: TObject);
begin
  inherited;
  pgcMaisDados.ActivePageIndex := 0;
  
  DtSrcTabelaItens.AutoEdit := DtSrcTabela.AutoEdit and (IbDtstTabelaSTATUS.AsInteger < STATUS_VND_FIN );
  DtSrcTabelaItensStateChange( DtSrcTabelaItens );
end;

procedure TfrmGeVenda.DtSrcTabelaItensStateChange(Sender: TObject);
begin
  btnProdutoInserir.Enabled := ( DtSrcTabelaItens.AutoEdit and (cdsTabelaItens.State = dsBrowse) );
  btnProdutoEditar.Enabled  := ( DtSrcTabelaItens.AutoEdit and (cdsTabelaItens.State = dsBrowse) and (not cdsTabelaItens.IsEmpty) );
  btnProdutoExcluir.Enabled := ( DtSrcTabelaItens.AutoEdit and (cdsTabelaItens.State = dsBrowse) and (not cdsTabelaItens.IsEmpty) );
  btnProdutoSalvar.Enabled  := ( cdsTabelaItens.State in [dsEdit, dsInsert] );

  if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
    if ( dbProduto.Visible and dbProduto.Enabled ) then
      dbProduto.SetFocus;
end;

procedure TfrmGeVenda.AbrirTabelaItens(const AnoVenda : Smallint; const ControleVenda : Integer);
begin
  cdsTabelaItens.Close;

  with cdsTabelaItens, SelectSQL do
  begin
    Clear;
    AddStrings( SQL_Itens );
    Add('where i.Ano        = ' + IntToStr(AnoVenda));
    Add('  and i.Codcontrol = ' + IntToStr(ControleVenda));
  end;

  cdsTabelaItens.Open;

  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeVenda.AbrirTabelaTitulos(const AnoVenda : Smallint; const ControleVenda : Integer);
begin
  qryTitulos.Close;

  with qryTitulos, SelectSQL do
  begin
    Clear;
    AddStrings( SQL_Titulos );
    Add('where r.Anovenda = ' + IntToStr(AnoVenda));
    Add('  and r.Numvenda = ' + IntToStr(ControleVenda));
    Add('order by r.numlanc, r.parcela');
  end;

  qryTitulos.Open;
end;

procedure TfrmGeVenda.CarregarDadosProduto( Codigo : Integer);
begin
  if ( Codigo = 0 ) then
  begin
    ShowWarning('Favor informar o c�digo do produto');
    Exit;
  end;

  if ( not cdsTabelaItens.Active ) then
    Exit
  else
  if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
  begin
    with qryProduto do
    begin
      Close;
      ParamByName('Codigo').AsInteger := Codigo;
      Open;
      if not IsEmpty then
      begin
        cdsTabelaItensCODPROD.AsString     := FieldByName('Cod').AsString;
        cdsTabelaItensDESCRI.AsString      := FieldByName('Descri').AsString;
        cdsTabelaItensUNP_SIGLA.AsString   := FieldByName('Unp_sigla').AsString;

        if ( FieldByName('Codunidade').AsInteger > 0 ) then
          cdsTabelaItensUNID_COD.AsInteger   := FieldByName('Codunidade').AsInteger;

        if ( FieldByName('Codcfop').AsInteger > 0 ) then
          cdsTabelaItensCFOP_COD.AsInteger := FieldByName('Codcfop').AsInteger;

        cdsTabelaItensALIQUOTA.AsCurrency       := FieldByName('Aliquota').AsCurrency;
        cdsTabelaItensALIQUOTA_CSOSN.AsCurrency := FieldByName('Aliquota_csosn').AsCurrency;

        if ( Trim(FieldByName('Cst').AsString) <> EmptyStr ) then
          cdsTabelaItensCST.AsString       := FieldByName('Cst').AsString;

        if ( Trim(FieldByName('Csosn').AsString) <> EmptyStr ) then
          cdsTabelaItensCSOSN.AsString     := FieldByName('Csosn').AsString;

        cdsTabelaItensPUNIT.AsCurrency     := FieldByName('Preco').AsCurrency;
        cdsTabelaItensVALOR_IPI.AsCurrency := FieldByName('Valor_ipi').AsCurrency;
        
        cdsTabelaItensESTOQUE.AsInteger    := FieldByName('Qtde').AsInteger;
        cdsTabelaItensRESERVA.AsInteger    := FieldByName('Reserva').AsInteger;
      end
      else
      begin
        ShowWarning('C�digo de produto n�o cadastrado');
        cdsTabelaItensCODPROD.Clear;
        if ( dbProduto.Visible and dbProduto.Enabled ) then
          dbProduto.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmGeVenda.CarregarDadosCFOP( iCodigo : Integer );
begin
  if ( not cdsTabelaItens.Active ) then
    Exit
  else
  if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
  begin
    with qryCFOP do
    begin
      Close;
      ParamByName('Cfop_cod').AsInteger := iCodigo;
      Open;
      if not IsEmpty then
        cdsTabelaItensCFOP_DESCRICAO.AsString := FieldByName('cfop_descricao').AsString
      else
      begin
        ShowWarning('C�digo CFOP n�o cadastrado');
        cdsTabelaItensCFOP_COD.Clear;
        if ( dbCFOP.Visible and dbCFOP.Enabled ) then
          dbCFOP.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmGeVenda.HabilitarDesabilitar_Btns;
begin
  if ( pgcGuias.ActivePage = tbsCadastro ) then
  begin
    btbtnFinalizar.Enabled   := (IbDtstTabelaSTATUS.AsInteger < STATUS_VND_FIN) and (not cdsTabelaItens.IsEmpty);
    btbtnGerarNFe.Enabled    := (IbDtstTabelaSTATUS.AsInteger = STATUS_VND_FIN) and (not cdsTabelaItens.IsEmpty);
    btbtnCancelarVND.Enabled := ( (IbDtstTabelaSTATUS.AsInteger = STATUS_VND_FIN) or (IbDtstTabelaSTATUS.AsInteger = STATUS_VND_NFE) );

    btnGerarBoleto.Enabled   := GetEmitirBoleto and (IbDtstTabelaSTATUS.AsInteger = STATUS_VND_FIN) and (IbDtstTabelaFORMAPAGTO_COD.AsInteger = GetCondicaoPagtoIDBoleto);

    nmImprimirDANFE.Enabled := (IbDtstTabelaSTATUS.AsInteger = STATUS_VND_NFE);
    nmGerarDANFEXML.Enabled := (IbDtstTabelaSTATUS.AsInteger = STATUS_VND_NFE);
  end
  else
  begin
    btbtnFinalizar.Enabled   := False;
    btbtnGerarNFe.Enabled    := False;
    btbtnCancelarVND.Enabled := False;

    nmImprimirDANFE.Enabled := (IbDtstTabelaSTATUS.AsInteger = STATUS_VND_NFE);
    nmGerarDANFEXML.Enabled := (IbDtstTabelaSTATUS.AsInteger = STATUS_VND_NFE);
  end;
end;

function TfrmGeVenda.ValidarQuantidade(Codigo : Integer; Quantidade : Integer) : Boolean;
var
  iEstoque ,
  iReserva : Integer;
begin
  with qryProduto do
  begin
    Close;
    ParamByName('Codigo').AsInt64 := Codigo;
    Open;

    iEstoque := FieldByName('Qtde').AsInteger;
    iReserva := FieldByName('Reserva').AsInteger;

    Result := ( (iEstoque - iReserva) >= Quantidade );
  end;
end;

procedure TfrmGeVenda.dbFormaPagtoClick(Sender: TObject);
begin
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    if ( tblFormaPagto.Locate('cod', dbFormaPagto.Field.AsInteger, []) ) then
      IbDtstTabelaFORMAPAG.AsString := tblFormaPagto.FieldByName('descri').AsString;
end;

procedure TfrmGeVenda.IbDtstTabelaAfterCancel(DataSet: TDataSet);
begin
  inherited;
  AbrirTabelaItens( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
  AbrirTabelaTitulos( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
end;

procedure TfrmGeVenda.btbtnExcluirClick(Sender: TObject);
var
  sMsg : String;
begin
  if ( IbDtstTabelaSTATUS.AsInteger > STATUS_VND_ABR ) then
  begin
    Case IbDtstTabelaSTATUS.AsInteger of
      STATUS_VND_FIN : sMsg := 'Esta venda n�o pode ser alterada porque est� finalizada.';
      STATUS_VND_NFE : sMsg := 'Esta venda n�o pode ser alterada porque tem NF-e emitida';
      STATUS_VND_CAN : sMsg := 'Esta venda n�o pode ser alterada porque est� cancelada';
    end;

    ShowWarning(sMsg);
    Abort;
  end
  else
  begin
    inherited;
    if ( not OcorreuErro ) then
    begin
      AbrirTabelaItens( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
      AbrirTabelaTitulos( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
    end;  
  end;
end;

procedure TfrmGeVenda.btnProdutoInserirClick(Sender: TObject);

  procedure GerarSequencial(var Seq : Integer);
  begin
    Seq := cdsTabelaItens.RecordCount + 1;
    if ( cdsTabelaItens.Locate('SEQ', Seq, []) ) then
      Seq := Seq + 1;
  end;

var
  Sequencial : Integer;
begin
  if ( cdsTabelaItens.Active ) then
  begin
    GerarSequencial(Sequencial);

    cdsTabelaItens.Append;
    cdsTabelaItensSEQ.Value := Sequencial;
    dbProduto.SetFocus;
  end;
end;

procedure TfrmGeVenda.btnProdutoEditarClick(Sender: TObject);
begin
  if ( not cdsTabelaItens.IsEmpty ) then
  begin
    cdsTabelaItens.Edit;
    dbProduto.SetFocus;
  end;
end;

procedure TfrmGeVenda.btnProdutoExcluirClick(Sender: TObject);
begin
  if ( not cdsTabelaItens.IsEmpty ) then
    if ( ShowConfirm('Deseja excluir o �tem selecionado?') ) then
    begin
      IbDtstTabelaDESCONTO.AsCurrency   := IbDtstTabelaDESCONTO.AsCurrency - cdsTabelaItensTOTAL_DESCONTO.AsCurrency;
      IbDtstTabelaTOTALVENDA.AsCurrency := IbDtstTabelaTOTALVENDA.AsCurrency - cdsTabelaItensTOTAL_LIQUIDO.AsCurrency;

      if ( IbDtstTabelaDESCONTO.AsCurrency < 0 ) then
        IbDtstTabelaDESCONTO.AsCurrency := 0;

      if ( IbDtstTabelaTOTALVENDA.AsCurrency < 0 ) then
        IbDtstTabelaTOTALVENDA.AsCurrency := 0;

      cdsTabelaItens.Delete;
    end;
end;

procedure TfrmGeVenda.btnProdutoSalvarClick(Sender: TObject);
begin
  if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
  begin
    if ( Trim(cdsTabelaItensCODPROD.AsString) = EmptyStr ) then
    begin
      ShowWarning('Favor informar o c�digo do produto.');
      dbProduto.SetFocus;
    end
    else
    if ( cdsTabelaItensQTDE.Value < 0 ) then
    begin
      ShowWarning('QUantidade inv�lida.');
      dbQuantidade.SetFocus;
    end
    else
    if ( cdsTabelaItensPUNIT.Value < 0 ) then
    begin
      ShowWarning('Valor unit�rio inv�lida.');
      dbValorUnit.SetFocus;
    end
    else
    if ( (cdsTabelaItensDESCONTO.AsCurrency < 0) or (cdsTabelaItensDESCONTO.AsCurrency > 100) ) then
    begin
      ShowWarning('Percentual de desconto inv�lido.');
      dbDesconto.SetFocus;
    end
    else
//    if ( cdsTabelaItensQTDE.AsInteger > (cdsTabelaItensESTOQUE.AsInteger - cdsTabelaItensRESERVA.AsInteger) ) then
//    begin
//      ShowWarning('Quantidade informada est� acima da quantidade dispon�vel no estoque.');
//      dbQuantidade.SetFocus;
//    end
//    else
    if ( cdsTabelaItensDESCONTO.AsCurrency > GetLimiteDescontoUser ) then
    begin
      ShowWarning('Limite de Desconto = ' + FormatFloat('0.00', GetLimiteDescontoUser) + '%');
      dbDesconto.SetFocus;
    end
    else
    begin

      case cdsTabelaItens.State of
        dsInsert:
          begin
            IbDtstTabelaDESCONTO.AsCurrency   := IbDtstTabelaDESCONTO.AsCurrency   + cdsTabelaItensTOTAL_DESCONTO.AsCurrency;
            IbDtstTabelaTOTALVENDA.AsCurrency := IbDtstTabelaTOTALVENDA.AsCurrency + cdsTabelaItensTOTAL_LIQUIDO.AsCurrency;
          end;

        dsEdit:
          begin
            IbDtstTabelaDESCONTO.AsCurrency   := IbDtstTabelaDESCONTO.AsCurrency   - cdsTabelaItensTOTAL_DESCONTO.OldValue + cdsTabelaItensTOTAL_DESCONTO.NewValue;
            IbDtstTabelaTOTALVENDA.AsCurrency := IbDtstTabelaTOTALVENDA.AsCurrency - cdsTabelaItensTOTAL_LIQUIDO.OldValue  + cdsTabelaItensTOTAL_LIQUIDO.NewValue;
          end;
      end;

      cdsTabelaItens.Post;

      if ( btnProdutoInserir.Visible and btnProdutoInserir.Enabled ) then
        btnProdutoInserir.SetFocus;

    end;
  end;
end;

procedure TfrmGeVenda.btbtnSalvarClick(Sender: TObject);
var
  iNumero : Integer;
begin
  if ( cdsTabelaItens.IsEmpty ) then
    ShowWarning('Favor informar o(s) produto(s) da venda.')
  else
  begin
    inherited;

    if ( not OcorreuErro ) then
    begin
      if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
        cdsTabelaItens.Post;

      cdsTabelaItens.ApplyUpdates;
      CommitTransaction;

      iNumero := IbDtstTabelaCODCONTROL.AsInteger;

      IbDtstTabela.Close;
      IbDtstTabela.Open;

      IbDtstTabela.Locate(CampoCodigo, iNumero, []);
    end;

    HabilitarDesabilitar_Btns;
  end;
end;

procedure TfrmGeVenda.ControlEditExit(Sender: TObject);
var limitedesc, perc : variant;
begin
  inherited;

  if ( Sender = dbProduto ) then
    if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
      CarregarDadosProduto( StrToIntDef(cdsTabelaItensCODPROD.AsString, 0) );

  if ( Sender = dbCFOP ) then
    if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
      CarregarDadosCFOP( cdsTabelaItensCFOP_COD.AsInteger );

  if ( (Sender = dbQuantidade) or (Sender = dbDesconto) ) then
    if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
    begin
      if ( cdsTabelaItensPUNIT.IsNull ) then
        cdsTabelaItensPUNIT.AsCurrency := 0;

      if ( cdsTabelaItensDESCONTO.IsNull ) then
        cdsTabelaItensDESCONTO.AsCurrency := 0;

      cdsTabelaItensDESCONTO_VALOR.Value := cdsTabelaItensPUNIT.AsCurrency * cdsTabelaItensDESCONTO.AsCurrency / 100;
      cdsTabelaItensPFINAL.Value         := cdsTabelaItensPUNIT.AsCurrency - cdsTabelaItensDESCONTO_VALOR.Value;
      cdsTabelaItensTOTAL_BRUTO.Value    := cdsTabelaItensQTDE.AsInteger * cdsTabelaItensPUNIT.AsCurrency;
      cdsTabelaItensTOTAL_DESCONTO.Value := cdsTabelaItensQTDE.AsInteger * cdsTabelaItensDESCONTO_VALOR.AsCurrency;
      cdsTabelaItensTOTAL_LIQUIDO.Value  := cdsTabelaItensQTDE.AsInteger * cdsTabelaItensPFINAL.AsCurrency;
    end;

//  if ( (Sender = dbQuantidade) or (Sender = dbDescontoValor) ) then
//    if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
//    begin
//      if ( cdsTabelaItensPUNIT.IsNull ) then
//        cdsTabelaItensPUNIT.AsCurrency := 0;
//
//      if ( cdsTabelaItensDESCONTO_VALOR.IsNull ) then
//        cdsTabelaItensDESCONTO_VALOR.AsCurrency := 0;
//
//      cdsTabelaItensDESCONTO.AsCurrency  := cdsTabelaItensDESCONTO_VALOR.Value / cdsTabelaItensPUNIT.AsCurrency * 100;
//      cdsTabelaItensPFINAL.Value         := cdsTabelaItensPUNIT.AsCurrency - cdsTabelaItensDESCONTO_VALOR.Value;
//      cdsTabelaItensTOTAL_BRUTO.Value    := cdsTabelaItensQTDE.AsInteger * cdsTabelaItensPUNIT.AsCurrency;
//      cdsTabelaItensTOTAL_DESCONTO.Value := cdsTabelaItensQTDE.AsInteger * cdsTabelaItensDESCONTO_VALOR.AsCurrency;
//      cdsTabelaItensTOTAL_LIQUIDO.Value  := cdsTabelaItensQTDE.AsInteger * cdsTabelaItensPFINAL.AsCurrency;
//    end;
//
  if ( Sender = dbValorLiq ) then
    if ( btnProdutoSalvar.Visible and btnProdutoSalvar.Enabled ) then
      btnProdutoSalvar.SetFocus;

end;

procedure TfrmGeVenda.pgcGuiasChange(Sender: TObject);
begin
  inherited;
  AbrirTabelaItens( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
  AbrirTabelaTitulos( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
end;

procedure TfrmGeVenda.btbtnIncluirClick(Sender: TObject);
var
  iAno ,
  iNum : Integer;
begin
  iAno := YearOf(GetDateDB);
  iNum := GetGeneratorID(sGeneratorName);

  inherited;
  if ( not OcorreuErro ) then
  begin
    IbDtstTabelaANO.AsInteger        := iAno;
    IbDtstTabelaCODCONTROL.AsInteger := iNum;

    AbrirTabelaItens( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
    AbrirTabelaTitulos( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
  end;
end;

procedure TfrmGeVenda.btbtnAlterarClick(Sender: TObject);
var
  sMsg : String;
begin
  if ( IbDtstTabelaSTATUS.AsInteger > STATUS_VND_ABR ) then
  begin
    Case IbDtstTabelaSTATUS.AsInteger of
      STATUS_VND_FIN : sMsg := 'Esta venda n�o pode ser alterada porque est� finalizada.';
      STATUS_VND_NFE : sMsg := 'Esta venda n�o pode ser alterada porque tem NF-e emitida';
      STATUS_VND_CAN : sMsg := 'Esta venda n�o pode ser alterada porque est� cancelada';
    end;

    ShowWarning(sMsg);
    Abort;
  end
  else
  begin
    inherited;
    if ( not OcorreuErro ) then
    begin
      AbrirTabelaItens( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
      AbrirTabelaTitulos( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
    end;  
  end;
end;

procedure TfrmGeVenda.dbProdutoButtonClick(Sender: TObject);
var
  iCodigo  ,
  iCFOP    ,
  iUnidade ,
  iEstoque ,
  iReserva : Integer;
  sCodigoAlfa,
  sDescricao ,
  sUnidade   ,
  sCST       : String;
  cAliquota  ,
  cValorVenda,
  cValorIPI  : Currency;
begin
  if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
    if ( SelecionarProduto(Self, iCodigo, sCodigoAlfa, sDescricao, sUnidade, sCST, iUnidade, iCFOP, cAliquota, cValorVenda, cValorIPI, iEstoque, iReserva) ) then
    begin
      cdsTabelaItensCODPROD.AsString     := sCodigoAlfa;
      cdsTabelaItensDESCRI.AsString      := sDescricao;
      cdsTabelaItensUNP_SIGLA.AsString   := sUnidade;
      cdsTabelaItensCST.AsString         := sCST;
      cdsTabelaItensCFOP_COD.AsInteger   := iCFOP;
      cdsTabelaItensALIQUOTA.AsCurrency  := cAliquota;
      cdsTabelaItensPUNIT.AsCurrency     := cValorVenda;
      cdsTabelaItensPFINAL.AsCurrency    := cValorVenda;
      cdsTabelaItensVALOR_IPI.AsCurrency := cValorIPI;
      
      cdsTabelaItensESTOQUE.AsInteger := iEstoque;
      cdsTabelaItensRESERVA.AsInteger := iReserva;
    end;
end;

procedure TfrmGeVenda.dbCFOPButtonClick(Sender: TObject);
var
  iCodigo : Integer;
  sDescricao : String;
begin
  if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
    if ( SelecionarCFOP(Self, iCodigo, sDescricao) ) then
    begin
      cdsTabelaItensCFOP_COD.AsInteger      := iCodigo;
      cdsTabelaItensCFOP_DESCRICAO.AsString := sDescricao;
    end;
end;

procedure TfrmGeVenda.cdsTabelaItensNewRecord(DataSet: TDataSet);
begin
  cdsTabelaItensANO.Value        := IbDtstTabelaANO.Value;
  cdsTabelaItensCODCONTROL.Value := IbDtstTabelaCODCONTROL.Value;
  cdsTabelaItensDTVENDA.Value    := IbDtstTabelaDTVENDA.Value;
  cdsTabelaItensCODEMP.Value     := IbDtstTabelaCODEMP.Value;
  cdsTabelaItensCODCLI.Value     := IbDtstTabelaCODCLI.Value;
//  cdsTabelaItensSEQ.Value        := cdsTabelaItens.RecordCount + 1;
  cdsTabelaItensCFOP_COD.Value       := GetCfopIDDefault;
  cdsTabelaItensCFOP_DESCRICAO.Value := GetCfopNomeDefault;
  cdsTabelaItensCST.Value            := '000';
  cdsTabelaItensALIQUOTA.Value       := 0;
  cdsTabelaItensQTDE.Value           := 1;
  cdsTabelaItensDESCONTO.Value       := 0;
  cdsTabelaItensDESCONTO_VALOR.Value := 0;
end;

procedure TfrmGeVenda.btbtnFinalizarClick(Sender: TObject);

  function QuantidadeInvalida : Boolean;
  var
    Return : Boolean;
  begin
    Return := False;

    cdsTabelaItens.First;
    while not cdsTabelaItens.Eof do
    begin
      Return := ( cdsTabelaItensQTDE.AsInteger > (cdsTabelaItensESTOQUE.AsInteger - cdsTabelaItensRESERVA.AsInteger) );
      if ( Return ) then
        Break;
      cdsTabelaItens.Next;
    end;

    Result := Return;
  end;

begin
  if ( IbDtstTabela.IsEmpty ) then
    Exit;

  IbDtstTabela.Edit;

  if ( IbDtstTabelaVENDEDOR_COD.AsInteger = 0 ) then
  begin
    ShowWarning('Favor informar o vendedor');
    dbVendedor.SetFocus;
  end
  else
  if ( QuantidadeInvalida ) then
  begin
    ShowWarning('Quantidade informada para o �tem ' + FormatFloat('#00', cdsTabelaItensSEQ.AsInteger) + ' est� acima da quantidade dispon�vel no estoque.');
    if ( btnProdutoEditar.Visible and btnProdutoEditar.Enabled ) then
      btnProdutoEditar.SetFocus;
  end
  else
  if ( IbDtstTabelaFORMAPAGTO_COD.AsInteger = 0 ) then
  begin
    ShowWarning('Favor informar a forma de pagamento');
    dbFormaPagto.SetFocus;
  end
  else
  if ( IbDtstTabelaCONDICAOPAGTO_COD.AsInteger = 0 ) then
  begin
    ShowWarning('Favor informar a condi��o de pagamento');
    dbCondicaoPagto.SetFocus;
  end
  else
  if ( ShowConfirm('Confirma a finaliza��o da venda selecionada?') ) then
  begin
    IbDtstTabela.Edit;

    IbDtstTabelaSTATUS.Value              := STATUS_VND_FIN;
    IbDtstTabelaDTFINALIZACAO_VENDA.Value := Date;

    IbDtstTabela.Post;
    IbDtstTabela.ApplyUpdates;

    CommitTransaction;

    GerarTitulos( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
    AbrirTabelaTitulos( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );

    ShowInformation('Venda finalizada com sucesso !' + #13#13 + 'Ano/Controle: ' + IbDtstTabelaANO.AsString + '/' + FormatFloat('##0000000', IbDtstTabelaCODCONTROL.AsInteger));

    HabilitarDesabilitar_Btns;

    // Forma de Pagamento: BOLETA BANC�RIA
    if ( GetEmitirBoleto and (IbDtstTabelaFORMAPAGTO_COD.AsInteger = GetCondicaoPagtoIDBoleto) ) then
      if ( ShowConfirm('Deseja gerar boletos para os t�tulos da venda.') ) then
        btnGerarBoleto.Click;
  end;
end;

procedure TfrmGeVenda.btbtnGerarNFeClick(Sender: TObject);
var
  iNumero    ,
  iSerieNFe  ,
  iNumeroNFe : Integer;
  sFileNameXML ,
  sChaveNFE    ,
  sProtocoloNFE,
  sReciboNFE   : String;
  iNumeroLote  : Int64;
begin
  if ( IbDtstTabela.IsEmpty ) then
    Exit;

  if ( GerarNFe(Self, IbDtstTabelaANO.Value, IbDtstTabelaCODCONTROL.Value,
                iSerieNFe, iNumeroNFe, sFileNameXML, sChaveNFE, sProtocoloNFE, sReciboNFE, iNumeroLote
  ) ) then
    with IbDtstTabela do
    begin
      iNumero := IbDtstTabelaCODCONTROL.AsInteger;

      with qryNFE do
      begin
        Close;
        ParamByName('anovenda').AsInteger := IbDtstTabelaANO.Value;
        ParamByName('numvenda').AsInteger := IbDtstTabelaCODCONTROL.Value;
        Open;

        Append;

        qryNFEANOVENDA.Value    := IbDtstTabelaANO.Value;
        qryNFENUMVENDA.Value    := IbDtstTabelaCODCONTROL.Value;
        qryNFESERIE.Value       := FormatFloat('#00', iSerieNFe);
        qryNFENUMERO.Value      := iNumeroNFe;
        qryNFEDATAEMISSAO.Value := GetDateDB;
        qryNFEHORAEMISSAO.Value := GetTimeDB;
        qryNFECHAVE.Value     := sChaveNFE;
        qryNFEPROTOCOLO.Value := sProtocoloNFE;
        qryNFERECIBO.Value    := sReciboNFE;
        qryNFELOTE_ANO.Value  := IbDtstTabelaANO.Value;
        qryNFELOTE_NUM.Value  := iNumeroLote;

        if ( FileExists(sFileNameXML) ) then
        begin
          qryNFEXML_FILENAME.Value := ExtractFileName( sFileNameXML );
          qryNFEXML_FILE.LoadFromFile( sFileNameXML );
        end;

        Post;
        ApplyUpdates;

        CommitTransaction;
      end;

      IbDtstTabela.Close;
      IbDtstTabela.Open;

      IbDtstTabela.Locate(CampoCodigo, iNumero, []);

      ShowInformation('Nota Fiscal gerada com sucesso.' + #13#13 + 'S�rie/N�mero: ' + IbDtstTabelaSERIE.AsString + '/' + FormatFloat('##0000000', IbDtstTabelaNFE.Value));

      HabilitarDesabilitar_Btns;

      nmImprimirDANFE.Click;
    end;
end;

procedure TfrmGeVenda.GerarTitulos(const AnoVenda: Smallint;
  const ControleVenda: Integer);
begin
  try

    try

      UpdateSequence('GEN_CONTAREC_NUM_' + IntToStr(AnoVenda), 'TBCONTREC', 'NUMLANC', 'where ANOLANC = ' + IntToStr(AnoVenda));

      with IbStrPrcGerarTitulos do
      begin
        ParamByName('anovenda').AsInteger := AnoVenda;
        ParamByName('numvenda').AsInteger := ControleVenda;
        ExecProc;
        CommitTransaction;
      end;

    except
      On E : Exception do
      begin
        DMBusiness.ibtrnsctnBusiness.Rollback;
        ShowError('Erro ao tentar gerar t�tulos de recebimento.' + #13#13 + E.Message);
      end;
    end;

  finally
  end;
end;

procedure TfrmGeVenda.qryTitulosCalcFields(DataSet: TDataSet);
begin
  qryTitulosLancamento.AsString := FormatFloat('0000', qryTitulosANOLANC.AsInteger) + FormatFloat('000000', qryTitulosNUMLANC.AsInteger);
end;

procedure TfrmGeVenda.btnRegerarTituloClick(Sender: TObject);
begin
  if ( IbDtstTabelaSTATUS.AsInteger <> STATUS_VND_FIN ) then
    ShowWarning('� permitida a gera��o de t�tulos apenas para vendas finalizadas')
  else
  if ( not qryTitulos.IsEmpty ) then
    ShowWarning('J� existe(m) t�tulo(s) gerado(s) para esta venda')
  else
  if ( ShowConfirm('Confirma gera��o do(s) t�tulo(s) a receber da venda?') ) then
  begin
    GerarTitulos( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
    AbrirTabelaTitulos( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
  end;
end;

procedure TfrmGeVenda.dbCFOPVendaButtonClick(Sender: TObject);
var
  iCodigo : Integer;
  sDescricao : String;
begin
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    if ( SelecionarCFOP(Self, iCodigo, sDescricao) ) then
      IbDtstTabelaCFOP.AsInteger := iCodigo;
end;

procedure TfrmGeVenda.btbtnListaClick(Sender: TObject);
begin
  inherited;
  ppImprimir.Popup(btbtnLista.ClientOrigin.X, btbtnLista.ClientOrigin.Y + btbtnLista.Height);
end;

procedure TfrmGeVenda.btbtnCancelarVNDClick(Sender: TObject);
var
 iNumero : Integer;
begin
  if ( IbDtstTabela.IsEmpty ) then
    Exit;

  if ( CancelarVND(Self, IbDtstTabelaANO.Value, IbDtstTabelaCODCONTROL.Value) ) then
    with IbDtstTabela do
    begin
      iNumero := IbDtstTabelaCODCONTROL.AsInteger;

      IbDtstTabela.Close;
      IbDtstTabela.Open;

      IbDtstTabela.Locate(CampoCodigo, iNumero, []);

      ShowInformation('Venda cancelada com sucesso.' + #13#13 + 'Ano/Controle: ' + IbDtstTabelaANO.AsString + '/' + FormatFloat('##0000000', IbDtstTabelaCODCONTROL.AsInteger));

      HabilitarDesabilitar_Btns;
    end;
end;

procedure TfrmGeVenda.FormActivate(Sender: TObject);
begin
  inherited;
  HabilitarDesabilitar_Btns;
  
  case DMBusiness.ibdtstUsersCODFUNCAO.Value of
// 1: EvUAfrmPrinc.UserID := 1 ;  //Diretoria
    2: begin
    // EvUAfrmPrinc.UserID := 4;   // Gerente de Vendas
         btbtnFinalizar.Visible   := False;
         btbtnGerarNFe.Visible    := False;
         btbtnCancelarVND.Visible := False;
       end;
// 3: EvUAfrmPrinc.UserID := 3;   // Gerente Financeiro
    4: begin
    //   EvUAfrmPrinc.UserID := 4;   // Vendedor
         btbtnFinalizar.Visible   := false;
         btbtnGerarNFe.Visible    := False;
         btbtnCancelarVND.Visible := False;
       end;
//   5: EvUAfrmPrinc.UserID := 5;   // Gerente ADM
//   6: EvUAfrmPrinc.UserID := 6;   // Caixa
//   7: EvUAfrmPrinc.UserID := 7;   // Aux.Financeiro 1
//   8: EvUAfrmPrinc.UserID := 8;   // Aux.Financeiro 2
//   9: EvUAfrmPrinc.UserID := 9;   // Supervisor Caixa
//   10: EvUAfrmPrinc.UserID := 10;   // Estoquista
 //  11: EvUAfrmPrinc.UserID := 11;   // TI
//   12: EvUAfrmPrinc.UserID := 12;   // Masterdados-Supervisor
// else ShowMessage('Falta cruzar nova fun��o com UserID!');
  end
end;

procedure TfrmGeVenda.nmImprimirVendaClick(Sender: TObject);
begin
  if ( IbDtstTabela.IsEmpty ) then
    Exit;

  with DMNFe do
  begin

    with qryEmitente do
    begin
      Close;
      ParamByName('Cnpj').AsString := IbDtstTabelaCODEMP.AsString;
      Open;
    end;

    with qryDestinatario do
    begin
      Close;
      ParamByName('Cnpj').AsString := IbDtstTabelaCODCLI.AsString;
      Open;
    end;

    with qryCalculoImporto do
    begin
      Close;
      ParamByName('anovenda').AsInteger := IbDtstTabelaANO.AsInteger;
      ParamByName('numvenda').AsInteger := IbDtstTabelaCODCONTROL.AsInteger;
      Open;
    end;

    with qryDadosProduto do
    begin
      Close;
      ParamByName('anovenda').AsInteger := IbDtstTabelaANO.AsInteger;
      ParamByName('numvenda').AsInteger := IbDtstTabelaCODCONTROL.AsInteger;
      Open;
    end;

    if ( GetEmitirCupom ) then
    begin
      if ( GetModeloEmissaoCupom = 0 ) then
      begin
//        FrECFPooler.ShowReport;
        FrECFPooler.PrepareReport;
        FrECFPooler.Print;
      end;
    end
    else
      frrVenda.ShowReport;

  end;
end;

procedure TfrmGeVenda.nmImprimirDANFEClick(Sender: TObject);
var
  isPDF : Boolean;
begin
  if ( IbDtstTabela.IsEmpty ) then
    Exit;

  isPDF := ( Sender = nmGerarDANFEXML );

  DMNFe.ImprimirDANFEACBr( IbDtstTabelaCODEMP.AsString, IbDtstTabelaCODCLI.AsString, IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger, isPDF);
end;

procedure TfrmGeVenda.btnConsultarProdutoClick(Sender: TObject);
begin
  MostrarTabelaProdutos(Self);
end;

procedure TfrmGeVenda.dbTotalDescontoButtonClick(Sender: TObject);
var
  sValor : String;
  cValor : Currency;
begin
  if ( cdsTabelaItens.State in [dsEdit, dsInsert] ) then
  begin
    sValor := InputBox('TOTAL DESCONTO (R$)', 'Favor informar o Valor Total de Desconto:', FormatFloat(',0.00', dbTotalDesconto.Field.AsCurrency));
    sValor := Trim(StringReplace(sValor, '.', '', [rfReplaceAll]));
    cValor := StrToCurrDef(sValor, 0);
    if ( cValor > 0 ) then
    begin
      cdsTabelaItensDESCONTO_VALOR.AsCurrency := cValor / cdsTabelaItensQTDE.AsInteger;
      cdsTabelaItensDESCONTO.AsCurrency  := cdsTabelaItensDESCONTO_VALOR.Value / cdsTabelaItensPUNIT.AsCurrency * 100;
      cdsTabelaItensPFINAL.Value         := cdsTabelaItensPUNIT.AsCurrency - cdsTabelaItensDESCONTO_VALOR.Value;
      cdsTabelaItensTOTAL_BRUTO.Value    := cdsTabelaItensQTDE.AsInteger * cdsTabelaItensPUNIT.AsCurrency;
      cdsTabelaItensTOTAL_DESCONTO.Value := cValor; // cdsTabelaItensQTDE.AsInteger * cdsTabelaItensDESCONTO_VALOR.AsCurrency;
      cdsTabelaItensTOTAL_LIQUIDO.Value  := cdsTabelaItensQTDE.AsInteger * cdsTabelaItensPFINAL.AsCurrency;
    end;
  end;
end;

procedure TfrmGeVenda.btnGerarBoletoClick(Sender: TObject);
begin
  if ( not GetEmitirBoleto ) then
    Exit;

  if ( not qryTitulos.IsEmpty ) then
  begin
    GerarBoleto(Self, dbCliente.Text, IbDtstTabelaCODCLI.AsString);
    AbrirTabelaTitulos( IbDtstTabelaANO.AsInteger, IbDtstTabelaCODCONTROL.AsInteger );
  end;
end;

end.
