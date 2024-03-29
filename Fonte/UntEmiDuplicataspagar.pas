unit UntEmiDuplicataspagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TFrmEmiDuplicataspagar = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
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
    GroupBoxfornecedor: TGroupBox;
    Label6: TLabel;
    GroupBoximpcligeral: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    procedure RadioButton1Click(Sender: TObject);
    procedure carregafornecedorcombo;
    procedure carregaitemcombo;
    procedure RadioButton2Click(Sender: TObject);
    procedure BitBtnimprimirClick(Sender: TObject);
    procedure edit_inicialEnter(Sender: TObject);
    procedure edit_inicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmb_dtInicialEnter(Sender: TObject);
    procedure edit_finalEnter(Sender: TObject);
    procedure edit_finalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmb_dtFinalEnter(Sender: TObject);
    procedure cmb_dtInicialChange(Sender: TObject);
    procedure cmb_dtFinalChange(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    lista,lista1 : AnsiString;
  end;

var
  FrmEmiDuplicataspagar: TFrmEmiDuplicataspagar;

implementation

uses DmModuloIII, DmModuloRelatorioII, UntMenuPrincipal, DmModuloI;

{$R *.dfm}

procedure TFrmEmiDuplicataspagar.RadioButton1Click(Sender: TObject);
begin
  carregafornecedorcombo;
  GroupBoxfornecedor.Visible := True;
  label6.Caption := 'Selecione o Fornecedor:';
  label12.Caption := 'fornecedor em branco ';
  GroupBoximpcligeral.visible := True;
  GroupBoxdata.Visible := false;
  ComboBox1.SetFocus;
end;

procedure TFrmEmiDuplicataspagar.carregafornecedorcombo;
var
  flag : boolean;
begin
  if (lista = '') then
  begin
    lista := '';
    flag := True;

    DmModuleIII.CdsPesqFornecedor.close;
    DmModuleIII.CdsPesqFornecedor.Open;
    DmModuleIII.CdsPesqFornecedor.RecordCount;
    while DmModuleIII.CdsPesqFornecedor.eof = false do begin
       if flag then begin
          lista := lista +  DmModuleIII.CdsPesqFornecedorNOME.AsString;
          flag := False;
       end
       else begin
          lista := lista + #13 + DmModuleIII.CdsPesqFornecedorNOME.AsString;
       end;
       DmModuleIII.CdsPesqFornecedor.Next;
    end;
  end;
  ComboBox1.Clear;
  ComboBox1.Items.Text := lista;
  ComboBox1.Visible := True;
end;

procedure TFrmEmiDuplicataspagar.RadioButton2Click(Sender: TObject);
begin
  carregafornecedorcombo;
  GroupBoxfornecedor.Visible := True;
  label6.Caption := 'Selecione o Fornecedor:';
  label12.Caption := 'fornecedor em branco ';
  GroupBoximpcligeral.visible := True;
  label1.Caption := 'Data Inicial';
  label4.Caption := 'Data Final';
  GroupBoxdata.Visible := True;
  ComboBox1.SetFocus;
end;

procedure TFrmEmiDuplicataspagar.BitBtnimprimirClick(Sender: TObject);
begin
{  if ((RadioButton2.Checked = True))then
  begin
    if (ComboBox1.Text = '') then
    begin
      ShowMessage('Nome cliente em branco.');
      ComboBox1.SetFocus;
      abort;
    end;
  end
  else begin  }
    if (ComboBox1.Text = '') then
    begin
      //aten�ao usei between para imprimir geral quando o combobox1 for branco ***
      FrmMenuPrincipal.nomeiniwk := '';
      FrmMenuPrincipal.nomefinwk := 'ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ';
    end;
//  end;

  if (ComboBox1.Text <> '') then
  begin
    FrmMenuPrincipal.nomeiniwk := ComboBox1.Text;
    FrmMenuPrincipal.nomefinwk := ComboBox1.Text;
  end;

  if ((RadioButton2.Checked = True) or
      (RadioButton3.Checked = True) or
      (RadioButton4.Checked = True) or
      (RadioButton5.Checked = True) or
      (RadioButton6.Checked = True) or
      (RadioButton7.Checked = True))then
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

  if (RadioButton1.Checked = true) then  //fornecedor
  begin
    DmModuleRelatorioII.CdsEmiforn.close;
    DmModuleRelatorioII.CdsEmiforn.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioII.CdsEmiforn.Params.ParamByName('nomefin').Value :=
         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioII.CdsEmiforn.open;
    DmModuleRelatorioII.CdsEmiforn.RecordCount;
    FrmMenuprincipal.RvProjBazar.ExecuteReport('RptFornecedor');
  end;
  if (RadioButton2.Checked = true) then  //Entrada notas fiscais fornecedor
  begin
    DmModuleRelatorioII.CdsEminfentforn.close;
    DmModuleRelatorioII.CdsEminfentforn.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioII.CdsEminfentforn.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioII.CdsEminfentforn.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioII.CdsEminfentforn.Params.ParamByName('nomefin').Value :=
         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioII.CdsEminfentforn.open;
    DmModuleRelatorioII.CdsEminfentforn.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('RptEntNfforn');
  end;
  if (RadioButton3.Checked = true) then  //Entrada notas fiscais item
  begin
    DmModuleRelatorioII.CdsEminfentitem.close;
    DmModuleRelatorioII.CdsEminfentitem.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioII.CdsEminfentitem.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioII.CdsEminfentitem.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioII.CdsEminfentitem.Params.ParamByName('nomefin').Value :=
         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioII.CdsEminfentitem.open;
    DmModuleRelatorioII.CdsEminfentitem.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('RptEntNfitem');
  end;
  if (RadioButton4.Checked = true) then  //Entrada notas fiscais periodo
  begin
    DmModuleRelatorioII.CdsEminfentperiodo.close;
    DmModuleRelatorioII.CdsEminfentperiodo.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioII.CdsEminfentperiodo.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioII.CdsEminfentperiodo.open;
    DmModuleRelatorioII.CdsEminfentperiodo.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('RptEntNFperiodo');
  end;
  if (RadioButton5.Checked = true) then  //Duplicatas pagas
  begin
    DmModuleRelatorioII.CdsEmiduppagas.close;
    DmModuleRelatorioII.CdsEmiduppagas.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioII.CdsEmiduppagas.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioII.CdsEmiduppagas.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioII.CdsEmiduppagas.Params.ParamByName('nomefin').Value :=
         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioII.CdsEmiduppagas.open;
    DmModuleRelatorioII.CdsEmiduppagas.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('Rptduppagas');
  end;
  if (RadioButton6.Checked = true) then  //Duplicatas contas pagar em aberto
  begin
    DmModuleRelatorioII.CdsEmidupaberto.close;
    DmModuleRelatorioII.CdsEmidupaberto.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioII.CdsEmidupaberto.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioII.CdsEmidupaberto.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioII.CdsEmidupaberto.Params.ParamByName('nomefin').Value :=
         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioII.CdsEmidupaberto.open;
    DmModuleRelatorioII.CdsEmidupaberto.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('Rptdupaberto');
  end;
  if (RadioButton7.Checked = true) then  //Duplicatas contas pagar em aberto mensal
  begin
    DmModuleRelatorioII.CdsEmidupabertomes.close;
    DmModuleRelatorioII.CdsEmidupabertomes.Params.ParamByName('dtinicial').Value := StrToDate(edit_inicial.Text);
    DmModuleRelatorioII.CdsEmidupabertomes.Params.ParamByName('dtfinal').Value := StrToDate(edit_final.Text);
    DmModuleRelatorioII.CdsEmidupabertomes.Params.ParamByName('nomeini').Value :=
         FrmMenuPrincipal.nomeiniwk;
    DmModuleRelatorioII.CdsEmidupabertomes.Params.ParamByName('nomefin').Value :=
         FrmMenuPrincipal.nomefinwk;
    DmModuleRelatorioII.CdsEmidupabertomes.open;
    DmModuleRelatorioII.CdsEmidupabertomes.RecordCount;
    frmMenuPrincipal.RvProjBazar.SetParam('xdatainicio',edit_inicial.text);
    frmMenuPrincipal.RvProjBazar.SetParam('xdatafim',edit_final.text);
    FrmMenuprincipal.RvProjBazar.ExecuteReport('Rptdupabertomensal');
  end;
end;

procedure TFrmEmiDuplicataspagar.edit_inicialEnter(Sender: TObject);
begin
  cmb_dtFinal.Date := date;
  cmb_dtInicial.Date := date;
end;

procedure TFrmEmiDuplicataspagar.edit_inicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmEmiDuplicataspagar.cmb_dtInicialEnter(Sender: TObject);
begin
  cmb_dtFinal.Date := date;
  cmb_dtInicial.Date := date;
  edit_inicial.SetFocus;
end;

procedure TFrmEmiDuplicataspagar.edit_finalEnter(Sender: TObject);
begin
  if (edit_final.Text = '') then
  begin
     edit_final.Text := edit_inicial.text;
  end;
end;

procedure TFrmEmiDuplicataspagar.edit_finalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmEmiDuplicataspagar.cmb_dtFinalEnter(Sender: TObject);
begin
  cmb_dtFinal.Date := date;
  cmb_dtInicial.Date := date;
  edit_inicial.SetFocus;
end;

procedure TFrmEmiDuplicataspagar.cmb_dtInicialChange(Sender: TObject);
begin
  edit_inicial.Text := DateToStr(cmb_dtInicial.date);
end;

procedure TFrmEmiDuplicataspagar.cmb_dtFinalChange(Sender: TObject);
begin
  edit_final.Text := DateToStr(cmb_dtFinal.date);
end;

procedure TFrmEmiDuplicataspagar.RadioButton3Click(Sender: TObject);
begin
  carregaitemcombo;
  GroupBoxfornecedor.Visible := True;
  label6.Caption := 'Selecione o Item:';
  label12.Caption := 'Item em branco ';
  GroupBoximpcligeral.visible := True;
  label1.Caption := 'Data Inicial';
  label4.Caption := 'Data Final';
  GroupBoxdata.Visible := True;
  ComboBox1.SetFocus;
end;

procedure TFrmEmiDuplicataspagar.carregaitemcombo;
var
  flag : boolean;
begin
  if (lista1 = '') then
  begin
    lista1 := '';
    flag := True;

    DmModuleI.Cdspesqitem.close;
    DmModuleI.Cdspesqitem.Open;
    DmModuleI.Cdspesqitem.RecordCount;
    while DmModuleI.Cdspesqitem.eof = false do begin
       if flag then begin
          lista1 := lista1 +  DmModuleI.CdspesqitemDESCITEM.AsString;
          flag := False;
       end
       else begin
          lista1 := lista1 + #13 + DmModuleI.CdspesqitemDESCITEM.AsString;
       end;
       DmModuleI.Cdspesqitem.Next;
    end;
  end;
  ComboBox1.Clear;
  ComboBox1.Items.Text := lista1;
  ComboBox1.Visible := True;
end;

procedure TFrmEmiDuplicataspagar.RadioButton4Click(Sender: TObject);
begin
  GroupBoxfornecedor.Visible := false;
  label1.Caption := 'Data Inicial';
  label4.Caption := 'Data Final';  
  GroupBoxdata.Visible := True;
  edit_inicial.SetFocus;
end;

procedure TFrmEmiDuplicataspagar.RadioButton5Click(Sender: TObject);
begin
  carregafornecedorcombo;
  GroupBoxfornecedor.Visible := True;
  label6.Caption := 'Selecione o Fornecedor:';
  label12.Caption := 'fornecedor em branco ';
  GroupBoximpcligeral.visible := True;
  label1.Caption := 'Dt Pagto Inicial';
  label4.Caption := 'Dt Pagto Final';
  GroupBoxdata.Visible := True;
  ComboBox1.SetFocus;
end;

procedure TFrmEmiDuplicataspagar.RadioButton6Click(Sender: TObject);
begin
  carregafornecedorcombo;
  GroupBoxfornecedor.Visible := True;
  label6.Caption := 'Selecione o Fornecedor:';
  label12.Caption := 'fornecedor em branco ';
  GroupBoximpcligeral.visible := True;
  label1.Caption := 'Dt Vencto Inicial';
  label4.Caption := 'Dt Vencto Final';
  GroupBoxdata.Visible := True;
  ComboBox1.SetFocus;
end;

procedure TFrmEmiDuplicataspagar.RadioButton7Click(Sender: TObject);
begin
  carregafornecedorcombo;
  GroupBoxfornecedor.Visible := True;
  label6.Caption := 'Selecione o Fornecedor:';
  label12.Caption := 'fornecedor em branco ';
  GroupBoximpcligeral.visible := True;
  label1.Caption := 'Data Inicial';
  label4.Caption := 'Data Final';
  GroupBoxdata.Visible := True;
  ComboBox1.SetFocus;
end;

end.
