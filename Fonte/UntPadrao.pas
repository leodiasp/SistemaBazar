unit UntPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls, DBClient;

type
  TFrmPadrao = class(TForm)
    DtSrc: TDataSource;
    Panel1: TPanel;
    btnIncluir: TBitBtn;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnRelatorio: TBitBtn;
    btnPesquisar: TBitBtn;
    btnSair: TBitBtn;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    descricaopadrao : string;
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

uses UntPesquisa;

{$R *.dfm}

procedure TFrmPadrao.DtSrcStateChange(Sender: TObject);
const
  estados : array[TDataSetState] of string =
  ('Fechado','Consultando','Alterando','Inserindo','','','','','','','','','');
begin
  btnIncluir.Enabled := DtSrc.State in [dsBrowse,dsInactive,dsInsert];
  btnGravar.Enabled := DtSrc.State in [dsInsert,dsEdit];
//  btnSair.Enabled := DtSrc.State in [dsInsert,dsEdit];
  btnExcluir.Enabled := DtSrc.State in [dsBrowse];
  btnPesquisar.Enabled := DtSrc.State in [dsInsert,dsEdit,dsBrowse,dsInactive];
  btnRelatorio.Enabled := true;
//  StrBr.Panel1[0].Text := estados[DtSrc.state];

end;

procedure TFrmPadrao.btnIncluirClick(Sender: TObject);
begin
  if not dtsrc.DataSet.Active then //verifica se esta fechado
  begin
    DtSrc.DataSet.Open;
  end;
  DtSrc.DataSet.Append;
end;

procedure TFrmPadrao.btnGravarClick(Sender: TObject);
var
  errors,errorsI : integer;
begin
//  DtSrc.DataSet.Edit;
  DtSrc.DataSet.Post;
  errors := (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  if errors > 0 then
  begin
    DtSrc.DataSet.Edit;

  end
  else begin
    (dtsrc.DataSet as TClientDataSet).Refresh;
    Application.MessageBox('Registro Gravado com Sucesso','Atenção',+MB_OK+MB_ICONWARNING);
//    dtsrc.DataSet.Append;
//    abort;
  end;
end;

procedure TFrmPadrao.btnExcluirClick(Sender: TObject);
var
  numero, zero : integer;
begin
  if MessageDlg('Deseja realmente excluir este registro?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    DtSrc.DataSet.Delete;
    (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end;
end;

procedure TFrmPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DtSrc.State in [dsInsert,dsEdit]) {or
     (DtSrcI.State in [dsInsert,dsEdit])or
     (DtSrcII.State in [dsInsert,dsEdit]) or
     (DtSrcIII.State in [dsInsert,dsEdit])} then
  begin
    if MessageDlg('Você não salvou este registro deseja sair assim mesmo?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
    begin
      Action := caFree;
      DtSrc.DataSet.Close;
      close;
    end
    else begin
//      DtSrc.DataSet.FieldByName('descricao').FocusControl;
      Abort;
    end;
  end;  
end;

procedure TFrmPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_ESCAPE then begin

     Close;

   end;

   if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmPadrao.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPadrao.btnPesquisarClick(Sender: TObject);
begin
  FrmPesquisa := TFrmPesquisa.Create(Application);
  try
    FrmPesquisa.ShowModal;//exibir
  finally
    FrmPesquisa.Free;
  end;
end;

end.
