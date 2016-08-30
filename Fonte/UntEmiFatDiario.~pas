unit UntEmiFatDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TFrmemifatdiario = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edit_inicial: TEdit;
    cmb_dtInicial: TDateTimePicker;
    edit_final: TEdit;
    cmb_dtFinal: TDateTimePicker;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBoximprimir: TGroupBox;
    BitBtnimprimir: TBitBtn;
    GroupBoxcliente: TGroupBox;
    Label6: TLabel;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    procedure edit_inicialEnter(Sender: TObject);
    procedure cmb_dtInicialChange(Sender: TObject);
    procedure cmb_dtInicialEnter(Sender: TObject);
    procedure cmb_dtFinalChange(Sender: TObject);
    procedure BitBtnimprimirClick(Sender: TObject);
    procedure carregaclientecombo;
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure edit_inicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmemifatdiario: TFrmemifatdiario;

implementation

uses DmModuloRelatorioI, UntMenuPrincipal, DmModuloI;

{$R *.dfm}

procedure TFrmemifatdiario.edit_inicialEnter(Sender: TObject);
begin
  cmb_dtFinal.Date := date;
  cmb_dtInicial.Date := date;
end;

procedure TFrmemifatdiario.cmb_dtInicialChange(Sender: TObject);
begin
  edit_inicial.Text := DateToStr(cmb_dtInicial.date);
end;

procedure TFrmemifatdiario.cmb_dtInicialEnter(Sender: TObject);
begin
  cmb_dtFinal.Date := date;
  cmb_dtInicial.Date := date;
end;

procedure TFrmemifatdiario.cmb_dtFinalChange(Sender: TObject);
begin
  edit_final.Text := DateToStr(cmb_dtFinal.date)
end;

procedure TFrmemifatdiario.BitBtnimprimirClick(Sender: TObject);
begin
  //atençao usei between para imprimir geral quando o combobox1 for branco ***
  FrmMenuPrincipal.nomeiniwk := '';
  FrmMenuPrincipal.nomefinwk := 'ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ';

  if (ComboBox1.Text <> '') then
  begin
    FrmMenuPrincipal.nomeiniwk := ComboBox1.Text;
    FrmMenuPrincipal.nomefinwk := ComboBox1.Text;
  end;

  if (edit_inicial.Text = '') then
  begin
    ShowMessage('Data Inicial em branco.');
    edit_inicial.SetFocus;
    abort;
  end;
  if (edit_final.Text = '') then
  begin
    ShowMessage('Data Final em branco.');
    edit_final.SetFocus;
    abort;
  end;
  if (edit_inicial.Text > edit_final.Text) then
  begin
    ShowMessage('Data Final menor Data Fnicial.');
    edit_inicial.SetFocus;
    abort;
  end;


  if (RadioButton1.Checked = true) then  //faturamento diario analitico
  begin
    DmModuleRelatorioI.CdsEmiFatdiario.close;
    DmModuleRelatorioI.CdsEmiFatdiario.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioI.CdsEmiFatdiario.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioI.CdsEmiFatdiario.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioI.CdsEmiFatdiario.Params.ParamByName('nomefin').Value :=
         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioI.CdsEmiFatdiario.open;
    DmModuleRelatorioI.CdsEmiFatdiario.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('RptFatdiarioanali');
  end;
  if (RadioButton2.Checked = true) then  //faturamento diario sintetico
  begin
    DmModuleRelatorioI.CdsEmifatdiariosint.close;
    DmModuleRelatorioI.CdsEmifatdiariosint.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioI.CdsEmifatdiariosint.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioI.CdsEmifatdiariosint.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioI.CdsEmifatdiariosint.Params.ParamByName('nomefin').Value :=
         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioI.CdsEmifatdiariosint.open;
    DmModuleRelatorioI.CdsEmifatdiariosint.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('RptFatdiariosint');
  end;
  if (RadioButton3.Checked = true) then  //Faturamento mensal
  begin
    DmModuleRelatorioI.CdsEmifatmensal.close;
    DmModuleRelatorioI.CdsEmifatmensal.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioI.CdsEmifatmensal.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioI.CdsEmifatmensal.open;
    DmModuleRelatorioI.CdsEmifatmensal.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('RptFatmensal');
  end;
  if (RadioButton4.Checked = true) then  //fechamento do caixa
  begin
    DmModuleRelatorioI.CdsEmiFechaCx.close;
    DmModuleRelatorioI.CdsEmiFechaCx.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioI.CdsEmiFechaCx.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioI.CdsEmiFechaCx.open;
    DmModuleRelatorioI.CdsEmiFechaCx.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('RptFechaCx');
  end;
  if (RadioButton5.Checked = true) then  //Venda Simples em aberto
  begin
    DmModuleRelatorioI.CdsEmivendaaberto.close;
    DmModuleRelatorioI.CdsEmivendaaberto.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioI.CdsEmivendaaberto.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioI.CdsEmivendaaberto.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioI.CdsEmivendaaberto.Params.ParamByName('nomefin').Value :=
         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioI.CdsEmivendaaberto.open;
    DmModuleRelatorioI.CdsEmivendaaberto.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('RptVendasimplesaberto');
  end;
end;

procedure TFrmemifatdiario.carregaclientecombo;
var
  lista : AnsiString;
  flag : boolean;
begin
   lista := '';
   flag := True;

   DmModuleI.Cdspesqcliente.close;
   DmModuleI.Cdspesqcliente.Open;
   DmModuleI.Cdspesqcliente.RecordCount;
   while DmModuleI.Cdspesqcliente.eof = false do begin
      if flag then begin
         lista := lista +  DmModuleI.CdspesqclienteNOME.AsString;
         flag := False;
      end
      else begin
         lista := lista + #13 + DmModuleI.CdspesqclienteNOME.AsString;
      end;
      DmModuleI.Cdspesqcliente.Next;
   end;
   ComboBox1.Clear;
   ComboBox1.Items.Text := lista;
   ComboBox1.Visible := True;
end;

procedure TFrmemifatdiario.RadioButton3Click(Sender: TObject);
begin
  GroupBoxcliente.Visible := false;
end;

procedure TFrmemifatdiario.RadioButton2Click(Sender: TObject);
begin
  GroupBoxcliente.Visible := True;
  carregaclientecombo;
end;

procedure TFrmemifatdiario.RadioButton1Click(Sender: TObject);
begin
  GroupBoxcliente.Visible := True;
  carregaclientecombo;  
end;

procedure TFrmemifatdiario.RadioButton4Click(Sender: TObject);
begin
  GroupBoxcliente.Visible := false;
end;

procedure TFrmemifatdiario.RadioButton5Click(Sender: TObject);
begin
  GroupBoxcliente.Visible := True;  
  carregaclientecombo;
end;

procedure TFrmemifatdiario.edit_inicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmemifatdiario.FormShow(Sender: TObject);
begin
  carregaclientecombo;
end;

end.
