inherited FrmMovtoItem: TFrmMovtoItem
  Caption = 'Movimenta'#231#227'o do Item'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    TabOrder = 2
    inherited btnExcluir: TBitBtn
      Hint = 'Excluir  Registro com todos seus itens!!!'
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 24
    Top = 24
    Width = 769
    Height = 57
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
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
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Data'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 24
      Width = 57
      Height = 21
      Color = clInactiveCaptionText
      DataField = 'CODIGO'
      DataSource = DtSrc
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 24
      Width = 103
      Height = 21
      DataField = 'DATA'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      OnKeyDown = DBEdit2KeyDown
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 24
    Top = 88
    Width = 769
    Height = 425
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 16
      Top = 24
      Width = 737
      Height = 385
      Hint = 
        'Para Excluir um item do movimento, posicione no item e tecle mou' +
        'se lado direito.'
      Color = clInfoBk
      DataSource = DsMovtoitemdet
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGrid1KeyDown
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
          FieldName = 'CODITEM'
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
          FieldName = 'descitem'
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
          FieldName = 'PUNIT'
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
          FieldName = 'QTDE'
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
          FieldName = 'VALORTOTAL'
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
        end>
    end
  end
  inherited DtSrc: TDataSource
    DataSet = DmModuleI.CdsMovtoItemmes
    Left = 288
    Top = 48
  end
  object DsMovtoitemdet: TDataSource
    DataSet = DmModuleI.CdsMovtodet
    Left = 352
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Left = 436
    Top = 177
    object ExclusaodoLivronoemprstimo1: TMenuItem
      Caption = 'Exclus'#227'o do Item no movimento. '
      OnClick = ExclusaodoLivronoemprstimo1Click
    end
  end
end
