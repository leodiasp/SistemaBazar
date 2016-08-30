inherited FrmDbgridPadrao: TFrmDbgridPadrao
  Left = 140
  Top = 100
  Height = 636
  Caption = 'Dbgridgeral'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 618
    Top = 76
    Width = 23
    Height = 22
    Cursor = crHandPoint
    Hint = 'Executa Filtro'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFF333333333333000333333333
      3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
      3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
      0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
      BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
      33337777773FF733333333333300033333333333337773333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  inherited Panel1: TPanel
    Top = 554
    inherited btnRelatorio: TBitBtn
      OnClick = btnRelatorioClick
    end
    inherited btnPesquisar: TBitBtn
      Visible = False
    end
  end
  object Button2: TButton [2]
    Left = 662
    Top = 64
    Width = 105
    Height = 39
    Cursor = crHandPoint
    Hint = 'Limpar Dados de Consulta'
    Caption = '&Limpar Filtro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid [3]
    Left = 15
    Top = 112
    Width = 786
    Height = 363
    Color = clInfoBk
    DataSource = DtSrc
    FixedColor = clInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColEnter = DBGrid1ColEnter
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
  end
  object GroupBox1: TGroupBox [4]
    Left = 128
    Top = 56
    Width = 489
    Height = 50
    Caption = 'Digite a descri'#231#227'o: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Edit1: TEdit
      Left = 3
      Top = 19
      Width = 482
      Height = 21
      CharCase = ecUpperCase
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
  end
  object GroupBox2: TGroupBox [5]
    Left = 15
    Top = 479
    Width = 786
    Height = 73
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 4
    object Label1: TLabel
      Left = 8
      Top = 15
      Width = 29
      Height = 13
      Caption = 'Item:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 48
      Width = 63
      Height = 13
      Caption = 'Vendedor: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 376
      Top = 15
      Width = 71
      Height = 13
      Caption = 'Total Pago: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 70
      Top = 15
      Width = 297
      Height = 21
      Color = clAqua
      DataField = 'descitem'
      DataSource = Dsrodaperecvenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 70
      Top = 44
      Width = 297
      Height = 21
      Color = clAqua
      DataField = 'vendedor'
      DataSource = Dsrodaperecvenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 446
      Top = 12
      Width = 107
      Height = 21
      Color = clMenu
      DataField = 'TOTALPAGO'
      DataSource = Dsrodaperecvenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Dsrodaperecvenda: TDataSource
    Left = 640
    Top = 488
  end
end
