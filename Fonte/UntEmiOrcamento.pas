unit UntEmiOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RLReport;

type
  TFrmEmiOrcamento = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText5: TRLDBText;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    DsEmiOrcamento: TDataSource;
    RLLabel15: TRLLabel;
    RLLabel5: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmiOrcamento: TFrmEmiOrcamento;

implementation

uses DmModuloRelatorioI;

{$R *.dfm}

end.
