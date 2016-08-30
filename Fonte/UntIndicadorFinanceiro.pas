unit UntIndicadorFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntPadrao, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TFrmIndicadorFinanceiro = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIndicadorFinanceiro: TFrmIndicadorFinanceiro;

implementation

uses DmModuloII;

{$R *.dfm}

procedure TFrmIndicadorFinanceiro.FormShow(Sender: TObject);
begin
  inherited;
  DmModuleII.Cdsindfinanceiro.close;
  DmModuleII.Cdsindfinanceiro.Params.ParamByName('codindfinanceiro').value := 1;
  DmModuleII.Cdsindfinanceiro.Open;
  FrmIndicadorFinanceiro.btnIncluir.Visible := false;
  FrmIndicadorFinanceiro.btnExcluir.Visible := false;
  FrmIndicadorFinanceiro.btnRelatorio.visible := false;
  FrmIndicadorFinanceiro.btnPesquisar.visible := false;
  FrmIndicadorFinanceiro.DBEdit2.SetFocus;
end;

end.
