object Frmemifatdiario: TFrmemifatdiario
  Left = 204
  Top = 187
  Width = 701
  Height = 480
  Caption = 'Emiss'#227'o do Faturamento - Venda Simples'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 8
    Width = 641
    Height = 73
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 10
      Top = 32
      Width = 103
      Height = 17
      Caption = 'Di'#225'rio Anal'#237'tico'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 112
      Top = 32
      Width = 124
      Height = 17
      Caption = 'Di'#225'rio Sint'#233'tico'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 216
      Top = 32
      Width = 124
      Height = 17
      Caption = 'Faturamento Mensal'
      TabOrder = 2
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 344
      Top = 32
      Width = 129
      Height = 17
      Caption = 'Fechamento do Caixa'
      TabOrder = 3
      OnClick = RadioButton4Click
    end
    object RadioButton5: TRadioButton
      Left = 480
      Top = 32
      Width = 137
      Height = 17
      Caption = 'Notas Fiscais em Aberto'
      TabOrder = 4
      OnClick = RadioButton5Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 88
    Width = 641
    Height = 345
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 20
      Top = 175
      Width = 570
      Height = 74
      TabOrder = 0
      object Label1: TLabel
        Left = 67
        Top = 12
        Width = 83
        Height = 16
        Caption = 'Data Inicial '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 1
        Top = 26
        Width = 60
        Height = 16
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 192
        Top = 28
        Width = 10
        Height = 16
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 208
        Top = 12
        Width = 72
        Height = 16
        Caption = 'Data Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edit_inicial: TEdit
        Left = 68
        Top = 29
        Width = 98
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = edit_inicialEnter
        OnKeyDown = edit_inicialKeyDown
      end
      object cmb_dtInicial: TDateTimePicker
        Left = 168
        Top = 29
        Width = 21
        Height = 21
        Date = 38110.711524768500000000
        Time = 38110.711524768500000000
        TabOrder = 2
        OnChange = cmb_dtInicialChange
        OnEnter = cmb_dtInicialEnter
      end
      object edit_final: TEdit
        Left = 207
        Top = 29
        Width = 98
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cmb_dtFinal: TDateTimePicker
        Left = 306
        Top = 28
        Width = 21
        Height = 21
        Date = 38110.711524768500000000
        Time = 38110.711524768500000000
        TabOrder = 3
        OnChange = cmb_dtFinalChange
      end
      object GroupBox4: TGroupBox
        Left = 334
        Top = 9
        Width = 192
        Height = 60
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 4
        object Label5: TLabel
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
        object Label8: TLabel
          Left = 2
          Top = 9
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
        object Label10: TLabel
          Left = 5
          Top = 25
          Width = 167
          Height = 16
          Caption = 'Data inicial e Data Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 5
          Top = 39
          Width = 177
          Height = 16
          Caption = 'em branco imprime geral.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object GroupBoximprimir: TGroupBox
      Left = 201
      Top = 289
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
    object GroupBoxcliente: TGroupBox
      Left = 16
      Top = 23
      Width = 587
      Height = 105
      TabOrder = 2
      object Label6: TLabel
        Left = 5
        Top = 8
        Width = 140
        Height = 16
        Caption = 'Selecione o Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox5: TGroupBox
        Left = 431
        Top = 10
        Width = 144
        Height = 84
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 0
        object Label7: TLabel
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
        object Label9: TLabel
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
        object Label12: TLabel
          Left = 7
          Top = 36
          Width = 128
          Height = 16
          Caption = 'cliente em branco '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
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
        CharCase = ecUpperCase
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
