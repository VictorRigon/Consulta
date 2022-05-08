unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFAcesso = class(TForm)
    lblLogin: TLabel;
    lblSenha: TLabel;
    edtLogin: TEdit;
    edtSenha: TEdit;
    btnlogin: TButton;
    procedure edtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure btnloginClick(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAcesso: TFAcesso;

implementation

{$R *.dfm}

uses uConsulta, uConsultaLote, uDataM;

procedure TFAcesso.btnloginClick(Sender: TObject);
begin
if ((edtlogin.Text = 'Admin') and (edtsenha.Text = '123')) then
begin
  FAcesso.Close;
  FConsulta.btnAcessorestrito.Enabled := false;
  Fconsulta.btnGravaralteracao.Visible := true;
  Fconsulta.dbedtprecovenda.ReadOnly := false;
  Fconsulta.dbedtprecorevenda.ReadOnly := false;
  Fconsulta.dbedtQuantidadedisponivel.ReadOnly := false;
  Fconsulta.dbedtQuantidadereservada.ReadOnly := false;

end
 else
 begin
 Application.MessageBox('Login/Senha incorreto', 'Tela de Login', mb_ok);
 end;
end;

procedure TFAcesso.edtLoginKeyPress(Sender: TObject; var Key: Char);
begin
if (char (key) = #13 )then
begin
  edtsenha.SetFocus;
end;
end;



procedure TFAcesso.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
   if (char (key) = #13 )then
begin
  btnlogin.SetFocus;
end;
end;

end.
