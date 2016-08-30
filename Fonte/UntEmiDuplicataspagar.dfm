object FrmEmiDuplicataspagar: TFrmEmiDuplicataspagar
  Left = 201
  Top = 146
  Width = 721
  Height = 512
  Caption = 'Emiss'#245'es Contas a Pagar'
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
    Left = 6
    Top = 8
    Width = 700
    Height = 73
    TabOrder = 0
    object RadioButton3: TRadioButton
      Left = 315
      Top = 16
      Width = 151
      Height = 17
      Caption = 'Entrada Notas - Itens'
      TabOrder = 0
      OnClick = RadioButton3Click
    end
    object RadioButton1: TRadioButton
      Left = 8
      Top = 16
      Width = 121
      Height = 17
      Caption = 'Fornecedor'
      TabOrder = 1
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 146
      Top = 16
      Width = 159
      Height = 17
      Caption = 'Entrada Notas - Fornecedor'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RadioButton2Click
    end
    object RadioButton4: TRadioButton
      Left = 490
      Top = 16
      Width = 205
      Height = 17
      Caption = 'Entrada Notas - Per'#237'odo(Data Entrada)'
      TabOrder = 3
      OnClick = RadioButton4Click
    end
    object RadioButton5: TRadioButton
      Left = 8
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Duplicatas Pagas'
      TabOrder = 4
      OnClick = RadioButton5Click
    end
    object RadioButton6: TRadioButton
      Left = 146
      Top = 48
      Width = 121
      Height = 17
      Caption = 'Duplicatas em Aberto'
      TabOrder = 5
      OnClick = RadioButton6Click
    end
    object RadioButton7: TRadioButton
      Left = 315
      Top = 48
      Width = 166
      Height = 17
      Caption = 'Duplicatas em Aberto Mensal'
      TabOrder = 6
      OnClick = RadioButton7Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 29
    Top = 88
    Width = 641
    Height = 385
    TabOrder = 1
    object GroupBoxdata: TGroupBox
      Left = 17
      Top = 137
      Width = 587
      Height = 88
      TabOrder = 1
      object Label1: TLabel
        Left = 67
        Top = 11
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
        TabOrder = 3
        OnEnter = edit_inicialEnter
        OnKeyDown = edit_inicialKeyDown
      end
      object cmb_dtInicial: TDateTimePicker
        Left = 166
        Top = 29
        Width = 21
        Height = 21
        Date = 38110.711524768500000000
        Time = 38110.711524768500000000
        TabOrder = 1
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
        TabOrder = 4
        OnEnter = edit_finalEnter
        OnKeyDown = edit_finalKeyDown
      end
      object cmb_dtFinal: TDateTimePicker
        Left = 305
        Top = 29
        Width = 21
        Height = 21
        Date = 38110.711524768500000000
        Time = 38110.711524768500000000
        TabOrder = 2
        OnChange = cmb_dtFinalChange
        OnEnter = cmb_dtFinalEnter
      end
      object GroupBox4: TGroupBox
        Left = 382
        Top = 9
        Width = 192
        Height = 60
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 0
        Visible = False
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
      Top = 337
      Width = 185
      Height = 40
      TabOrder = 2
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
    object GroupBoxfornecedor: TGroupBox
      Left = 16
      Top = 23
      Width = 587
      Height = 105
      TabOrder = 0
      object Label6: TLabel
        Left = 5
        Top = 8
        Width = 172
        Height = 16
        Caption = 'Selecione o Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBoximpcligeral: TGroupBox
        Left = 420
        Top = 10
        Width = 164
        Height = 84
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 1
        Visible = False
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
          Width = 157
          Height = 16
          Caption = 'fornecedor em branco '
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
        TabOrder = 0
      end
    end
  end
end
