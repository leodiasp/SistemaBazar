inherited FrmGeracaoDupreceber: TFrmGeracaoDupreceber
  Left = 74
  Top = 182
  Width = 899
  Height = 539
  Caption = 'FrmGeracaoDupreceber'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 457
    Width = 891
    inherited btnRelatorio: TBitBtn
      Visible = False
    end
    inherited btnPesquisar: TBitBtn
      Visible = False
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 8
    Top = 16
    Width = 793
    Height = 417
    Color = clCream
    ParentColor = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 6
      Top = 24
      Width = 771
      Height = 384
      Color = clInfoBk
      DataSource = DtSrc
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMPRESTACAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMPARCIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORPRESTACAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAVENCTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATABAIXA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUROS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODBANCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMCHEQUE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end>
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DmModuleI.Cdsduprec
    Left = 376
    Top = 96
  end
  object Sqlquerygeraduprec: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select nfvm.codigo,nfvm.valortotalnfiscal,nfvm.valorentrada'
      ',nfvm.dataemissao,cp.numparcelas,coalesce(cp.fator,0) as fator'
      
        ',(nfvm.valortotalnfiscalsementrada / cp.numparcelas) as vlparcel' +
        'a'
      'from notafiscalvendames nfvm'
      'inner join condicaopagto cp on nfvm.codcondpagto = cp.codigo'
      'where nfvm.codigo = :codigo')
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 200
    Top = 88
    object SqlquerygeraduprecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SqlquerygeraduprecVALORTOTALNFISCAL: TFMTBCDField
      FieldName = 'VALORTOTALNFISCAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object SqlquerygeraduprecVALORENTRADA: TFMTBCDField
      FieldName = 'VALORENTRADA'
      Precision = 15
      Size = 2
    end
    object SqlquerygeraduprecDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object SqlquerygeraduprecNUMPARCELAS: TIntegerField
      FieldName = 'NUMPARCELAS'
    end
    object SqlquerygeraduprecFATOR: TFMTBCDField
      FieldName = 'FATOR'
      Precision = 15
      Size = 6
    end
    object SqlquerygeraduprecVLPARCELA: TFMTBCDField
      FieldName = 'VLPARCELA'
      Precision = 15
      Size = 2
    end
  end
  object Sqlquerydeletaduprec: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete from DUPLICATASRECEBER dr where dr.codigo = :codigo')
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 272
    Top = 88
  end
  object Sqlqueryverifsetemduppagas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select dr.codigo,dr.numprestacao,dr.databaixa'
      'from DUPLICATASRECEBER dr'
      'where ((dr.codigo = :codigo)'
      'and (dr.databaixa is not null))')
    SQLConnection = FrmMenuPrincipal.SQLConnection1
    Left = 248
    Top = 144
    object SqlqueryverifsetemduppagasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SqlqueryverifsetemduppagasNUMPRESTACAO: TIntegerField
      FieldName = 'NUMPRESTACAO'
      Required = True
    end
    object SqlqueryverifsetemduppagasDATABAIXA: TDateField
      FieldName = 'DATABAIXA'
    end
  end
end
