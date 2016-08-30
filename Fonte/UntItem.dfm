inherited FrmItem: TFrmItem
  Left = 97
  Top = 111
  Caption = 'Item'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPesquisar: TBitBtn
      Top = 10
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 32
    Top = 29
    Width = 769
    Height = 457
    Caption = 'Dados Item: '
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 66
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 107
      Width = 58
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 40
      Top = 163
      Width = 35
      Height = 13
      Caption = 'Grupo'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 40
      Top = 220
      Width = 64
      Height = 13
      Caption = 'Est.M'#237'nimo'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 120
      Top = 220
      Width = 65
      Height = 13
      Caption = 'Est.M'#225'ximo'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 200
      Top = 220
      Width = 66
      Height = 13
      Caption = 'Saldo Atual'
      FocusControl = DBEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 287
      Top = 220
      Width = 70
      Height = 13
      Caption = 'Pre'#231'o Custo'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 389
      Top = 220
      Width = 74
      Height = 13
      Caption = 'Pre'#231'o Venda'
      FocusControl = DBEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 582
      Top = 220
      Width = 48
      Height = 13
      Caption = 'Unidade'
      FocusControl = DBEdit10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 493
      Top = 220
      Width = 71
      Height = 13
      Caption = 'Custo M'#233'dio'
      FocusControl = DBEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 96
      Top = 163
      Width = 96
      Height = 13
      Caption = 'Descri'#231#227'o Grupo'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 637
      Top = 220
      Width = 57
      Height = 13
      Caption = 'Promo'#231#227'o'
      FocusControl = DBEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 83
      Width = 65
      Height = 21
      Hint = 'C'#243'digo Item '
      Color = clInfoBk
      DataField = 'CDITEM'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 40
      Top = 123
      Width = 654
      Height = 21
      Hint = 'Descri'#231#227'o do Item'
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyDown = DBEdit2KeyDown
    end
    object DBEdit3: TDBEdit
      Left = 40
      Top = 179
      Width = 41
      Height = 21
      Hint = 'C'#243'digo do Grupo Item'
      DataField = 'CDGRUPOITEM'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyDown = DBEdit3KeyDown
    end
    object DBEdit4: TDBEdit
      Left = 40
      Top = 235
      Width = 62
      Height = 21
      Hint = 'Estoque M'#237'nimo'
      DataField = 'ESTMINIMO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyDown = DBEdit4KeyDown
    end
    object DBEdit5: TDBEdit
      Left = 120
      Top = 235
      Width = 62
      Height = 21
      Hint = 'Estoque M'#225'ximo'
      DataField = 'ESTMAXIMO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnKeyDown = DBEdit4KeyDown
    end
    object DBEdit6: TDBEdit
      Left = 200
      Top = 235
      Width = 64
      Height = 21
      Hint = 'Saldo do Item'
      DataField = 'SALDOATUAL'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnKeyDown = DBEdit4KeyDown
    end
    object DBEdit7: TDBEdit
      Left = 288
      Top = 235
      Width = 65
      Height = 21
      Hint = 'Pre'#231'o Custo do Item'
      DataField = 'PRECOCUSTO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnKeyDown = DBEdit4KeyDown
    end
    object DBEdit8: TDBEdit
      Left = 389
      Top = 235
      Width = 76
      Height = 21
      Hint = 'Pre'#231'o de Venda do Item'
      DataField = 'PRECOVENDA'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnKeyDown = DBEdit4KeyDown
    end
    object DBEdit10: TDBEdit
      Left = 583
      Top = 235
      Width = 41
      Height = 21
      Hint = 'Unidade do Item'
      CharCase = ecUpperCase
      DataField = 'UNIDADE'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnKeyDown = DBEdit4KeyDown
    end
    object DBEdit9: TDBEdit
      Left = 496
      Top = 235
      Width = 68
      Height = 21
      Hint = 'Custo M'#233'dio do Item'
      DataField = 'CUSTOMEDIO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnKeyDown = DBEdit4KeyDown
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 96
      Top = 179
      Width = 664
      Height = 21
      Hint = 'Descri'#231#227'o do Grupo Item '
      DataField = 'descgrupoitem'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyDown = DBLookupComboBox1KeyDown
    end
    object DBEdit11: TDBEdit
      Left = 637
      Top = 235
      Width = 68
      Height = 21
      Hint = 'Custo M'#233'dio do Item'
      DataField = 'PROMOCAO'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnKeyDown = DBEdit4KeyDown
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DmModuleI.CdsItem
  end
end
