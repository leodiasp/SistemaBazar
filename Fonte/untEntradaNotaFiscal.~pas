unit untEntradaNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntPadrao, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  Grids, DBGrids, Menus;

type
  TfrmEntradaNotaFiscal = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DsNotaFiscalentdet: TDataSource;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DBText1: TDBText;
    PopupMenu1: TPopupMenu;
    ExcluirItemnanotadeentrada1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnIncluirClick(Sender: TObject);
    procedure ExcluirItemnanfentradaClick(Sender: TObject);
    procedure ExcluirItemnanotadeentrada1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaNotaFiscal: TfrmEntradaNotaFiscal;

implementation

uses DmModuloIII, UntMenuPrincipal;

{$R *.dfm}

procedure TfrmEntradaNotaFiscal.FormShow(Sender: TObject);
begin
  inherited;
  DmModuleIII.CdsPesqFornecedor.Close;
  DmModuleIII.CdsPesqFornecedor.Open;
end;

procedure TfrmEntradaNotaFiscal.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
  13 : Key := 9 ;
  end;
end;

procedure TfrmEntradaNotaFiscal.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TfrmEntradaNotaFiscal.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TfrmEntradaNotaFiscal.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TfrmEntradaNotaFiscal.DBEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TfrmEntradaNotaFiscal.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TfrmEntradaNotaFiscal.ExcluirItemnanfentradaClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir o item da Entrada?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    DmModuleIII.cdsNFiscalEntDet.Delete;
    DmModuleIII.cdsNFiscalEntDet.Edit;
    DmModuleIII.cdsNFiscalEntDet.Post;
    DmModuleIII.cdsNFiscalEntDet.ApplyUpdates(0);
  end;
end;

procedure TfrmEntradaNotaFiscal.ExcluirItemnanotadeentrada1Click(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir o item da Entrada?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    DmModuleIII.cdsNFiscalEntDet.Delete;
    DmModuleIII.cdsNFiscalEntDet.Edit;
    DmModuleIII.cdsNFiscalEntDet.Post;
    DmModuleIII.cdsNFiscalEntDet.ApplyUpdates(0);
  end;
end;

end.
