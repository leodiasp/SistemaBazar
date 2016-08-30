unit UntEmiCRecebDuplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DBCtrls;

type
  TFrmEmiCRVDuplicatas = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    GroupBox2: TGroupBox;
    GroupBoxdata: TGroupBox;
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
    GroupBoximpcligeral: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    GroupBoxAnalitouSint: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    EditAnalitousint: TEdit;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure carregaclientecombo;
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_inicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_finalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAnalitousintKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmb_dtInicialChange(Sender: TObject);
    procedure cmb_dtInicialEnter(Sender: TObject);
    procedure edit_inicialEnter(Sender: TObject);
    procedure cmb_dtFinalChange(Sender: TObject);
    procedure edit_finalEnter(Sender: TObject);
    procedure cmb_dtFinalEnter(Sender: TObject);
    procedure BitBtnimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmiCRVDuplicatas: TFrmEmiCRVDuplicatas;

implementation

uses DmModuloRelatorioII, UntMenuPrincipal, DmModuloI;

{$R *.dfm}

procedure TFrmEmiCRVDuplicatas.RadioButton1Click(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmEmiCRVDuplicatas.RadioButton2Click(Sender: TObject);
begin
  GroupBoxcliente.Visible := True;
  GroupBoximpcligeral.visible := False;
  GroupBoxdata.Visible := false;
  GroupBoxAnalitouSint.Visible := false;
  ComboBox1.SetFocus;
end;

procedure TFrmEmiCRVDuplicatas.RadioButton3Click(Sender: TObject);
begin
  GroupBoxcliente.Visible := False;
  GroupBoximpcligeral.visible := False;
  GroupBoxdata.Visible := true;
  GroupBoxAnalitouSint.Visible := true;
  edit_inicial.SetFocus;
end;

procedure TFrmEmiCRVDuplicatas.RadioButton4Click(Sender: TObject);
begin
  GroupBoxcliente.Visible := true;
  GroupBoximpcligeral.visible := true;
  GroupBoxdata.Visible    := true;
  GroupBoxAnalitouSint.Visible := false;
end;

procedure TFrmEmiCRVDuplicatas.RadioButton5Click(Sender: TObject);
begin
  GroupBoxcliente.Visible := False;
  GroupBoximpcligeral.Visible := false;
  GroupBoxdata.Visible := true;
  GroupBoxAnalitouSint.Visible := true;
end;

procedure TFrmEmiCRVDuplicatas.RadioButton6Click(Sender: TObject);
begin
  GroupBoxcliente.Visible := False;
  GroupBoximpcligeral.Visible := false;
  GroupBoxdata.Visible := true;
  GroupBoxAnalitouSint.Visible := true;
end;

procedure TFrmEmiCRVDuplicatas.RadioButton7Click(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
  GroupBoxdata.Visible := true;
end;

procedure TFrmEmiCRVDuplicatas.RadioButton8Click(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmEmiCRVDuplicatas.FormShow(Sender: TObject);
begin
  carregaclientecombo;
end;

procedure TFrmEmiCRVDuplicatas.carregaclientecombo;
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

procedure TFrmEmiCRVDuplicatas.ComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmEmiCRVDuplicatas.edit_inicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmEmiCRVDuplicatas.edit_finalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmEmiCRVDuplicatas.EditAnalitousintKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmEmiCRVDuplicatas.cmb_dtInicialChange(Sender: TObject);
begin
  edit_inicial.Text := DateToStr(cmb_dtInicial.date);
end;

procedure TFrmEmiCRVDuplicatas.cmb_dtInicialEnter(Sender: TObject);
begin
  cmb_dtFinal.Date := date;
  cmb_dtInicial.Date := date;
  edit_inicial.SetFocus;
end;

procedure TFrmEmiCRVDuplicatas.edit_inicialEnter(Sender: TObject);
begin
  cmb_dtFinal.Date := date;
  cmb_dtInicial.Date := date;
end;

procedure TFrmEmiCRVDuplicatas.cmb_dtFinalChange(Sender: TObject);
begin
  edit_final.Text := DateToStr(cmb_dtFinal.date);
end;

procedure TFrmEmiCRVDuplicatas.edit_finalEnter(Sender: TObject);
begin
  if (edit_final.Text = '') then
  begin
     edit_final.Text := edit_inicial.text;
  end;
end;

procedure TFrmEmiCRVDuplicatas.cmb_dtFinalEnter(Sender: TObject);
begin
  edit_final.SetFocus;
end;

procedure TFrmEmiCRVDuplicatas.BitBtnimprimirClick(Sender: TObject);
begin
  if ((RadioButton2.Checked = True))then
  begin
    if (ComboBox1.Text = '') then
    begin
      ShowMessage('Nome cliente em branco.');
      ComboBox1.SetFocus;
      abort;
    end;
  end
  else begin
    if (ComboBox1.Text = '') then
    begin
      //atençao usei between para imprimir geral quando o combobox1 for branco ***
      FrmMenuPrincipal.nomeiniwk := '';
      FrmMenuPrincipal.nomefinwk := 'ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ';
    end;
  end;

  if (ComboBox1.Text <> '') then
  begin
    FrmMenuPrincipal.nomeiniwk := ComboBox1.Text;
    FrmMenuPrincipal.nomefinwk := ComboBox1.Text;
  end;

  if ((RadioButton3.Checked = True) or
      (RadioButton4.Checked = True) or
      (RadioButton5.Checked = True) or
      (RadioButton6.Checked = True))then
  begin
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
    if (strtodate(edit_inicial.Text) > strtodate(edit_final.Text)) then
    begin
      ShowMessage('Data Final menor Data Fnicial.');
      edit_inicial.SetFocus;
      abort;
    end;
  end;

  if ((RadioButton3.Checked = True) or
      (RadioButton5.Checked = True) or
      (RadioButton6.Checked = True))then
  begin
    if ((EditAnalitousint.Text <> 'A') and (EditAnalitousint.Text <> 'S')) then
    begin
      ShowMessage('Tipo de Emissão diferente de (A) ou (S).');
      EditAnalitousint.SetFocus;
      abort;
    end;
  end;

  if (RadioButton2.Checked = true) then  //Ficha financeira cliente duplicata receber
  begin
    DmModuleRelatorioII.CdsEmiFFinanduprec.close;
//    DmModuleRelatorioII.CdsEmiFFinanduprec.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
//    DmModuleRelatorioII.CdsEmiFFinanduprec.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioII.CdsEmiFFinanduprec.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
//    DmModuleRelatorioII.CdsEmiFFinanduprec.Params.ParamByName('nomefin').Value :=
//         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioII.CdsEmiFFinanduprec.open;
    DmModuleRelatorioII.CdsEmiFFinanduprec.RecordCount;
//    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
//    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('RptFichafincliduprec');
  end;
  if (RadioButton3.Checked = true) then  //Duplicata receber em aberto
  begin
    if (EditAnalitousint.Text = 'A') then
    begin
      DmModuleRelatorioII.CdsEmiDuprecabertoanalitico.close;
      DmModuleRelatorioII.CdsEmiDuprecabertoanalitico.Params.ParamByName('dtinicial').Value :=
           StrToDate(edit_inicial.Text);
      DmModuleRelatorioII.CdsEmiDuprecabertoanalitico.Params.ParamByName('dtfinal').Value :=
           StrToDate(edit_final.Text);
//    DmModuleRelatorioII.CdsEmiFFinanduprec.Params.ParamByName('nomeini').Value :=
//         FrmMenuPrincipal.nomeiniwk;
//    DmModuleRelatorioII.CdsEmiFFinanduprec.Params.ParamByName('nomefin').Value :=
//         FrmMenuPrincipal.nomefinwk;
      DmModuleRelatorioII.CdsEmiDuprecabertoanalitico.open;
      DmModuleRelatorioII.CdsEmiDuprecabertoanalitico.RecordCount;
      frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
      frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
      FrmMenuprincipal.RvProjBazar.ExecuteReport('Rptduprecemabertoanalitico');
    end
    else begin
      DmModuleRelatorioII.CdsEmiDuprecabertosintetico.close;
      DmModuleRelatorioII.CdsEmiDuprecabertosintetico.Params.ParamByName('dtinicial').Value :=
           StrToDate(edit_inicial.Text);
      DmModuleRelatorioII.CdsEmiDuprecabertosintetico.Params.ParamByName('dtfinal').Value :=
           StrToDate(edit_final.Text);
//    DmModuleRelatorioII.CdsEmiFFinanduprec.Params.ParamByName('nomeini').Value :=
//         FrmMenuPrincipal.nomeiniwk;
//    DmModuleRelatorioII.CdsEmiFFinanduprec.Params.ParamByName('nomefin').Value :=
//         FrmMenuPrincipal.nomefinwk;
      DmModuleRelatorioII.CdsEmiDuprecabertosintetico.open;
      DmModuleRelatorioII.CdsEmiDuprecabertosintetico.RecordCount;
      frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
      frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
      FrmMenuprincipal.RvProjBazar.ExecuteReport('Rptduprecemabertosint');
    end;
  end;
  if (RadioButton4.Checked = true) then  //Duplicatas receber vencidas por cliente
  begin
    DmModuleRelatorioII.CdsEmiDuprecvenccli.close;
    DmModuleRelatorioII.CdsEmiDuprecvenccli.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioII.CdsEmiDuprecvenccli.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioII.CdsEmiDuprecvenccli.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioII.CdsEmiDuprecvenccli.Params.ParamByName('nomefin').Value :=
         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioII.CdsEmiDuprecvenccli.open;
    DmModuleRelatorioII.CdsEmiDuprecvenccli.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('Rptduprecvenccli');
  end;
  if (RadioButton5.Checked = true) then  //Duplicata receber vencidas mensal
  begin
    if (EditAnalitousint.Text = 'A') then
    begin
      DmModuleRelatorioII.CdsEmiDuprecvenmensalanalit.close;
      DmModuleRelatorioII.CdsEmiDuprecvenmensalanalit.Params.ParamByName('dtinicial').Value :=
           StrToDate(edit_inicial.Text);
      DmModuleRelatorioII.CdsEmiDuprecvenmensalanalit.Params.ParamByName('dtfinal').Value :=
           StrToDate(edit_final.Text);
      DmModuleRelatorioII.CdsEmiDuprecvenmensalanalit.open;
      DmModuleRelatorioII.CdsEmiDuprecvenmensalanalit.RecordCount;
      frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
      frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
      FrmMenuprincipal.RvProjBazar.ExecuteReport('Rptduprecvencmensalanalit');
    end
    else begin
      DmModuleRelatorioII.CdsEmiDuprecvenmensalsint.close;
      DmModuleRelatorioII.CdsEmiDuprecvenmensalsint.Params.ParamByName('dtinicial').Value :=
           StrToDate(edit_inicial.Text);
      DmModuleRelatorioII.CdsEmiDuprecvenmensalsint.Params.ParamByName('dtfinal').Value :=
           StrToDate(edit_final.Text);
      DmModuleRelatorioII.CdsEmiDuprecvenmensalsint.open;
      DmModuleRelatorioII.CdsEmiDuprecvenmensalsint.RecordCount;
      frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
      frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
      FrmMenuprincipal.RvProjBazar.ExecuteReport('Rptduprecvencmensalsint');
    end;
  end;
  if (RadioButton6.Checked = true) then  //Duplicata pagas analitico ou sintetico
  begin
    if (EditAnalitousint.Text = 'A') then
    begin
      DmModuleRelatorioII.CdsEmiDuprecpagasanalit.close;
      DmModuleRelatorioII.CdsEmiDuprecpagasanalit.Params.ParamByName('dtinicial').Value :=
           StrToDate(edit_inicial.Text);
      DmModuleRelatorioII.CdsEmiDuprecpagasanalit.Params.ParamByName('dtfinal').Value :=
           StrToDate(edit_final.Text);
      DmModuleRelatorioII.CdsEmiDuprecpagasanalit.open;
      DmModuleRelatorioII.CdsEmiDuprecpagasanalit.RecordCount;
      frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
      frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
      FrmMenuprincipal.RvProjBazar.ExecuteReport('Rptduprecpagasanalit');
    end
    else begin
      DmModuleRelatorioII.CdsEmiDuprecpagassint.close;
      DmModuleRelatorioII.CdsEmiDuprecpagassint.Params.ParamByName('dtinicial').Value :=
           StrToDate(edit_inicial.Text);
      DmModuleRelatorioII.CdsEmiDuprecpagassint.Params.ParamByName('dtfinal').Value :=
           StrToDate(edit_final.Text);
      DmModuleRelatorioII.CdsEmiDuprecpagassint.open;
      DmModuleRelatorioII.CdsEmiDuprecpagassint.RecordCount;
      frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
      frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
      FrmMenuprincipal.RvProjBazar.ExecuteReport('Rptduprecpagassint');
    end;
  end;
end;

end.
