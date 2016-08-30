object DmModuleRelatorioI: TDmModuleRelatorioI
  OldCreateOrder = False
  Left = 41
  Top = 102
  Height = 655
  Width = 979
  object RvdsEmiitem: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiitem
    Left = 413
    Top = 8
  end
  object SqldsEmiitem: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from vw_item vwi'#13#10'order by vwi.descitem'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 56
    Top = 8
  end
  object DspEmiitem: TDataSetProvider
    DataSet = SqldsEmiitem
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 200
    Top = 8
  end
  object CdsEmiitem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEmiitem'
    Left = 328
    Top = 8
    object CdsEmiitemCDITEM: TIntegerField
      FieldName = 'CDITEM'
    end
    object CdsEmiitemDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Size = 50
    end
    object CdsEmiitemCDGRUPOITEM: TIntegerField
      FieldName = 'CDGRUPOITEM'
    end
    object CdsEmiitemDESCGRUPOITEM: TStringField
      FieldName = 'DESCGRUPOITEM'
      Size = 50
    end
    object CdsEmiitemESTMINIMO: TFMTBCDField
      FieldName = 'ESTMINIMO'
      Precision = 15
      Size = 2
    end
    object CdsEmiitemESTMAXIMO: TFMTBCDField
      FieldName = 'ESTMAXIMO'
      Precision = 15
      Size = 2
    end
    object CdsEmiitemSALDOATUAL: TFMTBCDField
      FieldName = 'SALDOATUAL'
      Precision = 15
      Size = 2
    end
    object CdsEmiitemPRECOCUSTO: TFMTBCDField
      FieldName = 'PRECOCUSTO'
      Precision = 15
      Size = 2
    end
    object CdsEmiitemPRECOVENDA: TFMTBCDField
      FieldName = 'PRECOVENDA'
      Precision = 15
      Size = 2
    end
    object CdsEmiitemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 4
    end
    object CdsEmiitemCUSTOMEDIO: TFMTBCDField
      FieldName = 'CUSTOMEDIO'
      Precision = 15
      Size = 2
    end
    object CdsEmiitemNOMEEMP: TStringField
      FieldName = 'NOMEEMP'
      Size = 50
    end
    object CdsEmiitemTELEMP: TStringField
      FieldName = 'TELEMP'
      Size = 15
    end
    object CdsEmiitemENDEMP: TStringField
      FieldName = 'ENDEMP'
      Size = 50
    end
    object CdsEmiitemNUMEMP: TStringField
      FieldName = 'NUMEMP'
      Size = 15
    end
    object CdsEmiitemBAIRROEMP: TStringField
      FieldName = 'BAIRROEMP'
      Size = 31
    end
    object CdsEmiitemCIDADEEMP: TStringField
      FieldName = 'CIDADEEMP'
      Size = 30
    end
    object CdsEmiitemCEPEMP: TStringField
      FieldName = 'CEPEMP'
      Size = 10
    end
    object CdsEmiitemEMAILEMP: TStringField
      FieldName = 'EMAILEMP'
      Size = 50
    end
    object CdsEmiitemCNPJEMP: TStringField
      FieldName = 'CNPJEMP'
      Size = 14
    end
    object CdsEmiitemINSCRICAOEMP: TStringField
      FieldName = 'INSCRICAOEMP'
      Size = 12
    end
    object CdsEmiitemUFEMP: TStringField
      FieldName = 'UFEMP'
      Size = 2
    end
  end
  object SqldsEmiReciborecvsimples: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select spgerarecpagtovs.*'#13#10'from sp_gera_recpagtovsimples (:datap' +
      'agto,:numrecibo)  spgerarecpagtovs'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'datapagto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'numrecibo'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 56
    Top = 56
  end
  object DspEmiReciborecvsimples: TDataSetProvider
    DataSet = SqldsEmiReciborecvsimples
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 200
    Top = 56
  end
  object CdsEmiReciborecvsimples: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'datapagto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'numrecibo'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiReciborecvsimples'
    Left = 328
    Top = 56
    object CdsEmiReciborecvsimplesNUMVENDAOUT: TIntegerField
      FieldName = 'NUMVENDAOUT'
    end
    object CdsEmiReciborecvsimplesJUROSOUDESCOUT: TFMTBCDField
      FieldName = 'JUROSOUDESCOUT'
      Precision = 15
      Size = 2
    end
    object CdsEmiReciborecvsimplesCODIGOCLIENTEOUT: TIntegerField
      FieldName = 'CODIGOCLIENTEOUT'
    end
    object CdsEmiReciborecvsimplesDATAEMISSAOOUT: TDateField
      FieldName = 'DATAEMISSAOOUT'
    end
    object CdsEmiReciborecvsimplesNOMECLIOUT: TStringField
      FieldName = 'NOMECLIOUT'
      Size = 50
    end
    object CdsEmiReciborecvsimplesQUANTOUT: TFMTBCDField
      FieldName = 'QUANTOUT'
      Precision = 15
      Size = 2
    end
    object CdsEmiReciborecvsimplesVLTOTALOUT: TFloatField
      FieldName = 'VLTOTALOUT'
      DisplayFormat = '0.00'
    end
    object CdsEmiReciborecvsimplesDATAVENCTOOUT: TDateField
      FieldName = 'DATAVENCTOOUT'
    end
    object CdsEmiReciborecvsimplesDATAPAGTOOUT: TDateField
      FieldName = 'DATAPAGTOOUT'
    end
    object CdsEmiReciborecvsimplesVLJUROSOUDESCOUT: TFloatField
      FieldName = 'VLJUROSOUDESCOUT'
    end
    object CdsEmiReciborecvsimplesNUMRECIBOOUT: TIntegerField
      FieldName = 'NUMRECIBOOUT'
    end
    object CdsEmiReciborecvsimplesNOMEEMPOUT: TStringField
      FieldName = 'NOMEEMPOUT'
      Size = 50
    end
    object CdsEmiReciborecvsimplesTELEFONEEMPOUT: TStringField
      FieldName = 'TELEFONEEMPOUT'
      Size = 15
    end
    object CdsEmiReciborecvsimplesDESCITEMOUT: TStringField
      FieldName = 'DESCITEMOUT'
      Size = 50
    end
    object CdsEmiReciborecvsimplesJUROSOUT: TFloatField
      FieldName = 'JUROSOUT'
      DisplayFormat = '0.00'
    end
    object CdsEmiReciborecvsimplesDESCONTOSOUT: TFloatField
      FieldName = 'DESCONTOSOUT'
      DisplayFormat = '0.00'
    end
    object CdsEmiReciborecvsimplesVLTOTAITEMCOMJUROSOUDESCOUT: TFloatField
      FieldName = 'VLTOTAITEMCOMJUROSOUDESCOUT'
      DisplayFormat = '0.00'
    end
  end
  object Sqldsatualnumrecvsimples: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 56
    Top = 107
  end
  object Dspatualnumrecvsimples: TDataSetProvider
    Options = [poAutoRefresh, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 107
  end
  object Cdsatualnumrecvsimples: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 107
  end
  object SqldsEmiReciborecvdup: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select dr.codigo,dr.numprestacao,dr.numparcial'#13#10',nfvm.codcliente' +
      ',c.nome as nomecli,nfvm.dataemissao'#13#10',cast(dr.valorprestacao as ' +
      'float) as valorprestacao'#13#10',dr.datavencto,dr.databaixa'#13#10',cast(dr.' +
      'vljurosoudescontos as float) as vljurosoudescontos,dr.numrecibo'#13 +
      #10',e.nome as nomeemp,e.telefone,e.endereco,e.numero'#13#10',case'#13#10'   wh' +
      'en (dr.vljurosoudescontos >= 0) then cast(dr.vljurosoudescontos ' +
      'as float)'#13#10'  end juros'#13#10',case'#13#10'   when (dr.vljurosoudescontos < ' +
      '0) then cast(dr.vljurosoudescontos as float)'#13#10'end descontos'#13#10',(c' +
      'ast(dr.valorprestacao as float) + cast(dr.vljurosoudescontos as ' +
      'float)) as vltotaitemcomjurosoudesc'#13#10'from duplicatasreceber dr'#13#10 +
      'inner join notafiscalvendames nfvm on dr.codigo = nfvm.codigo'#13#10'i' +
      'nner join cliente c on nfvm.codcliente = c.codigo'#13#10'inner join em' +
      'presa e on e.codempresa = 1'#13#10'where (dr.databaixa = :datapagto)'#13#10 +
      'and (nfvm.codcliente = :codcliente)'#13#10'and (dr.numrecibo = :numrec' +
      'ibo)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'datapagto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codcliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'numrecibo'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 56
    Top = 157
  end
  object DspEmiReciborecvdup: TDataSetProvider
    DataSet = SqldsEmiReciborecvdup
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 200
    Top = 157
  end
  object CdsEmiReciborecvdup: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'datapagto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codcliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'numrecibo'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiReciborecvdup'
    Left = 328
    Top = 157
    object CdsEmiReciborecvdupCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CdsEmiReciborecvdupNUMPRESTACAO: TIntegerField
      FieldName = 'NUMPRESTACAO'
      Required = True
    end
    object CdsEmiReciborecvdupNUMPARCIAL: TIntegerField
      FieldName = 'NUMPARCIAL'
      Required = True
    end
    object CdsEmiReciborecvdupCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmiReciborecvdupNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmiReciborecvdupDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object CdsEmiReciborecvdupVALORPRESTACAO: TFloatField
      FieldName = 'VALORPRESTACAO'
      DisplayFormat = '0.00'
    end
    object CdsEmiReciborecvdupDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
    end
    object CdsEmiReciborecvdupDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
    object CdsEmiReciborecvdupVLJUROSOUDESCONTOS: TFloatField
      FieldName = 'VLJUROSOUDESCONTOS'
      DisplayFormat = '0.00'
    end
    object CdsEmiReciborecvdupNUMRECIBO: TIntegerField
      FieldName = 'NUMRECIBO'
    end
    object CdsEmiReciborecvdupNOMEEMP: TStringField
      FieldName = 'NOMEEMP'
      Size = 50
    end
    object CdsEmiReciborecvdupTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiReciborecvdupENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmiReciborecvdupNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmiReciborecvdupJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '0.00'
    end
    object CdsEmiReciborecvdupDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      DisplayFormat = '0.00'
    end
    object CdsEmiReciborecvdupVLTOTAITEMCOMJUROSOUDESC: TFloatField
      FieldName = 'VLTOTAITEMCOMJUROSOUDESC'
      DisplayFormat = '0.00'
    end
  end
  object SqldsEmiVendaSimples: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select nfm.codigo,nfm.dataemissao,nfm.valordesconto,'#13#10'nfm.valort' +
      'otalnfiscal,'#13#10'nfd.quant,cast(nfd.vltotalitem as float) as vltota' +
      'litem,i.nome as descitem'#13#10',c.nome as nomecli,c.codigo as codclie' +
      'nte'#13#10',e.nome as nomeempresa,e.telefone'#13#10',case'#13#10'  when (d.nome is' +
      ' not null) then d.nome'#13#10'  else c.nome'#13#10'end nomedependente'#13#10',nfm.' +
      'obs'#13#10'from NOTAFISCALVENDAMES nfm'#13#10'inner join empresa e on e.code' +
      'mpresa = 1'#13#10'inner join notafiscalvendadet nfd on nfm.codigo = nf' +
      'd.codigo'#13#10'inner join item i on nfd.coditem = i.cditem'#13#10'inner joi' +
      'n cliente c on nfm.codcliente = c.codigo'#13#10'left join dependentes ' +
      'd on nfm.dependente = d.codigoseq'#13#10'where nfm.codigo = :codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 56
    Top = 206
  end
  object dspEmiVendaSimples: TDataSetProvider
    DataSet = SqldsEmiVendaSimples
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 200
    Top = 206
  end
  object cdsEmiVendaSimples: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmiVendaSimples'
    Left = 328
    Top = 206
    object cdsEmiVendaSimplesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsEmiVendaSimplesDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object cdsEmiVendaSimplesVALORDESCONTO: TFMTBCDField
      FieldName = 'VALORDESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsEmiVendaSimplesVALORTOTALNFISCAL: TFMTBCDField
      FieldName = 'VALORTOTALNFISCAL'
      Precision = 15
      Size = 2
    end
    object cdsEmiVendaSimplesQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 15
      Size = 2
    end
    object cdsEmiVendaSimplesVLTOTALITEM: TFloatField
      FieldName = 'VLTOTALITEM'
      DisplayFormat = '0.00'
    end
    object cdsEmiVendaSimplesCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsEmiVendaSimplesDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Required = True
      Size = 50
    end
    object cdsEmiVendaSimplesNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object cdsEmiVendaSimplesNOMEEMPRESA: TStringField
      FieldName = 'NOMEEMPRESA'
      Size = 50
    end
    object cdsEmiVendaSimplesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object cdsEmiVendaSimplesNOMEDEPENDENTE: TStringField
      FieldName = 'NOMEDEPENDENTE'
      Size = 50
    end
    object cdsEmiVendaSimplesOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
  end
  object SqldsEmiOrcamento: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select orcm.codigo,orcm.dataemissao,orcm.datavencto'#13#10',orcm.total' +
      'orcamento,tp.nome as tipopagto'#13#10',i.nome as descitem,orcd.quant,o' +
      'rcd.vlunitario'#13#10',cast(orcd.vltotal as float) as vltotal'#13#10',e.nome' +
      ' as nomeemp,e.telefone'#13#10'from orcamentomes orcm'#13#10'inner join empre' +
      'sa e on e.codempresa = 1'#13#10'inner join orcamentodet orcd on orcm.c' +
      'odigo = orcd.codigo'#13#10'inner join item i on orcd.coditem = i.cdite' +
      'm'#13#10'inner join tipopagto tp on orcm.tipopagto = tp.id'#13#10'where orcm' +
      '.codigo = :codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 56
    Top = 256
  end
  object DspEmiOrcamento: TDataSetProvider
    DataSet = SqldsEmiOrcamento
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 200
    Top = 256
  end
  object CdsEmiOrcamento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiOrcamento'
    Left = 328
    Top = 256
    object CdsEmiOrcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CdsEmiOrcamentoDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object CdsEmiOrcamentoDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
    end
    object CdsEmiOrcamentoTOTALORCAMENTO: TFMTBCDField
      FieldName = 'TOTALORCAMENTO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsEmiOrcamentoDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Required = True
      Size = 50
    end
    object CdsEmiOrcamentoNOMEEMP: TStringField
      FieldName = 'NOMEEMP'
      Size = 50
    end
    object CdsEmiOrcamentoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiOrcamentoTIPOPAGTO: TStringField
      FieldName = 'TIPOPAGTO'
      Size = 10
    end
    object CdsEmiOrcamentoQUANT: TFMTBCDField
      FieldName = 'QUANT'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsEmiOrcamentoVLUNITARIO: TFMTBCDField
      FieldName = 'VLUNITARIO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CdsEmiOrcamentoVLTOTAL: TFloatField
      FieldName = 'VLTOTAL'
      DisplayFormat = '0.00'
    end
  end
  object SqldsEmiFatdiario: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select nfm.codcliente'#13#10',c.nome as nomecli'#13#10',nfm.dataemissao'#13#10',nf' +
      'd.codigo,nfd.coditem,i.nome as descitem,nfd.quant,nfd.punitario'#13 +
      #10',nfd.quantxpunit,nfd.jurosoudesc,nfd.vltotalitem'#13#10',e.nome as no' +
      'meemp,e.telefone,e.endereco,e.numero'#13#10',e.bairro,e.cidade,e.cep,e' +
      '.email'#13#10',e.cnpj,e.inscricao,e.uf'#13#10',nfd.codigoflex30'#13#10'from notafi' +
      'scalvendadet nfd'#13#10'inner join notafiscalvendames nfm on nfd.codig' +
      'o = nfm.codigo'#13#10'inner join cliente c on nfm.codcliente = c.codig' +
      'o'#13#10'inner join item i on nfd.coditem = i.cditem'#13#10'inner join empre' +
      'sa e on e.codempresa = 1'#13#10'where ((nfm.dataemissao between :dtini' +
      'cial and :dtfinal)'#13#10'and (c.nome between :nomeini and :nomefin))'#13 +
      #10'order by nfm.dataemissao,c.codigo'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 502
    Top = 8
  end
  object DspEmiFatdiario: TDataSetProvider
    DataSet = SqldsEmiFatdiario
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 616
    Top = 8
  end
  object CdsEmiFatdiario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiFatdiario'
    Left = 728
    Top = 8
    object CdsEmiFatdiarioCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmiFatdiarioNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmiFatdiarioDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object CdsEmiFatdiarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CdsEmiFatdiarioCODITEM: TIntegerField
      FieldName = 'CODITEM'
    end
    object CdsEmiFatdiarioDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Required = True
      Size = 50
    end
    object CdsEmiFatdiarioQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 15
      Size = 2
    end
    object CdsEmiFatdiarioPUNITARIO: TFMTBCDField
      FieldName = 'PUNITARIO'
      Precision = 15
      Size = 2
    end
    object CdsEmiFatdiarioQUANTXPUNIT: TFMTBCDField
      FieldName = 'QUANTXPUNIT'
      Precision = 15
      Size = 2
    end
    object CdsEmiFatdiarioJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      Precision = 15
      Size = 2
    end
    object CdsEmiFatdiarioVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Precision = 15
      Size = 2
    end
    object CdsEmiFatdiarioTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiFatdiarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmiFatdiarioNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmiFatdiarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmiFatdiarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmiFatdiarioCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmiFatdiarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmiFatdiarioCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmiFatdiarioINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmiFatdiarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CdsEmiFatdiarioCODIGOFLEX30: TIntegerField
      FieldName = 'CODIGOFLEX30'
    end
    object CdsEmiFatdiarioNOMEEMP: TStringField
      FieldName = 'NOMEEMP'
      Size = 50
    end
  end
  object RvDsEmiFatdiario: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiFatdiario
    Left = 843
    Top = 8
  end
  object SqldsEmifatdiariosint: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select nfm.codcliente'#13#10',c.nome as nomecli'#13#10',nfm.dataemissao'#13#10',su' +
      'm(nfd.quantxpunit) as quantxpunit,sum(nfd.jurosoudesc) jurosoude' +
      'sc'#13#10',sum(nfd.vltotalitem) as vltotalitem'#13#10',e.nome,e.telefone,e.e' +
      'ndereco,e.numero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.in' +
      'scricao,e.uf'#13#10'from notafiscalvendadet nfd'#13#10'inner join notafiscal' +
      'vendames nfm on nfd.codigo = nfm.codigo'#13#10'inner join cliente c on' +
      ' nfm.codcliente = c.codigo'#13#10'inner join empresa e on e.codempresa' +
      ' = 1'#13#10'where ((nfm.dataemissao between :dtinicial and :dtfinal)'#13#10 +
      'and (c.nome between :nomeini and :nomefin))'#13#10'group by nfm.dataem' +
      'issao,nfm.codcliente,c.nome'#13#10',e.nome,e.telefone,e.endereco,e.num' +
      'ero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e.uf'#13 +
      #10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 502
    Top = 56
  end
  object DspEmifatdiariosint: TDataSetProvider
    DataSet = SqldsEmifatdiariosint
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 616
    Top = 56
  end
  object CdsEmifatdiariosint: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmifatdiariosint'
    Left = 728
    Top = 56
    object CdsEmifatdiariosintCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmifatdiariosintNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmifatdiariosintDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object CdsEmifatdiariosintQUANTXPUNIT: TFMTBCDField
      FieldName = 'QUANTXPUNIT'
      Precision = 15
      Size = 2
    end
    object CdsEmifatdiariosintJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      Precision = 15
      Size = 2
    end
    object CdsEmifatdiariosintVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Precision = 15
      Size = 2
    end
    object CdsEmifatdiariosintNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmifatdiariosintTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmifatdiariosintENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmifatdiariosintNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmifatdiariosintBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmifatdiariosintCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmifatdiariosintCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmifatdiariosintEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmifatdiariosintCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmifatdiariosintINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmifatdiariosintUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object RvDsEmifatdiariosint: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmifatdiariosint
    Left = 843
    Top = 56
  end
  object SqldsEmifatmensal: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select'#13#10' CASE extract(MONTH from nfm.dataemissao)'#13#10'    WHEN 1  T' +
      'HEN '#39'Janeiro'#39#13#10'    WHEN 2  THEN '#39'Fevereiro'#39#13#10'    WHEN 3  THEN '#39'M' +
      'ar'#231'o'#39#13#10'    WHEN 4  THEN '#39'Abril'#39#13#10'    WHEN 5  THEN '#39'Maio'#39#13#10'    WH' +
      'EN 6  THEN '#39'Junho'#39#13#10'    WHEN 7  THEN '#39'Julho'#39#13#10'    WHEN 8  THEN '#39 +
      'Agosto'#39#13#10'    WHEN 9  THEN '#39'Setembro'#39#13#10'    WHEN 10 THEN '#39'Outubro'#39 +
      #13#10'    WHEN 11 THEN '#39'Novembro'#39#13#10'    WHEN 12 THEN '#39'Dezembro'#39#13#10'  EN' +
      'D AS MES_EXTENSO'#13#10',extract(YEAR from nfm.dataemissao) AS ANOEMI'#13 +
      #10',sum(nfd.vltotalitem) as vltotalitem'#13#10',e.nome,e.telefone,e.ende' +
      'reco,e.numero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscr' +
      'icao,e.uf'#13#10'from notafiscalvendadet nfd'#13#10'inner join notafiscalven' +
      'dames nfm on nfd.codigo = nfm.codigo'#13#10'inner join empresa e on e.' +
      'codempresa = 1'#13#10'where (nfm.dataemissao between :dtinicial and :d' +
      'tfinal)'#13#10'group by  extract(YEAR from nfm.dataemissao)'#13#10',extract(' +
      'MONTH from nfm.dataemissao)'#13#10',e.nome,e.telefone,e.endereco,e.num' +
      'ero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e.uf'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 502
    Top = 107
  end
  object DspEmifatmensal: TDataSetProvider
    DataSet = SqldsEmifatmensal
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 616
    Top = 107
  end
  object CdsEmifatmensal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmifatmensal'
    Left = 728
    Top = 107
    object CdsEmifatmensalMES_EXTENSO: TStringField
      FieldName = 'MES_EXTENSO'
      FixedChar = True
      Size = 9
    end
    object CdsEmifatmensalANOEMI: TSmallintField
      FieldName = 'ANOEMI'
    end
    object CdsEmifatmensalVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Precision = 15
      Size = 2
    end
    object CdsEmifatmensalNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmifatmensalTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmifatmensalENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmifatmensalNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmifatmensalBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmifatmensalCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmifatmensalCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmifatmensalEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmifatmensalCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmifatmensalINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmifatmensalUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object RvDsEmifatmensal: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmifatmensal
    Left = 843
    Top = 107
  end
  object SqldsEmiFechaCx: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select nfm.codcliente'#13#10',dr.databaixa'#13#10',dr.datavencto'#13#10',nfm.datae' +
      'missao'#13#10',dr.codigo'#13#10',dr.valortotalpago'#13#10','#39'DUP'#39#13#10',e.nome,e.telefo' +
      'ne,e.endereco,e.numero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10',e.cnp' +
      'j,e.inscricao,e.uf'#13#10'from duplicatasreceber dr'#13#10'inner join notafi' +
      'scalvendames nfm on dr.codigo = nfm.codigo'#13#10'inner join empresa e' +
      ' on e.codempresa = 1'#13#10'where (dr.databaixa between :dtinicial and' +
      ' :dtfinal)'#13#10'union'#13#10'select nfm.codcliente'#13#10',nfd.datapagto'#13#10',nfd.d' +
      'atavencto'#13#10',nfm.dataemissao'#13#10',nfd.codigo'#13#10',nfd.vltotalitem'#13#10','#39'NF' +
      ' '#39#13#10',e.nome,e.telefone,e.endereco,e.numero'#13#10',e.bairro,e.cidade,e' +
      '.cep,e.email'#13#10',e.cnpj,e.inscricao,e.uf'#13#10'from notafiscalvendadet ' +
      'nfd'#13#10'inner join notafiscalvendames nfm on nfd.codigo = nfm.codig' +
      'o'#13#10'inner join empresa e on e.codempresa = 1'#13#10'where ((nfd.datapag' +
      'to between :dtinicial and :dtfinal)'#13#10'and (nfd.tipopagto = '#39'A'#39')'#13#10 +
      'and (nfd.gerouduplicata is null)'#13#10')'#13#10'order by 2,1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 502
    Top = 157
  end
  object DspEmiFechaCx: TDataSetProvider
    DataSet = SqldsEmiFechaCx
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 616
    Top = 157
  end
  object CdsEmiFechaCx: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiFechaCx'
    Left = 728
    Top = 157
  end
  object RvDsEmiFechacx: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiFechaCx
    Left = 843
    Top = 157
  end
  object SqldsEmivendaaberto: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select nfm.codcliente,c.nome as nomecli,'#13#10'nfd.datavencto,'#13#10'sum(n' +
      'fd.vltotalitem) as totaldevedor'#13#10',e.nome,e.telefone,e.endereco,e' +
      '.numero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e' +
      '.uf'#13#10'from notafiscalvendadet nfd'#13#10'inner join notafiscalvendames ' +
      'nfm on nfd.codigo = nfm.codigo'#13#10'inner join cliente c on nfm.codc' +
      'liente = c.codigo'#13#10'inner join empresa e on e.codempresa = 1'#13#10'whe' +
      're ((nfm.dataemissao between :dtinicial and :dtfinal)'#13#10'and (c.no' +
      'me between :nomeini and :nomefin))'#13#10'and (nfd.datapagto is null)'#13 +
      #10'group by nfm.codcliente,c.nome,nfd.datavencto'#13#10',e.nome,e.telefo' +
      'ne,e.endereco,e.numero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10',e.cnp' +
      'j,e.inscricao,e.uf'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 502
    Top = 206
  end
  object DspEmivendaaberto: TDataSetProvider
    DataSet = SqldsEmivendaaberto
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 616
    Top = 206
  end
  object CdsEmivendaaberto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmivendaaberto'
    Left = 728
    Top = 206
    object CdsEmivendaabertoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmivendaabertoNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmivendaabertoDATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
    end
    object CdsEmivendaabertoTOTALDEVEDOR: TFMTBCDField
      FieldName = 'TOTALDEVEDOR'
      Precision = 15
      Size = 2
    end
    object CdsEmivendaabertoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmivendaabertoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmivendaabertoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmivendaabertoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmivendaabertoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmivendaabertoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmivendaabertoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmivendaabertoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmivendaabertoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmivendaabertoINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmivendaabertoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object RvDsEmivendaaberto: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmivendaaberto
    Left = 843
    Top = 206
  end
  object SqldsEmiBalancomensal: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select spbm.*'#13#10',e.nome,e.telefone,e.endereco,e.numero'#13#10',e.bairro' +
      ',e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e.uf'#13#10'from sp_balan' +
      'comensal (:dtinicial,:dtfinal) spbm'#13#10'inner join empresa e on e.c' +
      'odempresa = 1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 502
    Top = 256
  end
  object DspEmiBalancomensal: TDataSetProvider
    DataSet = SqldsEmiBalancomensal
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 616
    Top = 256
  end
  object CdsEmiBalancomensal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiBalancomensal'
    Left = 728
    Top = 256
    object CdsEmiBalancomensalANOPROC: TStringField
      FieldName = 'ANOPROC'
      Size = 4
    end
    object CdsEmiBalancomensalMESPROC: TStringField
      FieldName = 'MESPROC'
      Size = 2
    end
    object CdsEmiBalancomensalMESPROCDESC: TStringField
      FieldName = 'MESPROCDESC'
      Size = 12
    end
    object CdsEmiBalancomensalCONTQUEBRA: TStringField
      FieldName = 'CONTQUEBRA'
      Size = 25
    end
    object CdsEmiBalancomensalSEQCLASSIFICACAO: TStringField
      FieldName = 'SEQCLASSIFICACAO'
      Size = 1
    end
    object CdsEmiBalancomensalDESCMOVTO: TStringField
      FieldName = 'DESCMOVTO'
      Size = 25
    end
    object CdsEmiBalancomensalVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancomensalNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmiBalancomensalTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiBalancomensalENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmiBalancomensalNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmiBalancomensalBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmiBalancomensalCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmiBalancomensalCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmiBalancomensalEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmiBalancomensalCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmiBalancomensalINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmiBalancomensalUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object RvDsEmiBalancomensal: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiBalancomensal
    Left = 843
    Top = 256
  end
  object RvdsEmiBalancoanual: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiBalancoanual
    Left = 843
    Top = 301
  end
  object SqldsEmiBalancoanual: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select spba.anoproc'#13#10',spba.seqclassificacao'#13#10',spba.contquebra'#13#10',' +
      'spba.descmovto'#13#10',sum(spba.totjan) as totjan'#13#10',sum(spba.totfev) a' +
      's totfev'#13#10',sum(spba.totmar) as totmar'#13#10',sum(spba.totabr) as tota' +
      'br'#13#10',sum(spba.totmai) as totmai'#13#10',sum(spba.totjun) as totjun'#13#10',s' +
      'um(spba.totjul) as totjul'#13#10',sum(spba.totago) as totago'#13#10',sum(spb' +
      'a.totset) as totset'#13#10',sum(spba.totout) as totout'#13#10',sum(spba.totn' +
      'ov) as totnov'#13#10',sum(spba.totdez) as totdez'#13#10',(sum(spba.totjan) +' +
      ' sum(spba.totfev) + sum(spba.totmar) +'#13#10'  sum(spba.totabr) + sum' +
      '(spba.totmai) + sum(spba.totjun) +'#13#10'  sum(spba.totjul) + sum(spb' +
      'a.totago) + sum(spba.totset) +'#13#10'  sum(spba.totout) + sum(spba.to' +
      'tnov) + sum(spba.totdez)) as totdescmovto'#13#10',e.nome,e.telefone,e.' +
      'endereco,e.numero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.i' +
      'nscricao,e.uf'#13#10'from sp_balancoanual (:dataini,:datafin) spba'#13#10'in' +
      'ner join empresa e on e.codempresa = 1'#13#10'group by spba.anoproc,sp' +
      'ba.seqclassificacao'#13#10',spba.contquebra,spba.descmovto'#13#10',e.nome,e.' +
      'telefone,e.endereco,e.numero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10 +
      ',e.cnpj,e.inscricao,e.uf'#13#10
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
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 510
    Top = 301
  end
  object DspEmiBalancoanual: TDataSetProvider
    DataSet = SqldsEmiBalancoanual
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 624
    Top = 301
  end
  object CdsEmiBalancoanual: TClientDataSet
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
      end>
    ProviderName = 'DspEmiBalancoanual'
    Left = 728
    Top = 301
    object CdsEmiBalancoanualANOPROC: TStringField
      FieldName = 'ANOPROC'
      Size = 4
    end
    object CdsEmiBalancoanualSEQCLASSIFICACAO: TStringField
      FieldName = 'SEQCLASSIFICACAO'
      Size = 1
    end
    object CdsEmiBalancoanualCONTQUEBRA: TStringField
      FieldName = 'CONTQUEBRA'
      Size = 25
    end
    object CdsEmiBalancoanualDESCMOVTO: TStringField
      FieldName = 'DESCMOVTO'
      Size = 25
    end
    object CdsEmiBalancoanualTOTJAN: TFMTBCDField
      FieldName = 'TOTJAN'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTFEV: TFMTBCDField
      FieldName = 'TOTFEV'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTMAR: TFMTBCDField
      FieldName = 'TOTMAR'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTABR: TFMTBCDField
      FieldName = 'TOTABR'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTMAI: TFMTBCDField
      FieldName = 'TOTMAI'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTJUN: TFMTBCDField
      FieldName = 'TOTJUN'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTJUL: TFMTBCDField
      FieldName = 'TOTJUL'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTAGO: TFMTBCDField
      FieldName = 'TOTAGO'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTSET: TFMTBCDField
      FieldName = 'TOTSET'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTOUT: TFMTBCDField
      FieldName = 'TOTOUT'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTNOV: TFMTBCDField
      FieldName = 'TOTNOV'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTDEZ: TFMTBCDField
      FieldName = 'TOTDEZ'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualTOTDESCMOVTO: TFMTBCDField
      FieldName = 'TOTDESCMOVTO'
      Precision = 15
      Size = 2
    end
    object CdsEmiBalancoanualNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmiBalancoanualTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiBalancoanualENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmiBalancoanualNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmiBalancoanualBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmiBalancoanualCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmiBalancoanualCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmiBalancoanualEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmiBalancoanualCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmiBalancoanualINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmiBalancoanualUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object SqldsEmiDemonstDeb: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select spgdd.codigo'#13#10',spgdd.codcliente,spgdd.nomecli'#13#10',spgdd.dat' +
      'aemissao'#13#10',spgdd.quant'#13#10',spgdd.quantxpunit'#13#10',spgdd.jurosoudesc'#13#10 +
      ',(spgdd.quantxpunit + spgdd.jurosoudesc) as vltotalitem'#13#10',spgdd.' +
      'descitem'#13#10',e.nome,e.telefone,e.endereco,e.numero'#13#10',e.bairro,e.ci' +
      'dade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e.uf'#13#10'from sp_gera_demon' +
      'strativodebito'#13#10'(:dtinicial,:dtfinal,:nomeini,:nomefin) spgdd'#13#10'i' +
      'nner join empresa e on e.codempresa = 1'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 48
    Top = 301
  end
  object DspEmiDemonstDeb: TDataSetProvider
    DataSet = SqldsEmiDemonstDeb
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 168
    Top = 301
  end
  object CdsEmiDemonstDeb: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiDemonstDeb'
    Left = 280
    Top = 301
    object CdsEmiDemonstDebCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CdsEmiDemonstDebCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmiDemonstDebNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmiDemonstDebDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object CdsEmiDemonstDebQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 15
      Size = 2
    end
    object CdsEmiDemonstDebQUANTXPUNIT: TFMTBCDField
      FieldName = 'QUANTXPUNIT'
      Precision = 15
      Size = 2
    end
    object CdsEmiDemonstDebJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      Precision = 15
      Size = 2
    end
    object CdsEmiDemonstDebVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Precision = 15
      Size = 2
    end
    object CdsEmiDemonstDebDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Size = 50
    end
    object CdsEmiDemonstDebNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmiDemonstDebTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiDemonstDebENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmiDemonstDebNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmiDemonstDebBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmiDemonstDebCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmiDemonstDebCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmiDemonstDebEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmiDemonstDebCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmiDemonstDebINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmiDemonstDebUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object RvDsEmiDemonstDeb: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiDemonstDeb
    Left = 400
    Top = 301
  end
  object RvDsEmiRecPagto: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiRecPagto
    Left = 400
    Top = 349
  end
  object SqldsEmiRecPagto: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select nfm.codigo,nfm.codcliente,c.nome as nomecli'#13#10',nfd.datapag' +
      'to,nfm.dataemissao'#13#10',nfd.quant'#13#10',case'#13#10'     when (i.precovenda >' +
      ' nfd.punitario) then'#13#10'        (nfd.quant * i.precovenda)'#13#10'     e' +
      'lse'#13#10'      nfd.quantxpunit'#13#10'end quantxpunitnovo'#13#10',nfd.jurosoudes' +
      'c ,i.nome as descitem,nfd.numrecibo'#13#10',e.nome,e.telefone,e.endere' +
      'co,e.numero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscric' +
      'ao,e.uf'#13#10'from notafiscalvendadet nfd'#13#10'inner join notafiscalvenda' +
      'mes nfm on nfd.codigo = nfm.codigo'#13#10'inner join cliente c on nfm.' +
      'codcliente = c.codigo'#13#10'inner join item i on nfd.coditem = i.cdit' +
      'em'#13#10'inner join indicadorfinanceiro indf on indf.codindfinanceiro' +
      ' = 1'#13#10'inner join empresa e on e.codempresa = 1'#13#10'where ((nfd.data' +
      'pagto between :dtinicial and :dtfinal)'#13#10'and (c.nome = :nomeini)'#13 +
      #10'and (nfd.datapagto is not null)'#13#10'and (nfm.geroudup <> '#39'S'#39'))'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 48
    Top = 349
  end
  object DspEmiRecPagto: TDataSetProvider
    DataSet = SqldsEmiRecPagto
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 168
    Top = 349
  end
  object CdsEmiRecPagto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiRecPagto'
    Left = 280
    Top = 349
    object CdsEmiRecPagtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CdsEmiRecPagtoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmiRecPagtoNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmiRecPagtoDATAPAGTO: TDateField
      FieldName = 'DATAPAGTO'
    end
    object CdsEmiRecPagtoDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object CdsEmiRecPagtoQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 15
      Size = 2
    end
    object CdsEmiRecPagtoQUANTXPUNITNOVO: TFMTBCDField
      FieldName = 'QUANTXPUNITNOVO'
      Precision = 15
      Size = 6
    end
    object CdsEmiRecPagtoJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      Precision = 15
      Size = 2
    end
    object CdsEmiRecPagtoDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Required = True
      Size = 50
    end
    object CdsEmiRecPagtoNUMRECIBO: TIntegerField
      FieldName = 'NUMRECIBO'
    end
    object CdsEmiRecPagtoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmiRecPagtoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiRecPagtoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmiRecPagtoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmiRecPagtoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmiRecPagtoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmiRecPagtoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmiRecPagtoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmiRecPagtoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmiRecPagtoINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmiRecPagtoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object SqldsEmifichafinancli: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select spgff.*'#13#10',e.nome,e.telefone,e.endereco,e.numero'#13#10',e.bairr' +
      'o,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e.uf'#13#10'from sp_gera' +
      '_fichafinanceiracli (:dtinicial,:dtfinal,:nomeini) spgff'#13#10'inner ' +
      'join empresa e on e.codempresa = 1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 48
    Top = 397
  end
  object DspEmifichafinancli: TDataSetProvider
    DataSet = SqldsEmifichafinancli
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 168
    Top = 397
  end
  object CdsEmifichafinancli: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmifichafinancli'
    Left = 280
    Top = 397
    object CdsEmifichafinancliCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CdsEmifichafinancliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmifichafinancliNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmifichafinancliDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object CdsEmifichafinancliDATAVENCTO: TSQLTimeStampField
      FieldName = 'DATAVENCTO'
    end
    object CdsEmifichafinancliDATAPAGTO: TDateField
      FieldName = 'DATAPAGTO'
    end
    object CdsEmifichafinancliQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 15
      Size = 2
    end
    object CdsEmifichafinancliQUANTXPUNIT: TFMTBCDField
      FieldName = 'QUANTXPUNIT'
      Precision = 15
      Size = 2
    end
    object CdsEmifichafinancliJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      Precision = 15
      Size = 2
    end
    object CdsEmifichafinancliVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Precision = 15
      Size = 2
    end
    object CdsEmifichafinancliVLTOTALITEMABERTO: TFMTBCDField
      FieldName = 'VLTOTALITEMABERTO'
      Precision = 15
      Size = 2
    end
    object CdsEmifichafinancliVLTOTALITEMPAGO: TFMTBCDField
      FieldName = 'VLTOTALITEMPAGO'
      Precision = 15
      Size = 2
    end
    object CdsEmifichafinancliVLTOTALITEMGERAL: TFMTBCDField
      FieldName = 'VLTOTALITEMGERAL'
      Precision = 15
      Size = 2
    end
    object CdsEmifichafinancliDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Size = 50
    end
    object CdsEmifichafinancliNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmifichafinancliTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmifichafinancliENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmifichafinancliNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmifichafinancliBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmifichafinancliCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmifichafinancliCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmifichafinancliEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmifichafinancliCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmifichafinancliINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmifichafinancliUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object RvDsEmifichafinancli: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmifichafinancli
    Left = 400
    Top = 397
  end
  object SqldsEmiNfiscalemaberto: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select spgnfa.*'#13#10',e.nome,e.telefone,e.endereco,e.numero'#13#10',e.bair' +
      'ro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e.uf'#13#10'from sp_ger' +
      'a_nfiscalemaberto (:dtinicial,:dtfinal,:nomeini,:nomefin) spgnfa' +
      #13#10'inner join empresa e on e.codempresa = 1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 48
    Top = 445
  end
  object DspEmiNfiscalemaberto: TDataSetProvider
    DataSet = SqldsEmiNfiscalemaberto
    Options = [poNoReset, poAllowCommandText]
    Left = 168
    Top = 445
  end
  object CdsEmiNfiscalemaberto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiNfiscalemaberto'
    Left = 288
    Top = 445
    object CdsEmiNfiscalemabertoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CdsEmiNfiscalemabertoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmiNfiscalemabertoNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmiNfiscalemabertoDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object CdsEmiNfiscalemabertoDATAVENCTO: TSQLTimeStampField
      FieldName = 'DATAVENCTO'
    end
    object CdsEmiNfiscalemabertoQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfiscalemabertoPUNIT: TFMTBCDField
      FieldName = 'PUNIT'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfiscalemabertoQUANTXPUNIT: TFMTBCDField
      FieldName = 'QUANTXPUNIT'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfiscalemabertoJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfiscalemabertoVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfiscalemabertoDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Size = 50
    end
    object CdsEmiNfiscalemabertoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmiNfiscalemabertoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiNfiscalemabertoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmiNfiscalemabertoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmiNfiscalemabertoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmiNfiscalemabertoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmiNfiscalemabertoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmiNfiscalemabertoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmiNfiscalemabertoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmiNfiscalemabertoINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmiNfiscalemabertoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object RvDsEmiNfiscalemaberto: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiNfiscalemaberto
    Left = 408
    Top = 445
  end
  object SqldsEmiNfiscalpagas: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select spnfpaga.*'#13#10',e.nome,e.telefone,e.endereco,e.numero'#13#10',e.ba' +
      'irro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e.uf'#13#10'from sp_g' +
      'era_nfiscalpagas (:dtinicial,:dtfinal,:nomeini,:nomefin) spnfpag' +
      'a'#13#10'inner join empresa e on e.codempresa = 1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 48
    Top = 493
  end
  object DspEmiNfiscalpagas: TDataSetProvider
    DataSet = SqldsEmiNfiscalpagas
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 168
    Top = 493
  end
  object CdsEmiNfiscalpagas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dtinicial'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtfinal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiNfiscalpagas'
    Left = 280
    Top = 493
    object CdsEmiNfiscalpagasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CdsEmiNfiscalpagasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmiNfiscalpagasNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmiNfiscalpagasDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object CdsEmiNfiscalpagasDATAVENCTO: TSQLTimeStampField
      FieldName = 'DATAVENCTO'
    end
    object CdsEmiNfiscalpagasDATAPAGTO: TDateField
      FieldName = 'DATAPAGTO'
    end
    object CdsEmiNfiscalpagasQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfiscalpagasPUNIT: TFMTBCDField
      FieldName = 'PUNIT'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfiscalpagasQUANTXPUNIT: TFMTBCDField
      FieldName = 'QUANTXPUNIT'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfiscalpagasJUROSOUDESC: TFMTBCDField
      FieldName = 'JUROSOUDESC'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfiscalpagasVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfiscalpagasDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Size = 50
    end
    object CdsEmiNfiscalpagasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmiNfiscalpagasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiNfiscalpagasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmiNfiscalpagasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmiNfiscalpagasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmiNfiscalpagasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmiNfiscalpagasCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmiNfiscalpagasEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmiNfiscalpagasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmiNfiscalpagasINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmiNfiscalpagasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object RvDsEmiNfiscalpagas: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiNfiscalpagas
    Left = 400
    Top = 493
  end
  object SqldsEmiNfvencxdias: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select spgnfv.*'#13#10',e.nome,e.telefone,e.endereco,e.numero'#13#10',e.bair' +
      'ro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e.uf'#13#10'from sp_ger' +
      'a_nfiscalvencidas (:nomeini,:nomefin) spgnfv'#13#10'inner join empresa' +
      ' e on e.codempresa = 1'#13#10'where spgnfv.diasvencidos >= :diasvencid' +
      'os'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'diasvencidos'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 512
    Top = 349
  end
  object DspEmiNfvencxdias: TDataSetProvider
    DataSet = SqldsEmiNfvencxdias
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 626
    Top = 349
  end
  object CdsEmiNfvencxdias: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'diasvencidos'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiNfvencxdias'
    Left = 728
    Top = 349
    object CdsEmiNfvencxdiasCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CdsEmiNfvencxdiasCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmiNfvencxdiasNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmiNfvencxdiasDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object CdsEmiNfvencxdiasDATAVENCTO: TSQLTimeStampField
      FieldName = 'DATAVENCTO'
    end
    object CdsEmiNfvencxdiasVLTOTALITEM: TFMTBCDField
      FieldName = 'VLTOTALITEM'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfvencxdiasDESCITEM: TStringField
      FieldName = 'DESCITEM'
      Size = 50
    end
    object CdsEmiNfvencxdiasDIASVENCIDOS: TIntegerField
      FieldName = 'DIASVENCIDOS'
    end
    object CdsEmiNfvencxdiasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiNfvencxdiasNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmiNfvencxdiasTELEFONE_1: TStringField
      FieldName = 'TELEFONE_1'
      Size = 15
    end
    object CdsEmiNfvencxdiasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmiNfvencxdiasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmiNfvencxdiasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmiNfvencxdiasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmiNfvencxdiasCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmiNfvencxdiasEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmiNfvencxdiasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmiNfvencxdiasINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmiNfvencxdiasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object RvDsEmiNfvencxdias: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiNfvencxdias
    Left = 843
    Top = 349
  end
  object SqldsEmiNfvencxdiassint: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select spgnfv.codcliente,spgnfv.nomecli,spgnfv.telefone'#13#10',spgnfv' +
      '.dataemissao,spgnfv.datavencto'#13#10',sum(spgnfv.vltotalitem) as vlto' +
      'talnfiscal,spgnfv.diasvencidos'#13#10',e.nome,e.telefone,e.endereco,e.' +
      'numero'#13#10',e.bairro,e.cidade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e.' +
      'uf'#13#10'from sp_gera_nfiscalvencidas (:nomeini,:nomefin) spgnfv'#13#10'inn' +
      'er join empresa e on e.codempresa = 1'#13#10'where spgnfv.diasvencidos' +
      ' >= :diasvencidos'#13#10'group by spgnfv.codcliente,spgnfv.nomecli,spg' +
      'nfv.telefone'#13#10',spgnfv.dataemissao,spgnfv.datavencto,'#13#10'spgnfv.dia' +
      'svencidos,e.nome,e.telefone,e.endereco,e.numero'#13#10',e.bairro,e.cid' +
      'ade,e.cep,e.email'#13#10',e.cnpj,e.inscricao,e.uf'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'diasvencidos'
        ParamType = ptInput
      end>
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 515
    Top = 400
  end
  object DspEmiNfvencxdiassint: TDataSetProvider
    DataSet = SqldsEmiNfvencxdiassint
    Options = [poNoReset, poAllowCommandText]
    Left = 632
    Top = 400
  end
  object CdsEmiNfvencxdiassint: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'nomeini'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nomefin'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'diasvencidos'
        ParamType = ptInput
      end>
    ProviderName = 'DspEmiNfvencxdiassint'
    Left = 744
    Top = 400
    object CdsEmiNfvencxdiassintCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object CdsEmiNfvencxdiassintNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object CdsEmiNfvencxdiassintTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CdsEmiNfvencxdiassintDATAVENCTO: TSQLTimeStampField
      FieldName = 'DATAVENCTO'
    end
    object CdsEmiNfvencxdiassintVLTOTALNFISCAL: TFMTBCDField
      FieldName = 'VLTOTALNFISCAL'
      Precision = 15
      Size = 2
    end
    object CdsEmiNfvencxdiassintDIASVENCIDOS: TIntegerField
      FieldName = 'DIASVENCIDOS'
    end
    object CdsEmiNfvencxdiassintNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CdsEmiNfvencxdiassintTELEFONE_1: TStringField
      FieldName = 'TELEFONE_1'
      Size = 15
    end
    object CdsEmiNfvencxdiassintENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CdsEmiNfvencxdiassintNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdsEmiNfvencxdiassintBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 31
    end
    object CdsEmiNfvencxdiassintCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object CdsEmiNfvencxdiassintCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CdsEmiNfvencxdiassintEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CdsEmiNfvencxdiassintCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CdsEmiNfvencxdiassintINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      Size = 12
    end
    object CdsEmiNfvencxdiassintUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CdsEmiNfvencxdiassintDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
  end
  object RvdsEmiNfvencxdiassint: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = CdsEmiNfvencxdiassint
    Left = 864
    Top = 400
  end
end
