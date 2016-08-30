unit DmModuloII;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TDmModuleII = class(TDataModule)
    Sqldsrecebvendasimples: TSQLDataSet;
    Dsprecebvendasimples: TDataSetProvider;
    Cdsrecebvendasimples: TClientDataSet;
    SqldsrecebvendasimplesCODIGO: TIntegerField;
    SqldsrecebvendasimplesSEQ: TIntegerField;
    SqldsrecebvendasimplesDATAEMISSAO: TDateField;
    SqldsrecebvendasimplesDATAVENCTO: TDateField;
    SqldsrecebvendasimplesDATAPAGTO: TDateField;
    CdsrecebvendasimplesCODIGO: TIntegerField;
    CdsrecebvendasimplesSEQ: TIntegerField;
    CdsrecebvendasimplesDATAEMISSAO: TDateField;
    CdsrecebvendasimplesDATAVENCTO: TDateField;
    CdsrecebvendasimplesDATAPAGTO: TDateField;
    SqldsrecebvendasimplesFLAGPAGTO: TStringField;
    SqldsrecebvendasimplesNUMRECIBO: TIntegerField;
    CdsrecebvendasimplesFLAGPAGTO: TStringField;
    CdsrecebvendasimplesNUMRECIBO: TIntegerField;
    SqldsPROXINUMREC: TSQLDataSet;
    DspPROXINUMREC: TDataSetProvider;
    CdsPROXINUMREC: TClientDataSet;
    SqldsPROXINUMRECPROXNUMRECIBO: TIntegerField;
    SqldsPROXINUMRECFLAG: TStringField;
    CdsPROXINUMRECPROXNUMRECIBO: TIntegerField;
    CdsPROXINUMRECFLAG: TStringField;
    SqldsSP_ATUALIZANUMRECVSIMPLES: TSQLDataSet;
    SqldsrecebvendasimplesVLTOTALITEM: TFMTBCDField;
    SqldsrecebvendasimplesJUROSOUDESC: TFMTBCDField;
    CdsrecebvendasimplesVLTOTALITEM: TFMTBCDField;
    CdsrecebvendasimplesJUROSOUDESC: TFMTBCDField;
    Sqldsrecebvendadupl: TSQLDataSet;
    SqldsrecebvendaduplCODIGO: TIntegerField;
    SqldsrecebvendaduplNUMPRESTACAO: TIntegerField;
    SqldsrecebvendaduplNUMPARCIAL: TIntegerField;
    SqldsrecebvendaduplVALORPRESTACAO: TFMTBCDField;
    SqldsrecebvendaduplDATAVENCTO: TDateField;
    SqldsrecebvendaduplDATABAIXA: TDateField;
    SqldsrecebvendaduplVLJUROSOUDESCONTOS: TFMTBCDField;
    Dsprecebvendadupl: TDataSetProvider;
    Cdsrecebvendadupl: TClientDataSet;
    CdsrecebvendaduplCODIGO: TIntegerField;
    CdsrecebvendaduplNUMPRESTACAO: TIntegerField;
    CdsrecebvendaduplNUMPARCIAL: TIntegerField;
    CdsrecebvendaduplVALORPRESTACAO: TFMTBCDField;
    CdsrecebvendaduplDATAVENCTO: TDateField;
    CdsrecebvendaduplDATABAIXA: TDateField;
    CdsrecebvendaduplVLJUROSOUDESCONTOS: TFMTBCDField;
    SqldsSP_ATUALIZANUMRECVDUP: TSQLDataSet;
    SqldsrecebvendasimplesCODITEM: TIntegerField;
    SqldsrecebvendasimplesCODVENDEDOR: TIntegerField;
    SqldsrecebvendasimplesTOTALPAGO: TFloatField;
    CdsrecebvendasimplesCODITEM: TIntegerField;
    CdsrecebvendasimplesCODVENDEDOR: TIntegerField;
    CdsrecebvendasimplesTOTALPAGO: TFloatField;
    Cdsrecebvendasimplesdescitem: TStringField;
    Cdsrecebvendasimplesvendedor: TStringField;
    SqldsrecebvendaduplVALORTOTALPAGO: TFMTBCDField;
    CdsrecebvendaduplVALORTOTALPAGO: TFMTBCDField;
    SqldsrecebvendaduplCODVENDEDOR: TIntegerField;
    CdsrecebvendaduplCODVENDEDOR: TIntegerField;
    Cdsrecebvendaduplvendedor: TStringField;
    SqldsrecebvendaduplTOTALPAGO: TFloatField;
    CdsrecebvendaduplTOTALPAGO: TFloatField;
    Cdsrecebvendadupldescitem: TStringField;
    Sqldsrecebvendasimplesgeral: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateField1: TDateField;
    FMTBCDField1: TFMTBCDField;
    DateField2: TDateField;
    DateField3: TDateField;
    FMTBCDField2: TFMTBCDField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    FloatField1: TFloatField;
    Dsprecebvendasimplesgeral: TDataSetProvider;
    Cdsrecebvendasimplesgeral: TClientDataSet;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    DateField4: TDateField;
    FMTBCDField3: TFMTBCDField;
    DateField5: TDateField;
    DateField6: TDateField;
    FMTBCDField4: TFMTBCDField;
    StringField2: TStringField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    FloatField2: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    Sqldsrecebvendaduplgeral: TSQLDataSet;
    Dsprecebvendaduplgeral: TDataSetProvider;
    Cdsrecebvendaduplgeral: TClientDataSet;
    StringField5: TStringField;
    StringField6: TStringField;
    SqldsrecebvendaduplgeralCODIGO: TIntegerField;
    SqldsrecebvendaduplgeralNUMPRESTACAO: TIntegerField;
    SqldsrecebvendaduplgeralNUMPARCIAL: TIntegerField;
    SqldsrecebvendaduplgeralVALORPRESTACAO: TFMTBCDField;
    SqldsrecebvendaduplgeralDATAVENCTO: TDateField;
    SqldsrecebvendaduplgeralDATABAIXA: TDateField;
    SqldsrecebvendaduplgeralVLJUROSOUDESCONTOS: TFMTBCDField;
    SqldsrecebvendaduplgeralVALORTOTALPAGO: TFMTBCDField;
    SqldsrecebvendaduplgeralCODVENDEDOR: TIntegerField;
    SqldsrecebvendaduplgeralTOTALPAGO: TFloatField;
    CdsrecebvendaduplgeralCODIGO: TIntegerField;
    CdsrecebvendaduplgeralNUMPRESTACAO: TIntegerField;
    CdsrecebvendaduplgeralNUMPARCIAL: TIntegerField;
    CdsrecebvendaduplgeralVALORPRESTACAO: TFMTBCDField;
    CdsrecebvendaduplgeralDATAVENCTO: TDateField;
    CdsrecebvendaduplgeralDATABAIXA: TDateField;
    CdsrecebvendaduplgeralVLJUROSOUDESCONTOS: TFMTBCDField;
    CdsrecebvendaduplgeralVALORTOTALPAGO: TFMTBCDField;
    CdsrecebvendaduplgeralCODVENDEDOR: TIntegerField;
    CdsrecebvendaduplgeralTOTALPAGO: TFloatField;
    SqldsrecebvendasimplesCODIGOFLEX30: TIntegerField;
    CdsrecebvendasimplesCODIGOFLEX30: TIntegerField;
    SqldsrecebvendasimplesgeralCODIGOFLEX30: TIntegerField;
    CdsrecebvendasimplesgeralCODIGOFLEX30: TIntegerField;
    SqldsrecebvendaduplCODIGOFLEX30: TIntegerField;
    CdsrecebvendaduplCODIGOFLEX30: TIntegerField;
    SqldsrecebvendaduplgeralCODIGOFLEX30: TIntegerField;
    CdsrecebvendaduplgeralCODIGOFLEX30: TIntegerField;
    Sqldsindfinanceiro: TSQLDataSet;
    Dspindfinanceiro: TDataSetProvider;
    Cdsindfinanceiro: TClientDataSet;
    SqldsindfinanceiroCODINDFINANCEIRO: TIntegerField;
    SqldsindfinanceiroJUROSMORAAODIA: TFMTBCDField;
    SqldsindfinanceiroDIASINSENCAO: TIntegerField;
    CdsindfinanceiroCODINDFINANCEIRO: TIntegerField;
    CdsindfinanceiroJUROSMORAAODIA: TFMTBCDField;
    CdsindfinanceiroDIASINSENCAO: TIntegerField;
    procedure CdsrecebvendaduplBeforePost(DataSet: TDataSet);
    procedure CdsrecebvendaduplgeralBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmModuleII: TDmModuleII;

implementation

uses UntMenuPrincipal, DmModuloI;

{$R *.dfm}

procedure TDmModuleII.CdsrecebvendaduplBeforePost(DataSet: TDataSet);
begin
  DmModuleII.Cdsrecebvendadupl.Edit;
  if (DmModuleII.CdsrecebvendaduplDATABAIXA.IsNull) then
  begin
     DmModuleII.CdsrecebvendaduplVLJUROSOUDESCONTOS.AsFloat := 0;
     DmModuleII.CdsrecebvendaduplVALORTOTALPAGO.AsFloat := 0;
  end;
end;

procedure TDmModuleII.CdsrecebvendaduplgeralBeforePost(DataSet: TDataSet);
begin
  DmModuleII.Cdsrecebvendaduplgeral.Edit;
  if (DmModuleII.CdsrecebvendaduplgeralDATABAIXA.IsNull) then
  begin
     DmModuleII.CdsrecebvendaduplgeralVLJUROSOUDESCONTOS.AsFloat := 0;
     DmModuleII.CdsrecebvendaduplgeralVALORTOTALPAGO.AsFloat := 0;
  end;  
end;

end.
