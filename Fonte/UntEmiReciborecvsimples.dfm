object FrmEmiReciborecvsimples: TFrmEmiReciborecvsimples
  Left = 192
  Top = 114
  Width = 681
  Height = 611
  Caption = 'FrmEmiReciborecvsimples'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 1
    Width = 794
    Height = 1123
    DataSource = DsEmiReciborecvsimples
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio Recibo Venda Simples'
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 21
      BandType = btHeader
      object RLDBText5: TRLDBText
        Left = 104
        Top = 5
        Width = 73
        Height = 14
        DataField = 'NOMEEMPOUT'
        DataSource = DsEmiReciborecvsimples
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 59
      Width = 718
      Height = 54
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 4
        Top = 11
        Width = 63
        Height = 14
        Caption = 'Recibo N'#186'..: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 4
        Top = 25
        Width = 56
        Height = 14
        Caption = 'Cliente......:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 77
        Top = 11
        Width = 83
        Height = 14
        DataField = 'NUMRECIBOOUT'
        DataSource = DsEmiReciborecvsimples
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 196
        Top = 25
        Width = 68
        Height = 14
        DataField = 'NOMECLIOUT'
        DataSource = DsEmiReciborecvsimples
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 77
        Top = 25
        Width = 104
        Height = 14
        DataField = 'CODIGOCLIENTEOUT'
        DataSource = DsEmiReciborecvsimples
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 4
        Top = 39
        Width = 59
        Height = 14
        Caption = 'Pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 77
        Top = 39
        Width = 89
        Height = 14
        DataField = 'DATAPAGTOOUT'
        DataSource = DsEmiReciborecvsimples
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 113
      Width = 718
      Height = 212
      DataSource = DsEmiReciborecvsimples
      object RLBand3: TRLBand
        Left = 0
        Top = 46
        Width = 718
        Height = 34
        object RLDBText7: TRLDBText
          Left = 6
          Top = 14
          Width = 82
          Height = 14
          DataField = 'NUMVENDAOUT'
          DataSource = DsEmiReciborecvsimples
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 70
          Top = 14
          Width = 99
          Height = 14
          DataField = 'DATAEMISSAOOUT'
          DataSource = DsEmiReciborecvsimples
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 137
          Top = 14
          Width = 73
          Height = 14
          DataField = 'DESCITEMOUT'
          DataSource = DsEmiReciborecvsimples
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 317
          Top = 14
          Width = 60
          Height = 14
          Alignment = taRightJustify
          DataField = 'QUANTOUT'
          DataSource = DsEmiReciborecvsimples
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 401
          Top = 14
          Width = 72
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLTOTALOUT'
          DataSource = DsEmiReciborecvsimples
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 503
          Top = 14
          Width = 58
          Height = 14
          Alignment = taRightJustify
          DataField = 'JUROSOUT'
          DataSource = DsEmiReciborecvsimples
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 570
          Top = 14
          Width = 87
          Height = 14
          Alignment = taRightJustify
          DataField = 'DESCONTOSOUT'
          DataSource = DsEmiReciborecvsimples
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 80
        Width = 718
        Height = 115
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 367
          Top = 10
          Width = 104
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLTOTALOUT'
          DataSource = DsEmiReciborecvsimples
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 76
          Top = 8
          Width = 49
          Height = 14
          Caption = 'Sub-total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 77
          Top = 22
          Width = 49
          Height = 14
          Caption = 'Multa .....:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 78
          Top = 35
          Width = 52
          Height = 14
          Caption = 'Desconto '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 383
          Top = 22
          Width = 90
          Height = 14
          Alignment = taRightJustify
          DataField = 'JUROSOUT'
          DataSource = DsEmiReciborecvsimples
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 1
          Top = 75
          Width = 483
          Height = 14
          Caption = 
            '----------------------------------------------------------------' +
            '--------------------------------------------------------'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 116
          Top = 94
          Width = 333
          Height = 14
          Caption = 
            'Recebido por: --------------------------------------------------' +
            '---------------'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 354
          Top = 38
          Width = 119
          Height = 14
          Alignment = taRightJustify
          DataField = 'DESCONTOSOUT'
          DataSource = DsEmiReciborecvsimples
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult3: TRLDBResult
          Left = 254
          Top = 61
          Width = 219
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLTOTAITEMCOMJUROSOUDESCOUT'
          DataSource = DsEmiReciborecvsimples
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 296
          Top = 48
          Width = 180
          Height = 16
          Caption = '--------------------------------------------'
        end
        object RLLabel18: TRLLabel
          Left = 190
          Top = 66
          Width = 69
          Height = 14
          Caption = 'Total a pagar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 17
          Top = -4
          Width = 483
          Height = 14
          Caption = 
            '----------------------------------------------------------------' +
            '--------------------------------------------------------'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 46
        BandType = btColumnHeader
        object RLLabel4: TRLLabel
          Left = 4
          Top = 22
          Width = 50
          Height = 14
          Caption = 'N'#186' Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 84
          Top = 23
          Width = 25
          Height = 14
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 134
          Top = 22
          Width = 52
          Height = 14
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 342
          Top = 23
          Width = 35
          Height = 14
          Caption = 'Quant.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 438
          Top = 23
          Width = 29
          Height = 14
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 0
          Top = 9
          Width = 483
          Height = 14
          Caption = 
            '----------------------------------------------------------------' +
            '--------------------------------------------------------'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 1
          Top = 34
          Width = 483
          Height = 14
          Caption = 
            '----------------------------------------------------------------' +
            '--------------------------------------------------------'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object DsEmiReciborecvsimples: TDataSource
    DataSet = DmModuleRelatorioI.CdsEmiReciborecvsimples
    Left = 368
    Top = 8
  end
end
