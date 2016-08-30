unit UntItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntPadrao, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TFrmItem = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmItem: TFrmItem;

implementation

uses DmModuloI, UntPesquisa, UntMenuPrincipal;

{$R *.dfm}

procedure TFrmItem.btnIncluirClick(Sender: TObject);
begin
  inherited;
//  DmModuleI.CdsItem.Append;
  DBEdit2.SetFocus;
end;

procedure TFrmItem.btnPesquisarClick(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento :=  'Item';
  inherited;

end;

procedure TFrmItem.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then //Perform(Wm_NextDlgCtl,0,0);
  begin
    if (DBEdit2.Text = '') then
    begin
      FrmMenuPrincipal.idprocessamento := 'Item';
      FrmPesquisa := TFrmPesquisa.Create(Application);
      try
        FrmPesquisa.ShowModal;//exibir
      finally
        FrmPesquisa.Free;
      end;
    end
    else begin
      Perform(Wm_NextDlgCtl,0,0);
    end;
  end;
end;

procedure TFrmItem.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmItem.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmItem.btnGravarClick(Sender: TObject);
begin
  if DBEdit2.Text = '' then
  begin
    ShowMessage('Descrição em branco.');
    DBEdit2.SetFocus;
    abort;
  end;

  inherited;
  if (FrmMenuPrincipal.idprocessamento = 'Precoteclado') then
  begin
    FrmItem.Caption := 'Alteração Preço pelo Teclado';
    btnIncluir.Enabled := false;
    btnExcluir.Enabled := false;
    DBEdit3.Enabled := false;
    DBLookupComboBox1.Enabled := false;
    dbedit4.Enabled := false;
    DBEdit5.Enabled := false;
    DBEdit6.Enabled := false;
    dbedit10.Enabled := false;
  end
  else begin
    FrmItem.Caption := 'Atualização do Item';
    btnIncluir.Enabled := True;
    btnExcluir.Enabled := True;
    DBEdit3.Enabled := True;
    DBLookupComboBox1.Enabled := True;
    dbedit4.Enabled := True;
    DBEdit5.Enabled := True;
    DBEdit6.Enabled := True;
    dbedit10.Enabled := True;
  end;
end;

procedure TFrmItem.FormShow(Sender: TObject);
begin
  if (FrmMenuPrincipal.idprocessamento = 'Precoteclado') then
  begin
    FrmItem.Caption := 'Alteração Preço pelo Teclado';
    btnIncluir.Enabled := false;
    DBEdit3.Enabled := false;
    DBLookupComboBox1.Enabled := false;
    dbedit4.Enabled := false;
    DBEdit5.Enabled := false;
    DBEdit6.Enabled := false;
    dbedit10.Enabled := false;
  end
  else begin
    FrmMenuPrincipal.idprocessamento := 'Item';
    FrmItem.Caption := 'Atualização do Item';
    btnIncluir.Enabled := True;
    DBEdit3.Enabled := True;
    DBLookupComboBox1.Enabled := True;
    dbedit4.Enabled := True;
    DBEdit5.Enabled := True;
    DBEdit6.Enabled := True;
    dbedit10.Enabled := True;
  end;

  inherited;
end;

procedure TFrmItem.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

end.
