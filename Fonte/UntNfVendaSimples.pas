unit UntNfVendaSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntPadrao, StdCtrls, DB, Buttons, ExtCtrls, DBCtrls, Mask,
  Grids, DBGrids, Menus;

type
  TFrmNfVendaSimples = class(TFrmPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DsNFiscaldet: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    PopupMenu1: TPopupMenu;
    ExcluirItemnavenda1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    GroupBoxvendaduplicata: TGroupBox;
    Label12: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label13: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    GroupBoxvendasimples: TGroupBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBoxVendaduprodape: TGroupBox;
    Bitbtngeraduprec: TBitBtn;
    Bitbtnverduprec: TBitBtn;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    BitBtn4: TBitBtn;
    procedure btnIncluirClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure abrirdependente;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExcluirItemnavenda1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNfVendaSimples: TFrmNfVendaSimples;

implementation

uses DmModuloI, UntMenuPrincipal, UntGeracaodupreceber, DmModuloRelatorioI,
  UntEmiVendaSimples;

{$R *.dfm}

procedure TFrmNfVendaSimples.abrirdependente;
begin
  if DBEdit2.Text <> '' then
  begin
    DmModuleI.Cdspesqdepend.Close;
    DmModuleI.Cdspesqdepend.Params.ParamByName('codigo').Value := strtoint(DBEdit2.Text);
    DmModuleI.Cdspesqdepend.Open;
  end;  
end;

procedure TFrmNfVendaSimples.btnIncluirClick(Sender: TObject);
begin
  inherited;
//  DBEdit4.Text := datetostr(now);
  DmModuleI.CdsNFvendamesDATAEMISSAO.Value := now;
  DBEdit2.SetFocus;
  Bitbtngeraduprec.Enabled := False;
  Bitbtnverduprec.enabled := False;
end;

procedure TFrmNfVendaSimples.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  abrirdependente;
end;

procedure TFrmNfVendaSimples.FormShow(Sender: TObject);
begin
  inherited;
  DmModuleI.Cdspesqcliente.Close;
  DmModuleI.Cdspesqcliente.Open;
  DmModuleI.Cdspesqvend.close;
  DmModuleI.Cdspesqvend.open;
  DmModuleI.Cdstipopagto.Close;
  DmModuleI.Cdstipopagto.Open;
  DmModuleI.CdsCondPagto.Close;
  DmModuleI.CdsCondPagto.Open;
  DmModuleI.CdsFormapagto.Close;
  DmModuleI.CdsFormapagto.Open;
  DmModuleI.Cdspesqitem.Close;
  DmModuleI.Cdspesqitem.Open;
  DmModuleI.CdsNFvendames.Close;
  DmModuleI.CdsNFvendames.Open;
  DmModuleI.CdsNFvendames.Append;
  if FrmMenuPrincipal.idprocessamento = 'Vendasimples' then
  begin
    FrmNfVendaSimples.GroupBoxvendaduplicata.Visible := false;
    FrmNfVendaSimples.GroupBoxvendasimples.Visible := true;
    FrmNfVendaSimples.GroupBoxVendaduprodape.Visible := false;
    Bitbtngeraduprec.Enabled := true;
    Bitbtnverduprec.enabled := True;
    FrmNfVendaSimples.btnRelatorio.Visible := True;    
  end;
  if FrmMenuPrincipal.idprocessamento = 'Vendaduplicata' then
  begin
    FrmNfVendaSimples.GroupBoxvendaduplicata.Visible := true;
    FrmNfVendaSimples.GroupBoxvendasimples.Visible := false;
    FrmNfVendaSimples.GroupBoxVendaduprodape.Visible := true;
    Bitbtngeraduprec.Enabled := false;
    Bitbtnverduprec.enabled := false;
    FrmNfVendaSimples.btnRelatorio.Visible := False;
  end;
  DBEdit1.ReadOnly := true;
end;

procedure TFrmNfVendaSimples.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
  abrirdependente;
end;

procedure TFrmNfVendaSimples.btnPesquisarClick(Sender: TObject);
begin
//  FrmMenuPrincipal.idprocessamento := 'Nfiscalsimples';
  inherited;

end;

procedure TFrmNfVendaSimples.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBLookupComboBox4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBLookupComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBLookupComboBox3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  case key of
  13 : Key := 9 ;
  end;
end;

procedure TFrmNfVendaSimples.ExcluirItemnavenda1Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente excluir o item da Venda?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    DmModuleI.CdsNFvendadet.Delete;
    DmModuleI.CdsNFvendames.Edit;
    DmModuleI.CdsNFvendames.Post;
    DmModuleI.CdsNFvendames.ApplyUpdates(0);
  end;
end;

procedure TFrmNfVendaSimples.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente <<EXCLUIR A VENDA>> e seus itens totalmente?',
     mtConfirmation,[mbyes,mbno],6) = mryes then
  begin
    inherited;
  end;
end;

procedure TFrmNfVendaSimples.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid1.selectedfield = DmModuleI.CdsNFvendadetJUROSOUDESC then
  begin
    if (DmModuleI.CdsNFvendamesPERCDESCAVISTA.AsFloat > 0) then
    begin
      DmModuleI.CdsNFvendadet.Edit;
      DmModuleI.CdsNFvendadetJUROSOUDESC.AsFloat :=
         (-1 * (DmModuleI.CdsNFvendadetQUANT.AsFloat *
            DmModuleI.CdsNFvendadetpunit.AsFloat)
            * (DmModuleI.CdsNFvendamesPERCDESCAVISTA.AsFloat / 100));
    end;
  end;
  if DBGrid1.selectedfield = DmModuleI.CdsNFvendadetQUANT then
  begin
    DmModuleI.CdsNFvendadet.Edit;
    DmModuleI.CdsNFvendadetDATAVENCTO.Value :=
       DmModuleI.CdsNFvendamesDATAEMISSAO.value + 30;
    if (DmModuleI.CdsNFvendadetPUNITARIO.AsFloat = 0) then
    begin
      DmModuleI.CdsNFvendadetPUNITARIO.Value :=
         DmModuleI.CdsNFvendadetpunit.value;
    end;
    DmModuleI.CdsNFvendadetQUANTXPUNIT.AsFloat :=
       (DmModuleI.CdsNFvendadetQUANT.AsFloat *
             DmModuleI.CdsNFvendadetPUNITARIO.AsFloat);
  end;
  if DBGrid1.selectedfield = DmModuleI.CdsNFvendadetQUANTXPUNIT then
  begin
    DmModuleI.CdsNFvendadet.Edit;
    DmModuleI.CdsNFvendadetQUANTXPUNIT.AsFloat :=
       (DmModuleI.CdsNFvendadetQUANT.AsFloat *
             DmModuleI.CdsNFvendadetPUNITARIO.AsFloat);
  end;
end;

procedure TFrmNfVendaSimples.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBLookupComboBox5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBLookupComboBox6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmNfVendaSimples.DBEdit2Enter(Sender: TObject);
begin
  inherited;
  if DBEdit2.Text <> '' then
  begin
    Bitbtngeraduprec.Enabled := true;
    Bitbtnverduprec.enabled := true;
  end;
end;

procedure TFrmNfVendaSimples.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
  if DBEdit2.Text <> '' then
  begin
    Bitbtngeraduprec.Enabled := true;
    Bitbtnverduprec.enabled := true;
  end;
end;

procedure TFrmNfVendaSimples.btnGravarClick(Sender: TObject);
begin
  inherited;
  if FrmMenuPrincipal.idprocessamento = 'Vendaduplicata' then
  begin
    FrmGeracaoDupreceber := TFrmGeracaoDupreceber.Create(Application);
    try
      FrmGeracaoDupreceber.ShowModal;//exibir
    finally
      FrmGeracaoDupreceber.Free;
    end;
  end;

end;

procedure TFrmNfVendaSimples.DBEdit4Enter(Sender: TObject);
begin
  inherited;
  if (DBEdit4.Text = '') then
  begin
    DmModuleI.CdsNFvendamesDATAEMISSAO.Value := now;
  end;  
end;

procedure TFrmNfVendaSimples.btnRelatorioClick(Sender: TObject);
begin
  inherited;

  if FrmMenuPrincipal.idprocessamento = 'Vendasimples' then
  begin
    DmModuleRelatorioI.cdsEmiVendaSimples.Close;
    DmModuleRelatorioI.cdsEmiVendaSimples.Params.ParamByName('codigo').value :=
            DmModuleI.CdsNFvendamesCODIGO.Value;
    DmModuleRelatorioI.cdsEmiVendaSimples.open;
    DmModuleRelatorioI.cdsEmiVendaSimples.RecordCount;

    FrmEmiVendaSimples := TFrmEmiVendaSimples.Create(Application);
    try
//      FrmEmiVendaSimples.RLReport1.Print; //impressora
      FrmEmiVendaSimples.RLReport1.Preview();    //video
    finally
      FrmEmiVendaSimples.Free;
    end;
  end;
end;

procedure TFrmNfVendaSimples.BitBtn4Click(Sender: TObject);
var
  str: AnsiString;
  Arquivo: TextFile;
  localnomearqtext,nomeemp,telemp,codcliente,nomecliente,data_emissao
  ,numerovenda,dependente : String;
  esca,escb,escc : string;
  tot_recebido : real;
  coditem,desc_item1,quant,totalitemtotal_nota : string;
  subtotal,multa,valordesconto,totalpagar : ShortString;
  comando,ret : integer;
  comunica : string;
  usuario_abrev : string;
  InputString : string;
  contador : integer;
begin
  inherited;
  if FrmMenuPrincipal.idprocessamento = 'Vendasimples' then
  begin
    DmModuleRelatorioI.cdsEmiVendaSimples.Close;
    DmModuleRelatorioI.cdsEmiVendaSimples.Params.ParamByName('codigo').value :=
            DmModuleI.CdsNFvendamesCODIGO.Value;
    DmModuleRelatorioI.cdsEmiVendaSimples.open;
    if DmModuleRelatorioI.cdsEmiVendaSimples.RecordCount > 0 then
    begin
      AssignFile(Arquivo,'C:\SistemaBazar\Dados\PedVend.txt'); //salva em arquivo
//      localnomearqtext := 'C:\' + 'Arq' + fieldbyname('NUM_VENDA').AsString + '.txt';
//      AssignFile(Arquivo,localnomearqtext);
//      AssignFile(Arquivo,'LPT1'); // Impressora Local
//  AssignFile(Arquivo,'\\Micro3\IMP_REDE'); // Impressora Rede
//   AssignFile(Arquivo,'\\tabarino\q2'); // Impressora Rede
      Rewrite(Arquivo);
      //inicio cabecalho
      str := '';
      Writeln(Arquivo, str);
      nomeemp := FrmMenuPrincipal.PosInicialStr
         (DmModuleRelatorioI.cdsEmiVendaSimplesNOMEEMPRESA.Value,30);
      telemp := DmModuleRelatorioI.cdsEmiVendaSimplesTELEFONE.Value;
//    str := 'TABARINO MOVEIS LTDA.' + '        ' + 'Tel:'+ telemp;
      str := nomeemp  + '   ' + 'Tel:'+ telemp;
      Writeln(Arquivo, str);

      str := '';
      codcliente := inttostr(DmModuleRelatorioI.cdsEmiVendaSimplesCODCLIENTE.Value);
      nomecliente := DmModuleRelatorioI.cdsEmiVendaSimplesNOMECLI.Value;
      str := 'Cliente......: ' + codcliente + '    ' + nomecliente;
      Writeln(Arquivo, str);

      str := '';
      numerovenda := inttostr(DmModuleRelatorioI.cdsEmiVendaSimplesCODIGO.Value);
      data_emissao := datetostr(DmModuleRelatorioI.cdsEmiVendaSimplesDATAEMISSAO.Value);
      str := 'Relação de Venda: ' + numerovenda + '               Emissão:' + data_emissao;
      Writeln(Arquivo, str);

      str := '';
      str := '========================================================';
      Writeln(Arquivo, str);

      str := '';
      str := 'Descrição                                   Quant  Valor';
      Writeln(Arquivo, str);

      str := '';
      str := '========================================================';
      Writeln(Arquivo, str);
      // *** Finaliza o Cabeçalho do Pedido de Venda *********************************
      // *** Inicializa o Detalhe do Pedido de Venda *********************************
      while  not (DmModuleRelatorioI.cdsEmiVendaSimples.Eof = true ) do
      begin
        desc_item1 := FrmMenuPrincipal.PosInicialStr
               (DmModuleRelatorioI.cdsEmiVendaSimplesDESCITEM.AsString,40);
        quant := FormatFloat('0.00',DmModuleRelatorioI.cdsEmiVendaSimplesQUANT.AsFloat);
//        floattostr(DmModuleRelatorioI.cdsEmiVendaSimplesQUANT.Value);
        totalitemtotal_nota := FormatFloat('0.00',DmModuleRelatorioI.cdsEmiVendaSimplesVLTOTALITEM.AsFloat);

        str := '';
        str := desc_item1 + '    ' + quant + '    ' + totalitemtotal_nota;

{        PosInicialStr(fieldbyname('COD_ITEM').AsString , 6) + '|' + desc_item1 +
              PosInicialStr(' |' + fieldbyname('QUANT').AsString, 6) +
              PosInicialStr('|' + FormatFloat('0.00',fieldbyname('PRECO_UNIT').AsFloat), 8)+
              PosInicialStr('|' + FormatFloat('0.00',fieldbyname('PUNITXQUANT').AsFloat), 10);
              Writeln(Arquivo, str);

//              str := PosInicialStr(' ' , 7) + PosInicialStr('|' + fieldbyname('RAZAOSOCIAL').AsString, 15)+
              str := '      ' + '|' + desc_item2 + ' |    ' + '|       ' + '|      ';
              Writeln(Arquivo, str);
              str := '--------------------------------------------------';}
        Writeln(Arquivo, str);
        DmModuleRelatorioI.cdsEmiVendaSimples.Next;
      end;
      // *** Fim do Detalhe do Pedido de Venda ***************************************
      //inicio do total
      str := '';
      str := '========================================================';
      Writeln(Arquivo, str);

      str := '';
      subtotal := FormatFloat('0.00',DmModuleRelatorioI.cdsEmiVendaSimplesVALORTOTALNFISCAL.AsFloat);
      str := '    Sub-total:                                     ' + subtotal;
      Writeln(Arquivo, str);

      multa := '0.00';
      str := '    Multa....:                                     ' + multa;
      Writeln(Arquivo, str);

      str := '';
      valordesconto := FormatFloat('0.00',DmModuleRelatorioI.cdsEmiVendaSimplesVALORDESCONTO.AsFloat);
      str := '    Desconto.:                                     ' + valordesconto;
      Writeln(Arquivo, str);

      str := '';
      str := '                         ===============================';
      Writeln(Arquivo, str);

      str := '';
      totalpagar := FormatFloat('0.00',DmModuleRelatorioI.cdsEmiVendaSimplesVALORTOTALNFISCAL.AsFloat);
      str := '                         Total a pagar:            ' + subtotal;
      Writeln(Arquivo, str);

      str := '';
      str := '========================================================';
      Writeln(Arquivo, str);

      str := '';
      str := 'Reconheco e confesso aqui a divida e reitero os termos';
      Writeln(Arquivo, str);

      str := '';
      str := 'do contrato que firmei com o N.Abdalla Bazar.';
      Writeln(Arquivo, str);

      str := '';
      str := 'Assinatura:_____________________________________________';
      Writeln(Arquivo, str);

      str := '';
      str := '           ' + DmModuleRelatorioI.cdsEmiVendaSimplesNOMEDEPENDENTE.Value;
      Writeln(Arquivo, str);

      str := '';
      Writeln(Arquivo, str);

      str := '';
      Writeln(Arquivo, str);

      str := '';
      str := 'Agradecemos a preferencia!!!!';
      Writeln(Arquivo, str);

      CloseFile(Arquivo);
    end;
  end;
end;

end.
