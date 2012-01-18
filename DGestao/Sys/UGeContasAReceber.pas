unit UGeContasAReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGrPadraoCadastro, ImgList, IBCustomDataSet, IBUpdateSQL, DB,
  Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls,
  ToolWin, ToolEdit, RXDBCtrl, IBTable;

type
  TfrmGeContasAReceber = class(TfrmGrPadraoCadastro)
    lblData: TLabel;
    edData: TDateTimePicker;
    btbtnEfetuarPagto: TBitBtn;
    Bevel5: TBevel;
    GrpBxDadosValores: TGroupBox;
    lblCliente: TLabel;
    dbCliente: TRxDBComboEdit;
    lblParcela: TLabel;
    dbParcela: TDBEdit;
    dbQuitado: TDBEdit;
    lblEmissao: TLabel;
    dbEmissao: TDBEdit;
    lblVencimento: TLabel;
    dbVencimento: TDBEdit;
    lblValorAReceber: TLabel;
    dbValorAReceber: TDBEdit;
    tblEmpresa: TIBTable;
    dtsEmpresa: TDataSource;
    tblFormaPagto: TIBTable;
    dtsFormaPagto: TDataSource;
    tblCondicaoPagto: TIBTable;
    dtsCondicaoPagto: TDataSource;
    lblFormaPagto: TLabel;
    dbFormaPagto: TDBLookupComboBox;
    pgcMaisDados: TPageControl;
    tbsHistorico: TTabSheet;
    dbObservacao: TDBMemo;
    lblQuitado: TLabel;
    Bevel6: TBevel;
    dbgPagamentos: TDBGrid;
    Bevel7: TBevel;
    cdsPagamentos: TIBDataSet;
    dtsPagamentos: TDataSource;
    cdsPagamentosANOLANC: TSmallintField;
    cdsPagamentosNUMLANC: TIntegerField;
    cdsPagamentosSEQ: TSmallintField;
    cdsPagamentosHISTORICO: TMemoField;
    cdsPagamentosDATA_PAGTO: TDateField;
    cdsPagamentosFORMA_PAGTO: TSmallintField;
    cdsPagamentosFORMA_PAGTO_DESC: TIBStringField;
    cdsPagamentosVALOR_BAIXA: TIBBCDField;
    cdsPagamentosNUMERO_CHEQUE: TIBStringField;
    cdsPagamentosBANCO: TSmallintField;
    cdsPagamentosBCO_NOME: TIBStringField;
    cdsPagamentosDOCUMENTO_BAIXA: TIBStringField;
    lblCNPJ: TLabel;
    dbCNPJ: TDBEdit;
    lblVenda: TLabel;
    daVenda: TDBEdit;
    IbDtstTabelaANOLANC: TSmallintField;
    IbDtstTabelaNUMLANC: TIntegerField;
    IbDtstTabelaPARCELA: TSmallintField;
    IbDtstTabelaCNPJ: TIBStringField;
    IbDtstTabelaFORMA_PAGTO: TSmallintField;
    IbDtstTabelaTIPPAG: TIBStringField;
    IbDtstTabelaHISTORIC: TMemoField;
    IbDtstTabelaNUMREC: TIBStringField;
    IbDtstTabelaDTEMISS: TDateField;
    IbDtstTabelaDTVENC: TDateField;
    IbDtstTabelaDTREC: TDateField;
    IbDtstTabelaDOCBAIX: TIBStringField;
    IbDtstTabelaVALORREC: TIBBCDField;
    IbDtstTabelaVALORMULTA: TIBBCDField;
    IbDtstTabelaVALORRECTOT: TIBBCDField;
    IbDtstTabelaNUMCONTRATO: TIBStringField;
    IbDtstTabelaNOSSONUMERO: TIBStringField;
    IbDtstTabelaREMESSA: TIntegerField;
    IbDtstTabelaVALORSALDO: TIBBCDField;
    IbDtstTabelaPERCENTJUROS: TIBBCDField;
    IbDtstTabelaPERCENTMULTA: TIBBCDField;
    IbDtstTabelaPERCENTDESCONTO: TIBBCDField;
    IbDtstTabelaDATAPROCESSOBOLETO: TDateField;
    IbDtstTabelaBAIXADO: TSmallintField;
    IbDtstTabelaENVIADO: TSmallintField;
    IbDtstTabelaANOVENDA: TSmallintField;
    IbDtstTabelaNUMVENDA: TIntegerField;
    IbDtstTabelaNOME: TIBStringField;
    IbDtstTabelaPAGO_: TIBStringField;
    dnVenda: TDBEdit;
    Bevel9: TBevel;
    GrpBxDadosBoleto: TGroupBox;
    lblBanco: TLabel;
    dbBanco: TDBLookupComboBox;
    IbDtstTabelaCODBANCO: TIntegerField;
    lblValorMulta: TLabel;
    dbValorMulta: TDBEdit;
    lblTotalAReceber: TLabel;
    dbTotalAReceber: TDBEdit;
    lblNossoNumero: TLabel;
    dbNossoNumero: TDBEdit;
    tblBanco: TIBTable;
    dtsBanco: TDataSource;
    lblPercJuros: TLabel;
    dbPercJuros: TDBEdit;
    lblPercMulta: TLabel;
    dbPercMulta: TDBEdit;
    lblDataBoleto: TLabel;
    dbDataBoleto: TDBEdit;
    lblDataPagto: TLabel;
    dbDataPagto: TDBEdit;
    dbEnviado: TDBCheckBox;
    lblPercDesconto: TLabel;
    dbPercDesconto: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure dbClienteButtonClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure IbDtstTabelaNewRecord(DataSet: TDataSet);
    procedure btbtnEfetuarPagtoClick(Sender: TObject);
    procedure btbtnSalvarClick(Sender: TObject);
    procedure pgcGuiasChange(Sender: TObject);
    procedure btbtnAlterarClick(Sender: TObject);
    procedure btbtnExcluirClick(Sender: TObject);
    procedure IbDtstTabelaBAIXADOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ControlEditExit(Sender: TObject);
    procedure dbFormaPagtoClick(Sender: TObject);
  private
    { Private declarations }
    SQL_Pagamentos : TStringList;
    procedure AbrirPagamentos(const Ano : Smallint; const Numero : Integer);
    procedure HabilitarDesabilitar_Btns;
  public
    { Public declarations }
  end;

var
  frmGeContasAReceber: TfrmGeContasAReceber;

  procedure MostrarControleContasAReceber(const AOwner : TComponent);

implementation

uses UDMBusiness, UGeCliente, DateUtils, UGeEfetuarPagtoREC;

{$R *.dfm}

procedure MostrarControleContasAReceber(const AOwner : TComponent);
var
  frm : TfrmGeContasAReceber;
  whr : String; 
begin
  frm := TfrmGeContasAReceber.Create(AOwner);
  try
    whr := 'cast(r.dtvenc as date) = ' + QuotedStr( FormatDateTime('yyyy-mm-dd', frm.edData.Date) );

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

procedure TfrmGeContasAReceber.FormCreate(Sender: TObject);
begin
  IbDtstTabela.GeneratorField.Generator := 'GEN_CONTAREC_NUM_' + FormatFloat('0000', YearOf(Date));

  inherited;

  SQL_Pagamentos := TStringList.Create;
  SQL_Pagamentos.AddStrings( cdsPagamentos.SelectSQL );

  edData.Date      := Date;
  ControlFirstEdit := dbCliente;

  tblEmpresa.Open;
  tblFormaPagto.Open;
  tblCondicaoPagto.Open;
  tblBanco.Open;

  DisplayFormatCodigo := '###0000000';
  NomeTabela     := 'TBCONTREC';
  CampoCodigo    := 'numlanc';
  CampoDescricao := 'Nome';
  CampoOrdenacao := 'r.dtvenc, c.Nome';

  UpdateGenerator( 'where anolanc = ' + FormatFloat('0000', YearOf(Date)) );

  UpdateGenerator;
end;

procedure TfrmGeContasAReceber.dbClienteButtonClick(Sender: TObject);
var
  iCodigo : Integer;
  sCNPJ   ,
  sNome   : String;
begin
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    if ( SelecionarCliente(Self, iCodigo, sCNPJ, sNome) ) then
    begin
      IbDtstTabelaCNPJ.AsString := sCNPJ;
      IbDtstTabelaNOME.AsString := sNome;
    end;
end;

procedure TfrmGeContasAReceber.btnFiltrarClick(Sender: TObject);
begin
  WhereAdditional := 'cast(r.dtvenc as date) = ' + QuotedStr( FormatDateTime('yyyy-mm-dd', edData.Date) );
  inherited;
end;

procedure TfrmGeContasAReceber.IbDtstTabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  IbDtstTabelaANOLANC.Value := YearOf(Date);
  IbDtstTabelaPARCELA.Value := 0;
  IbDtstTabelaDTEMISS.Value := Date;
  IbDtstTabelaFORMA_PAGTO.Value    := GetFormaPagtoIDDefault;
  IbDtstTabelaTIPPAG.Value         := GetFormaPagtoNomeDefault;
  IbDtstTabelaVALORRECTOT.Value     := 0;
  IbDtstTabelaVALORSALDO.Value      := 0;
  IbDtstTabelaPERCENTJUROS.Value    := 0;
  IbDtstTabelaPERCENTMULTA.Value    := 0;
  IbDtstTabelaPERCENTDESCONTO.Value := 0;
end;

procedure TfrmGeContasAReceber.btbtnEfetuarPagtoClick(Sender: TObject);
var
  sSenha  : String;
  iNumero : Integer;
begin
  if ( IbDtstTabela.IsEmpty ) then
    Exit;

//  sSenha := InputBox('Favor informar a senha de autoriza��o', 'Senha de Autoriza��o:', '');
//
//  if ( Trim(sSenha) = EmptyStr ) then
//    Exit;
//
//  if ( sSenha <> GetSenhaAutorizacao ) then
//  begin
//    ShowWarning('Senha de autoriza��o inv�lida');
//    Exit;
//  end;

  if PagamentoConfirmado(Self, IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger, IbDtstTabelaNOME.AsString) then
  begin
    iNumero := IbDtstTabelaNUMLANC.AsInteger;

    IbDtstTabela.Close;
    IbDtstTabela.Open;

    IbDtstTabela.Locate('NUMLANC', iNumero, []);

    AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
  end;
end;

procedure TfrmGeContasAReceber.HabilitarDesabilitar_Btns;
begin
  if ( pgcGuias.ActivePage = tbsCadastro ) then
    btbtnEfetuarPagto.Enabled := (IbDtstTabelaBAIXADO.AsInteger = 0) and (not IbDtstTabela.IsEmpty)
  else
    btbtnEfetuarPagto.Enabled := False;
end;

procedure TfrmGeContasAReceber.btbtnSalvarClick(Sender: TObject);
begin
  inherited;
  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeContasAReceber.pgcGuiasChange(Sender: TObject);
begin
  inherited;
  AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
end;

procedure TfrmGeContasAReceber.AbrirPagamentos(const Ano: Smallint;
  const Numero: Integer);
begin
  cdsPagamentos.Close;

  with cdsPagamentos, SelectSQL do
  begin
    Clear;
    AddStrings( SQL_Pagamentos );
    Add('where p.Anolanc = ' + IntToStr(Ano));
    Add('  and p.Numlanc = ' + IntToStr(Numero));
    Add('order by p.seq');
  end;

  cdsPagamentos.Open;

  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeContasAReceber.btbtnAlterarClick(Sender: TObject);
begin
  if ( IbDtstTabelaBAIXADO.AsInteger = 1 ) then
  begin
    ShowWarning('O Lan�amento n�o poder� ser alterado pois este j� est� quitado!');
    Abort;
  end
  else
  begin
    inherited;
    if ( not OcorreuErro ) then
      AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
  end;
end;

procedure TfrmGeContasAReceber.btbtnExcluirClick(Sender: TObject);
begin
  if ( IbDtstTabelaBAIXADO.AsInteger = 1 ) then
  begin
    ShowWarning('O Lan�amento n�o poder� ser exclu�do pois este j� est� quitado!');
    Abort;
  end
  else
  begin
    inherited;
    if ( not OcorreuErro ) then
      AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
  end;
end;

procedure TfrmGeContasAReceber.IbDtstTabelaBAIXADOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Case Sender.AsInteger of
    0 : Text := 'A Receber';
    1 : Text := 'Baixado';
    else
      Text := Sender.AsString;
  end;
end;

procedure TfrmGeContasAReceber.ControlEditExit(Sender: TObject);
begin
  inherited;

//  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
//    if ( (Sender = dbValorAReceber) or (Sender = dbValorMulta) ) then
//      IbDtstTabelaVALORSALDO.Value := IbDtstTabelaVALORREC.AsCurrency + IbDtstTabelaVALORMULTA.AsCurrency - IbDtstTabelaVALORRECTOT.AsCurrency;

end;

procedure TfrmGeContasAReceber.dbFormaPagtoClick(Sender: TObject);
begin
  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
    if ( tblFormaPagto.Locate('cod', dbFormaPagto.Field.AsInteger, []) ) then
      IbDtstTabelaTIPPAG.AsString := tblFormaPagto.FieldByName('descri').AsString;
end;

end.
