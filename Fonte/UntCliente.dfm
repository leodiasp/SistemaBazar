inherited FrmCliente: TFrmCliente
  Left = 49
  Top = 72
  Width = 951
  Height = 650
  Caption = 'Cadastro de Clientes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 571
    Width = 943
  end
  object GroupBox1: TGroupBox [1]
    Left = 17
    Top = 24
    Width = 904
    Height = 409
    Color = clCream
    ParentColor = False
    TabOrder = 1
    object GroupBox4: TGroupBox
      Left = 8
      Top = 198
      Width = 881
      Height = 57
      Color = clInfoBk
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object Label11: TLabel
        Left = 8
        Top = 6
        Width = 61
        Height = 13
        Caption = 'Identidade'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 120
        Top = 6
        Width = 59
        Height = 13
        Caption = 'Cpf / Cnpj'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 314
        Top = 6
        Width = 78
        Height = 13
        Caption = 'Insc.Estadual'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit12: TDBEdit
        Left = 8
        Top = 22
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IDENTIDADE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = DBEdit12KeyDown
      end
      object DBEdit11: TDBEdit
        Left = 120
        Top = 22
        Width = 177
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIC_CNPJ'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyDown = DBEdit11KeyDown
      end
      object DBEdit13: TDBEdit
        Left = 314
        Top = 22
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'INSCESTADUAL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnKeyDown = DBEdit13KeyDown
      end
    end
    object GroupBox5: TGroupBox
      Left = 9
      Top = 259
      Width = 880
      Height = 138
      Color = clInfoBk
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object Label13: TLabel
        Left = 4
        Top = 8
        Width = 67
        Height = 13
        Caption = 'Nascimento'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 120
        Top = 8
        Width = 82
        Height = 13
        Caption = 'Nacionalidade'
        FocusControl = DBEdit15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 291
        Top = 8
        Width = 53
        Height = 13
        Caption = 'Profiss'#227'o'
        FocusControl = DBEdit16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 4
        Top = 46
        Width = 86
        Height = 13
        Caption = 'Local Trabalho'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 4
        Top = 84
        Width = 81
        Height = 13
        Caption = 'End. Trabalho'
        FocusControl = DBEdit18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 579
        Top = 8
        Width = 42
        Height = 13
        Caption = 'Natural'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 728
        Top = 8
        Width = 47
        Height = 13
        Caption = 'Est.Civil'
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 386
        Top = 46
        Width = 73
        Height = 13
        Caption = 'Tel.Trabalho'
        FocusControl = DBEdit21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 384
        Top = 83
        Width = 31
        Height = 13
        Caption = 'Email'
        FocusControl = DBEdit22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit14: TDBEdit
        Left = 4
        Top = 24
        Width = 101
        Height = 21
        DataField = 'DATANASC'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = DBEdit14KeyDown
      end
      object DBEdit15: TDBEdit
        Left = 120
        Top = 24
        Width = 153
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NACIONALIDADE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyDown = DBEdit15KeyDown
      end
      object DBEdit16: TDBEdit
        Left = 291
        Top = 24
        Width = 281
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PROFISSAO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnKeyDown = DBEdit16KeyDown
      end
      object DBEdit17: TDBEdit
        Left = 4
        Top = 62
        Width = 365
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TRABALHO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnKeyDown = DBEdit17KeyDown
      end
      object DBEdit18: TDBEdit
        Left = 4
        Top = 100
        Width = 368
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDTRABALHO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnKeyDown = DBEdit18KeyDown
      end
      object DBEdit19: TDBEdit
        Left = 579
        Top = 24
        Width = 142
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NATURALIDADE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnKeyDown = DBEdit19KeyDown
      end
      object DBEdit20: TDBEdit
        Left = 728
        Top = 24
        Width = 77
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ESTCIVIL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnKeyDown = DBEdit20KeyDown
      end
      object DBEdit21: TDBEdit
        Left = 386
        Top = 62
        Width = 127
        Height = 21
        DataField = 'TELEFONETRAB'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnKeyDown = DBEdit21KeyDown
      end
      object DBEdit22: TDBEdit
        Left = 384
        Top = 99
        Width = 417
        Height = 21
        DataField = 'EMAIL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnKeyDown = DBEdit22KeyDown
      end
    end
    object GroupBox3: TGroupBox
      Left = 12
      Top = 24
      Width = 876
      Height = 169
      Color = clInfoBk
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 11
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
        Left = 96
        Top = 11
        Width = 33
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 6
        Top = 49
        Width = 55
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 448
        Top = 49
        Width = 34
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 6
        Top = 89
        Width = 40
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 231
        Top = 89
        Width = 23
        Height = 13
        Caption = 'Cep'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 5
        Top = 127
        Width = 62
        Height = 13
        Caption = 'Telefone-1'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 167
        Top = 127
        Width = 62
        Height = 13
        Caption = 'Telefone-2'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 384
        Top = 127
        Width = 40
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 7
        Top = 27
        Width = 65
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 27
        Width = 654
        Height = 21
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
        Left = 6
        Top = 65
        Width = 419
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
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
        Left = 432
        Top = 65
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnKeyDown = DBEdit4KeyDown
      end
      object DBEdit5: TDBEdit
        Left = 6
        Top = 105
        Width = 216
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnKeyDown = DBEdit5KeyDown
      end
      object DBEdit8: TDBEdit
        Left = 231
        Top = 105
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnKeyDown = DBEdit8KeyDown
      end
      object DBEdit6: TDBEdit
        Left = 5
        Top = 143
        Width = 133
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnKeyDown = DBEdit6KeyDown
      end
      object DBEdit9: TDBEdit
        Left = 167
        Top = 143
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONE2'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnKeyDown = DBEdit9KeyDown
      end
      object DBEdit10: TDBEdit
        Left = 384
        Top = 143
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CELULAR'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnKeyDown = DBEdit10KeyDown
      end
      object GroupBox6: TGroupBox
        Left = 699
        Top = 69
        Width = 161
        Height = 81
        Color = clSkyBlue
        ParentBackground = False
        ParentColor = False
        TabOrder = 9
        object Label23: TLabel
          Left = 12
          Top = 19
          Width = 139
          Height = 13
          Caption = 'Venda Bloqueada(S/N)?'
          FocusControl = DBEdit23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit23: TDBEdit
          Left = 60
          Top = 35
          Width = 17
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BLOQUEADO'
          DataSource = DtSrc
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 16
    Top = 440
    Width = 905
    Height = 127
    Caption = 'Dependentes: '
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 13
      Top = 19
      Width = 852
      Height = 95
      Hint = 
        '(EXCLUIR) Dependente <Posicione no Dependente e clicar mouse lad' +
        'o direito>.'
      Color = clInfoBk
      DataSource = DsDependentes
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SEQ'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPARENTESCO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descparentesco'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DmModuleI.CdsCliente
    Left = 800
    Top = 56
  end
  object DsDependentes: TDataSource
    DataSet = DmModuleI.CdsDependente
    Left = 464
    Top = 480
  end
  object PopupMenu1: TPopupMenu
    Left = 640
    Top = 466
    object ExcluirItemnavenda1: TMenuItem
      Caption = 'Excluir Dependente '
      OnClick = ExcluirItemnavenda1Click
    end
  end
end
