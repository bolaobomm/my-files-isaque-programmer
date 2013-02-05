unit uRelProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelProdutos = class(TForm)
    qckrp: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qrlblCliMot: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRSysData3: TQRSysData;
    PageFooterBand2: TQRBand;
    QRSysData2: TQRSysData;
    IBQuery1: TIBQuery;
    ibqryEmpresa: TIBQuery;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    IBQuery1DESCRI: TIBStringField;
    IBQuery1COD: TIBStringField;
    IBQuery1MODELO: TIBStringField;
    IBQuery1REFERENCIA: TIBStringField;
    IBQuery1PRECO: TIBBCDField;
    IBQuery1CUSTOMEDIO: TIBBCDField;
    IBQuery1QTDE: TIntegerField;
    IBQuery1TotPrecoVenda: TCurrencyField;
    QRDBText7: TQRDBText;
    IBQuery1TotCustoEstoq: TCurrencyField;
    QRDBText4: TQRDBText;
    procedure IBQuery1CalcFields(DataSet: TDataSet);
    procedure qckrpBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdutos: TfrmRelProdutos;

implementation

uses UDMBusiness, UConstantesDGE;

{$R *.dfm}

procedure TfrmRelProdutos.IBQuery1CalcFields(DataSet: TDataSet);
begin
 IBQuery1TotPrecoVenda.Value := IBQuery1PRECO.Value * IBQuery1QTDE.Value;
 IBQuery1TotCustoEstoq.Value := IBQuery1CUSTOMEDIO.Value * IBQuery1QTDE.Value;
end;

procedure TfrmRelProdutos.qckrpBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if ( GetSegmentoID(GetEmpresaIDDefault) = SEGMENTO_MERCADO_CARRO_ID ) then
   begin
     QRLabel2.Caption := 'RELAT�RIO DE VE�CULOS';
     qrlblCliMot.Caption := 'VE�CULO';
     QRLabel10.Caption := 'PLACA';
     QRLabel5.Enabled := False;
     QRDBText6.Enabled := FALSE;
   end
end;

end.
