unit unit_cadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, obj_Usuario, obj_Utils;

type
  Tfrm_cadUsuario = class(TForm)
    Panel1: TPanel;
    txt_nome: TLabeledEdit;
    txt_senha: TLabeledEdit;
    txt_usuario: TLabeledEdit;
    Bevel1: TBevel;
    btn_cadastrar: TBitBtn;
    lbl_titulo: TLabel;
    txt_email: TLabeledEdit;
    btn_limpar: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure btn_cadastrarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
  private
    utils:TUtils;
  public
    { Public declarations }
  end;

var
  frm_cadUsuario: Tfrm_cadUsuario;

implementation

{$R *.dfm}

procedure Tfrm_cadUsuario.btn_cadastrarClick(Sender: TObject);
var
  usuario: TUsuario;
begin
  if(not utils.camposIsNull(self)) then
    begin
      usuario := TUsuario.Create;
      usuario.setNome(txt_nome.Text);
      usuario.setNmUsuario(txt_usuario.Text);
      usuario.setSenha(txt_usuario.Text);
      usuario.setEmail(txt_email.Text);
      usuario.insert;
      showMessage('Usuario cadastrado com sucesso !!');
      FreeAndNil(usuario);
    end
  else
    begin
      showMessage('Preencha todos os campos !!');
    end;
end;

procedure Tfrm_cadUsuario.btn_limparClick(Sender: TObject);
begin
  utils.limparCampos(self);
end;

procedure Tfrm_cadUsuario.FormDestroy(Sender: TObject);
begin
  FreeAndNil(self);
end;

end.
