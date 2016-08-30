program SistemaBazar;

uses
  Forms,
  windows,
  Dialogs,
  UntMenuPrincipal in 'UntMenuPrincipal.pas' {FrmMenuPrincipal},
  UntPadrao in 'UntPadrao.pas' {FrmPadrao},
  DmModuloI in 'DmModuloI.pas' {DmModuleI: TDataModule},
  UntEmpresa in 'UntEmpresa.pas' {FrmEmpresa},
  UntItem in 'UntItem.pas' {FrmItem},
  UntDbgridPadrao in 'UntDbgridPadrao.pas' {FrmDbgridPadrao},
  UntEmiItem in 'UntEmiItem.pas' {FrmEmiItem},
  DmModuloRelatorioI in 'DmModuloRelatorioI.pas' {DmModuleRelatorioI: TDataModule},
  DmModuloII in 'DmModuloII.pas' {DmModuleII: TDataModule},
  DmModuloIII in 'DmModuloIII.pas' {DmModuleIII: TDataModule},
  DmModuloRelatorioII in 'DmModuloRelatorioII.pas' {DmModuleRelatorioII: TDataModule},
  UntCliente in 'UntCliente.pas' {FrmCliente},
  UntMovtoItem in 'UntMovtoItem.pas' {FrmMovtoItem},
  UntVendedor in 'UntVendedor.pas' {FrmVendedor},
  UntNfVendaSimples in 'UntNfVendaSimples.pas' {FrmNfVendaSimples},
  UntGeracaodupreceber in 'UntGeracaodupreceber.pas' {FrmGeracaoDupreceber},
  UntEmiReciborecvsimples in 'UntEmiReciborecvsimples.pas' {FrmEmiReciborecvsimples},
  UntEmiReciborecvdup in 'UntEmiReciborecvdup.pas' {FrmEmiReciborecvdup},
  UntFornecedor in 'UntFornecedor.pas' {FrmFornecedor},
  UntPesquisa in 'UntPesquisa.pas' {FrmPesquisa},
  untEntradaNotaFiscal in 'untEntradaNotaFiscal.pas' {frmEntradaNotaFiscal},
  UntDuplicatasaPagar in 'UntDuplicatasaPagar.pas' {frmDuplicatasaPagar},
  UntEmiVendaSimples in 'UntEmiVendaSimples.pas' {FrmEmiVendaSimples},
  UntOrcamento in 'UntOrcamento.pas' {FrmOrcamento},
  UntEmiOrcamento in 'UntEmiOrcamento.pas' {FrmEmiOrcamento},
  UntEmiFatDiario in 'UntEmiFatDiario.pas' {Frmemifatdiario},
  UntEmiNormalFat in 'UntEmiNormalFat.pas' {FrmEmiNormalFat},
  UntIndicadorFinanceiro in 'UntIndicadorFinanceiro.pas' {FrmIndicadorFinanceiro},
  UntEmiCRecebVSimples in 'UntEmiCRecebVSimples.pas' {FrmEmiCRVSimples},
  UntEmiCRecebDuplicata in 'UntEmiCRecebDuplicata.pas' {FrmEmiCRVDuplicatas},
  UntEmiDuplicataspagar in 'UntEmiDuplicataspagar.pas' {FrmEmiDuplicataspagar},
  UntUsuariologin in 'UntUsuariologin.pas' {FrmUsuarioLogin};

{$R *.res}

// Declare a variavel
var
Hwnd : THandle;

begin
// FindWindow vai procurar pela classe TApplication
// que tenha o nome do Title que vc configurou
Hwnd := FindWindow('TApplication', 'Sistema Bazar'); //lembrando que Teste é o titulo da sua aplicação

// se o Handle e' 0 significa que nao encontrou
if Hwnd = 0 then
begin
  Application.Initialize;
  Application.Title := 'Sistema Bazar';
  Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
  Application.CreateForm(TDmModuleI, DmModuleI);
  Application.CreateForm(TDmModuleRelatorioI, DmModuleRelatorioI);
  Application.CreateForm(TDmModuleII, DmModuleII);
  Application.CreateForm(TDmModuleIII, DmModuleIII);
  Application.CreateForm(TDmModuleRelatorioII, DmModuleRelatorioII);
  FrmUsuariologin := TFrmUsuariologin.Create(Application);
  try
    FrmUsuarioLogin.GroupBoxalterasenha.Visible := false;
    FrmUsuarioLogin.GroupBoxsituacao.Visible := false;
    FrmUsuariologin.ShowModal;//exibir
  finally
    FrmUsuariologin.Free;
  end;
  Application.Run;
end
else
// Esta funcao traz para frente (da o foco) para a janela
// da aplicacao que ja esta rodando
//  SetForegroundWindow(Hwnd);
  ShowMessage('Sistema Bazar já está sendo executado!!!');
end.
