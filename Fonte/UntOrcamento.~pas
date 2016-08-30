unit UntOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntPadrao, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  DBCtrls, Mask;

type
  TFrmOrcamento = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn3: TBitBtn;
    GroupBoxvendasimples: TGroupBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DsOrcamentodet: TDataSource;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrcamento: TFrmOrcamento;

implementation

uses DmModuloI, DmModuloRelatorioI, UntEmiOrcamento;

{$R *.dfm}

procedure TFrmOrcamento.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DmModuleI.CdsorcamentomesDATAEMISSAO.Value := now;
  DBEdit2.SetFocus;
end;

procedure TFrmOrcamento.FormShow(Sender: TObject);
begin
  inherited;
  DmModuleI.Cdstipopagto.Close;
  DmModuleI.Cdstipopagto.Open;
  DmModuleI.Cdspesqitem.Close;
  DmModuleI.Cdspesqitem.Open;
  DmModuleI.Cdsorcamentomes.Close;
  DmModuleI.Cdsorcamentomes.Open;
  DmModuleI.Cdsorcamentomes.Append;
//  if (DBEdit1.text < '0') then
//  begin
    dbedit1.ReadOnly := true;
//  end;

end;

procedure TFrmOrcamento.DBEdit2Enter(Sender: TObject);
begin
  inherited;
  if (DBEdit2.Text = '') then
  begin
    DmModuleI.CdsorcamentomesDATAEMISSAO.Value := now;
  end;
  if (DBEdit3.Text = '') then
  begin
    DmModuleI.CdsorcamentomesDATAVENCTO.Value := now;
  end;

end;

procedure TFrmOrcamento.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case key of
  13 : Key := 9 ;
  end;
end;

procedure TFrmOrcamento.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmOrcamento.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmOrcamento.DBLookupComboBox3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmOrcamento.btnRelatorioClick(Sender: TObject);
begin
  inherited;
  //emite orçamento
  DmModuleRelatorioI.CdsEmiOrcamento.Close;
  DmModuleRelatorioI.CdsEmiOrcamento.Params.ParamByName('codigo').value :=
          DmModuleI.CdsorcamentomesCODIGO.Value;
  DmModuleRelatorioI.CdsEmiOrcamento.open;
  DmModuleRelatorioI.CdsEmiOrcamento.RecordCount;

  FrmEmiOrcamento := TFrmEmiOrcamento.Create(Application);
  try
    FrmEmiOrcamento.RLReport1.Preview();
  finally
    FrmEmiOrcamento.Free;
  end;
end;

end.
