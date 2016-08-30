object DmModuleI: TDmModuleI
  OldCreateOrder = False
  Left = 65532
  Top = 65532
  Height = 736
  Width = 1032
  object Sqldsempresa: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from EMPRESA e where e.codempresa = 1;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 40
    Top = 4
    object SqldsempresaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsempresaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsempresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqldsempresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsempresaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqldsempresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 31
    end
    object SqldsempresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqldsempresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SqldsempresaEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsempresaCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object SqldsempresaINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqldsempresaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqldsempresaJUROSMORAAODIA: TFMTBCDField
      FieldName = 'JUROSMORAAODIA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsempresaDIASISENCAO: TIntegerField
      FieldName = 'DIASISENCAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspEmpresa: TDataSetProvider
    DataSet = Sqldsempresa
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 4
  end
  object CdsEmpresa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEmpresa'
    Left = 232
    Top = 4
    object CdsEmpresaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 31
    end
    object CdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object CdsEmpresaINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsEmpresaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEmpresaJUROSMORAAODIA: TFMTBCDField
      DisplayLabel = 'Juros Mora ao Dia'
      FieldName = 'JUROSMORAAODIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsEmpresaDIASISENCAO: TIntegerField
      DisplayLabel = 'Dias Isen'#231#227'o'
      FieldName = 'DIASISENCAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object Sqldsgrupo: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from GRUPOITEM order by NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 40
    Top = 52
    object SqldsgrupoCDGRUPOITEM: TIntegerField
      FieldName = 'CDGRUPOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsgrupoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object Cdsgrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspgrupo'
    Left = 232
    Top = 52
    object CdsgrupoCDGRUPOITEM: TIntegerField
      FieldName = 'CDGRUPOITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CdsgrupoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object Dspgrupo: TDataSetProvider
    DataSet = Sqldsgrupo
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 52
  end
  object SqldsFormapagto: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from FORMAPAGTO order by nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 40
    Top = 104
    object SqldsFormapagtoCDFORMAPAGTO: TIntegerField
      FieldName = 'CDFORMAPAGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsFormapagtoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object DspFormapagto: TDataSetProvider
    DataSet = SqldsFormapagto
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 104
  end
  object CdsFormapagto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFormapagto'
    Left = 232
    Top = 104
    object CdsFormapagtoCDFORMAPAGTO: TIntegerField
      FieldName = 'CDFORMAPAGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsFormapagtoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object SqldsItem: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from ITEM where cditem = :cditem '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cditem'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 40
    Top = 205
    object SqldsItemCDITEM: TIntegerField
      FieldName = 'CDITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsItemNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object SqldsItemCDGRUPOITEM: TIntegerField
      FieldName = 'CDGRUPOITEM'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsItemESTMINIMO: TFMTBCDField
      FieldName = 'ESTMINIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsItemESTMAXIMO: TFMTBCDField
      FieldName = 'ESTMAXIMO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsItemSALDOATUAL: TFMTBCDField
      FieldName = 'SALDOATUAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object SqldsItemPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object SqldsItemPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object SqldsItemPROMOCAO: TFMTBCDField
      FieldName = 'PROMOCAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object SqldsItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqldsItemCUSTOMEDIO: TFMTBCDField
      FieldName = 'CUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object DspItem: TDataSetProvider
    DataSet = SqldsItem
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 205
  end
  object CdsItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cditem'
        ParamType = ptInput
      end>
    ProviderName = 'DspItem'
    OnReconcileError = CdsItemReconcileError
    Left = 232
    Top = 205
    object CdsItemCDITEM: TIntegerField
      FieldName = 'CDITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsItemNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object CdsItemCDGRUPOITEM: TIntegerField
      FieldName = 'CDGRUPOITEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemESTMINIMO: TFMTBCDField
      FieldName = 'ESTMINIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemESTMAXIMO: TFMTBCDField
      FieldName = 'ESTMAXIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemSALDOATUAL: TFMTBCDField
      FieldName = 'SALDOATUAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.0000'
      Precision = 15
      Size = 8
    end
    object CdsItemPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.0000'
      Precision = 15
      Size = 8
    end
    object CdsItemPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.0000'
      Precision = 15
      Size = 8
    end
    object CdsItemPROMOCAO: TFMTBCDField
      FieldName = 'PROMOCAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.0000'
      Precision = 15
      Size = 8
    end
    object CdsItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsItemCUSTOMEDIO: TFMTBCDField
      FieldName = 'CUSTOMEDIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemdescgrupoitem: TStringField
      FieldKind = fkLookup
      FieldName = 'descgrupoitem'
      LookupDataSet = Cdsgrupo
      LookupKeyFields = 'CDGRUPOITEM'
      LookupResultField = 'NOME'
      KeyFields = 'CDGRUPOITEM'
      Size = 50
      Lookup = True
    end
  end
  object Sqldspesqitem: TSQLDataSet
    GetMetadata = False
    Active = True
    CommandText = 
      'select i.cditem'#13#10',i.nome as descitem'#13#10',gi.nome as descgrupo,i.pr' +
      'ecovenda'#13#10'from ITEM i'#13#10'inner join grupoitem gi on i.cdgrupoitem ' +
      '= gi.cdgrupoitem'#13#10'order by i.nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 40
    Top = 257
  end
  object Dsppesqitem: TDataSetProvider
    DataSet = Sqldspesqitem
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 136
    Top = 257
  end
  object Cdspesqitem: TClientDataSet
    Active = True
    Aggregates = <>
    PacketRecords = 1000
    Params = <>
    ProviderName = 'Dsppesqitem'
    Left = 232
    Top = 257
    object CdspesqitemCDITEM: TIntegerField
      FieldName = 'CDITEM'
      Required = True
    end
    object CdspesqitemDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Required = True
      Size = 50
    end
    object CdspesqitemDESCGRUPO: TStringField
      FieldName = 'DESCGRUPO'
      Size = 50
    end
    object CdspesqitemPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 15
      Size = 2
    end
  end
  object SqldsCondPagto: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select cp.* from CONDICAOPAGTO cp '#13#10'where cp.codigo > 0'#13#10'order b' +
      'y cp.codigo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 40
    Top = 310
    object SqldsCondPagtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsCondPagtoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsCondPagtoNUMPARCELAS: TIntegerField
      FieldName = 'NUMPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsCondPagtoFATOR: TFMTBCDField
      FieldName = 'FATOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 6
    end
  end
  object DspCondPagto: TDataSetProvider
    DataSet = SqldsCondPagto
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 310
  end
  object CdsCondPagto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCondPagto'
    Left = 232
    Top = 310
    object CdsCondPagtoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsCondPagtoNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsCondPagtoNUMPARCELAS: TIntegerField
      DisplayLabel = 'N'#186' Parc.'
      FieldName = 'NUMPARCELAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsCondPagtoFATOR: TFMTBCDField
      DisplayLabel = 'Fator'
      FieldName = 'FATOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.000000'
      Precision = 15
      Size = 6
    end
  end
  object SqldsFormapagtoorc: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from FORMAPAGTOORCAMENTO order by nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 40
    Top = 154
    object SqldsFormapagtoorcCDFORMAPAGTO: TIntegerField
      FieldName = 'CDFORMAPAGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsFormapagtoorcNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object SqldsFormapagtoorcTARIFABANCARIA: TBCDField
      FieldName = 'TARIFABANCARIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 9
      Size = 2
    end
    object SqldsFormapagtoorcTAC: TBCDField
      FieldName = 'TAC'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 9
      Size = 2
    end
  end
  object DspFormapagtoorc: TDataSetProvider
    DataSet = SqldsFormapagtoorc
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 154
  end
  object CdsFormapagtoorc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFormapagtoorc'
    Left = 232
    Top = 154
    object CdsFormapagtoorcCDFORMAPAGTO: TIntegerField
      FieldName = 'CDFORMAPAGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsFormapagtoorcNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object CdsFormapagtoorcTARIFABANCARIA: TBCDField
      FieldName = 'TARIFABANCARIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 9
      Size = 2
    end
    object CdsFormapagtoorcTAC: TBCDField
      FieldName = 'TAC'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 9
      Size = 2
    end
  end
  object SqldsCliente: TSQLDataSet
    GetMetadata = False
    CommandText = 'select c.* from CLIENTE c where c.codigo = :codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 323
    Top = 4
    object SqldsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsClienteNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqldsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqldsClienteUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqldsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqldsClienteCIC_CNPJ: TStringField
      FieldName = 'CIC_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object SqldsClienteINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object SqldsClienteDATANASC: TDateField
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsClienteDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsClienteBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqldsClienteFLAGCARTA: TStringField
      FieldName = 'FLAGCARTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqldsClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqldsClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqldsClienteIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsClienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsClienteESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqldsClienteTRABALHO: TStringField
      FieldName = 'TRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsClienteENDTRABALHO: TStringField
      FieldName = 'ENDTRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsClienteTELEFONETRAB: TStringField
      FieldName = 'TELEFONETRAB'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqldsClienteCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqldsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsClienteTOTALPAGO: TFloatField
      FieldName = 'TOTALPAGO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspCliente: TDataSetProvider
    DataSet = SqldsCliente
    Options = [poCascadeDeletes, poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DspClienteBeforeUpdateRecord
    Left = 423
    Top = 4
  end
  object CdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DspCliente'
    AfterOpen = CdsClienteAfterOpen
    OnNewRecord = CdsClienteNewRecord
    Left = 512
    Top = 4
    object CdsClienteCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsClienteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsClienteENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsClienteBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsClienteCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsClienteUF: TStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsClienteTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteCIC_CNPJ: TStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CIC_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsClienteINSCESTADUAL: TStringField
      DisplayLabel = 'Ins.Estadual'
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsClienteDATANASC: TDateField
      DisplayLabel = 'Nascimento'
      FieldName = 'DATANASC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClienteDATAINCLUSAO: TDateField
      DisplayLabel = 'Dt.Inclus'#227'o'
      FieldName = 'DATAINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClienteBLOQUEADO: TStringField
      DisplayLabel = 'Venda Bloqueada?'
      FieldName = 'BLOQUEADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsClienteFLAGCARTA: TStringField
      FieldName = 'FLAGCARTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsClienteTELEFONE2: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteIDENTIDADE: TStringField
      DisplayLabel = 'Identidade'
      FieldName = 'IDENTIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClienteNACIONALIDADE: TStringField
      DisplayLabel = 'Nacionalidade'
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClienteNATURALIDADE: TStringField
      DisplayLabel = 'Natural'
      FieldName = 'NATURALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClientePROFISSAO: TStringField
      DisplayLabel = 'Profiss'#227'o'
      FieldName = 'PROFISSAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsClienteESTCIVIL: TStringField
      DisplayLabel = 'Est.Civil'
      FieldName = 'ESTCIVIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteTRABALHO: TStringField
      DisplayLabel = 'Local Trabalho'
      FieldName = 'TRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsClienteENDTRABALHO: TStringField
      DisplayLabel = 'End. Trabalho'
      FieldName = 'ENDTRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsClienteTELEFONETRAB: TStringField
      DisplayLabel = 'Tel.Trabalho'
      FieldName = 'TELEFONETRAB'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsClienteEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsClienteTOTALPAGO: TFloatField
      FieldName = 'TOTALPAGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsClienteSqldsDependente: TDataSetField
      FieldName = 'SqldsDependente'
    end
  end
  object CdsDependente: TClientDataSet
    Aggregates = <>
    DataSetField = CdsClienteSqldsDependente
    Params = <>
    BeforePost = CdsDependenteBeforePost
    OnNewRecord = CdsDependenteNewRecord
    Left = 423
    Top = 66
    object CdsDependenteCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsDependenteSEQ: TIntegerField
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsDependenteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsDependenteCODPARENTESCO: TIntegerField
      DisplayLabel = 'Cod.Parent.'
      FieldName = 'CODPARENTESCO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsDependenteCODIGOSEQ: TIntegerField
      FieldName = 'CODIGOSEQ'
    end
    object CdsDependentedescparentesco: TStringField
      DisplayLabel = 'Parentesco'
      FieldKind = fkLookup
      FieldName = 'descparentesco'
      LookupDataSet = Cdsparentesco
      LookupKeyFields = 'CODPARENTESCO'
      LookupResultField = 'NOME'
      KeyFields = 'CODPARENTESCO'
      Size = 30
      Lookup = True
    end
  end
  object SqldsDependente: TSQLDataSet
    GetMetadata = False
    CommandText = 'select d.* from DEPENDENTES d where d.codigo = :codigo'
    DataSource = RelSqldscliente
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 323
    Top = 66
    object SqldsDependenteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsDependenteSEQ: TIntegerField
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsDependenteNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsDependenteCODPARENTESCO: TIntegerField
      FieldName = 'CODPARENTESCO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsDependenteCODIGOSEQ: TIntegerField
      FieldName = 'CODIGOSEQ'
    end
  end
  object RelSqldscliente: TDataSource
    DataSet = SqldsCliente
    Left = 512
    Top = 66
  end
  object SqldsMovtoItemmes: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from MOVTOITEMMES mim where mim.CODIGO = :codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 40
    Top = 361
    object SqldsMovtoItemmesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsMovtoItemmesDATA: TDateField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DspMovtoItemmes: TDataSetProvider
    DataSet = SqldsMovtoItemmes
    Options = [poCascadeDeletes, poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DspMovtoItemmesBeforeUpdateRecord
    Left = 134
    Top = 361
  end
  object CdsMovtoItemmes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DspMovtoItemmes'
    AfterOpen = CdsMovtoItemmesAfterOpen
    OnNewRecord = CdsMovtoItemmesNewRecord
    Left = 232
    Top = 361
    object CdsMovtoItemmesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsMovtoItemmesDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/0000;1;_'
    end
    object CdsMovtoItemmesSqldsMovtodet: TDataSetField
      FieldName = 'SqldsMovtodet'
    end
  end
  object SqldsMovtodet: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from MOVTOITEMDET mid where mid.CODIGO = :codigo'
    DataSource = RelSqldsMovtoitemmes
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 40
    Top = 410
    object SqldsMovtodetCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsMovtodetSEQ: TIntegerField
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsMovtodetCODITEM: TIntegerField
      FieldName = 'CODITEM'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsMovtodetQTDE: TFMTBCDField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsMovtodetPUNIT: TFMTBCDField
      FieldName = 'PUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 8
    end
    object SqldsMovtodetVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object CdsMovtodet: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = CdsMovtodetBeforePost
    OnNewRecord = CdsMovtodetNewRecord
    Left = 134
    Top = 410
    object CdsMovtodetCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsMovtodetSEQ: TIntegerField
      DisplayLabel = 'Seq'
      DisplayWidth = 4
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsMovtodetCODITEM: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODITEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMovtodetdescitem: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 65
      FieldKind = fkLookup
      FieldName = 'descitem'
      LookupDataSet = Cdspesqitem
      LookupKeyFields = 'CDITEM'
      LookupResultField = 'DESCITEM'
      KeyFields = 'CODITEM'
      Size = 50
      Lookup = True
    end
    object CdsMovtodetQTDE: TFMTBCDField
      DisplayLabel = 'Quant.'
      DisplayWidth = 7
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsMovtodetPUNIT: TFMTBCDField
      DisplayLabel = 'P.Unit'#225'rio'
      DisplayWidth = 11
      FieldName = 'PUNIT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.0000'
      Precision = 15
      Size = 8
    end
    object CdsMovtodetVALORTOTAL: TFMTBCDField
      DisplayLabel = 'V.Total'
      DisplayWidth = 11
      FieldName = 'VALORTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object RelSqldsMovtoitemmes: TDataSource
    DataSet = SqldsMovtoItemmes
    Left = 236
    Top = 410
  end
  object Sqldsparentesco: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from PARENTESCO order by CODPARENTESCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 323
    Top = 128
  end
  object Dspparentesco: TDataSetProvider
    DataSet = Sqldsparentesco
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 423
    Top = 128
  end
  object Cdsparentesco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspparentesco'
    BeforePost = CdsparentescoBeforePost
    Left = 512
    Top = 128
    object CdsparentescoCODPARENTESCO: TIntegerField
      FieldName = 'CODPARENTESCO'
      Required = True
    end
    object CdsparentescoNOME: TStringField
      FieldName = 'NOME'
      Size = 25
    end
  end
  object Sqldspesqmovtoitem: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from MOVTOITEMMES mim order by mim.codigo desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 36
    Top = 464
  end
  object Dsppesqmovtoitem: TDataSetProvider
    DataSet = Sqldspesqmovtoitem
    Left = 134
    Top = 464
  end
  object Cdspesqmovtoitem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsppesqmovtoitem'
    Left = 232
    Top = 464
    object CdspesqmovtoitemCODIGO: TIntegerField
      DisplayLabel = 'CODIGO    '
      FieldName = 'CODIGO'
      Required = True
    end
    object CdspesqmovtoitemDATA: TDateField
      DisplayLabel = 'Data Movto  '
      FieldName = 'DATA'
    end
  end
  object SqldsSP_GEN_CODMOVTOITEM: TSQLDataSet
    GetMetadata = False
    CommandText = 'SP_GEN_CODMOVTOITEM'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'INCREMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NEWID'
        ParamType = ptOutput
        Size = 4
        Value = Null
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 72
    Top = 512
  end
  object SqldsSP_GEN_MOVTOITEMDETSEQ: TSQLDataSet
    GetMetadata = False
    CommandText = 'SP_GEN_MOVTOITEMDETSEQ'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'INCREMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NEWID'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 256
    Top = 512
  end
  object SqldsSP_GEN_CLIENTE: TSQLDataSet
    GetMetadata = False
    CommandText = 'SP_GEN_CODIGOCLIENTE'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'INCREMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NEWID'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 638
    Top = 8
  end
  object SqldsSP_GEN_DEPENDENTESEQ: TSQLDataSet
    GetMetadata = False
    CommandText = 'SP_GEN_DEPENDENTESEQ'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'INCREMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NEWID'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 638
    Top = 64
  end
  object Sqldspesqcliente: TSQLDataSet
    GetMetadata = False
    CommandText = 'select c.codigo,c.nome'#13#10'from CLIENTE c'#13#10'order by c.nome'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 323
    Top = 184
  end
  object Dsppesqcliente: TDataSetProvider
    DataSet = Sqldspesqcliente
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 423
    Top = 184
  end
  object Cdspesqcliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsppesqcliente'
    Left = 512
    Top = 184
    object CdspesqclienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CdspesqclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object SqldsNFvendames: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from NOTAFISCALVENDAMES nfvm where nfvm.CODIGO = :codig' +
      'o'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 320
    Top = 237
    object SqldsNFvendamesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsNFvendamesCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendamesDEPENDENTE: TIntegerField
      FieldName = 'DEPENDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendamesSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqldsNFvendamesDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendamesCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendamesVALORTOTALNFISCAL: TFMTBCDField
      FieldName = 'VALORTOTALNFISCAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendamesVALORDESCONTO: TFMTBCDField
      FieldName = 'VALORDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendamesVALORENTRADA: TFMTBCDField
      FieldName = 'VALORENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendamesCODCONDPAGTO: TIntegerField
      FieldName = 'CODCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendamesTIPOPAGTO: TStringField
      FieldName = 'TIPOPAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqldsNFvendamesPERCDESCAVISTA: TFMTBCDField
      FieldName = 'PERCDESCAVISTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendamesVALORNFISCALDESCONTO: TFMTBCDField
      FieldName = 'VALORNFISCALDESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendamesCODFORMAPAGTO: TIntegerField
      FieldName = 'CODFORMAPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendamesSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqldsNFvendamesOBS: TBlobField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqldsNFvendamesGEROUDUP: TStringField
      FieldName = 'GEROUDUP'
      FixedChar = True
      Size = 1
    end
    object SqldsNFvendamesVALORTOTALNFISCALSEMENTRADA: TFMTBCDField
      FieldName = 'VALORTOTALNFISCALSEMENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendamesNOMECOMPRADOR: TStringField
      FieldName = 'NOMECOMPRADOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsNFvendamesTOTALDUPCALCULDA: TFMTBCDField
      FieldName = 'TOTALDUPCALCULDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendamesCODIGOFLEX30: TIntegerField
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendamesVALORJUROSDESC: TFMTBCDField
      FieldName = 'VALORJUROSDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object DspNFvendames: TDataSetProvider
    DataSet = SqldsNFvendames
    Options = [poCascadeDeletes, poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DspNFvendamesBeforeUpdateRecord
    Left = 423
    Top = 237
  end
  object CdsNFvendames: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DspNFvendames'
    AfterOpen = CdsNFvendamesAfterOpen
    BeforePost = CdsNFvendamesBeforePost
    OnNewRecord = CdsNFvendamesNewRecord
    Left = 512
    Top = 237
    object CdsNFvendamesCODIGO: TIntegerField
      DisplayLabel = 'N'#186' Venda'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsNFvendamesCODCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendamesDEPENDENTE: TIntegerField
      DisplayLabel = 'Dependente'
      FieldName = 'DEPENDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendamesSERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsNFvendamesDATAEMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DATAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendamesCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendamesVALORTOTALNFISCAL: TFMTBCDField
      DisplayLabel = 'Vl.Total'
      FieldName = 'VALORTOTALNFISCAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsNFvendamesVALORDESCONTO: TFMTBCDField
      FieldName = 'VALORDESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsNFvendamesVALORENTRADA: TFMTBCDField
      DisplayLabel = 'Vl Entrada'
      FieldName = 'VALORENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsNFvendamesCODCONDPAGTO: TIntegerField
      FieldName = 'CODCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendamesTIPOPAGTO: TStringField
      FieldName = 'TIPOPAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsNFvendamesPERCDESCAVISTA: TFMTBCDField
      DisplayLabel = '% Desc.'
      FieldName = 'PERCDESCAVISTA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsNFvendamesVALORNFISCALDESCONTO: TFMTBCDField
      DisplayLabel = 'Vl. Desconto'
      FieldName = 'VALORNFISCALDESCONTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsNFvendamesCODFORMAPAGTO: TIntegerField
      FieldName = 'CODFORMAPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendamesSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsNFvendamesOBS: TBlobField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNFvendamesGEROUDUP: TStringField
      FieldName = 'GEROUDUP'
      FixedChar = True
      Size = 1
    end
    object CdsNFvendamesVALORTOTALNFISCALSEMENTRADA: TFMTBCDField
      FieldName = 'VALORTOTALNFISCALSEMENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsNFvendamesSqldsNFvendadet: TDataSetField
      FieldName = 'SqldsNFvendadet'
    end
    object CdsNFvendamesnomecli: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldKind = fkLookup
      FieldName = 'nomecli'
      LookupDataSet = Cdspesqcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object CdsNFvendamesnomedepend: TStringField
      FieldKind = fkLookup
      FieldName = 'nomedepend'
      LookupDataSet = Cdspesqdepend
      LookupKeyFields = 'CODIGOSEQ'
      LookupResultField = 'NOME'
      KeyFields = 'DEPENDENTE'
      Size = 50
      Lookup = True
    end
    object CdsNFvendamesnomevend: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'nomevend'
      LookupDataSet = Cdspesqvend
      LookupKeyFields = 'CODVENDEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 30
      Lookup = True
    end
    object CdsNFvendamesdesccondpagto: TStringField
      DisplayLabel = 'Cond.Pagto'
      FieldKind = fkLookup
      FieldName = 'desccondpagto'
      LookupDataSet = CdsCondPagto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCONDPAGTO'
      Size = 30
      Lookup = True
    end
    object CdsNFvendamesdesctppagto: TStringField
      DisplayLabel = 'Tipo Pagto'
      FieldKind = fkLookup
      FieldName = 'desctppagto'
      LookupDataSet = Cdstipopagto
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'TIPOPAGTO'
      Size = 15
      Lookup = True
    end
    object CdsNFvendamesdescformapagto: TStringField
      DisplayLabel = 'Forma Pagto'
      FieldKind = fkLookup
      FieldName = 'descformapagto'
      LookupDataSet = CdsFormapagto
      LookupKeyFields = 'CDFORMAPAGTO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORMAPAGTO'
      Size = 30
      Lookup = True
    end
    object CdsNFvendamesNOMECOMPRADOR: TStringField
      FieldName = 'NOMECOMPRADOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsNFvendamesTOTALDUPCALCULDA: TFMTBCDField
      FieldName = 'TOTALDUPCALCULDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsNFvendamesCODIGOFLEX30: TIntegerField
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendamesVALORJUROSDESC: TFMTBCDField
      FieldName = 'VALORJUROSDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object SqldsNFvendadet: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select * from NOTAFISCALVENDADET nfvd where nfvd.CODIGO = :codig' +
      'o'
    DataSource = RelSqlNFvendames
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 323
    Top = 287
    object SqldsNFvendadetCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsNFvendadetSEQ: TIntegerField
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsNFvendadetCODITEM: TIntegerField
      FieldName = 'CODITEM'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendadetQUANT: TFMTBCDField
      FieldName = 'QUANT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendadetPUNITARIO: TFMTBCDField
      FieldName = 'PUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendadetQUANTXPUNIT: TFMTBCDField
      FieldName = 'QUANTXPUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendadetVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendadetDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendadetDATAPAGTO: TDateField
      FieldName = 'DATAPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendadetJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsNFvendadetNUMRECIBO: TIntegerField
      FieldName = 'NUMRECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsNFvendadetFLAGPAGTO: TStringField
      FieldName = 'FLAGPAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqldsNFvendadetGEROUDUPLICATA: TStringField
      FieldName = 'GEROUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqldsNFvendadetTIPOPAGTO: TStringField
      FieldName = 'TIPOPAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqldsNFvendadetRECEBIDOPOR: TStringField
      FieldName = 'RECEBIDOPOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsNFvendadetFLAGCARTACOBRANCA: TStringField
      FieldName = 'FLAGCARTACOBRANCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqldsNFvendadetJASOMOUTOTCLI: TStringField
      FieldName = 'JASOMOUTOTCLI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqldsNFvendadetCODIGOFLEX30: TIntegerField
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = [pfInUpdate]
    end
  end
  object CdsNFvendadet: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    DataSetField = CdsNFvendamesSqldsNFvendadet
    Params = <>
    BeforePost = CdsNFvendadetBeforePost
    OnNewRecord = CdsNFvendadetNewRecord
    Left = 423
    Top = 287
    object CdsNFvendadetCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsNFvendadetSEQ: TIntegerField
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsNFvendadetCODITEM: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODITEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendadetQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsNFvendadetPUNITARIO: TFMTBCDField
      DisplayLabel = 'P.Unit'#225'rio'
      FieldName = 'PUNITARIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsNFvendadetVLTOTALITEM: TFMTBCDField
      DisplayLabel = 'Total Item'
      FieldName = 'VLTOTALITEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsNFvendadetDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendadetDATAPAGTO: TDateField
      FieldName = 'DATAPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendadetJUROSOUDESC: TFMTBCDField
      DisplayLabel = 'Juros/Desc.'
      FieldName = 'JUROSOUDESC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsNFvendadetNUMRECIBO: TIntegerField
      FieldName = 'NUMRECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendadetFLAGPAGTO: TStringField
      FieldName = 'FLAGPAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsNFvendadetGEROUDUPLICATA: TStringField
      FieldName = 'GEROUDUPLICATA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsNFvendadetTIPOPAGTO: TStringField
      FieldName = 'TIPOPAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsNFvendadetRECEBIDOPOR: TStringField
      FieldName = 'RECEBIDOPOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsNFvendadetFLAGCARTACOBRANCA: TStringField
      FieldName = 'FLAGCARTACOBRANCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsNFvendadetdescitem: TStringField
      DisplayLabel = 'Descri'#231#227'o Item'
      FieldKind = fkLookup
      FieldName = 'descitem'
      LookupDataSet = Cdspesqitem
      LookupKeyFields = 'CDITEM'
      LookupResultField = 'DESCITEM'
      KeyFields = 'CODITEM'
      Size = 50
      Lookup = True
    end
    object CdsNFvendadetpunit: TFMTBCDField
      DisplayLabel = 'P.Unit'#225'rio'
      FieldKind = fkLookup
      FieldName = 'punit'
      LookupDataSet = Cdspesqitem
      LookupKeyFields = 'CDITEM'
      LookupResultField = 'PRECOVENDA'
      KeyFields = 'CODITEM'
      DisplayFormat = '0.00'
      Size = 0
      Lookup = True
    end
    object CdsNFvendadetQUANTXPUNIT: TFMTBCDField
      DisplayLabel = 'QuantXPunit'
      FieldName = 'QUANTXPUNIT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsNFvendadetJASOMOUTOTCLI: TStringField
      FieldName = 'JASOMOUTOTCLI'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsNFvendadetCODIGOFLEX30: TIntegerField
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNFvendadettotalnf: TAggregateField
      Alignment = taRightJustify
      DisplayLabel = 'Tot.Nota'
      FieldName = 'totalnf'
      OnGetText = CdsNFvendadettotalnfGetText
      Active = True
      DisplayFormat = '0.00'
      Expression = 'sum(vltotalitem)'
    end
    object CdsNFvendadettotaldesconto: TAggregateField
      Alignment = taRightJustify
      DisplayLabel = 'Tot.Juros/Desc.'
      FieldName = 'totaldesconto'
      OnGetText = CdsNFvendadettotaldescontoGetText
      Active = True
      DisplayFormat = '0.00'
      Expression = 'sum(jurosoudesc)'
    end
    object CdsNFvendadettotquantxpunit: TAggregateField
      Alignment = taRightJustify
      DisplayLabel = 'Tot.QuantxPunit'
      FieldName = 'totquantxpunit'
      OnGetText = CdsNFvendadettotquantxpunitGetText
      Active = True
      Expression = 'sum(quantxpunit)'
    end
  end
  object RelSqlNFvendames: TDataSource
    DataSet = SqldsNFvendames
    Left = 512
    Top = 287
  end
  object SqldsSP_GEN_NFVENDA: TSQLDataSet
    GetMetadata = False
    CommandText = 'SP_GEN_NFVENDA'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'INCREMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NEWID'
        ParamType = ptOutput
        Size = 4
        Value = Null
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 649
    Top = 309
  end
  object SqldsSP_GEN_NFVENDADETSEQ: TSQLDataSet
    GetMetadata = False
    CommandText = 'SP_GEN_NFVENDADETSEQ'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'INCREMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NEWID'
        ParamType = ptOutput
        Size = 4
        Value = Null
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 657
    Top = 359
  end
  object SqldsVendedor: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from VENDEDOR v where v.CODVENDEDOR = :codvendedor'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codvendedor'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 323
    Top = 336
    object SqldsVendedorCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsVendedorNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsVendedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqldsVendedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqldsVendedorCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqldsVendedorUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqldsVendedorCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqldsVendedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SqldsVendedorPERCCOMISSAO: TFMTBCDField
      FieldName = 'PERCCOMISSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object DspVendedor: TDataSetProvider
    DataSet = SqldsVendedor
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 423
    Top = 336
  end
  object CdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codvendedor'
        ParamType = ptInput
      end>
    ProviderName = 'DspVendedor'
    Left = 512
    Top = 336
    object CdsVendedorCODVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsVendedorNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsVendedorENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsVendedorBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsVendedorCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsVendedorUF: TStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsVendedorCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsVendedorTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsVendedorPERCCOMISSAO: TFMTBCDField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'PERCCOMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object Sqldspesqvend: TSQLDataSet
    GetMetadata = False
    CommandText = 'select CODVENDEDOR, NOME from VENDEDOR v order by v.nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 323
    Top = 386
  end
  object Dsppesqvend: TDataSetProvider
    DataSet = Sqldspesqvend
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 423
    Top = 386
  end
  object Cdspesqvend: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsppesqvend'
    Left = 512
    Top = 386
    object CdspesqvendCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      Required = True
    end
    object CdspesqvendNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object Sqldstipopagto: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from TIPOPAGTO tp order by tp.nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 323
    Top = 435
    object SqldstipopagtoID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object SqldstipopagtoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object Dsptipopagto: TDataSetProvider
    DataSet = Sqldstipopagto
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 423
    Top = 435
  end
  object Cdstipopagto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsptipopagto'
    Left = 512
    Top = 435
    object CdstipopagtoID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object CdstipopagtoNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object Sqldspesqdepend: TSQLDataSet
    GetMetadata = False
    CommandText = 'select d.* from dependentes d where d.codigo = :codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 320
    Top = 488
  end
  object Dsppesqdepend: TDataSetProvider
    DataSet = Sqldspesqdepend
    Options = [poNoReset, poAllowCommandText]
    Left = 424
    Top = 488
  end
  object Cdspesqdepend: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'Dsppesqdepend'
    Left = 520
    Top = 488
    object CdspesqdependCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CdspesqdependSEQ: TIntegerField
      FieldName = 'SEQ'
      Required = True
    end
    object CdspesqdependNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdspesqdependCODPARENTESCO: TIntegerField
      FieldName = 'CODPARENTESCO'
    end
    object CdspesqdependCODIGOSEQ: TIntegerField
      FieldName = 'CODIGOSEQ'
    end
  end
  object Sqldspesqnfvendames: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select nfvm.codigo,c.nome,nfvm.dataemissao,nfvm.valortotalnfisca' +
      'l'#13#10',nfvm.codigoflex30,nfvm.geroudup'#13#10'from notafiscalvendames nfv' +
      'm'#13#10'inner join cliente c on nfvm.codcliente = c.codigo'#13#10'where ((n' +
      'fvm.dataemissao between :dataini and :datafin)'#13#10'and (nfvm.geroud' +
      'up = :geroudup))'#13#10'order by nfvm.dataemissao desc,nfvm.codigoflex' +
      '30 desc,nfvm.codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dataini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'datafin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'geroudup'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 600
    Top = 416
  end
  object Dsppesqnfvendames: TDataSetProvider
    DataSet = Sqldspesqnfvendames
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 712
    Top = 416
  end
  object Cdspesqnfvendames: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dataini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'datafin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'geroudup'
        ParamType = ptInput
      end>
    ProviderName = 'Dsppesqnfvendames'
    Left = 824
    Top = 416
    object CdspesqnfvendamesCODIGO: TIntegerField
      DisplayLabel = 'N'#186' Venda'
      FieldName = 'CODIGO'
      Required = True
    end
    object CdspesqnfvendamesNOME: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME'
      Size = 50
    end
    object CdspesqnfvendamesDATAEMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = '  Emiss'#227'o        '
      FieldName = 'DATAEMISSAO'
    end
    object CdspesqnfvendamesVALORTOTALNFISCAL: TFMTBCDField
      DisplayLabel = 'Vl.Total Nf'
      FieldName = 'VALORTOTALNFISCAL'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdspesqnfvendamesCODIGOFLEX30: TIntegerField
      FieldName = 'CODIGOFLEX30'
    end
  end
  object Sqldsduprec: TSQLDataSet
    GetMetadata = False
    CommandText = 'select dr.* from  DUPLICATASRECEBER dr where dr.codigo = :codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 600
    Top = 128
    object SqldsduprecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsduprecNUMPRESTACAO: TIntegerField
      FieldName = 'NUMPRESTACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsduprecNUMPARCIAL: TIntegerField
      FieldName = 'NUMPARCIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqldsduprecVALORPRESTACAO: TFMTBCDField
      FieldName = 'VALORPRESTACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsduprecDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsduprecDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsduprecJUROS: TFMTBCDField
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsduprecDESCONTOS: TFMTBCDField
      FieldName = 'DESCONTOS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsduprecCODBANCO: TStringField
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object SqldsduprecNUMCHEQUE: TStringField
      FieldName = 'NUMCHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object Dspduprec: TDataSetProvider
    DataSet = Sqldsduprec
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 671
    Top = 128
  end
  object Cdsduprec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'Dspduprec'
    Left = 737
    Top = 128
    object CdsduprecCODIGO: TIntegerField
      DisplayLabel = 'N'#186' Venda'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsduprecNUMPRESTACAO: TIntegerField
      DisplayLabel = 'Prest.'
      FieldName = 'NUMPRESTACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsduprecNUMPARCIAL: TIntegerField
      DisplayLabel = 'N'#186' Parcial'
      FieldName = 'NUMPARCIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsduprecVALORPRESTACAO: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALORPRESTACAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsduprecDATAVENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsduprecDATABAIXA: TDateField
      DisplayLabel = 'Pagamento'
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsduprecJUROS: TFMTBCDField
      DisplayLabel = 'Vl.Juros'
      FieldName = 'JUROS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsduprecDESCONTOS: TFMTBCDField
      DisplayLabel = 'Vl.Desconto'
      FieldName = 'DESCONTOS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsduprecCODBANCO: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'CODBANCO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsduprecNUMCHEQUE: TStringField
      DisplayLabel = 'N'#186' Cheque'
      FieldName = 'NUMCHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object Cdsduprecdifparcelas_e_totalnf: TFloatField
      FieldKind = fkCalculated
      FieldName = 'difparcelas_e_totalnf'
      Calculated = True
    end
  end
  object Sqlpesqnfentradames: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select nfem.codigo,f.nome,nfem.dataemissao,nfem.totalnfiscal'#13#10'fr' +
      'om notafiscalentmes nfem'#13#10'inner join fornecedor f on nfem.codfor' +
      'n = f.codforn'#13#10'order by nfem.codigo desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 600
    Top = 464
  end
  object dsppesqnfentradames: TDataSetProvider
    DataSet = Sqlpesqnfentradames
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 712
    Top = 464
  end
  object cdspesqnfentradames: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsppesqnfentradames'
    Left = 824
    Top = 464
    object cdspesqnfentradamesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object cdspesqnfentradamesNOME: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME'
      Size = 50
    end
    object cdspesqnfentradamesDATAEMISSAO: TDateField
      Alignment = taRightJustify
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DATAEMISSAO'
    end
    object cdspesqnfentradamesTOTALNFISCAL: TFMTBCDField
      DisplayLabel = 'Total '
      FieldName = 'TOTALNFISCAL'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object Sqldsorcamentomes: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from ORCAMENTOMES orcm where orcm.codigo = :codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 608
    Top = 512
    object SqldsorcamentomesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsorcamentomesDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsorcamentomesDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsorcamentomesTOTALORCAMENTO: TFMTBCDField
      FieldName = 'TOTALORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsorcamentomesDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsorcamentomesCODCONDPAGTO: TIntegerField
      FieldName = 'CODCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsorcamentomesCDFORMAPAGTO: TIntegerField
      FieldName = 'CDFORMAPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsorcamentomesTIPOPAGTO: TStringField
      FieldName = 'TIPOPAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object Dsporcamentomes: TDataSetProvider
    DataSet = Sqldsorcamentomes
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DsporcamentomesBeforeUpdateRecord
    Left = 712
    Top = 512
  end
  object Cdsorcamentomes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'Dsporcamentomes'
    AfterOpen = CdsorcamentomesAfterOpen
    BeforePost = CdsorcamentomesBeforePost
    OnNewRecord = CdsorcamentomesNewRecord
    Left = 816
    Top = 512
    object CdsorcamentomesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsorcamentomesDATAEMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DATAEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsorcamentomesDATAVENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsorcamentomesTOTALORCAMENTO: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTALORCAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsorcamentomesDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsorcamentomesCODCONDPAGTO: TIntegerField
      FieldName = 'CODCONDPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsorcamentomesCDFORMAPAGTO: TIntegerField
      FieldName = 'CDFORMAPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsorcamentomesTIPOPAGTO: TStringField
      DisplayLabel = 'Tp Pagto'
      FieldName = 'TIPOPAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object Cdsorcamentomesdesctipopagto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'desctipopagto'
      LookupDataSet = Cdstipopagto
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'TIPOPAGTO'
      Size = 10
      Lookup = True
    end
    object CdsorcamentomesSqldsorcamentodet: TDataSetField
      FieldName = 'Sqldsorcamentodet'
    end
  end
  object Cdsorcamentodet: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = CdsorcamentomesSqldsorcamentodet
    Params = <>
    BeforePost = CdsorcamentodetBeforePost
    OnNewRecord = CdsorcamentodetNewRecord
    Left = 712
    Top = 560
    object CdsorcamentodetCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsorcamentodetSEQ: TIntegerField
      DisplayLabel = 'Seq'
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsorcamentodetCODITEM: TIntegerField
      DisplayLabel = 'C'#243'd.Item'
      FieldName = 'CODITEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsorcamentodetQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsorcamentodetVLUNITARIO: TFMTBCDField
      DisplayLabel = 'Vl.Unitario'
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsorcamentodetVLTOTAL: TFMTBCDField
      DisplayLabel = 'Vl.Total'
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsorcamentodetDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsorcamentodetJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Cdsorcamentodetdescitem: TStringField
      DisplayLabel = 'Descri'#231#227'o Item'
      FieldKind = fkLookup
      FieldName = 'descitem'
      LookupDataSet = Cdspesqitem
      LookupKeyFields = 'CDITEM'
      LookupResultField = 'DESCITEM'
      KeyFields = 'CODITEM'
      Size = 50
      Lookup = True
    end
    object Cdsorcamentodetpunit: TFloatField
      DisplayLabel = 'P.Unit'#225'rio'
      FieldKind = fkLookup
      FieldName = 'punit'
      LookupDataSet = Cdspesqitem
      LookupKeyFields = 'CDITEM'
      LookupResultField = 'PRECOVENDA'
      KeyFields = 'CODITEM'
      DisplayFormat = '0.00'
      Lookup = True
    end
    object Cdsorcamentodettotalorcamento: TAggregateField
      DefaultExpression = 'sum(vltotal)'
      DisplayLabel = 'Total Or'#231'amento'
      FieldName = 'totalorcamento'
      OnGetText = CdsorcamentodettotalorcamentoGetText
      Active = True
      DisplayFormat = '0.00'
    end
  end
  object Sqldsorcamentodet: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from ORCAMENTODET orcd where orcd.codigo = :codigo'
    DataSource = RelSqldsorcamentomes
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 608
    Top = 560
    object SqldsorcamentodetCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsorcamentodetSEQ: TIntegerField
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsorcamentodetCODITEM: TIntegerField
      FieldName = 'CODITEM'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsorcamentodetQUANT: TFMTBCDField
      FieldName = 'QUANT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsorcamentodetVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsorcamentodetVLTOTAL: TFMTBCDField
      FieldName = 'VLTOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsorcamentodetDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsorcamentodetJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object RelSqldsorcamentomes: TDataSource
    DataSet = Sqldsorcamentomes
    Left = 816
    Top = 560
  end
  object SqldsSP_GEN_ORCDETSEQ: TSQLDataSet
    GetMetadata = False
    CommandText = 'SP_GEN_ORCAMENTODETSEQ'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'INCREMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NEWID'
        ParamType = ptOutput
        Size = 4
        Value = Null
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 728
    Top = 608
  end
  object SqldsSP_GEN_ORCAMENTO: TSQLDataSet
    GetMetadata = False
    CommandText = 'SP_GEN_ORCAMENTO1'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'INCREMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NEWID'
        ParamType = ptOutput
        Size = 4
        Value = Null
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 569
    Top = 613
  end
  object Sqldspesqorcamento: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select orcm.codigo,orcm.dataemissao,orcm.datavencto,'#13#10'orcm.total' +
      'orcamento,tp.nome'#13#10'from ORCAMENTOMES orcm'#13#10'inner join TIPOPAGTO ' +
      'tp on orcm.tipopagto = tp.id'#13#10'order by orcm.codigo desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 256
    Top = 616
  end
  object Dsppesqorcamento: TDataSetProvider
    DataSet = Sqldspesqorcamento
    Left = 354
    Top = 616
  end
  object Cdspesqorcamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsppesqorcamento'
    Left = 448
    Top = 616
    object CdspesqorcamentoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object CdspesqorcamentoDATAEMISSAO: TDateField
      DisplayLabel = 'Dt Emiss'#227'o'
      DisplayWidth = 20
      FieldName = 'DATAEMISSAO'
    end
    object CdspesqorcamentoDATAVENCTO: TDateField
      DisplayLabel = 'Dt Vencto'
      DisplayWidth = 20
      FieldName = 'DATAVENCTO'
    end
    object CdspesqorcamentoTOTALORCAMENTO: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTALORCAMENTO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdspesqorcamentoNOME: TStringField
      DisplayLabel = 'Tipo Pagto'
      DisplayWidth = 20
      FieldName = 'NOME'
      Size = 10
    end
  end
  object Sqlquerycodmaxvmestrea: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select max(nfvm.codigo) as codmaxvmestre'
      'from notafiscalvendames nfvm')
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 784
    Top = 312
    object SqlquerycodmaxvmestreaCODMAXVMESTRE: TIntegerField
      FieldName = 'CODMAXVMESTRE'
    end
  end
  object SqldsPesqclivsimplesemaberto: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select distinct c.codigo,c.nome'#13#10'from notafiscalvendames nfvm'#13#10'i' +
      'nner join notafiscalvendadet nfvd on nfvd.codigo = nfvm.codigo'#13#10 +
      'inner join cliente c on nfvm.codcliente = c.codigo'#13#10'where ((nfvm' +
      '.geroudup <> :geroudup)'#13#10'and (nfvd.datapagto is null)'#13#10'and (nfvm' +
      '.codcliente <> 1000))'#13#10'order by 1'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'geroudup'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 624
    Top = 176
  end
  object DspPesqclivsimplesemaberto: TDataSetProvider
    DataSet = SqldsPesqclivsimplesemaberto
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 768
    Top = 176
  end
  object CdsPesqclivsimplesemaberto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'geroudup'
        ParamType = ptInput
      end>
    ProviderName = 'DspPesqclivsimplesemaberto'
    Left = 912
    Top = 176
    object CdsPesqclivsimplesemabertoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CdsPesqclivsimplesemabertoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object SqldsPesqclivdupemaberto: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select c.codigo,c.nome'#13#10'from CLIENTE c'#13#10'where c.codigo in'#13#10'(sele' +
      'ct distinct nfvm.codcliente'#13#10'from duplicatasreceber dr'#13#10'inner jo' +
      'in notafiscalvendames nfvm on dr.codigo = nfvm.codigo'#13#10'where ((d' +
      'r.databaixa is null) and (nfvm.geroudup = :geroudup)))'#13#10'order by' +
      ' 2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'geroudup'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 624
    Top = 224
  end
  object DspPesqclivdupemaberto: TDataSetProvider
    DataSet = SqldsPesqclivdupemaberto
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 760
    Top = 224
  end
  object CdsPesqclivdupemaberto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'geroudup'
        ParamType = ptInput
      end>
    ProviderName = 'DspPesqclivdupemaberto'
    Left = 888
    Top = 224
    object CdsPesqclivdupemabertoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CdsPesqclivdupemabertoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object SqldsPesqclivdupgeral: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select c.codigo,c.nome'#13#10'from CLIENTE c'#13#10'where c.codigo in'#13#10'(sele' +
      'ct distinct nfvm.codcliente'#13#10'from duplicatasreceber dr'#13#10'inner jo' +
      'in notafiscalvendames nfvm on dr.codigo = nfvm.codigo'#13#10'where (nf' +
      'vm.geroudup = :geroudup))'#13#10'order by 2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'geroudup'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 632
    Top = 272
  end
  object DspPesqclivdupgeral: TDataSetProvider
    DataSet = SqldsPesqclivdupgeral
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 760
    Top = 272
  end
  object CdsPesqclivdupgeral: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'geroudup'
        ParamType = ptInput
      end>
    ProviderName = 'DspPesqclivdupgeral'
    Left = 888
    Top = 272
    object CdsPesqclivdupgeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CdsPesqclivdupgeralNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
end
