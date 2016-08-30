unit UntMenuPrincipal;

interface

uses
  Windows,  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, Menus, XPMan, DB, SqlExpr, ComCtrls, AppEvnts,
  ImgList, ActnCtrls, ToolWin, ActnMan, ActnMenus, XPStyleActnCtrls,
  ActnList, RpBase, RpSystem, RpDefine, RpRave, RpRender, RpRenderPDF,
  Midaslib, FMTBcd, DBClient, Provider, StdCtrls;

type
  TFrmMenuPrincipal = class(TForm)
    SQLConnection1: TSQLConnection;
    XPManifest1: TXPManifest;
    StatusBar1: TStatusBar;
    ActionMainMenuBar1: TActionMainMenuBar;
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    AcEmpresa: TAction;
    AcUsuario: TAction;
    AcFormaPagto: TAction;
    AcGrupoItem: TAction;
    AcSair: TAction;
    AcCondicaoPagto: TAction;
    ImageList2: TImageList;
    AcItem: TAction;
    AcCliente: TAction;
    AcIndFinanceiro: TAction;
    AcPrecosteclado: TAction;
    AcEntradaItem: TAction;
    Actabprecodesc: TAction;
    AcVendaSimples: TAction;
    AcVendaDuplicata: TAction;
    AcRecebimentoSimples: TAction;
    AcRecebimentoDuplicata: TAction;
    AcDemonstrativoDebitos: TAction;
    AcOrcamento: TAction;
    Acfatoresfinanceiro: TAction;
    AcVendedor: TAction;
    AcCondicaoPagtoOrc: TAction;
    AcClienteMarcelo: TAction;
    AcEmiCadastroItem: TAction;
    AcEmiFatVenda: TAction;
    AcNotasFiscaiscreceber: TAction;
    AcDuplicatascreceber: TAction;
    AcNotasFiscaisGeralcreceber: TAction;
    AcDuplicataAberto: TAction;
    AcRecebimentoDuplicatageral: TAction;
    AcJuroasaodia: TAction;
    Acemiduprecduplicata: TAction;
    AcFornecedor: TAction;
    AcEntradaNotaFiscal: TAction;
    AcDuplicatas: TAction;
    AcEmiFornecedores: TAction;
    AcEmiEntradaNotascpagar: TAction;
    AcEmiDuplicatscpagar: TAction;
    RvProjBazar: TRvProject;
    RvSystem1: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    AcPrecoPerc: TAction;
    AcGerardupreceber: TAction;
    AcVerDuplicata: TAction;
    Aceminormalfat: TAction;
    Acemiduprecvsimples: TAction;
    AcEmiDupaPagar: TAction;
    SqldsUsuario: TSQLDataSet;
    SqldsUsuarioCODUSUARIO: TIntegerField;
    SqldsUsuarioNOME: TStringField;
    SqldsUsuarioSENHA: TStringField;
    SqldsUsuarioTIPOUSUARIO: TStringField;
    DspUsuario: TDataSetProvider;
    CdsUsuario: TClientDataSet;
    CdsUsuarioCODUSUARIO: TIntegerField;
    CdsUsuarioNOME: TStringField;
    CdsUsuarioSENHA: TStringField;
    CdsUsuarioTIPOUSUARIO: TStringField;
    SqldsUsuarioSITUACAO: TStringField;
    CdsUsuarioSITUACAO: TStringField;
    GroupBox1: TGroupBox;
    EditUsuario: TEdit;
    procedure Empresa1Click(Sender: TObject);
    procedure Grupo2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormaPagamento1Click(Sender: TObject);
    procedure Item2Click(Sender: TObject);
    procedure AcEmpresaExecute(Sender: TObject);
    procedure AcFormaPagtoExecute(Sender: TObject);
    procedure AcGrupoItemExecute(Sender: TObject);
    procedure AcSairExecute(Sender: TObject);
    procedure AcCondicaoPagtoExecute(Sender: TObject);
    procedure AcItemExecute(Sender: TObject);
    procedure AcUsuarioExecute(Sender: TObject);
    procedure AcClienteExecute(Sender: TObject);
    procedure AcIndFinanceiroExecute(Sender: TObject);
    procedure AcPrecostecladoExecute(Sender: TObject);
    procedure AcEntradaItemExecute(Sender: TObject);
    procedure ActabprecodescExecute(Sender: TObject);
    procedure AcVendaSimplesExecute(Sender: TObject);
    procedure AcVendaDuplicataExecute(Sender: TObject);
    procedure AcRecebimentoSimplesExecute(Sender: TObject);
    procedure AcRecebimentoDuplicataExecute(Sender: TObject);
    procedure AcDemonstrativoDebitosExecute(Sender: TObject);
    procedure AcOrcamentoExecute(Sender: TObject);
    procedure AcFormasPagtoExecute(Sender: TObject);
    procedure AcfatoresfinanceiroExecute(Sender: TObject);
    procedure AcOrcamentoFinanciamentoExecute(Sender: TObject);
    procedure AcCondicaoPagamentoExecute(Sender: TObject);
    procedure AcCondicaoPagtoOrcExecute(Sender: TObject);
    procedure AcDependenteExecute(Sender: TObject);
    procedure AcVendedorExecute(Sender: TObject);
    procedure AcClienteMarceloExecute(Sender: TObject);
    procedure AcEmiCadastroItemExecute(Sender: TObject);
    procedure AcEmiFatVendaExecute(Sender: TObject);
    procedure AcEmiFechamentoCaixaExecute(Sender: TObject);
    procedure AcEmiNotasFiscaisVendaemAbertoExecute(Sender: TObject);
    procedure AcDuplicatascreceberExecute(Sender: TObject);
    procedure AcNotasFiscaiscreceberExecute(Sender: TObject);
    procedure AcNotasFiscaisemabertocreceberExecute(Sender: TObject);
    procedure AcNotasFiscaisGeralcreceberExecute(Sender: TObject);
    procedure AcIndicadoresFinanceiroscreceberExecute(Sender: TObject);
    procedure AcEmiDemonstrativoDebitoscreceberExecute(Sender: TObject);
    procedure AcEmiNotasFiscaiscreceberExecute(Sender: TObject);
    procedure AcEmiFichaFinanceiracreceberExecute(Sender: TObject);
    procedure AcEmiCartaCobrancacrecebercreceberExecute(Sender: TObject);
    procedure AcEmiReciboPagamentocreceberExecute(Sender: TObject);
    procedure AcDuplicataAbertoExecute(Sender: TObject);
    procedure AcRecebimentoDuplicatageralExecute(Sender: TObject);
    procedure AcJuroasaodiaExecute(Sender: TObject);
    procedure AcemiduprecduplicataExecute(Sender: TObject);
    procedure AcEmiDuplicatasCreceberExecute(Sender: TObject);
    procedure AcEmiCartaCobrancacreceberExecute(Sender: TObject);
    procedure AcEmiCarnePagamentocreceberExecute(Sender: TObject);
    procedure AcFornecedorExecute(Sender: TObject);
    procedure AcEntradaNotaFiscalExecute(Sender: TObject);
    procedure AcDuplicatasExecute(Sender: TObject);
    procedure AcDuplicataGeralcpagarExecute(Sender: TObject);
    procedure AcEmiFornecedoresExecute(Sender: TObject);
    procedure AcEmiEntradaNotascpagarExecute(Sender: TObject);
    procedure AcEmiDuplicatscpagarExecute(Sender: TObject);
    procedure AcPrecoPercExecute(Sender: TObject);
    procedure AcGerardupreceberExecute(Sender: TObject);
    procedure AcVerDuplicataExecute(Sender: TObject);
    procedure AcEmiFatMensalExecute(Sender: TObject);
    procedure AceminormalfatExecute(Sender: TObject);
    procedure AcemiduprecvsimplesExecute(Sender: TObject);
    procedure AcEmiDupaPagarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    function PosInicialStr(caracter: String; posicao: Byte): AnsiString;    
  private
    { Private declarations }
  public
    { Public declarations }
//    idprocessamento : string;
//    nomeiniwk,nomefinwk :string[100];
    nomeiniwk,nomefinwk :string[100];
    idprocessamento,idjafezloginusuario,idprocgeral
    , strsql, strfiltro, strorderby
    ,datainiwk,datafinwk, usuariook,errogravacao,
    idemissaovendamenurel,idemissaoorcamentomenurel : string;
    codmovtoitemwk,Codnfiscalvenda,numorcamento,
    codclientesalvo : integer;
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

uses UntEmpresa, UntDbgridPadrao, UntItem, UntEmiItem, UntCliente,
  UntMovtoItem, UntVendedor, UntNfVendaSimples, UntGeracaodupreceber,
  UntFornecedor, untEntradaNotaFiscal, UntDuplicatasaPagar, UntOrcamento,
  UntPesquisa, DmModuloII, UntEmiFatDiario, UntEmiNormalFat,
  UntIndicadorFinanceiro, UntEmiCRecebVSimples, UntEmiReciborecvdup,
  UntEmiCRecebDuplicata, UntEmiDuplicataspagar, UntUsuariologin, DmModuloI;

{$R *.dfm}

procedure TFrmMenuPrincipal.Empresa1Click(Sender: TObject);
begin
  FrmEmpresa := TFrmEmpresa.Create(Application);
  try
    FrmEmpresa.ShowModal;//exibir
  finally
    FrmEmpresa.Free;
  end;
end;

procedure TFrmMenuPrincipal.Grupo2Click(Sender: TObject);
begin
  idprocessamento := 'GI'; //grupo item
  FrmDbgridPadrao := TFrmDbgridPadrao.Create(Application);
  try
    FrmDbgridPadrao.ShowModal;//exibir
  finally
    FrmDbgridPadrao.Free;
  end;
end;

procedure TFrmMenuPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmMenuPrincipal.FormaPagamento1Click(Sender: TObject);
begin
  idprocessamento := 'FP'; //Formas Pagamento
  FrmDbgridPadrao := TFrmDbgridPadrao.Create(Application);
  try
    FrmDbgridPadrao.ShowModal;//exibir
  finally
    FrmDbgridPadrao.Free;
  end;
end;

procedure TFrmMenuPrincipal.Item2Click(Sender: TObject);
begin
  FrmItem := TFrmItem.Create(Application);
  try
    FrmItem.ShowModal;//exibir
  finally
    FrmItem.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcEmpresaExecute(Sender: TObject);
begin
  FrmEmpresa := TFrmEmpresa.Create(Application);
  try
    FrmEmpresa.ShowModal;//exibir
  finally
    FrmEmpresa.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcFormaPagtoExecute(Sender: TObject);
begin
  idprocessamento := 'FormaPagamento'; //Formas Pagamento
  FrmDbgridPadrao := TFrmDbgridPadrao.Create(Application);
  try
    FrmDbgridPadrao.ShowModal;//exibir
  finally
    FrmDbgridPadrao.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcGrupoItemExecute(Sender: TObject);
begin
  idprocessamento := 'GrupoItem'; //grupo item
  FrmDbgridPadrao := TFrmDbgridPadrao.Create(Application);
  try
    FrmDbgridPadrao.ShowModal;//exibir
  finally
    FrmDbgridPadrao.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcSairExecute(Sender: TObject);
begin
  close;
end;

procedure TFrmMenuPrincipal.AcCondicaoPagtoExecute(Sender: TObject);
begin
  idprocessamento := 'CondicaoPagto'; //Condição Pagamento
  FrmDbgridPadrao := TFrmDbgridPadrao.Create(Application);
  try
    FrmDbgridPadrao.ShowModal;//exibir
  finally
    FrmDbgridPadrao.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcItemExecute(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'Item';
  FrmItem := TFrmItem.Create(Application);
  try
    FrmItem.ShowModal;//exibir
  finally
    FrmItem.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcUsuarioExecute(Sender: TObject);
begin
  idprocessamento := 'Alterasenha';
  idjafezloginusuario := 'Sim';
  FrmUsuariologin := TFrmUsuariologin.Create(Application);
  try
    FrmUsuarioLogin.Caption := 'Gravar Novo Usuário ou Altera Senha';
    FrmUsuarioLogin.GroupBoxalterasenha.Visible := True;
    FrmUsuarioLogin.GroupBoxnovousuario.Visible := False;
    FrmUsuarioLogin.BitBtnnovousuario.Visible := true;
    FrmUsuarioLogin.btn_Entrar.Visible := false;
    FrmUsuarioLogin.BitBtnalterausuario.Visible := true;
    FrmUsuarioLogin.GroupBoxalterasenha.Enabled := false;
    FrmUsuarioLogin.GroupBoxbtnnovousu_altsenha.Enabled := false;
    FrmUsuariologin.ShowModal;//exibir
  finally
    FrmUsuariologin.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcClienteExecute(Sender: TObject);
begin
  FrmCliente := TFrmCliente.Create(Application);
  try
    FrmCliente.ShowModal;//exibir
  finally
    FrmCliente.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcIndFinanceiroExecute(Sender: TObject);
begin
  FrmIndicadorFinanceiro := TFrmIndicadorFinanceiro.Create(Application);
  try
    FrmIndicadorFinanceiro.ShowModal;//exibir
  finally
    FrmIndicadorFinanceiro.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcPrecostecladoExecute(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'Precoteclado';
  FrmItem := TFrmItem.Create(Application);
  try
    FrmItem.ShowModal;//exibir
  finally
    FrmItem.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcEntradaItemExecute(Sender: TObject);
begin
  FrmMovtoItem := TFrmMovtoItem.Create(Application);
  try
    FrmMovtoItem.ShowModal;//exibir
  finally
    FrmMovtoItem.Free;
  end;
end;

procedure TFrmMenuPrincipal.ActabprecodescExecute(Sender: TObject);
begin
  idprocessamento := 'Emitabpreco'; //emissão tabela de preço
  FrmEmiItem := TFrmEmiItem.Create(Application);
  try
    FrmEmiItem.ShowModal;//exibir
  finally
    FrmEmiItem.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcVendaSimplesExecute(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'Vendasimples';
  FrmNfVendaSimples := TFrmNfVendaSimples.Create(Application);
  try
    FrmNfVendaSimples.ShowModal;//exibir
  finally
    FrmNfVendaSimples.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcVendaDuplicataExecute(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'Vendaduplicata';
  FrmNfVendaSimples := TFrmNfVendaSimples.Create(Application);
  try
    FrmNfVendaSimples.ShowModal;//exibir
  finally
    FrmNfVendaSimples.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcRecebimentoSimplesExecute(Sender: TObject);
begin
  idprocessamento := 'Recebimento Venda Simples'; //Recebimento Venda Simples
  idprocgeral := 'Nao';
  FrmDbgridPadrao := TFrmDbgridPadrao.Create(Application);
  try
    FrmDbgridPadrao.ShowModal;//exibir
  finally
    FrmDbgridPadrao.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcRecebimentoDuplicataExecute(Sender: TObject);
begin
  idprocessamento := 'Recebimento Duplicata'; //Recebimento Duplicata
  idprocgeral := 'Nao';
  FrmDbgridPadrao := TFrmDbgridPadrao.Create(Application);
  try
    FrmDbgridPadrao.ShowModal;//exibir
  finally
    FrmDbgridPadrao.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcDemonstrativoDebitosExecute(Sender: TObject);
begin
  idprocessamento := 'Recebimento Venda Simples'; //Recebimento Venda Simples
  idprocgeral := 'Nao';
  FrmDbgridPadrao := TFrmDbgridPadrao.Create(Application);
  try
    FrmDbgridPadrao.ShowModal;//exibir
  finally
    FrmDbgridPadrao.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcOrcamentoExecute(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'Orcamento';
  FrmOrcamento := TFrmOrcamento.Create(Application);
  try
    FrmOrcamento.ShowModal;//exibir
  finally
    FrmOrcamento.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcFormasPagtoExecute(
  Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcfatoresfinanceiroExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcOrcamentoFinanciamentoExecute(
  Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcCondicaoPagamentoExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcCondicaoPagtoOrcExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcDependenteExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcVendedorExecute(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'Vendedor';
  FrmVendedor := TFrmVendedor.Create(Application);
  try
    FrmVendedor.ShowModal;//exibir
  finally
    FrmVendedor.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcClienteMarceloExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiCadastroItemExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiFatVendaExecute(Sender: TObject);
begin
  Frmemifatdiario := TFrmemifatdiario.Create(Application);
  try
    Frmemifatdiario.ShowModal;//exibir
  finally
    Frmemifatdiario.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcEmiFechamentoCaixaExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiNotasFiscaisVendaemAbertoExecute(
  Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcDuplicatascreceberExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcNotasFiscaiscreceberExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcNotasFiscaisemabertocreceberExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcNotasFiscaisGeralcreceberExecute(Sender: TObject);
begin
  idprocessamento := 'Recebimento Venda Simples'; //Recebimento Venda Simples
  idprocgeral := 'Sim';
  FrmDbgridPadrao := TFrmDbgridPadrao.Create(Application);
  try
    FrmDbgridPadrao.ShowModal;//exibir
  finally
    FrmDbgridPadrao.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcIndicadoresFinanceiroscreceberExecute(
  Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiDemonstrativoDebitoscreceberExecute(
  Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiNotasFiscaiscreceberExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiFichaFinanceiracreceberExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiCartaCobrancacrecebercreceberExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiReciboPagamentocreceberExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcDuplicataAbertoExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcRecebimentoDuplicatageralExecute(Sender: TObject);
begin
  idprocessamento := 'Recebimento Duplicata'; //Recebimento Duplicata
  idprocgeral := 'Sim';
  FrmDbgridPadrao := TFrmDbgridPadrao.Create(Application);
  try
    FrmDbgridPadrao.ShowModal;//exibir
  finally
    FrmDbgridPadrao.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcJuroasaodiaExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcemiduprecduplicataExecute(
  Sender: TObject);
begin
  FrmEmiCRVDuplicatas := TFrmEmiCRVDuplicatas.Create(Application);
  try
    FrmEmiCRVDuplicatas.ShowModal;//exibir
  finally
    FrmEmiCRVDuplicatas.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcEmiDuplicatasCreceberExecute(
  Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiCartaCobrancacreceberExecute(
  Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiCarnePagamentocreceberExecute(
  Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcFornecedorExecute(Sender: TObject);
begin
  FrmFornecedor := TFrmFornecedor.Create(Application);
  try
    FrmFornecedor.ShowModal;//exibir
  finally
    FrmFornecedor.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcEntradaNotaFiscalExecute(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'Entradanotafiscal';
  frmEntradaNotaFiscal := TfrmEntradaNotaFiscal.Create(Application);
  try
    frmEntradaNotaFiscal.ShowModal;//exibir
  finally
    frmEntradaNotaFiscal.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcDuplicatasExecute(
  Sender: TObject);
begin
  frmDuplicatasaPagar := TfrmDuplicatasaPagar.Create(Application);
  try
    frmDuplicatasaPagar.ShowModal;//exibir
  finally
    frmDuplicatasaPagar.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcDuplicataGeralcpagarExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiFornecedoresExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiEntradaNotascpagarExecute(
  Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcEmiDuplicatscpagarExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcPrecoPercExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AcGerardupreceberExecute(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'Gerarduplicata';
  FrmGeracaoDupreceber := TFrmGeracaoDupreceber.Create(Application);
  try
    FrmGeracaoDupreceber.ShowModal;//exibir
  finally
    FrmGeracaoDupreceber.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcVerDuplicataExecute(Sender: TObject);
begin
  FrmMenuPrincipal.idprocessamento := 'Verduplicata';
  FrmGeracaoDupreceber := TFrmGeracaoDupreceber.Create(Application);
  try
    FrmGeracaoDupreceber.ShowModal;//exibir
  finally
    FrmGeracaoDupreceber.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcEmiFatMensalExecute(Sender: TObject);
begin
  ShowMessage('Em desenvolvimento!!!');
end;

procedure TFrmMenuPrincipal.AceminormalfatExecute(Sender: TObject);
begin
  FrmEmiNormalFat := TFrmEmiNormalFat.Create(Application);
  try
    FrmEmiNormalFat.ShowModal;//exibir
  finally
    FrmEmiNormalFat.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcemiduprecvsimplesExecute(Sender: TObject);
begin
  FrmEmiCRVSimples := TFrmEmiCRVSimples.Create(Application);
  try
    FrmEmiCRVSimples.ShowModal;//exibir
  finally
    FrmEmiCRVSimples.Free;
  end;
end;

procedure TFrmMenuPrincipal.AcEmiDupaPagarExecute(Sender: TObject);
begin
  FrmEmiDuplicataspagar := TFrmEmiDuplicataspagar.Create(Application);
  try
    FrmEmiDuplicataspagar.ShowModal;//exibir
  finally
    FrmEmiDuplicataspagar.Free;
  end;
end;

procedure TFrmMenuPrincipal.FormActivate(Sender: TObject);
begin
{  if SqlqueryempresaDATA.Value < Now then
  begin
    ShowMessage('Erro 45!! Index corrompido!!!');
    Application.Terminate;
  end; }

{  FrmUsuariologin := TFrmUsuariologin.Create(Application);
  try
    FrmUsuarioLogin.GroupBoxalterasenha.Visible := false;
    FrmUsuarioLogin.GroupBoxsituacao.Visible := false;
    FrmUsuariologin.ShowModal;//exibir
  finally
    FrmUsuariologin.Free;
  end;    }

  SQLConnection1.close;
  SQLConnection1.ConnectionName:='BAZAR';
  SQLConnection1.DriverName:='INTERBASE';
  SQLConnection1.LoadParamsOnConnect:=FALSE;
  //  SQLConnection1.Params.LoadFromFile(ExtractFilePath(Application.ExeName) + '\dbxconnections.ini');

  SQLConnection1.LoadParamsFromIniFile(ExtractFilePath(Application.ExeName) + '\dbxconnections.ini');
  SQLConnection1.LoginPrompt:=false;
  SQLConnection1.Open;

  showmessage(SQLConnection1.Params.Text);


end;

function TFrmMenuPrincipal.PosInicialStr(caracter: String;
  posicao: Byte): AnsiString;
var
  I, qtde_espacos, qtde_str: Byte;
  str, espacos: AnsiString;
begin
  I := 0;

  qtde_str :=   Length(caracter);

  qtde_espacos := ( posicao - qtde_str  );

  str := caracter;

  while I < qtde_espacos do
   begin

    if caracter = 'Ass.:' then
     begin

      espacos := espacos + '_'; // Preenche os pontos p/ a Assinatura

     end
    else
     begin

      espacos := espacos + ' ';

     end;
    Inc(I);

   end;

  str := str + espacos ;

  Result := str;
end;

end.
