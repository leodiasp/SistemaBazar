unit UntCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntPadrao, StdCtrls, DB, Buttons, ExtCtrls, Mask, DBCtrls,
  Grids, DBGrids, Menus;

type
  TFrmCliente = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DsDependentes: TDataSource;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    DBEdit20: TDBEdit;
    Label20: TLabel;
    DBEdit21: TDBEdit;
    DBGrid1: TDBGrid;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    GroupBox6: TGroupBox;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    PopupMenu1: TPopupMenu;
    ExcluirItemnavenda1: TMenuItem;
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit20KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit22KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure ExcluirItemnavenda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

uses DmModuloI, UntMenuPrincipal, UntPesquisa;

{$R *.dfm}

procedure TFrmCliente.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then //Perform(Wm_NextDlgCtl,0,0);
  begin
    if (DBEdit2.Text = '') then
    begin
      FrmMenuPrincipal.idprocessamento := 'Cliente';
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

procedure TFrmCliente.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit20KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBEdit22KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmCliente.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case key of
  13 : Key := 9 ;
  end;
end;

procedure TFrmCliente.btnPesquisarClick(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'Cliente';
  inherited;

end;

procedure TFrmCliente.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TFrmCliente.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TFrmCliente.ExcluirItemnavenda1Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir o dependente?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    DmModuleI.CdsDependente.Delete;
    DmModuleI.CdsDependente.Edit;
    DmModuleI.CdsDependente.Post;
    DmModuleI.CdsDependente.ApplyUpdates(0);
  end;

end;

end.
