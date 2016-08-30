inherited FrmIndicadorFinanceiro: TFrmIndicadorFinanceiro
  Caption = 'FrmIndicadorFinanceiro'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnIncluir: TBitBtn
      Left = 15
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 120
    Top = 104
    Width = 537
    Height = 321
    Caption = 'Indicador Financeiro: '
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 72
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 120
      Width = 102
      Height = 13
      Caption = 'Juros Mora ao dia'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 168
      Width = 75
      Height = 13
      Caption = 'Dias Isen'#231#227'o'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 88
      Width = 65
      Height = 21
      Color = clSkyBlue
      DataField = 'CODINDFINANCEIRO'
      DataSource = DtSrc
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 32
      Top = 136
      Width = 97
      Height = 21
      DataField = 'JUROSMORAAODIA'
      DataSource = DtSrc
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 32
      Top = 184
      Width = 41
      Height = 21
      DataField = 'DIASINSENCAO'
      DataSource = DtSrc
      TabOrder = 2
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DmModuleII.Cdsindfinanceiro
  end
end
