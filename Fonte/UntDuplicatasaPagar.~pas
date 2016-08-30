unit UntDuplicatasaPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntPadrao, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  DBCtrls, Menus;

type
  TfrmDuplicatasaPagar = class(TFrmPadrao)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    dsDupPagardet: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    ExcluirDuplicata1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1Click(Sender: TObject);
    procedure geradupemaberto;
    procedure geradupgeral;
    procedure RadioButton2Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExcluirItemnanfentradaClick(Sender: TObject);
    procedure ExcluirDuplicata1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  frmDuplicatasaPagar: TfrmDuplicatasaPagar;

implementation

uses DmModuloIII, UntMenuPrincipal, UntPesquisa;

{$R *.dfm}

procedure TfrmDuplicatasaPagar.FormShow(Sender: TObject);
begin
  inherited;
  DmModuleIII.CdsPesqFornecedor.Close;
  DmModuleIII.CdsPesqFornecedor.Open;
   DmModuleIII.Cdsduppagar.Close;
  DmModuleIII.Cdsduppagar.Open;
  frmDuplicatasaPagar.btnIncluir.Visible := False;
//  frmDuplicatasaPagar.btnExcluir.Visible := False;  
end;

procedure TfrmDuplicatasaPagar.btnPesquisarClick(Sender: TObject);
begin
   FrmMenuPrincipal.idprocessamento := 'DupPagar';
  inherited;
end;

procedure TfrmDuplicatasaPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  DmModuleIII.Sqldsduppagar.close;
//  DmModuleIII.Sqldsduppagar.Open;
  inherited;
end;

procedure TfrmDuplicatasaPagar.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
  begin
    geradupemaberto;
  end;
  inherited;
end;

procedure TfrmDuplicatasaPagar.geradupemaberto;
begin
  DmModuleIII.cdsfornecedor.Close;
  DmModuleIII.Sqldsduppagar.CommandText :=
  'select * from DUPLICATASPAGAR dp where dp.CODFORN = :codforn ' +
  'and dp.DATAPAGTO is null';
  DmModuleIII.cdsfornecedor.open;
end;

procedure TfrmDuplicatasaPagar.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked = true then
  begin
    geradupgeral;
  end;
  inherited;

end;

procedure TfrmDuplicatasaPagar.geradupgeral;
begin
  DmModuleIII.cdsfornecedor.Close;
  DmModuleIII.Sqldsduppagar.CommandText :=
  'select * from DUPLICATASPAGAR dp where dp.CODFORN = :codforn ' +
  'order by dp.datapagto,dp.codforn,dp.coddupapagar,dp.numprestacao';
  DmModuleIII.cdsfornecedor.open;
end;

procedure TfrmDuplicatasaPagar.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
  13 : Key := 9 ;
  end;
end;

procedure TfrmDuplicatasaPagar.ExcluirItemnanfentradaClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir a duplicata a pagar?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    DmModuleIII.Cdsduppagar.Delete;
    DmModuleIII.Cdsduppagar.Edit;
    DmModuleIII.Cdsduppagar.Post;
    DmModuleIII.Cdsduppagar.ApplyUpdates(0);
  end;
end;

procedure TfrmDuplicatasaPagar.ExcluirDuplicata1Click(Sender: TObject);
var
  codfornsalvo : integer;
begin
  inherited;
  if MessageDlg('Deseja realmente excluir a duplicata a pagar?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    codfornsalvo := DmModuleIII.CdsduppagarCODFORN.Value;
    DmModuleIII.Sqldssp_deletadupapagar.Close;
    DmModuleIII.Sqldssp_deletadupapagar.Params.ParamByName('CODFORNINP').value
      := DmModuleIII.CdsduppagarCODFORN.Value;
    DmModuleIII.Sqldssp_deletadupapagar.Params.ParamByName('CODDUPAPAGARINP').value
      := DmModuleIII.CdsduppagarCODDUPAPAGAR.Value;
    DmModuleIII.Sqldssp_deletadupapagar.Params.ParamByName('NUMPRESTACAOINP').value
      := DmModuleIII.CdsduppagarNUMPRESTACAO.Value;
    DmModuleIII.Sqldssp_deletadupapagar.ExecSQL();

    DmModuleIII.cdsfornecedor.Close;
    DmModuleIII.cdsfornecedor.Params.ParamByName('CODIGO').Value := codfornsalvo;
    DmModuleIII.cdsfornecedor.Open;
  end;
end;

procedure TfrmDuplicatasaPagar.btnExcluirClick(Sender: TObject);
var
  codfornsalvo : integer;
begin
//  inherited;
  if MessageDlg('Deseja realmente excluir a duplicata a pagar?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    codfornsalvo := DmModuleIII.CdsduppagarCODFORN.Value;
    DmModuleIII.Sqldssp_deletadupapagar.Close;
    DmModuleIII.Sqldssp_deletadupapagar.Params.ParamByName('CODFORNINP').value
      := DmModuleIII.CdsduppagarCODFORN.Value;
    DmModuleIII.Sqldssp_deletadupapagar.Params.ParamByName('CODDUPAPAGARINP').value
      := DmModuleIII.CdsduppagarCODDUPAPAGAR.Value;
    DmModuleIII.Sqldssp_deletadupapagar.Params.ParamByName('NUMPRESTACAOINP').value
      := DmModuleIII.CdsduppagarNUMPRESTACAO.Value;
    DmModuleIII.Sqldssp_deletadupapagar.ExecSQL();

    DmModuleIII.cdsfornecedor.Close;
    DmModuleIII.cdsfornecedor.Params.ParamByName('CODIGO').Value := codfornsalvo;
    DmModuleIII.cdsfornecedor.Open;
  end;
end;

end.
