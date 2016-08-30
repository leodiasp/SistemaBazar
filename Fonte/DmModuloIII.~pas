unit DmModuloIII;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDmModuleIII = class(TDataModule)
    sqldsfornecedor: TSQLDataSet;
    sqldsfornecedorCODFORN: TIntegerField;
    sqldsfornecedorNOME: TStringField;
    sqldsfornecedorCNPJCPF: TStringField;
    sqldsfornecedorINSCESTADUAL: TStringField;
    sqldsfornecedorENDERECO: TStringField;
    sqldsfornecedorCIDADE: TStringField;
    sqldsfornecedorBAIRRO: TStringField;
    sqldsfornecedorUF: TStringField;
    sqldsfornecedorCEP: TStringField;
    sqldsfornecedorTELEFONE01: TStringField;
    sqldsfornecedorTELEFONE02: TStringField;
    sqldsfornecedorFAX: TStringField;
    sqldsfornecedorCONTATO: TStringField;
    sqldsfornecedorEMAIL: TStringField;
    sqldsfornecedorHOMEPAGE: TStringField;
    dspfornecedor: TDataSetProvider;
    cdsfornecedor: TClientDataSet;
    cdsfornecedorCODFORN: TIntegerField;
    cdsfornecedorNOME: TStringField;
    cdsfornecedorCNPJCPF: TStringField;
    cdsfornecedorINSCESTADUAL: TStringField;
    cdsfornecedorENDERECO: TStringField;
    cdsfornecedorCIDADE: TStringField;
    cdsfornecedorBAIRRO: TStringField;
    cdsfornecedorUF: TStringField;
    cdsfornecedorCEP: TStringField;
    cdsfornecedorTELEFONE01: TStringField;
    cdsfornecedorTELEFONE02: TStringField;
    cdsfornecedorFAX: TStringField;
    cdsfornecedorCONTATO: TStringField;
    cdsfornecedorEMAIL: TStringField;
    cdsfornecedorHOMEPAGE: TStringField;
    cdsfornecedorSqldsduppagar: TDataSetField;
    sqldsPesqFornecedor: TSQLDataSet;
    dspPesqFornecedor: TDataSetProvider;
    CdsPesqFornecedor: TClientDataSet;
    CdsPesqFornecedorCODFORN: TIntegerField;
    CdsPesqFornecedorNOME: TStringField;
    Sqldsduppagar: TSQLDataSet;
    SqldsduppagarCODFORN: TIntegerField;
    SqldsduppagarCODDUPAPAGAR: TIntegerField;
    SqldsduppagarNUMPRESTACAO: TIntegerField;
    SqldsduppagarVALORPRESTACAO: TFMTBCDField;
    SqldsduppagarDATAVENCTO: TDateField;
    SqldsduppagarDATAPAGTO: TDateField;
    SqldsduppagarJUROS: TFMTBCDField;
    SqldsduppagarDESCONTO: TFMTBCDField;
    SqldsduppagarNUMEROCHEQUE: TStringField;
    SqldsduppagarOBS: TStringField;
    SqldsduppagarDATAEMISSAO: TDateField;
    Cdsduppagar: TClientDataSet;
    CdsduppagarCODFORN: TIntegerField;
    CdsduppagarCODDUPAPAGAR: TIntegerField;
    CdsduppagarNUMPRESTACAO: TIntegerField;
    CdsduppagarVALORPRESTACAO: TFMTBCDField;
    CdsduppagarDATAVENCTO: TDateField;
    CdsduppagarDATAPAGTO: TDateField;
    CdsduppagarJUROS: TFMTBCDField;
    CdsduppagarDESCONTO: TFMTBCDField;
    CdsduppagarNUMEROCHEQUE: TStringField;
    CdsduppagarOBS: TStringField;
    CdsduppagarDATAEMISSAO: TDateField;
    Relsqldsfornecedor: TDataSource;
    sqldsNFiscalEntmes: TSQLDataSet;
    sqldsNFiscalEntmesCODIGO: TIntegerField;
    sqldsNFiscalEntmesNUMNFISCAL: TIntegerField;
    sqldsNFiscalEntmesCODFORN: TIntegerField;
    sqldsNFiscalEntmesDATAEMISSAO: TDateField;
    sqldsNFiscalEntmesDATAENTRADA: TDateField;
    sqldsNFiscalEntmesTOTALNFISCAL: TFMTBCDField;
    dspNFiscalEntmes: TDataSetProvider;
    cdsNFiscalEntmes: TClientDataSet;
    cdsNFiscalEntmesCODIGO: TIntegerField;
    cdsNFiscalEntmesNUMNFISCAL: TIntegerField;
    cdsNFiscalEntmesCODFORN: TIntegerField;
    cdsNFiscalEntmesDATAEMISSAO: TDateField;
    cdsNFiscalEntmesDATAENTRADA: TDateField;
    cdsNFiscalEntmesTOTALNFISCAL: TFMTBCDField;
    cdsNFiscalEntmesdesc_fornecedor: TStringField;
    cdsNFiscalEntmessqldsNFiscalEntDet: TDataSetField;
    sqldsNFiscalEntDet: TSQLDataSet;
    sqldsNFiscalEntDetCODIGO: TIntegerField;
    sqldsNFiscalEntDetCDITEM: TIntegerField;
    sqldsNFiscalEntDetQTDE: TFMTBCDField;
    sqldsNFiscalEntDetVLUNITARIO: TFMTBCDField;
    cdsNFiscalEntDet: TClientDataSet;
    cdsNFiscalEntDetCODIGO: TIntegerField;
    cdsNFiscalEntDetCDITEM: TIntegerField;
    cdsNFiscalEntDetQTDE: TFMTBCDField;
    cdsNFiscalEntDetVLUNITARIO: TFMTBCDField;
    cdsNFiscalEntDetdesc_item: TStringField;
    cdsNFiscalEntDetvltotal_nfentrada: TAggregateField;
    RelsqldsNFiscalEntmes: TDataSource;
    SqldsSP_GEN_CODnotafiscalentmes: TSQLDataSet;
    Sqldssp_deletadupapagar: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmModuleIII: TDmModuleIII;

implementation

uses UntMenuPrincipal;

{$R *.dfm}

end.
