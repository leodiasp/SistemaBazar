unit UntEmiVendaSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RLReport;

type
  TFrmEmiVendaSimples = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText5: TRLDBText;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel16: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLBand5: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel8: TRLLabel;
    dsEmiVendaSimples: TDataSource;
    RLDBText13: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBMemo1: TRLDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmiVendaSimples: TFrmEmiVendaSimples;

implementation

uses DmModuloRelatorioI;

{$R *.dfm}

end.
