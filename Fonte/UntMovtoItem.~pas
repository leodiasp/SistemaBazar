unit UntMovtoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntPadrao, StdCtrls, DB, Buttons, ExtCtrls, Mask, DBCtrls,
  Grids, DBGrids, Menus;

type
  TFrmMovtoItem = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DsMovtoitemdet: TDataSource;
    PopupMenu1: TPopupMenu;
    ExclusaodoLivronoemprstimo1: TMenuItem;
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnIncluirClick(Sender: TObject);
    procedure ExclusaodoLivronoemprstimo1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovtoItem: TFrmMovtoItem;

implementation

uses DmModuloI, UntMenuPrincipal;

{$R *.dfm}

procedure TFrmMovtoItem.btnPesquisarClick(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'MovtoItem';
  inherited;

end;

procedure TFrmMovtoItem.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case key of
  13 : Key := 9 ;
  end;
end;

procedure TFrmMovtoItem.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Visible := false;
  DBEdit2.SetFocus;

end;

procedure TFrmMovtoItem.ExclusaodoLivronoemprstimo1Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir este registro?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    DmModuleI.CdsMovtodet.Delete;
    DmModuleI.CdsMovtodet.ApplyUpdates(0);
  end;
end;

procedure TFrmMovtoItem.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir o movimento com todos os itens?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    inherited;
  end;
end;

procedure TFrmMovtoItem.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

end.
