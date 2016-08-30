unit UntUsuariologin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmUsuarioLogin = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    pnl_Titulo: TPanel;
    Label1: TLabel;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    GroupBoxalterasenha: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Edtnovasenha: TEdit;
    EdtConfirmasenha: TEdit;
    EdtDescriptografado: TEdit;
    EdtCriptografado: TEdit;
    GroupBoxbtnnovousu_altsenha: TGroupBox;
    BitBtnnovousuario: TBitBtn;
    BitBtnalterausuario: TBitBtn;
    Btn_entrar: TBitBtn;
    GroupBoxsituacao: TGroupBox;
    RadioButtonativado: TRadioButton;
    RadioButtondesativado: TRadioButton;
    GroupBoxnovousuario: TGroupBox;
    Label6: TLabel;
    EdtNovousuario: TEdit;
    procedure Btn_entrarClick(Sender: TObject);
    procedure EdtLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtNovousuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtnovasenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtConfirmasenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnnovousuarioClick(Sender: TObject);
    procedure BitBtnalterausuarioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButtondesativadoClick(Sender: TObject);
    procedure RadioButtonativadoClick(Sender: TObject);
    procedure EdtLoginExit(Sender: TObject);
    procedure verificausuario;
  private
     alterasenha, novousuario, desativausuario,ativausuario,
     rotinaprocessadocomsucesso : string;
  public
    { Public declarations }
  end;

var
  FrmUsuarioLogin: TFrmUsuarioLogin;

implementation

uses UntMenuPrincipal, DB;

{$R *.dfm}
const Masc=15;  // Chave da criptografia e descriptografia

  {--------Funcao--Criptografar------- }
function EncriptVar(Texto: String):String;
var
  r : string;
  i : integer;
begin
   For i := 1 to Length(texto) do
     r := r + chr(Ord(Texto[i]) + i + Masc);
   result:= r;
end;

   {--------Funcao--Descriptografar-------
    atenção não usei essa função pois comparei ja criptografado}
function DesencriptarVar(Texto: String):String;
var
  w : string;
  i : integer;
begin
   FOR i := 1 TO Length(texto) do
     w := w + chr( Ord(texto[i]) - i - Masc );
   result:= w;
end;

procedure TFrmUsuarioLogin.Btn_entrarClick(Sender: TObject);
begin
  FrmMenuPrincipal.CdsUsuario.close;
  FrmMenuPrincipal.CdsUsuario.Params.ParamByName('nome').AsString := EdtLogin.text;
  FrmMenuPrincipal.CdsUsuario.Open;

  EdtCriptografado.Text := EncriptVar(EdtSenha.Text);

  if (FrmMenuPrincipal.CdsUsuarioSENHA.Text = '') or
     (FrmMenuPrincipal.CdsUsuarioSENHA.Text <> EdtCriptografado.Text) then
  begin
    Application.MessageBox('Usuário inválido','Atenção',+MB_OK+MB_ICONWARNING);
    Abort;
  end;
  FrmUsuariologin.Close;
end;

procedure TFrmUsuarioLogin.EdtLoginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    verificausuario;
    Perform(Wm_NextDlgCtl,0,0);
  end
end;

procedure TFrmUsuarioLogin.EdtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FrmMenuPrincipal.CdsUsuario.close;
    FrmMenuPrincipal.CdsUsuario.Params.ParamByName('nome').AsString := EdtLogin.text;
    FrmMenuPrincipal.CdsUsuario.Open;

    EdtCriptografado.Text := EncriptVar(EdtSenha.Text);

    if (FrmMenuPrincipal.CdsUsuarioSENHA.Text = '') or
       (FrmMenuPrincipal.CdsUsuarioSENHA.Text <> EdtCriptografado.Text) then
    begin
      Application.MessageBox('Usuário inválido','Atenção',+MB_OK+MB_ICONWARNING);
      Abort;
    end;

{    if (FrmMenuPrincipal.CdsUsuarioSITUACAO.Value = 'A') then
    begin
      RadioButtonativado.Checked := true;
    end
    else begin
      RadioButtonativado.Checked := False;
    end;  }

    if FrmMenuPrincipal.idprocessamento <> 'Alterasenha' then
    begin
      FrmMenuPrincipal.usuariook := 'Sim';
      rotinaprocessadocomsucesso := 'S';
      FrmUsuariologin.Close;
      Abort;
    end;
    FrmMenuPrincipal.CdsUsuario.close;
    FrmMenuPrincipal.CdsUsuario.Params.ParamByName('nome').AsString := EdtLogin.text;
    FrmMenuPrincipal.CdsUsuario.Open;
    if (FrmMenuPrincipal.CdsUsuarioTIPOUSUARIO.Text <> 'M') then //usuario master
    begin
      FrmUsuarioLogin.GroupBoxalterasenha.Enabled := true;    
      BitBtnnovousuario.Enabled := False;
      Edtnovasenha.SetFocus;
      novousuario := 'N';
      alterasenha := 'S';
      desativausuario := 'N';
      ativausuario := 'N';
      GroupBoxsituacao.Enabled := false;
    end
    else begin
      BitBtnnovousuario.Enabled := true;
      GroupBoxsituacao.Enabled := true;
    end;
    GroupBoxbtnnovousu_altsenha.Enabled := true;
    BitBtnalterausuario.SetFocus;
  end

end;

procedure TFrmUsuarioLogin.EdtNovousuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  rotinaprocessadocomsucesso := 'N';
  EdtNovousuario.Text := trim(EdtNovousuario.text);
  if Key = VK_RETURN then
  begin
    FrmMenuPrincipal.CdsUsuario.close;
    FrmMenuPrincipal.CdsUsuario.Params.ParamByName('nome').AsString := EdtNovousuario.text;
    FrmMenuPrincipal.CdsUsuario.Open;
    if (novousuario = 'S') then
    begin
      if FrmMenuPrincipal.CdsUsuarioNOME.Text = EdtNovousuario.Text then
      begin
        Application.MessageBox('Já existe usuário com este nome, tente outro nome!','Atenção',+MB_OK+MB_ICONWARNING);
        EdtNovousuario.SetFocus;
        abort;
      end;
      Perform(Wm_NextDlgCtl,0,0);
    end;
    if (desativausuario = 'S') then
    begin
      if FrmMenuPrincipal.CdsUsuarioNOME.Text <> EdtNovousuario.Text then
      begin
        Application.MessageBox('Não existe usuário com este nome, tente outro nome!','Atenção',+MB_OK+MB_ICONWARNING);
        EdtNovousuario.SetFocus;
        rotinaprocessadocomsucesso := 'S';
        abort;
      end
      else begin
        FrmMenuPrincipal.CdsUsuario.Edit;
        FrmMenuPrincipal.CdsUsuarioSITUACAO.value := 'D';
        FrmMenuPrincipal.CdsUsuario.Post;
        FrmMenuPrincipal.CdsUsuario.ApplyUpdates(0);
        Application.MessageBox('Registro Desativado com Sucesso','Atenção',+MB_OK+MB_ICONWARNING);
        abort;
        rotinaprocessadocomsucesso := 'S';
      end;
    end;
    if (ativausuario = 'S') then
    begin
      if FrmMenuPrincipal.CdsUsuarioNOME.Text <> EdtNovousuario.Text then
      begin
        Application.MessageBox('Não existe usuário com este nome, tente outro nome!','Atenção',+MB_OK+MB_ICONWARNING);
        EdtNovousuario.SetFocus;
        rotinaprocessadocomsucesso := 'S';
        abort;
      end
      else begin
        FrmMenuPrincipal.CdsUsuario.Edit;
        FrmMenuPrincipal.CdsUsuarioSITUACAO.value := 'A';
        FrmMenuPrincipal.CdsUsuario.Post;
        FrmMenuPrincipal.CdsUsuario.ApplyUpdates(0);
        Application.MessageBox('Registro Ativado com Sucesso','Atenção',+MB_OK+MB_ICONWARNING);
        abort;
        rotinaprocessadocomsucesso := 'S';
      end;
    end;
  end;
end;

procedure TFrmUsuarioLogin.EdtnovasenhaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
{    if alterasenha = 'S' then
    begin
      FrmMenuPrincipal.CdsUsuario.close;
      FrmMenuPrincipal.CdsUsuario.Params.ParamByName('nome').AsString := EdtLogin.text;
      FrmMenuPrincipal.CdsUsuario.Open;
      FrmMenuPrincipal.CdsUsuario.Edit;
      EdtCriptografado.Text := EncriptVar(Edtnovasenha.Text);
      FrmMenuPrincipal.CdsUsuarioSENHA.Text := EdtCriptografado.Text;
      FrmMenuPrincipal.CdsUsuario.Post;
      FrmMenuPrincipal.CdsUsuario.ApplyUpdates(0);
      Application.MessageBox('Registro Gravado com Sucesso','Atenção',+MB_OK+MB_ICONWARNING);
    end;
    if novousuario = 'S' then
    begin
      FrmMenuPrincipal.CdsUsuario.Append;
      FrmMenuPrincipal.CdsUsuarioNOME.Text := EdtNovousuario.Text;
      EdtCriptografado.Text := EncriptVar(Edtnovasenha.Text);
      FrmMenuPrincipal.CdsUsuarioSENHA.Text := EdtCriptografado.Text;
      FrmMenuPrincipal.CdsUsuario.Post;
      FrmMenuPrincipal.CdsUsuario.ApplyUpdates(0);
      Application.MessageBox('Registro Gravado com Sucesso','Atenção',+MB_OK+MB_ICONWARNING);
    end;
    FrmUsuariologin.Close;}
    if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);    
 end;
end;

procedure TFrmUsuarioLogin.EdtConfirmasenhaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  rotinaprocessadocomsucesso := 'N';
  if Key = VK_RETURN then
  begin
    if Edtnovasenha.Text <> EdtConfirmasenha.Text then
    begin
      Application.MessageBox('Senha não confere','Atenção',+MB_OK+MB_ICONWARNING);
      Edtnovasenha.SetFocus;
      abort;
    end;
    if alterasenha = 'S' then
    begin
      FrmMenuPrincipal.CdsUsuario.close;
      FrmMenuPrincipal.CdsUsuario.Params.ParamByName('nome').AsString := EdtLogin.text;
      FrmMenuPrincipal.CdsUsuario.Open;
      FrmMenuPrincipal.CdsUsuario.Edit;
      EdtCriptografado.Text := EncriptVar(Edtnovasenha.Text);
      FrmMenuPrincipal.CdsUsuarioSENHA.Text := EdtCriptografado.Text;
      if (RadioButtonativado.Checked = true) then
      begin
        FrmMenuPrincipal.CdsUsuarioSITUACAO.value := 'A';
      end;
      if (RadioButtondesativado.Checked = true) then
      begin
        FrmMenuPrincipal.CdsUsuarioSITUACAO.value := 'D';
      end;
      FrmMenuPrincipal.CdsUsuario.Post;
      FrmMenuPrincipal.CdsUsuario.ApplyUpdates(0);
      Application.MessageBox('Registro Gravado com Sucesso','Atenção',+MB_OK+MB_ICONWARNING);
    end;
    if novousuario = 'S' then
    begin
      FrmMenuPrincipal.CdsUsuario.Append;
      FrmMenuPrincipal.CdsUsuarioNOME.Text := EdtNovousuario.Text;
      EdtCriptografado.Text := EncriptVar(Edtnovasenha.Text);
      FrmMenuPrincipal.CdsUsuarioSENHA.Text := EdtCriptografado.Text;
      if (RadioButtonativado.Checked = true) then
      begin
        FrmMenuPrincipal.CdsUsuarioSITUACAO.value := 'A';
      end;
      if (RadioButtondesativado.Checked = true) then
      begin
        FrmMenuPrincipal.CdsUsuarioSITUACAO.value := 'D';
      end;      
      FrmMenuPrincipal.CdsUsuario.Post;
      FrmMenuPrincipal.CdsUsuario.ApplyUpdates(0);
      Application.MessageBox('Registro Gravado com Sucesso','Atenção',+MB_OK+MB_ICONWARNING);
    end;
    rotinaprocessadocomsucesso := 'S';
    FrmUsuariologin.Close;
 end;
end;

procedure TFrmUsuarioLogin.BitBtnnovousuarioClick(Sender: TObject);
begin
  label6.Caption := 'Nome novo usuário:';
  FrmMenuPrincipal.CdsUsuario.close;
  FrmMenuPrincipal.CdsUsuario.Params.ParamByName('nome').AsString := EdtLogin.text;
  FrmMenuPrincipal.CdsUsuario.Open;
  if (FrmMenuPrincipal.CdsUsuarioTIPOUSUARIO.Text <> 'M') then //usuario master
  begin
    Application.MessageBox('Usuário não autorizado a cadastrar novo usuário!','Atenção',+MB_OK+MB_ICONWARNING);
    Abort;
  end;
  GroupBoxalterasenha.Enabled := true;
  GroupBoxbtnnovousu_altsenha.Enabled := true;
  BitBtnnovousuario.SetFocus;
  GroupBoxnovousuario.Visible := true;
  EdtNovousuario.SetFocus;
  novousuario := 'S';
  alterasenha := 'N';
end;

procedure TFrmUsuarioLogin.BitBtnalterausuarioClick(Sender: TObject);
begin
  GroupBoxalterasenha.Enabled := true;
//  BitBtnnovousuario.SetFocus;
  GroupBoxnovousuario.Visible := false;
  Edtnovasenha.SetFocus;
  novousuario := 'N';
  alterasenha := 'S';
end;

procedure TFrmUsuarioLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  if (rotinaprocessadocomsucesso <> 'S') and
     (FrmMenuPrincipal.idjafezloginusuario <> 'Sim') then
  begin
//    Application.Terminate;
  end
  else begin
    FrmMenuPrincipal.EditUsuario.Text := FrmMenuPrincipal.CdsUsuarioNOME.Value;
  end;
end;

procedure TFrmUsuarioLogin.RadioButtondesativadoClick(Sender: TObject);
begin
  label6.Caption := 'Nome usuário desativado:';
  FrmMenuPrincipal.CdsUsuario.close;
  FrmMenuPrincipal.CdsUsuario.Params.ParamByName('nome').AsString := EdtLogin.text;
  FrmMenuPrincipal.CdsUsuario.Open;
  if (FrmMenuPrincipal.CdsUsuarioTIPOUSUARIO.Text <> 'M') then //usuario master
  begin
    Application.MessageBox('Usuário não autorizado a desativar usuário!','Atenção',+MB_OK+MB_ICONWARNING);
    Abort;
  end;
  GroupBoxalterasenha.Enabled := true;
  GroupBoxbtnnovousu_altsenha.Enabled := true;
  GroupBoxnovousuario.Visible := true;
  EdtNovousuario.SetFocus;
  novousuario := 'N';
  alterasenha := 'N';
  desativausuario := 'S';
  ativausuario := 'N';
end;

procedure TFrmUsuarioLogin.RadioButtonativadoClick(Sender: TObject);
begin
  label6.Caption := 'Nome usuário ativado:';
  FrmMenuPrincipal.CdsUsuario.close;
  FrmMenuPrincipal.CdsUsuario.Params.ParamByName('nome').AsString := EdtLogin.text;
  FrmMenuPrincipal.CdsUsuario.Open;
  if (FrmMenuPrincipal.CdsUsuarioTIPOUSUARIO.Text <> 'M') then //usuario master
  begin
    Application.MessageBox('Usuário não autorizado a desativar usuário!','Atenção',+MB_OK+MB_ICONWARNING);
    Abort;
  end;
  GroupBoxalterasenha.Enabled := true;
  GroupBoxbtnnovousu_altsenha.Enabled := true;
  GroupBoxnovousuario.Visible := true;
  EdtNovousuario.SetFocus;
  novousuario := 'N';
  alterasenha := 'N';
  desativausuario := 'N';
  ativausuario := 'S';
end;

procedure TFrmUsuarioLogin.EdtLoginExit(Sender: TObject);
begin
  verificausuario;
end;

procedure TFrmUsuarioLogin.verificausuario;
begin
  FrmMenuPrincipal.CdsUsuario.close;
  FrmMenuPrincipal.CdsUsuario.Params.ParamByName('nome').AsString := EdtLogin.text;
  FrmMenuPrincipal.CdsUsuario.Open;

  if (FrmMenuPrincipal.CdsUsuarioCODUSUARIO.value = 0) then
  begin
    Application.MessageBox('Usuário inválido','Atenção',+MB_OK+MB_ICONWARNING);
    EdtLogin.SetFocus;
    Abort;
  end;
  if (FrmMenuPrincipal.CdsUsuarioSITUACAO.Text = 'D') then //usuario desativado
  begin
    Application.MessageBox('Usuário já desativado!','Atenção',+MB_OK+MB_ICONWARNING);
    EdtLogin.SetFocus;
    Abort;
  end;
end;

end.
