unit UntEmiItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmEmiItem = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox2: TGroupBox;
    GroupBoxdesc: TGroupBox;
    Labeltituloopcao: TLabel;
    Label1: TLabel;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Labeltituloatencao: TLabel;
    Label9: TLabel;
    Edit_descinicial: TEdit;
    Edit_descfinal: TEdit;
    GroupBoximprimir: TGroupBox;
    BitBtnimprimir: TBitBtn;
    GroupBoxgrupoitem: TGroupBox;
    Label2: TLabel;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    procedure BitBtnimprimirClick(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure carregagrupoitemcombo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmiItem: TFrmEmiItem;

implementation

uses UntMenuPrincipal, DmModuloI, DmModuloRelatorioI;

{$R *.dfm}

procedure TFrmEmiItem.BitBtnimprimirClick(Sender: TObject);
begin
  if RadioButton1.Checked = true then // Item por descrição
  begin
    //atençao usei between para imprimir geral quando o combobox1 for branco ***
    GroupBoxdesc.Visible := true;
    GroupBoxgrupoitem.Visible := false;
    FrmMenuPrincipal.nomeiniwk := '';
    FrmMenuPrincipal.nomefinwk := 'ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ';
    if Edit_descinicial.Text <> '' then
    begin
      FrmMenuPrincipal.nomeiniwk := Edit_descinicial.Text;
    end;
    if Edit_descfinal.Text <> '' then
    begin
      FrmMenuPrincipal.nomefinwk := Edit_descfinal.Text;
    end;
    DmModuleRelatorioI.CdsEmiitem.Close;
    FrmMenuPrincipal.strsql :=
    'select i.* from vw_item i ';
    FrmMenuPrincipal.strfiltro :=
    'where i.descitem between :nomeini and :nomefin ';
    FrmMenuPrincipal.strorderby :=
    'order by i.descitem';
    DmModuleRelatorioI.CdsEmiItem.CommandText :=
       FrmMenuPrincipal.strsql + FrmMenuPrincipal.strfiltro
       + FrmMenuPrincipal.strorderby;
    DmModuleRelatorioI.CdsEmiItem.Params.ParamByName('nomeini').value :=
          FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioI.CdsEmiItem.Params.ParamByName('nomefin').value :=
          FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioI.CdsEmiItem.Open;
    DmModuleRelatorioI.CdsEmiItem.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xclassifrelat','Descrição');
    if (FrmMenuPrincipal.idprocessamento = 'Emitabpreco') then
    begin
      FrmMenuprincipal.RvProjBazar.ExecuteReport('Rpttabpreco');
    end;
  end;
  if RadioButton2.Checked = true then // Item por descrição
  begin
    //atençao usei between para imprimir geral quando o combobox1 for branco ***
    GroupBoxdesc.Visible := True;
    GroupBoxgrupoitem.Visible := False;
    FrmMenuPrincipal.nomeiniwk := '';
    FrmMenuPrincipal.nomefinwk := 'ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ';
    if Edit_descinicial.Text <> '' then
    begin
      FrmMenuPrincipal.nomeiniwk := Edit_descinicial.Text;
    end;
    if Edit_descfinal.Text <> '' then
    begin
      FrmMenuPrincipal.nomefinwk := Edit_descfinal.Text;
    end;
    DmModuleRelatorioI.CdsEmiItem.Close;
    FrmMenuPrincipal.strsql :=
    'select i.* from vw_item i ';
    FrmMenuPrincipal.strfiltro :=
    'where i.descitem between :nomeini and :nomefin ';
    FrmMenuPrincipal.strorderby :=
    'order by i.cditem';
    DmModuleRelatorioI.CdsEmiItem.CommandText :=
       FrmMenuPrincipal.strsql + FrmMenuPrincipal.strfiltro
       + FrmMenuPrincipal.strorderby;
    DmModuleRelatorioI.CdsEmiItem.Params.ParamByName('nomeini').value :=
          FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioI.CdsEmiItem.Params.ParamByName('nomefin').value :=
          FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioI.CdsEmiItem.Open;
    DmModuleRelatorioI.CdsEmiItem.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xclassifrelat','Código Item');
    if (FrmMenuPrincipal.idprocessamento = 'Emitabpreco') then
    begin
      FrmMenuprincipal.RvProjBazar.ExecuteReport('Rpttabpreco');
    end;
  end;
  if RadioButton3.Checked = true then // Item por descrição
  begin
    //atençao usei between para imprimir geral quando o combobox1 for branco ***
    FrmMenuPrincipal.nomeiniwk := '';
    FrmMenuPrincipal.nomefinwk := 'ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ';
    if ComboBox1.Text <> '' then
    begin
      FrmMenuPrincipal.nomeiniwk := ComboBox1.Text;
      FrmMenuPrincipal.nomefinwk := ComboBox1.Text;
    end;
    DmModuleRelatorioI.CdsEmiItem.Close;
    FrmMenuPrincipal.strsql :=
    'select i.* from vw_item i ';
    FrmMenuPrincipal.strfiltro :=
    'where i.descgrupoitem between :nomeini and :nomefin ';
    FrmMenuPrincipal.strorderby :=
    'order by i.descitem';
    DmModuleRelatorioI.CdsEmiItem.CommandText :=
       FrmMenuPrincipal.strsql + FrmMenuPrincipal.strfiltro
       + FrmMenuPrincipal.strorderby;
    DmModuleRelatorioI.CdsEmiItem.Params.ParamByName('nomeini').value :=
          FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioI.CdsEmiItem.Params.ParamByName('nomefin').value :=
          FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioI.CdsEmiItem.Open;
    DmModuleRelatorioI.CdsEmiItem.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xclassifrelat','Grupo Item');
    if (FrmMenuPrincipal.idprocessamento = 'Emitabpreco') then
    begin
      FrmMenuprincipal.RvProjBazar.ExecuteReport('Rpttabpreco');
    end;
  end;
end;

procedure TFrmEmiItem.RadioButton3Click(Sender: TObject);
begin
  GroupBoxdesc.Visible := False;
  GroupBoxgrupoitem.Visible := True;
  carregagrupoitemcombo;
end;

procedure TFrmEmiItem.RadioButton2Click(Sender: TObject);
begin
  GroupBoxdesc.Visible := True;
  GroupBoxgrupoitem.Visible := False;
end;

procedure TFrmEmiItem.RadioButton1Click(Sender: TObject);
begin
  GroupBoxdesc.Visible := true;
  GroupBoxgrupoitem.Visible := False;
end;

procedure TFrmEmiItem.carregagrupoitemcombo;
var
  lista : AnsiString;
  flag : boolean;
begin
   lista := '';
   flag := True;

//   GroupBoxdesc.Visible := true;
//   GroupBoxperiodo.Visible := False;
//   GroupBoxNumOS.visible := false;
   DmModuleI.Cdsgrupo.close;
   DmModuleI.Cdsgrupo.Open;
   DmModuleI.Cdsgrupo.RecordCount;
   while DmModuleI.Cdsgrupo.eof = false do begin
      if flag then begin
         lista := lista +  DmModuleI.CdsgrupoNOME.AsString;
         flag := False;
      end
      else begin
         lista := lista + #13 + DmModuleI.CdsgrupoNOME.AsString;
      end;
      DmModuleI.Cdsgrupo.Next;
   end;
   ComboBox1.Clear;
   ComboBox1.Items.Text := lista;
   ComboBox1.Visible := True;
end;

end.
