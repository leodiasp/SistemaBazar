object FrmEmiOrcamento: TFrmEmiOrcamento
  Left = 192
  Top = 114
  Width = 725
  Height = 612
  Caption = 'FrmEmiorcamento'
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
    Left = -5
    Top = -1
    Width = 794
    Height = 1123
    DataSource = DsEmiOrcamento
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
      Height = 35
      BandType = btHeader
      object RLDBText5: TRLDBText
        Left = 136
        Top = 13
        Width = 52
        Height = 14
        DataField = 'NOMEEMP'
        DataSource = DsEmiOrcamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 256
        Top = 13
        Width = 54
        Height = 14
        DataField = 'TELEFONE'
        DataSource = DsEmiOrcamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 4
        Top = 15
        Width = 56
        Height = 14
        Caption = 'Or'#231'amento'
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
      Top = 73
      Width = 718
      Height = 35
      BandType = btHeader
      object RLLabel3: TRLLabel
        Left = 4
        Top = 15
        Width = 46
        Height = 14
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 69
        Top = 15
        Width = 78
        Height = 14
        DataField = 'DATAEMISSAO'
        DataSource = DsEmiOrcamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 196
        Top = 15
        Width = 48
        Height = 14
        Caption = 'Validade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 253
        Top = 15
        Width = 74
        Height = 14
        DataField = 'DATAVENCTO'
        DataSource = DsEmiOrcamento
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
      Top = 108
      Width = 718
      Height = 269
      DataSource = DsEmiOrcamento
      object RLBand3: TRLBand
        Left = 0
        Top = 29
        Width = 718
        Height = 24
        object RLDBText7: TRLDBText
          Left = 6
          Top = 9
          Width = 43
          Height = 14
          DataField = 'CODIGO'
          DataSource = DsEmiOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 80
          Top = 9
          Width = 52
          Height = 14
          DataField = 'DESCITEM'
          DataSource = DsEmiOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 281
          Top = 9
          Width = 39
          Height = 14
          Alignment = taRightJustify
          DataField = 'QUANT'
          DataSource = DsEmiOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 365
          Top = 10
          Width = 51
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLTOTAL'
          DataSource = DsEmiOrcamento
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
        Top = 53
        Width = 718
        Height = 196
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 332
          Top = 56
          Width = 83
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLTOTAL'
          DataSource = DsEmiOrcamento
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
          Top = 54
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
          Top = 68
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
          Top = 81
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
        object RLLabel14: TRLLabel
          Left = 1
          Top = 121
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
          Top = 140
          Width = 139
          Height = 14
          Caption = 'Agradecemos a prefer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBResult3: TRLDBResult
          Left = 330
          Top = 107
          Width = 83
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLTOTAL'
          DataSource = DsEmiOrcamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 238
          Top = 94
          Width = 180
          Height = 16
          Caption = '--------------------------------------------'
        end
        object RLLabel18: TRLLabel
          Left = 132
          Top = 112
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
          Left = 1
          Top = 35
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
        object RLLabel5: TRLLabel
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
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 29
        BandType = btColumnHeader
        object RLLabel4: TRLLabel
          Left = 4
          Top = 7
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
        object RLLabel6: TRLLabel
          Left = 80
          Top = 7
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
          Left = 288
          Top = 8
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
          Left = 384
          Top = 8
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
          Top = -6
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
          Top = 19
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
  object DsEmiOrcamento: TDataSource
    DataSet = DmModuleRelatorioI.CdsEmiOrcamento
    Left = 379
    Top = 15
  end
end
