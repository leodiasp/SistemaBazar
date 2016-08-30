object DmModuleII: TDmModuleII
  OldCreateOrder = False
  Left = 192
  Top = 114
  Height = 567
  Width = 704
  object Sqldsrecebvendasimples: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select nfvd.codigo,nfvd.seq,nfvm.dataemissao'#13#10',nfvd.vltotalitem,' +
      'nfvd.datavencto'#13#10',nfvd.datapagto,nfvd.jurosoudesc'#13#10',nfvd.flagpag' +
      'to,nfvd.numrecibo'#13#10',nfvd.coditem'#13#10',nfvm.codvendedor'#13#10',c.totalpag' +
      'o'#13#10',nfvd.codigoflex30'#13#10'from NOTAFISCALVENDADET nfvd'#13#10'inner join ' +
      'notafiscalvendames nfvm on nfvd.codigo = nfvm.codigo'#13#10'inner join' +
      ' cliente c on nfvm.codcliente = c.codigo'#13#10'where nfvm.geroudup = ' +
      #39'N'#39#13#10'and nfvm.codcliente = :codcliente'#13#10'and nfvd.datapagto is nu' +
      'll'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codcliente'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 64
    Top = 8
    object SqldsrecebvendasimplesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsrecebvendasimplesSEQ: TIntegerField
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsrecebvendasimplesDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
      ProviderFlags = []
    end
    object SqldsrecebvendasimplesVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsrecebvendasimplesDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsrecebvendasimplesDATAPAGTO: TDateField
      FieldName = 'DATAPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsrecebvendasimplesJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsrecebvendasimplesFLAGPAGTO: TStringField
      FieldName = 'FLAGPAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object SqldsrecebvendasimplesNUMRECIBO: TIntegerField
      FieldName = 'NUMRECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsrecebvendasimplesCODITEM: TIntegerField
      FieldName = 'CODITEM'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsrecebvendasimplesCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = []
    end
    object SqldsrecebvendasimplesTOTALPAGO: TFloatField
      FieldName = 'TOTALPAGO'
      ProviderFlags = []
    end
    object SqldsrecebvendasimplesCODIGOFLEX30: TIntegerField
      DisplayLabel = 'Cod.Flex30'
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = [pfInUpdate]
    end
  end
  object Dsprecebvendasimples: TDataSetProvider
    DataSet = Sqldsrecebvendasimples
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 8
  end
  object Cdsrecebvendasimples: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codcliente'
        ParamType = ptInput
      end>
    ProviderName = 'Dsprecebvendasimples'
    Left = 344
    Top = 8
    object CdsrecebvendasimplesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object CdsrecebvendasimplesSEQ: TIntegerField
      DisplayLabel = 'Seq'
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      Visible = False
    end
    object CdsrecebvendasimplesDATAEMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o  '
      FieldName = 'DATAEMISSAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CdsrecebvendasimplesVLTOTALITEM: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VLTOTALITEM'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsrecebvendasimplesDATAVENCTO: TDateField
      DisplayLabel = 'Data Vencimento  '
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object CdsrecebvendasimplesDATAPAGTO: TDateField
      DisplayLabel = 'Data  Pagamento  '
      FieldName = 'DATAPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsrecebvendasimplesJUROSOUDESC: TFMTBCDField
      DisplayLabel = 'Juros/Desc.'
      FieldName = 'JUROSOUDESC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsrecebvendasimplesFLAGPAGTO: TStringField
      FieldName = 'FLAGPAGTO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CdsrecebvendasimplesNUMRECIBO: TIntegerField
      FieldName = 'NUMRECIBO'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object CdsrecebvendasimplesCODITEM: TIntegerField
      FieldName = 'CODITEM'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object CdsrecebvendasimplesCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = []
      Visible = False
    end
    object CdsrecebvendasimplesTOTALPAGO: TFloatField
      FieldName = 'TOTALPAGO'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '0.00'
    end
    object CdsrecebvendasimplesCODIGOFLEX30: TIntegerField
      DisplayLabel = 'Cod.Flex30'
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object Cdsrecebvendasimplesdescitem: TStringField
      FieldKind = fkLookup
      FieldName = 'descitem'
      LookupDataSet = DmModuleI.Cdspesqitem
      LookupKeyFields = 'CDITEM'
      LookupResultField = 'DESCITEM'
      KeyFields = 'CODITEM'
      Visible = False
      Size = 50
      Lookup = True
    end
    object Cdsrecebvendasimplesvendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = DmModuleI.Cdspesqvend
      LookupKeyFields = 'CODVENDEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Visible = False
      Size = 40
      Lookup = True
    end
  end
  object SqldsPROXINUMREC: TSQLDataSet
    GetMetadata = False
    CommandText = 'select *  from PROXIMONUMRECIBO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 64
    Top = 126
    object SqldsPROXINUMRECPROXNUMRECIBO: TIntegerField
      FieldName = 'PROXNUMRECIBO'
      Required = True
    end
    object SqldsPROXINUMRECFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
  end
  object DspPROXINUMREC: TDataSetProvider
    DataSet = SqldsPROXINUMREC
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 208
    Top = 126
  end
  object CdsPROXINUMREC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPROXINUMREC'
    Left = 344
    Top = 126
    object CdsPROXINUMRECPROXNUMRECIBO: TIntegerField
      FieldName = 'PROXNUMRECIBO'
      Required = True
    end
    object CdsPROXINUMRECFLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
  end
  object SqldsSP_ATUALIZANUMRECVSIMPLES: TSQLDataSet
    GetMetadata = False
    CommandText = 'SP_ATUALIZANUMRECVSIMPLES'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAPAGTOINP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMRECIBOINP'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 512
    Top = 8
  end
  object Sqldsrecebvendadupl: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select dr.codigo,dr.numprestacao,dr.numparcial'#13#10',dr.valorprestac' +
      'ao,dr.datavencto'#13#10',dr.databaixa,dr.vljurosoudescontos'#13#10',dr.valor' +
      'totalpago'#13#10',nfvm.codvendedor'#13#10',c.totalpago'#13#10',nfvm.codigoflex30'#13#10 +
      'from DUPLICATASRECEBER dr'#13#10'inner join notafiscalvendames nfvm on' +
      ' dr.codigo = nfvm.codigo'#13#10'inner join cliente c on nfvm.codclient' +
      'e = c.codigo'#13#10'where nfvm.codcliente = :codcliente'#13#10'and ((dr.data' +
      'baixa is null) or (dr.numrecibo = 0)'#13#10'     or (dr.numrecibo is n' +
      'ull))'#13#10'order by dr.codigo,dr.numprestacao,dr.numparcial'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codcliente'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 64
    Top = 176
    object SqldsrecebvendaduplCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsrecebvendaduplNUMPRESTACAO: TIntegerField
      FieldName = 'NUMPRESTACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsrecebvendaduplNUMPARCIAL: TIntegerField
      FieldName = 'NUMPARCIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsrecebvendaduplDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsrecebvendaduplVALORPRESTACAO: TFMTBCDField
      FieldName = 'VALORPRESTACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsrecebvendaduplDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsrecebvendaduplVLJUROSOUDESCONTOS: TFMTBCDField
      FieldName = 'VLJUROSOUDESCONTOS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsrecebvendaduplVALORTOTALPAGO: TFMTBCDField
      FieldName = 'VALORTOTALPAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsrecebvendaduplCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsrecebvendaduplTOTALPAGO: TFloatField
      FieldName = 'TOTALPAGO'
      ProviderFlags = []
    end
    object SqldsrecebvendaduplCODIGOFLEX30: TIntegerField
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = []
    end
  end
  object Dsprecebvendadupl: TDataSetProvider
    DataSet = Sqldsrecebvendadupl
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 176
  end
  object Cdsrecebvendadupl: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codcliente'
        ParamType = ptInput
      end>
    ProviderName = 'Dsprecebvendadupl'
    BeforePost = CdsrecebvendaduplBeforePost
    Left = 344
    Top = 176
    object CdsrecebvendaduplCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object CdsrecebvendaduplNUMPRESTACAO: TIntegerField
      DisplayLabel = 'N'#186' Prest.'
      FieldName = 'NUMPRESTACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object CdsrecebvendaduplNUMPARCIAL: TIntegerField
      DisplayLabel = 'N'#186' Parcial'
      FieldName = 'NUMPARCIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CdsrecebvendaduplDATAVENCTO: TDateField
      DisplayLabel = 'Data Vencto '
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsrecebvendaduplVALORPRESTACAO: TFMTBCDField
      DisplayLabel = 'Valor   '
      FieldName = 'VALORPRESTACAO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsrecebvendaduplDATABAIXA: TDateField
      DisplayLabel = 'Data Pagto    '
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsrecebvendaduplVLJUROSOUDESCONTOS: TFMTBCDField
      DisplayLabel = 'Juros/Desc.'
      FieldName = 'VLJUROSOUDESCONTOS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsrecebvendaduplVALORTOTALPAGO: TFMTBCDField
      DisplayLabel = 'Total Pago'
      FieldName = 'VALORTOTALPAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsrecebvendaduplCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object CdsrecebvendaduplCODIGOFLEX30: TIntegerField
      DisplayLabel = 'Cod.Flex30'
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = []
      ReadOnly = True
    end
    object CdsrecebvendaduplTOTALPAGO: TFloatField
      FieldName = 'TOTALPAGO'
      ProviderFlags = []
      Visible = False
    end
    object Cdsrecebvendaduplvendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = DmModuleI.Sqldspesqvend
      LookupKeyFields = 'CODVENDEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Visible = False
      Size = 40
      Lookup = True
    end
    object Cdsrecebvendadupldescitem: TStringField
      FieldKind = fkCalculated
      FieldName = 'descitem'
      Visible = False
      Size = 50
      Calculated = True
    end
  end
  object SqldsSP_ATUALIZANUMRECVDUP: TSQLDataSet
    GetMetadata = False
    CommandText = 'SP_ATUALIZANUMRECVDUP'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATAPAGTOINP'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMRECIBOINP'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 520
    Top = 128
  end
  object Sqldsrecebvendasimplesgeral: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select nfvd.codigo,nfvd.seq,nfvm.dataemissao'#13#10',nfvd.vltotalitem,' +
      'nfvd.datavencto'#13#10',nfvd.datapagto,nfvd.jurosoudesc'#13#10',nfvd.flagpag' +
      'to,nfvd.numrecibo'#13#10',nfvd.coditem'#13#10',nfvm.codvendedor'#13#10',c.totalpag' +
      'o'#13#10',nfvd.codigoflex30'#13#10'from NOTAFISCALVENDADET nfvd'#13#10'inner join ' +
      'notafiscalvendames nfvm on nfvd.codigo = nfvm.codigo'#13#10'inner join' +
      ' cliente c on nfvm.codcliente = c.codigo'#13#10'where nfvm.geroudup = ' +
      #39'N'#39#13#10'and nfvm.codcliente = :codcliente'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codcliente'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 64
    Top = 64
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'DATAEMISSAO'
      ProviderFlags = []
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object DateField2: TDateField
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object DateField3: TDateField
      FieldName = 'DATAPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object StringField1: TStringField
      FieldName = 'FLAGPAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object IntegerField3: TIntegerField
      FieldName = 'NUMRECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField4: TIntegerField
      FieldName = 'CODITEM'
      ProviderFlags = [pfInUpdate]
    end
    object IntegerField5: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = []
    end
    object FloatField1: TFloatField
      FieldName = 'TOTALPAGO'
      ProviderFlags = []
    end
    object SqldsrecebvendasimplesgeralCODIGOFLEX30: TIntegerField
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = [pfInUpdate]
    end
  end
  object Dsprecebvendasimplesgeral: TDataSetProvider
    DataSet = Sqldsrecebvendasimplesgeral
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 64
  end
  object Cdsrecebvendasimplesgeral: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codcliente'
        ParamType = ptInput
      end>
    ProviderName = 'Dsprecebvendasimplesgeral'
    Left = 344
    Top = 64
    object IntegerField6: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'Seq'
      FieldName = 'SEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
      Visible = False
    end
    object DateField4: TDateField
      DisplayLabel = 'Data Emiss'#227'o  '
      FieldName = 'DATAEMISSAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FMTBCDField3: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VLTOTALITEM'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object DateField5: TDateField
      DisplayLabel = 'Data Vencimento  '
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object DateField6: TDateField
      DisplayLabel = 'Data  Pagamento  '
      FieldName = 'DATAPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object FMTBCDField4: TFMTBCDField
      DisplayLabel = 'Juros/Desc.'
      FieldName = 'JUROSOUDESC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'FLAGPAGTO'
      ProviderFlags = [pfInUpdate]
      Visible = False
      FixedChar = True
      Size = 1
    end
    object IntegerField8: TIntegerField
      FieldName = 'NUMRECIBO'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object IntegerField9: TIntegerField
      FieldName = 'CODITEM'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object IntegerField10: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = []
      Visible = False
    end
    object FloatField2: TFloatField
      FieldName = 'TOTALPAGO'
      ProviderFlags = []
      Visible = False
      DisplayFormat = '0.00'
    end
    object CdsrecebvendasimplesgeralCODIGOFLEX30: TIntegerField
      DisplayLabel = 'Cod.Flex30'
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'descitem'
      LookupDataSet = DmModuleI.Cdspesqitem
      LookupKeyFields = 'CDITEM'
      LookupResultField = 'DESCITEM'
      KeyFields = 'CODITEM'
      Visible = False
      Size = 50
      Lookup = True
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = DmModuleI.Cdspesqvend
      LookupKeyFields = 'CODVENDEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Visible = False
      Size = 40
      Lookup = True
    end
  end
  object Sqldsrecebvendaduplgeral: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select dr.codigo,dr.numprestacao,dr.numparcial'#13#10',dr.valorprestac' +
      'ao,dr.datavencto'#13#10',dr.databaixa,dr.vljurosoudescontos'#13#10',dr.valor' +
      'totalpago'#13#10',nfvm.codvendedor'#13#10',c.totalpago'#13#10',nfvm.codigoflex30'#13#10 +
      'from DUPLICATASRECEBER dr'#13#10'inner join notafiscalvendames nfvm on' +
      ' dr.codigo = nfvm.codigo'#13#10'inner join cliente c on nfvm.codclient' +
      'e = c.codigo'#13#10'where nfvm.codcliente = :codcliente'#13#10'order by dr.c' +
      'odigo,dr.numprestacao,dr.numparcial'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codcliente'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 64
    Top = 232
    object SqldsrecebvendaduplgeralCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsrecebvendaduplgeralNUMPRESTACAO: TIntegerField
      FieldName = 'NUMPRESTACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsrecebvendaduplgeralNUMPARCIAL: TIntegerField
      FieldName = 'NUMPARCIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsrecebvendaduplgeralVALORPRESTACAO: TFMTBCDField
      FieldName = 'VALORPRESTACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsrecebvendaduplgeralDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsrecebvendaduplgeralDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsrecebvendaduplgeralVLJUROSOUDESCONTOS: TFMTBCDField
      FieldName = 'VLJUROSOUDESCONTOS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsrecebvendaduplgeralVALORTOTALPAGO: TFMTBCDField
      FieldName = 'VALORTOTALPAGO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsrecebvendaduplgeralCODIGOFLEX30: TIntegerField
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = []
    end
    object SqldsrecebvendaduplgeralCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object SqldsrecebvendaduplgeralTOTALPAGO: TFloatField
      FieldName = 'TOTALPAGO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object Dsprecebvendaduplgeral: TDataSetProvider
    DataSet = Sqldsrecebvendaduplgeral
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 232
  end
  object Cdsrecebvendaduplgeral: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codcliente'
        ParamType = ptInput
      end>
    ProviderName = 'Dsprecebvendaduplgeral'
    BeforePost = CdsrecebvendaduplgeralBeforePost
    Left = 344
    Top = 232
    object CdsrecebvendaduplgeralCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsrecebvendaduplgeralNUMPRESTACAO: TIntegerField
      DisplayLabel = 'N'#186' Prest.'
      FieldName = 'NUMPRESTACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsrecebvendaduplgeralNUMPARCIAL: TIntegerField
      FieldName = 'NUMPARCIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CdsrecebvendaduplgeralDATAVENCTO: TDateField
      DisplayLabel = 'Data Vencto '
      FieldName = 'DATAVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsrecebvendaduplgeralVALORPRESTACAO: TFMTBCDField
      DisplayLabel = 'Valor   '
      FieldName = 'VALORPRESTACAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsrecebvendaduplgeralDATABAIXA: TDateField
      DisplayLabel = 'Data Pagto    '
      FieldName = 'DATABAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsrecebvendaduplgeralVLJUROSOUDESCONTOS: TFMTBCDField
      DisplayLabel = 'Juros/Desc.'
      FieldName = 'VLJUROSOUDESCONTOS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsrecebvendaduplgeralVALORTOTALPAGO: TFMTBCDField
      DisplayLabel = 'Total Pago'
      FieldName = 'VALORTOTALPAGO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsrecebvendaduplgeralCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object CdsrecebvendaduplgeralCODIGOFLEX30: TIntegerField
      DisplayLabel = 'Cod.Flex30'
      FieldName = 'CODIGOFLEX30'
      ProviderFlags = []
      ReadOnly = True
    end
    object CdsrecebvendaduplgeralTOTALPAGO: TFloatField
      FieldName = 'TOTALPAGO'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = DmModuleI.Sqldspesqvend
      LookupKeyFields = 'CODVENDEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Visible = False
      Size = 40
      Lookup = True
    end
    object StringField6: TStringField
      FieldKind = fkCalculated
      FieldName = 'descitem'
      Visible = False
      Size = 50
      Calculated = True
    end
  end
  object Sqldsindfinanceiro: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ifin.codindfinanceiro,ifin.jurosmoraaodia,ifin.diasinsenc' +
      'ao'#13#10'from INDICADORFINANCEIRO ifin'#13#10'where ifin.codindfinanceiro =' +
      ' :codindfinanceiro'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codindfinanceiro'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 64
    Top = 288
    object SqldsindfinanceiroCODINDFINANCEIRO: TIntegerField
      FieldName = 'CODINDFINANCEIRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqldsindfinanceiroJUROSMORAAODIA: TFMTBCDField
      FieldName = 'JUROSMORAAODIA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object SqldsindfinanceiroDIASINSENCAO: TIntegerField
      FieldName = 'DIASINSENCAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object Dspindfinanceiro: TDataSetProvider
    DataSet = Sqldsindfinanceiro
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 288
  end
  object Cdsindfinanceiro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codindfinanceiro'
        ParamType = ptInput
      end>
    ProviderName = 'Dspindfinanceiro'
    Left = 344
    Top = 288
    object CdsindfinanceiroCODINDFINANCEIRO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODINDFINANCEIRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object CdsindfinanceiroJUROSMORAAODIA: TFMTBCDField
      DisplayLabel = 'Juros Mora ao dia'
      FieldName = 'JUROSMORAAODIA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsindfinanceiroDIASINSENCAO: TIntegerField
      DisplayLabel = 'Dias Isen'#231#227'o'
      FieldName = 'DIASINSENCAO'
      ProviderFlags = [pfInUpdate]
    end
  end
end
