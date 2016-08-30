unit UntEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntPadrao, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TFrmEmpresa = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    DBNavigator1: TDBNavigator;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpresa: TFrmEmpresa;

implementation

uses DmModuloI;

{$R *.dfm}

procedure TFrmEmpresa.btnIncluirClick(Sender: TObject);
begin
  inherited;

//  DmModuleI.CdsEmpresa.Append;
//  DmModuleI.CdsEmpresaCDEMPRESA.Value := 0;
  DBEdit10.SetFocus;
end;

procedure TFrmEmpresa.FormActivate(Sender: TObject);
begin
  inherited;

  DmModuleI.CdsEmpresa.Close;
  DmModuleI.CdsEmpresa.Open;
end;

procedure TFrmEmpresa.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,0, 0);
  end
end;

procedure TFrmEmpresa.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,0, 0);
  end
end;

procedure TFrmEmpresa.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,0, 0);
  end
end;

procedure TFrmEmpresa.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,0, 0);
  end
end;

procedure TFrmEmpresa.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,0, 0);
  end
end;

procedure TFrmEmpresa.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,0, 0);
  end
end;

procedure TFrmEmpresa.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,0, 0);
  end
end;

procedure TFrmEmpresa.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,0, 0);
  end
end;

end.
