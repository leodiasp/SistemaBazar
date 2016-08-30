unit DmModuloI;

interface

uses
  SysUtils, Dialogs ,Classes, FMTBcd, DBClient, Provider, DB, SqlExpr,
  RpDefine, RpCon, RpConDS;

//  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
//  Dialogs, UntPadrao, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TDmModuleI = class(TDataModule)
    Sqldsempresa: TSQLDataSet;
    DspEmpresa: TDataSetProvider;
    CdsEmpresa: TClientDataSet;
    Sqldsgrupo: TSQLDataSet;
    Cdsgrupo: TClientDataSet;
    Dspgrupo: TDataSetProvider;
    SqldsFormapagto: TSQLDataSet;
    DspFormapagto: TDataSetProvider;
    CdsFormapagto: TClientDataSet;
    SqldsFormapagtoCDFORMAPAGTO: TIntegerField;
    SqldsItem: TSQLDataSet;
    DspItem: TDataSetProvider;
    CdsItem: TClientDataSet;
    Sqldspesqitem: TSQLDataSet;
    Dsppesqitem: TDataSetProvider;
    Cdspesqitem: TClientDataSet;
    SqldsCondPagto: TSQLDataSet;
    DspCondPagto: TDataSetProvider;
    CdsCondPagto: TClientDataSet;
    SqldsempresaCODEMPRESA: TIntegerField;
    SqldsempresaNOME: TStringField;
    SqldsempresaTELEFONE: TStringField;
    SqldsempresaENDERECO: TStringField;
    SqldsempresaNUMERO: TStringField;
    SqldsempresaBAIRRO: TStringField;
    SqldsempresaCIDADE: TStringField;
    SqldsempresaCEP: TStringField;
    SqldsempresaEMAIL: TStringField;
    SqldsempresaCNPJ: TStringField;
    SqldsempresaINSCRICAO: TStringField;
    SqldsempresaUF: TStringField;
    CdsEmpresaCODEMPRESA: TIntegerField;
    CdsEmpresaNOME: TStringField;
    CdsEmpresaTELEFONE: TStringField;
    CdsEmpresaENDERECO: TStringField;
    CdsEmpresaNUMERO: TStringField;
    CdsEmpresaBAIRRO: TStringField;
    CdsEmpresaCIDADE: TStringField;
    CdsEmpresaCEP: TStringField;
    CdsEmpresaEMAIL: TStringField;
    CdsEmpresaCNPJ: TStringField;
    CdsEmpresaINSCRICAO: TStringField;
    CdsEmpresaUF: TStringField;
    SqldsgrupoCDGRUPOITEM: TIntegerField;
    SqldsgrupoNOME: TStringField;
    CdsgrupoCDGRUPOITEM: TIntegerField;
    CdsgrupoNOME: TStringField;
    CdspesqitemCDITEM: TIntegerField;
    CdspesqitemDESCITEM: TStringField;
    CdspesqitemDESCGRUPO: TStringField;
    SqldsFormapagtoNOME: TStringField;
    CdsFormapagtoCDFORMAPAGTO: TIntegerField;
    CdsFormapagtoNOME: TStringField;
    SqldsFormapagtoorc: TSQLDataSet;
    DspFormapagtoorc: TDataSetProvider;
    CdsFormapagtoorc: TClientDataSet;
    SqldsFormapagtoorcCDFORMAPAGTO: TIntegerField;
    SqldsFormapagtoorcNOME: TStringField;
    SqldsFormapagtoorcTARIFABANCARIA: TBCDField;
    SqldsFormapagtoorcTAC: TBCDField;
    CdsFormapagtoorcCDFORMAPAGTO: TIntegerField;
    CdsFormapagtoorcNOME: TStringField;
    CdsFormapagtoorcTARIFABANCARIA: TBCDField;
    CdsFormapagtoorcTAC: TBCDField;
    SqldsCliente: TSQLDataSet;
    DspCliente: TDataSetProvider;
    CdsCliente: TClientDataSet;
    SqldsClienteNOME: TStringField;
    SqldsClienteENDERECO: TStringField;
    SqldsClienteBAIRRO: TStringField;
    SqldsClienteCIDADE: TStringField;
    SqldsClienteUF: TStringField;
    SqldsClienteTELEFONE: TStringField;
    SqldsClienteCIC_CNPJ: TStringField;
    SqldsClienteINSCESTADUAL: TStringField;
    SqldsClienteDATANASC: TDateField;
    SqldsClienteDATAINCLUSAO: TDateField;
    SqldsClienteBLOQUEADO: TStringField;
    SqldsClienteFLAGCARTA: TStringField;
    SqldsClienteTELEFONE2: TStringField;
    SqldsClienteCELULAR: TStringField;
    SqldsClienteIDENTIDADE: TStringField;
    SqldsClienteNACIONALIDADE: TStringField;
    SqldsClientePROFISSAO: TStringField;
    SqldsClienteESTCIVIL: TStringField;
    SqldsClienteTRABALHO: TStringField;
    SqldsClienteENDTRABALHO: TStringField;
    SqldsClienteTELEFONETRAB: TStringField;
    SqldsClienteCEP: TStringField;
    SqldsClienteEMAIL: TStringField;
    CdsDependente: TClientDataSet;
    SqldsDependente: TSQLDataSet;
    RelSqldscliente: TDataSource;
    SqldsMovtoItemmes: TSQLDataSet;
    DspMovtoItemmes: TDataSetProvider;
    CdsMovtoItemmes: TClientDataSet;
    SqldsMovtodet: TSQLDataSet;
    CdsMovtodet: TClientDataSet;
    RelSqldsMovtoitemmes: TDataSource;
    SqldsMovtoItemmesCODIGO: TIntegerField;
    SqldsMovtoItemmesDATA: TDateField;
    CdsMovtoItemmesCODIGO: TIntegerField;
    CdsMovtoItemmesDATA: TDateField;
    SqldsMovtodetCODIGO: TIntegerField;
    SqldsMovtodetSEQ: TIntegerField;
    SqldsMovtodetCODITEM: TIntegerField;
    SqldsMovtodetQTDE: TFMTBCDField;
    SqldsMovtodetPUNIT: TFMTBCDField;
    SqldsMovtodetVALORTOTAL: TFMTBCDField;
    CdsMovtodetCODIGO: TIntegerField;
    CdsMovtodetSEQ: TIntegerField;
    CdsMovtodetCODITEM: TIntegerField;
    CdsMovtodetQTDE: TFMTBCDField;
    CdsMovtodetPUNIT: TFMTBCDField;
    CdsMovtodetVALORTOTAL: TFMTBCDField;
    Sqldsparentesco: TSQLDataSet;
    Dspparentesco: TDataSetProvider;
    Cdsparentesco: TClientDataSet;
    CdsparentescoCODPARENTESCO: TIntegerField;
    CdsparentescoNOME: TStringField;
    Sqldspesqmovtoitem: TSQLDataSet;
    Dsppesqmovtoitem: TDataSetProvider;
    Cdspesqmovtoitem: TClientDataSet;
    CdspesqmovtoitemCODIGO: TIntegerField;
    CdspesqmovtoitemDATA: TDateField;
    CdsMovtodetdescitem: TStringField;
    SqldsSP_GEN_CODMOVTOITEM: TSQLDataSet;
    SqldsSP_GEN_MOVTOITEMDETSEQ: TSQLDataSet;
    CdsMovtoItemmesSqldsMovtodet: TDataSetField;
    SqldsClienteCODIGO: TIntegerField;
    CdsClienteCODIGO: TIntegerField;
    CdsClienteNOME: TStringField;
    CdsClienteENDERECO: TStringField;
    CdsClienteBAIRRO: TStringField;
    CdsClienteCIDADE: TStringField;
    CdsClienteUF: TStringField;
    CdsClienteTELEFONE: TStringField;
    CdsClienteCIC_CNPJ: TStringField;
    CdsClienteINSCESTADUAL: TStringField;
    CdsClienteDATANASC: TDateField;
    CdsClienteDATAINCLUSAO: TDateField;
    CdsClienteBLOQUEADO: TStringField;
    CdsClienteFLAGCARTA: TStringField;
    CdsClienteTELEFONE2: TStringField;
    CdsClienteCELULAR: TStringField;
    CdsClienteIDENTIDADE: TStringField;
    CdsClienteNACIONALIDADE: TStringField;
    CdsClientePROFISSAO: TStringField;
    CdsClienteESTCIVIL: TStringField;
    CdsClienteTRABALHO: TStringField;
    CdsClienteENDTRABALHO: TStringField;
    CdsClienteTELEFONETRAB: TStringField;
    CdsClienteCEP: TStringField;
    CdsClienteEMAIL: TStringField;
    SqldsDependenteCODIGO: TIntegerField;
    SqldsDependenteSEQ: TIntegerField;
    SqldsDependenteNOME: TStringField;
    SqldsDependenteCODPARENTESCO: TIntegerField;
    CdsClienteSqldsDependente: TDataSetField;
    CdsDependenteCODIGO: TIntegerField;
    CdsDependenteSEQ: TIntegerField;
    CdsDependenteNOME: TStringField;
    CdsDependenteCODPARENTESCO: TIntegerField;
    SqldsSP_GEN_CLIENTE: TSQLDataSet;
    SqldsSP_GEN_DEPENDENTESEQ: TSQLDataSet;
    CdsDependentedescparentesco: TStringField;
    Sqldspesqcliente: TSQLDataSet;
    Dsppesqcliente: TDataSetProvider;
    Cdspesqcliente: TClientDataSet;
    CdspesqclienteCODIGO: TIntegerField;
    CdspesqclienteNOME: TStringField;
    SqldsNFvendames: TSQLDataSet;
    DspNFvendames: TDataSetProvider;
    CdsNFvendames: TClientDataSet;
    SqldsNFvendadet: TSQLDataSet;
    CdsNFvendadet: TClientDataSet;
    RelSqlNFvendames: TDataSource;
    SqldsNFvendadetCODIGO: TIntegerField;
    SqldsNFvendadetSEQ: TIntegerField;
    SqldsNFvendadetCODITEM: TIntegerField;
    SqldsNFvendadetQUANT: TFMTBCDField;
    SqldsNFvendadetPUNITARIO: TFMTBCDField;
    SqldsNFvendadetVLTOTALITEM: TFMTBCDField;
    SqldsNFvendadetDATAVENCTO: TDateField;
    SqldsNFvendadetDATAPAGTO: TDateField;
    SqldsNFvendadetJUROSOUDESC: TFMTBCDField;
    SqldsNFvendadetNUMRECIBO: TIntegerField;
    SqldsNFvendadetFLAGPAGTO: TStringField;
    SqldsNFvendadetGEROUDUPLICATA: TStringField;
    SqldsNFvendadetTIPOPAGTO: TStringField;
    SqldsNFvendadetRECEBIDOPOR: TStringField;
    SqldsNFvendadetFLAGCARTACOBRANCA: TStringField;
    CdsNFvendadetCODIGO: TIntegerField;
    CdsNFvendadetSEQ: TIntegerField;
    CdsNFvendadetCODITEM: TIntegerField;
    CdsNFvendadetQUANT: TFMTBCDField;
    CdsNFvendadetPUNITARIO: TFMTBCDField;
    CdsNFvendadetVLTOTALITEM: TFMTBCDField;
    CdsNFvendadetDATAVENCTO: TDateField;
    CdsNFvendadetDATAPAGTO: TDateField;
    CdsNFvendadetJUROSOUDESC: TFMTBCDField;
    CdsNFvendadetNUMRECIBO: TIntegerField;
    CdsNFvendadetFLAGPAGTO: TStringField;
    CdsNFvendadetGEROUDUPLICATA: TStringField;
    CdsNFvendadetTIPOPAGTO: TStringField;
    CdsNFvendadetRECEBIDOPOR: TStringField;
    CdsNFvendadetFLAGCARTACOBRANCA: TStringField;
    CdsNFvendadetdescitem: TStringField;
    SqldsSP_GEN_NFVENDA: TSQLDataSet;
    SqldsSP_GEN_NFVENDADETSEQ: TSQLDataSet;
    SqldsCondPagtoCODIGO: TIntegerField;
    SqldsCondPagtoNOME: TStringField;
    SqldsCondPagtoNUMPARCELAS: TIntegerField;
    SqldsCondPagtoFATOR: TFMTBCDField;
    CdsCondPagtoCODIGO: TIntegerField;
    CdsCondPagtoNOME: TStringField;
    CdsCondPagtoNUMPARCELAS: TIntegerField;
    CdsCondPagtoFATOR: TFMTBCDField;
    SqldsVendedor: TSQLDataSet;
    DspVendedor: TDataSetProvider;
    CdsVendedor: TClientDataSet;
    SqldsVendedorCODVENDEDOR: TIntegerField;
    SqldsVendedorNOME: TStringField;
    SqldsVendedorENDERECO: TStringField;
    SqldsVendedorBAIRRO: TStringField;
    SqldsVendedorCIDADE: TStringField;
    SqldsVendedorUF: TStringField;
    SqldsVendedorCEP: TStringField;
    SqldsVendedorTELEFONE: TStringField;
    SqldsVendedorPERCCOMISSAO: TFMTBCDField;
    CdsVendedorCODVENDEDOR: TIntegerField;
    CdsVendedorNOME: TStringField;
    CdsVendedorENDERECO: TStringField;
    CdsVendedorBAIRRO: TStringField;
    CdsVendedorCIDADE: TStringField;
    CdsVendedorUF: TStringField;
    CdsVendedorCEP: TStringField;
    CdsVendedorTELEFONE: TStringField;
    CdsVendedorPERCCOMISSAO: TFMTBCDField;
    Sqldspesqvend: TSQLDataSet;
    Dsppesqvend: TDataSetProvider;
    Cdspesqvend: TClientDataSet;
    CdspesqvendCODVENDEDOR: TIntegerField;
    CdspesqvendNOME: TStringField;
    Sqldstipopagto: TSQLDataSet;
    Dsptipopagto: TDataSetProvider;
    Cdstipopagto: TClientDataSet;
    SqldstipopagtoID: TStringField;
    SqldstipopagtoNOME: TStringField;
    CdstipopagtoID: TStringField;
    CdstipopagtoNOME: TStringField;
    SqldsDependenteCODIGOSEQ: TIntegerField;
    CdsDependenteCODIGOSEQ: TIntegerField;
    Sqldspesqdepend: TSQLDataSet;
    Dsppesqdepend: TDataSetProvider;
    Cdspesqdepend: TClientDataSet;
    CdspesqdependCODIGO: TIntegerField;
    CdspesqdependSEQ: TIntegerField;
    CdspesqdependNOME: TStringField;
    CdspesqdependCODPARENTESCO: TIntegerField;
    CdspesqdependCODIGOSEQ: TIntegerField;
    SqldsNFvendamesCODIGO: TIntegerField;
    SqldsNFvendamesCODCLIENTE: TIntegerField;
    SqldsNFvendamesDEPENDENTE: TIntegerField;
    SqldsNFvendamesSERIE: TStringField;
    SqldsNFvendamesDATAEMISSAO: TDateField;
    SqldsNFvendamesCODVENDEDOR: TIntegerField;
    SqldsNFvendamesVALORTOTALNFISCAL: TFMTBCDField;
    SqldsNFvendamesVALORDESCONTO: TFMTBCDField;
    SqldsNFvendamesVALORENTRADA: TFMTBCDField;
    SqldsNFvendamesCODCONDPAGTO: TIntegerField;
    SqldsNFvendamesTIPOPAGTO: TStringField;
    SqldsNFvendamesPERCDESCAVISTA: TFMTBCDField;
    SqldsNFvendamesVALORNFISCALDESCONTO: TFMTBCDField;
    SqldsNFvendamesCODFORMAPAGTO: TIntegerField;
    SqldsNFvendamesSITUACAO: TStringField;
    SqldsNFvendamesOBS: TBlobField;
    CdsNFvendamesCODIGO: TIntegerField;
    CdsNFvendamesCODCLIENTE: TIntegerField;
    CdsNFvendamesDEPENDENTE: TIntegerField;
    CdsNFvendamesSERIE: TStringField;
    CdsNFvendamesDATAEMISSAO: TDateField;
    CdsNFvendamesCODVENDEDOR: TIntegerField;
    CdsNFvendamesVALORTOTALNFISCAL: TFMTBCDField;
    CdsNFvendamesVALORDESCONTO: TFMTBCDField;
    CdsNFvendamesVALORENTRADA: TFMTBCDField;
    CdsNFvendamesCODCONDPAGTO: TIntegerField;
    CdsNFvendamesTIPOPAGTO: TStringField;
    CdsNFvendamesPERCDESCAVISTA: TFMTBCDField;
    CdsNFvendamesVALORNFISCALDESCONTO: TFMTBCDField;
    CdsNFvendamesCODFORMAPAGTO: TIntegerField;
    CdsNFvendamesSITUACAO: TStringField;
    CdsNFvendamesOBS: TBlobField;
    CdsNFvendamesSqldsNFvendadet: TDataSetField;
    CdsNFvendamesnomecli: TStringField;
    CdsNFvendamesnomedepend: TStringField;
    CdsNFvendamesnomevend: TStringField;
    CdsNFvendamesdesccondpagto: TStringField;
    CdsNFvendamesdesctppagto: TStringField;
    CdsNFvendamesdescformapagto: TStringField;
    CdsNFvendadettotalnf: TAggregateField;
    Sqldspesqnfvendames: TSQLDataSet;
    Dsppesqnfvendames: TDataSetProvider;
    Cdspesqnfvendames: TClientDataSet;
    CdspesqnfvendamesCODIGO: TIntegerField;
    CdspesqnfvendamesNOME: TStringField;
    CdspesqnfvendamesDATAEMISSAO: TDateField;
    CdspesqnfvendamesVALORTOTALNFISCAL: TFMTBCDField;
    SqldsNFvendamesGEROUDUP: TStringField;
    CdsNFvendamesGEROUDUP: TStringField;
    CdspesqitemPRECOVENDA: TFMTBCDField;
    CdsNFvendadetpunit: TFMTBCDField;
    CdsNFvendadettotaldesconto: TAggregateField;
    SqldsNFvendamesVALORTOTALNFISCALSEMENTRADA: TFMTBCDField;
    CdsNFvendamesVALORTOTALNFISCALSEMENTRADA: TFMTBCDField;
    Sqldsduprec: TSQLDataSet;
    Dspduprec: TDataSetProvider;
    Cdsduprec: TClientDataSet;
    SqldsduprecCODIGO: TIntegerField;
    SqldsduprecNUMPRESTACAO: TIntegerField;
    SqldsduprecNUMPARCIAL: TIntegerField;
    SqldsduprecVALORPRESTACAO: TFMTBCDField;
    SqldsduprecDATAVENCTO: TDateField;
    SqldsduprecDATABAIXA: TDateField;
    SqldsduprecJUROS: TFMTBCDField;
    SqldsduprecDESCONTOS: TFMTBCDField;
    SqldsduprecCODBANCO: TStringField;
    SqldsduprecNUMCHEQUE: TStringField;
    CdsduprecCODIGO: TIntegerField;
    CdsduprecNUMPRESTACAO: TIntegerField;
    CdsduprecNUMPARCIAL: TIntegerField;
    CdsduprecVALORPRESTACAO: TFMTBCDField;
    CdsduprecDATAVENCTO: TDateField;
    CdsduprecDATABAIXA: TDateField;
    CdsduprecJUROS: TFMTBCDField;
    CdsduprecDESCONTOS: TFMTBCDField;
    CdsduprecCODBANCO: TStringField;
    CdsduprecNUMCHEQUE: TStringField;
    Cdsduprecdifparcelas_e_totalnf: TFloatField;
    SqldsempresaJUROSMORAAODIA: TFMTBCDField;
    SqldsempresaDIASISENCAO: TIntegerField;
    CdsEmpresaJUROSMORAAODIA: TFMTBCDField;
    CdsEmpresaDIASISENCAO: TIntegerField;
    Sqlpesqnfentradames: TSQLDataSet;
    dsppesqnfentradames: TDataSetProvider;
    cdspesqnfentradames: TClientDataSet;
    cdspesqnfentradamesCODIGO: TIntegerField;
    cdspesqnfentradamesNOME: TStringField;
    cdspesqnfentradamesDATAEMISSAO: TDateField;
    cdspesqnfentradamesTOTALNFISCAL: TFMTBCDField;
    SqldsClienteTOTALPAGO: TFloatField;
    CdsClienteTOTALPAGO: TFloatField;
    Sqldsorcamentomes: TSQLDataSet;
    Dsporcamentomes: TDataSetProvider;
    Cdsorcamentomes: TClientDataSet;
    SqldsorcamentomesCODIGO: TIntegerField;
    SqldsorcamentomesDATAEMISSAO: TDateField;
    SqldsorcamentomesDATAVENCTO: TDateField;
    SqldsorcamentomesTOTALORCAMENTO: TFMTBCDField;
    SqldsorcamentomesDESCONTO: TFMTBCDField;
    SqldsorcamentomesCODCONDPAGTO: TIntegerField;
    SqldsorcamentomesCDFORMAPAGTO: TIntegerField;
    CdsorcamentomesCODIGO: TIntegerField;
    CdsorcamentomesDATAEMISSAO: TDateField;
    CdsorcamentomesDATAVENCTO: TDateField;
    CdsorcamentomesTOTALORCAMENTO: TFMTBCDField;
    CdsorcamentomesDESCONTO: TFMTBCDField;
    CdsorcamentomesCODCONDPAGTO: TIntegerField;
    CdsorcamentomesCDFORMAPAGTO: TIntegerField;
    SqldsorcamentomesTIPOPAGTO: TStringField;
    CdsorcamentomesTIPOPAGTO: TStringField;
    Cdsorcamentomesdesctipopagto: TStringField;
    Cdsorcamentodet: TClientDataSet;
    Sqldsorcamentodet: TSQLDataSet;
    RelSqldsorcamentomes: TDataSource;
    CdsorcamentodetCODIGO: TIntegerField;
    CdsorcamentodetSEQ: TIntegerField;
    CdsorcamentodetCODITEM: TIntegerField;
    CdsorcamentodetQUANT: TFMTBCDField;
    CdsorcamentodetVLUNITARIO: TFMTBCDField;
    CdsorcamentodetDATAVENCTO: TDateField;
    CdsorcamentodetJUROSOUDESC: TFMTBCDField;
    Cdsorcamentodetdescitem: TStringField;
    Cdsorcamentodetpunit: TFloatField;
    SqldsSP_GEN_ORCDETSEQ: TSQLDataSet;
    Cdsorcamentodettotalorcamento: TAggregateField;
    SqldsSP_GEN_ORCAMENTO: TSQLDataSet;
    Sqldspesqorcamento: TSQLDataSet;
    Dsppesqorcamento: TDataSetProvider;
    Cdspesqorcamento: TClientDataSet;
    CdspesqorcamentoCODIGO: TIntegerField;
    CdspesqorcamentoDATAEMISSAO: TDateField;
    CdspesqorcamentoDATAVENCTO: TDateField;
    CdspesqorcamentoTOTALORCAMENTO: TFMTBCDField;
    CdspesqorcamentoNOME: TStringField;
    SqldsorcamentodetCODIGO: TIntegerField;
    SqldsorcamentodetSEQ: TIntegerField;
    SqldsorcamentodetCODITEM: TIntegerField;
    SqldsorcamentodetQUANT: TFMTBCDField;
    SqldsorcamentodetVLUNITARIO: TFMTBCDField;
    SqldsorcamentodetVLTOTAL: TFMTBCDField;
    SqldsorcamentodetDATAVENCTO: TDateField;
    SqldsorcamentodetJUROSOUDESC: TFMTBCDField;
    CdsorcamentomesSqldsorcamentodet: TDataSetField;
    CdsorcamentodetVLTOTAL: TFMTBCDField;
    SqldsClienteNATURALIDADE: TStringField;
    CdsClienteNATURALIDADE: TStringField;
    SqldsItemCDITEM: TIntegerField;
    SqldsItemNOME: TStringField;
    SqldsItemCDGRUPOITEM: TIntegerField;
    SqldsItemESTMINIMO: TFMTBCDField;
    SqldsItemESTMAXIMO: TFMTBCDField;
    SqldsItemSALDOATUAL: TFMTBCDField;
    SqldsItemPRECOCUSTO: TFMTBCDField;
    SqldsItemPRECOVENDA: TFMTBCDField;
    SqldsItemPROMOCAO: TFMTBCDField;
    SqldsItemUNIDADE: TStringField;
    SqldsItemCUSTOMEDIO: TFMTBCDField;
    CdsItemCDITEM: TIntegerField;
    CdsItemNOME: TStringField;
    CdsItemCDGRUPOITEM: TIntegerField;
    CdsItemESTMINIMO: TFMTBCDField;
    CdsItemESTMAXIMO: TFMTBCDField;
    CdsItemSALDOATUAL: TFMTBCDField;
    CdsItemPRECOCUSTO: TFMTBCDField;
    CdsItemPRECOVENDA: TFMTBCDField;
    CdsItemPROMOCAO: TFMTBCDField;
    CdsItemUNIDADE: TStringField;
    CdsItemCUSTOMEDIO: TFMTBCDField;
    CdsItemdescgrupoitem: TStringField;
    Sqlquerycodmaxvmestrea: TSQLQuery;
    SqlquerycodmaxvmestreaCODMAXVMESTRE: TIntegerField;
    SqldsNFvendamesNOMECOMPRADOR: TStringField;
    SqldsNFvendamesTOTALDUPCALCULDA: TFMTBCDField;
    SqldsNFvendamesCODIGOFLEX30: TIntegerField;
    SqldsNFvendamesVALORJUROSDESC: TFMTBCDField;
    CdsNFvendamesNOMECOMPRADOR: TStringField;
    CdsNFvendamesTOTALDUPCALCULDA: TFMTBCDField;
    CdsNFvendamesCODIGOFLEX30: TIntegerField;
    CdsNFvendamesVALORJUROSDESC: TFMTBCDField;
    SqldsNFvendadetQUANTXPUNIT: TFMTBCDField;
    SqldsNFvendadetJASOMOUTOTCLI: TStringField;
    SqldsNFvendadetCODIGOFLEX30: TIntegerField;
    CdsNFvendadetQUANTXPUNIT: TFMTBCDField;
    CdsNFvendadetJASOMOUTOTCLI: TStringField;
    CdsNFvendadetCODIGOFLEX30: TIntegerField;
    CdsNFvendadettotquantxpunit: TAggregateField;
    CdspesqnfvendamesCODIGOFLEX30: TIntegerField;
    SqldsPesqclivsimplesemaberto: TSQLDataSet;
    DspPesqclivsimplesemaberto: TDataSetProvider;
    CdsPesqclivsimplesemaberto: TClientDataSet;
    CdsPesqclivsimplesemabertoCODIGO: TIntegerField;
    CdsPesqclivsimplesemabertoNOME: TStringField;
    SqldsPesqclivdupemaberto: TSQLDataSet;
    DspPesqclivdupemaberto: TDataSetProvider;
    CdsPesqclivdupemaberto: TClientDataSet;
    CdsPesqclivdupemabertoCODIGO: TIntegerField;
    CdsPesqclivdupemabertoNOME: TStringField;
    SqldsPesqclivdupgeral: TSQLDataSet;
    DspPesqclivdupgeral: TDataSetProvider;
    CdsPesqclivdupgeral: TClientDataSet;
    CdsPesqclivdupgeralCODIGO: TIntegerField;
    CdsPesqclivdupgeralNOME: TStringField;
    procedure CdsItemReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CdsMovtoItemmesAfterOpen(DataSet: TDataSet);
    procedure CdsMovtoItemmesNewRecord(DataSet: TDataSet);
    procedure CdsMovtodetNewRecord(DataSet: TDataSet);
    procedure CdsMovtodetBeforePost(DataSet: TDataSet);
    procedure DspMovtoItemmesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure CdsClienteAfterOpen(DataSet: TDataSet);
    procedure CdsClienteNewRecord(DataSet: TDataSet);
    procedure CdsDependenteBeforePost(DataSet: TDataSet);
    procedure CdsDependenteNewRecord(DataSet: TDataSet);
    procedure DspClienteBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure CdsNFvendamesAfterOpen(DataSet: TDataSet);
    procedure CdsNFvendamesNewRecord(DataSet: TDataSet);
    procedure CdsNFvendadetBeforePost(DataSet: TDataSet);
    procedure DspNFvendamesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure CdsNFvendadetNewRecord(DataSet: TDataSet);
    procedure CdsNFvendadettotalnfGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CdsNFvendamesBeforePost(DataSet: TDataSet);
    procedure DsporcamentomesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure CdsorcamentodetBeforePost(DataSet: TDataSet);
    procedure CdsorcamentomesAfterOpen(DataSet: TDataSet);
    procedure CdsorcamentomesNewRecord(DataSet: TDataSet);
    procedure CdsorcamentomesBeforePost(DataSet: TDataSet);
    procedure CdsorcamentodettotalorcamentoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CdsorcamentodetNewRecord(DataSet: TDataSet);
    procedure CdsparentescoBeforePost(DataSet: TDataSet);
    procedure CdsNFvendadettotaldescontoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CdsNFvendadettotquantxpunitGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    FIDPEdido : integer;
  public
    { Public declarations }
  end;

var
  DmModuleI: TDmModuleI;

implementation

uses UntMenuPrincipal;

{$R *.dfm}

procedure TDmModuleI.CdsItemReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ShowMessage(e.message);
end;

procedure TDmModuleI.CdsMovtoItemmesAfterOpen(DataSet: TDataSet);
begin
  FIDPEdido := 0;
end;

procedure TDmModuleI.CdsMovtoItemmesNewRecord(DataSet: TDataSet);
begin
  Dec(FIDPEdido);
  DataSet.FieldByName('CODIGO').AsInteger := FIDPEdido;
end;

procedure TDmModuleI.CdsMovtodetNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CODIGO').AsInteger :=CdsMovtoitemmes.FieldByName('CODIGO').AsInteger;
end;

procedure TDmModuleI.CdsMovtodetBeforePost(DataSet: TDataSet);
begin
  if DmModuleI.CdsMovtodetCODIGO.Value = 0 then
  begin
    ShowMessage('Atenção!! Código do Movimento não pode ficar em branco!!!');
    abort;
  end;
  DmModuleI.SqldsSP_GEN_MOVTOITEMDETSEQ.Close;
  DmModuleI.SqldsSP_GEN_MOVTOITEMDETSEQ.Params[0].AsInteger := 1;
  DmModuleI.SqldsSP_GEN_MOVTOITEMDETSEQ.ExecSQL;
  DmModuleI.CdsMovtodetSEQ.Value :=
            DmModuleI.SqldsSP_GEN_MOVTOITEMDETSEQ.Params[1].AsInteger;

  DmModuleI.CdsMovtodetVALORTOTAL.AsFloat :=
     (DmModuleI.CdsMovtodetQTDE.AsFloat *
          DmModuleI.CdsMovtodetPUNIT.AsFloat);
end;

procedure TDmModuleI.DspMovtoItemmesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if (SourceDS = SqldsMovtoitemmes)
     and (DeltaDS.FieldByName('CODIGO').NewValue < 0)
     and (UpdateKind =   ukInsert) then
  begin
    SqldsSP_GEN_CODMOVTOITEM.Close;
    SqldsSP_GEN_CODMOVTOITEM.Params[0].AsInteger := 1;
    SqldsSP_GEN_CODMOVTOITEM.ExecSQL;
//    DeltaDS.FieldByName('CODNOTAFISCAL').NewValue :=
//    SqldsSP_GEN_CODNOTAFISCAL.Params[1].AsInteger;
//    DeltaDS.FieldByName('CODUSUARIO').NewValue := FrmMenuPrincipal.codusuario;
  end;
 if DeltaDS.FindField('CODIGO') <> nil then
 begin
   if (DeltaDS.FieldByName('CODIGO').NewValue < 0) then
   begin
     DeltaDS.FieldByName('CODIGO').NewValue := SqldsSP_GEN_CODMOVTOITEM.Params[1].AsInteger;
   end;
 end;

end;

procedure TDmModuleI.CdsClienteAfterOpen(DataSet: TDataSet);
begin
  FIDPEdido := 0;
end;

procedure TDmModuleI.CdsClienteNewRecord(DataSet: TDataSet);
begin
  Dec(FIDPEdido);
  DataSet.FieldByName('CODIGO').AsInteger := FIDPEdido;
end;

procedure TDmModuleI.CdsDependenteBeforePost(DataSet: TDataSet);
begin
  if DmModuleI.CdsDependenteCODIGO.Value = 0 then
  begin
    ShowMessage('Atenção!! Código do parentesco não pode ficar em branco!!!');
    abort;
  end;
  //nao é necessario usar o DmModuleI.SqldsSP_GEN_DEPENDENTESEQ
{  if DmModuleI.CdsDependenteCODIGO.Value < 0 then
  begin
    DmModuleI.SqldsSP_GEN_DEPENDENTESEQ.Close;
    DmModuleI.SqldsSP_GEN_DEPENDENTESEQ.Params[0].AsInteger := 1;
    DmModuleI.SqldsSP_GEN_DEPENDENTESEQ.ExecSQL;
    DmModuleI.CdsDependenteSEQ.Value :=
            DmModuleI.SqldsSP_GEN_DEPENDENTESEQ.Params[1].AsInteger;
//    codigostr := inttostr(CdsDependenteCODIGO.Value);
//    seqstr := inttostr(DmModuleI.SqldsSP_GEN_DEPENDENTESEQ.Params[1].AsInteger);
//    DmModuleI.CdsDependenteCODIGOSEQ.Value :=
  end;  }
end;

procedure TDmModuleI.CdsDependenteNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CODIGO').AsInteger :=CdsDependente.FieldByName('CODIGO').AsInteger;
end;

procedure TDmModuleI.DspClienteBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if (SourceDS = SqldsCliente)
     and (DeltaDS.FieldByName('CODIGO').NewValue < 0)
     and (UpdateKind =   ukInsert) then
  begin
    SqldsSP_GEN_CLIENTE.Close;
    SqldsSP_GEN_CLIENTE.Params[0].AsInteger := 1;
    SqldsSP_GEN_CLIENTE.ExecSQL;
//    DeltaDS.FieldByName('CODNOTAFISCAL').NewValue :=
//    SqldsSP_GEN_CODNOTAFISCAL.Params[1].AsInteger;
//    DeltaDS.FieldByName('CODUSUARIO').NewValue := FrmMenuPrincipal.codusuario;
  end;
 if DeltaDS.FindField('CODIGO') <> nil then
 begin
   if (DeltaDS.FieldByName('CODIGO').NewValue < 0) then
   begin
     DeltaDS.FieldByName('CODIGO').NewValue := SqldsSP_GEN_CLIENTE.Params[1].AsInteger;
   end;
 end;
end;

procedure TDmModuleI.CdsNFvendamesAfterOpen(DataSet: TDataSet);
begin
  FIDPEdido := 0;
end;

procedure TDmModuleI.CdsNFvendamesNewRecord(DataSet: TDataSet);
begin
  Dec(FIDPEdido);
  DataSet.FieldByName('CODIGO').AsInteger := FIDPEdido;
end;

procedure TDmModuleI.CdsNFvendadetBeforePost(DataSet: TDataSet);
begin
  if DmModuleI.CdsNFvendadetCODIGO.Value = 0 then
  begin
    ShowMessage('Atenção!! Código do Movimento não pode ficar em branco!!!');
    abort;
  end;
  DmModuleI.SqldsSP_GEN_NFVENDADETSEQ.Close;
  DmModuleI.SqldsSP_GEN_NFVENDADETSEQ.Params[0].AsInteger := 1;
  DmModuleI.SqldsSP_GEN_NFVENDADETSEQ.ExecSQL;
  DmModuleI.CdsNFvendadetSEQ.Value :=
            DmModuleI.SqldsSP_GEN_NFVENDADETSEQ.Params[1].AsInteger;
  //venda a vista grava datavencto = dataemissao e
  //datapagto = dataemissao
  if ((DmModuleI.CdsNFvendamesCODCLIENTE.Value = 1000) or
      (DmModuleI.CdsNFvendamesTIPOPAGTO.Value = 'A')) then
  begin
    DmModuleI.CdsNFvendadetDATAVENCTO.Value :=
            DmModuleI.CdsNFvendamesDATAEMISSAO.value;
    DmModuleI.CdsNFvendadetDATAPAGTO.Value :=
            DmModuleI.CdsNFvendamesDATAEMISSAO.value;
  End
  else begin
//    DmModuleI.CdsNFvendadetDATAVENCTO.Value := 'null';
//    DmModuleI.CdsNFvendadetDATAPAGTO.value  := 'null';
  end;


  DmModuleI.CdsNFvendadetPUNITARIO.AsFloat :=
      DmModuleI.CdsNFvendadetpunit.AsFloat;
  //atenção usei + no desconto pois o valor já esta vindo negativo ***    
  DmModuleI.CdsNFvendadetVLTOTALITEM.AsFloat :=
     ((DmModuleI.CdsNFvendadetQUANT.AsFloat *
        DmModuleI.CdsNFvendadetPUNITARIO.AsFloat) +
          DmModuleI.CdsNFvendadetJUROSOUDESC.AsFloat);

  DmModuleI.CdsNFvendadetVLTOTALITEM.AsFloat :=
     ((DmModuleI.CdsNFvendadetQUANT.AsFloat *
        DmModuleI.CdsNFvendadetPUNITARIO.AsFloat) +
          DmModuleI.CdsNFvendadetJUROSOUDESC.AsFloat);
end;

procedure TDmModuleI.DspNFvendamesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if (SourceDS = SqldsNFvendames)
     and (DeltaDS.FieldByName('CODIGO').NewValue < 0)
     and (UpdateKind =   ukInsert) then
  begin
    SqldsSP_GEN_NFVENDA.Close;
    SqldsSP_GEN_NFVENDA.Params[0].AsInteger := 1;
    SqldsSP_GEN_NFVENDA.ExecSQL;
//    DeltaDS.FieldByName('CODNOTAFISCAL').NewValue :=
//    SqldsSP_GEN_CODNOTAFISCAL.Params[1].AsInteger;
//    DeltaDS.FieldByName('CODUSUARIO').NewValue := FrmMenuPrincipal.codusuario;
  end;
 if DeltaDS.FindField('CODIGO') <> nil then
 begin
   if (DeltaDS.FieldByName('CODIGO').NewValue < 0) then
   begin
     DeltaDS.FieldByName('CODIGO').NewValue := SqldsSP_GEN_NFVENDA.Params[1].AsInteger;
   end;
 end;
end;

procedure TDmModuleI.CdsNFvendadetNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CODIGO').AsInteger :=CdsNFvendames.FieldByName('CODIGO').AsInteger;
end;

procedure TDmModuleI.CdsNFvendadettotalnfGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  //Outras mascaras podem ser usadas
  if DmModuleI.CdsNFvendadettotalnf.value >= 0 then
  begin
    Text := FormatFloat('0.00', Sender.Value);
  end;
end;

procedure TDmModuleI.CdsNFvendamesBeforePost(DataSet: TDataSet);
begin
//  if DmModuleI.CdsNFvendadettotalnf.AsBCD is not null then
//  begin
  DmModuleI.CdsNFvendamesVALORTOTALNFISCAL.AsFloat :=
      StrToFloatDef(DmModuleI.CdsNFvendadettotalnf.AsString,0);
//  DmModuleI.CdsNFvendamesVALORNFISCALDESCONTO.AsFloat :=
//      StrToFloatDef(DmModuleI.CdsNFvendadettotaldesconto.AsString,0);
  DmModuleI.CdsNFvendamesVALORJUROSDESC.AsFloat :=
     StrToFloatDef(DmModuleI.CdsNFvendadettotaldesconto.AsString,0);
//  DmModuleI.CdsNFvendamesVALORDESCONTO.AsFloat :=
//     StrToFloatDef(DmModuleI.CdsNFvendadettotaldesconto.AsString,0);
  DmModuleI.CdsNFvendamesVALORTOTALNFISCALSEMENTRADA.AsFloat :=
     (DmModuleI.CdsNFvendamesVALORTOTALNFISCAL.AsFloat -
      DmModuleI.CdsNFvendamesVALORENTRADA.AsFloat);
  if FrmMenuPrincipal.idprocessamento = 'Vendaduplicata' then
  begin
    DmModuleI.CdsNFvendamesGEROUDUP.Value := 'S';
  end;
//  end;
end;

procedure TDmModuleI.DsporcamentomesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if (SourceDS = Sqldsorcamentomes)
     and (DeltaDS.FieldByName('CODIGO').NewValue < 0)
     and (UpdateKind =   ukInsert) then
  begin
    SqldsSP_GEN_ORCAMENTO.Close;
    SqldsSP_GEN_ORCAMENTO.Params[0].AsInteger := 1;
    SqldsSP_GEN_ORCAMENTO.ExecSQL;
//    DeltaDS.FieldByName('CODNOTAFISCAL').NewValue :=
//    SqldsSP_GEN_CODNOTAFISCAL.Params[1].AsInteger;
//    DeltaDS.FieldByName('CODUSUARIO').NewValue := FrmMenuPrincipal.codusuario;
  end;
 if DeltaDS.FindField('CODIGO') <> nil then
 begin
   if (DeltaDS.FieldByName('CODIGO').NewValue < 0) then
   begin
     DeltaDS.FieldByName('CODIGO').NewValue := SqldsSP_GEN_ORCAMENTO.Params[1].AsInteger;
   end;
 end;
end;

procedure TDmModuleI.CdsorcamentodetBeforePost(DataSet: TDataSet);
begin
  if DmModuleI.CdsorcamentomesCODIGO.Value = 0 then
  begin
    ShowMessage('Atenção!! Código do Movimento não pode ficar em branco!!!');
    abort;
  end;
  DmModuleI.SqldsSP_GEN_ORCDETSEQ.Close;
  DmModuleI.SqldsSP_GEN_ORCDETSEQ.Params[0].AsInteger := 1;
  DmModuleI.SqldsSP_GEN_ORCDETSEQ.ExecSQL;
  DmModuleI.CdsorcamentodetSEQ.Value :=
            DmModuleI.SqldsSP_GEN_ORCDETSEQ.Params[1].AsInteger;

  DmModuleI.CdsorcamentodetVLUNITARIO.AsFloat :=
      DmModuleI.Cdsorcamentodetpunit.AsFloat;

  DmModuleI.CdsorcamentodetVLTOTAL.AsFloat :=
     ((DmModuleI.CdsorcamentodetQUANT.AsFloat *
        DmModuleI.Cdsorcamentodetpunit.AsFloat));
end;

procedure TDmModuleI.CdsorcamentomesAfterOpen(DataSet: TDataSet);
begin
  FIDPEdido := 0;
end;

procedure TDmModuleI.CdsorcamentomesNewRecord(DataSet: TDataSet);
begin
  Dec(FIDPEdido);
  DataSet.FieldByName('CODIGO').AsInteger := FIDPEdido;
end;

procedure TDmModuleI.CdsorcamentomesBeforePost(DataSet: TDataSet);
begin
  DmModuleI.CdsorcamentomesTOTALORCAMENTO.AsFloat :=
      StrToFloatDef(DmModuleI.Cdsorcamentodettotalorcamento.AsString,0);
end;

procedure TDmModuleI.CdsorcamentodettotalorcamentoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  //Outras mascaras podem ser usadas
  if DmModuleI.Cdsorcamentodettotalorcamento.value >= 0 then
  begin
    Text := FormatFloat('0.00', Sender.Value);
  end;
end;

procedure TDmModuleI.CdsorcamentodetNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CODIGO').AsInteger :=Cdsorcamentomes.FieldByName('CODIGO').AsInteger;
end;

procedure TDmModuleI.CdsparentescoBeforePost(DataSet: TDataSet);
begin
  DmModuleI.CdsDependente.Post;
  DmModuleI.CdsDependente.ApplyUpdates(0);
end;

procedure TDmModuleI.CdsNFvendadettotaldescontoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  //Outras mascaras podem ser usadas
  if DmModuleI.CdsNFvendadettotaldesconto.value >= 0 then
  begin
    Text := FormatFloat('0.00', Sender.Value);
  end;
end;

procedure TDmModuleI.CdsNFvendadettotquantxpunitGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  //Outras mascaras podem ser usadas
  if DmModuleI.CdsNFvendadettotalnf.value >= 0 then
  begin
    Text := FormatFloat('0.00', Sender.Value);
  end;
end;

end.
