object FrmEmiItem: TFrmEmiItem
  Left = 208
  Top = 187
  Width = 696
  Height = 480
  Caption = 'Emiss'#227'o do Item'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 24
    Width = 665
    Height = 47
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 12
      Top = 16
      Width = 174
      Height = 17
      Caption = 'Emiss'#227'o Item - Descri'#231#227'o'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 191
      Top = 16
      Width = 156
      Height = 17
      Caption = 'Emiss'#227'o Item - C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 370
      Top = 16
      Width = 152
      Height = 17
      Caption = 'Emiss'#227'o Item - Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = RadioButton3Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 80
    Width = 609
    Height = 321
    TabOrder = 1
    object GroupBoxdesc: TGroupBox
      Left = 8
      Top = 23
      Width = 585
      Height = 106
      TabOrder = 0
      object Labeltituloopcao: TLabel
        Left = 5
        Top = 8
        Width = 117
        Height = 16
        Caption = 'Descri'#231#227'o Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 5
        Top = 48
        Width = 110
        Height = 16
        Caption = 'Descri'#231#227'o Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox6: TGroupBox
        Left = 438
        Top = 12
        Width = 139
        Height = 84
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 0
        object Label6: TLabel
          Left = -124
          Top = 8
          Width = 5
          Height = 16
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 4
          Top = 16
          Width = 70
          Height = 16
          Caption = 'Aten'#231#227'o:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Labeltituloatencao: TLabel
          Left = 7
          Top = 36
          Width = 126
          Height = 16
          Caption = 'descri'#231#227'o branco '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 7
          Top = 57
          Width = 100
          Height = 16
          Caption = 'imprime geral.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Edit_descinicial: TEdit
        Left = 6
        Top = 24
        Width = 377
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Edit_descfinal: TEdit
        Left = 7
        Top = 64
        Width = 377
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBoximprimir: TGroupBox
      Left = 225
      Top = 273
      Width = 185
      Height = 40
      TabOrder = 1
      object BitBtnimprimir: TBitBtn
        Left = 42
        Top = 10
        Width = 97
        Height = 25
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtnimprimirClick
      end
    end
    object GroupBoxgrupoitem: TGroupBox
      Left = 8
      Top = 135
      Width = 587
      Height = 105
      TabOrder = 2
      Visible = False
      object Label2: TLabel
        Left = 5
        Top = 8
        Width = 140
        Height = 16
        Caption = 'Descri'#231#227'o do Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox4: TGroupBox
        Left = 431
        Top = 10
        Width = 144
        Height = 84
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 0
        object Label3: TLabel
          Left = -124
          Top = 8
          Width = 5
          Height = 16
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 4
          Top = 16
          Width = 70
          Height = 16
          Caption = 'Aten'#231#227'o:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 7
          Top = 36
          Width = 126
          Height = 16
          Caption = 'descri'#231#227'o branco '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 7
          Top = 57
          Width = 100
          Height = 16
          Caption = 'imprime geral.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object ComboBox1: TComboBox
        Left = 6
        Top = 25
        Width = 409
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 1
      end
    end
  end
end
