unit unit_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, unit_Principal, obj_Utils;

type
  Tfrm_login = class(TForm)
    Panel1: TPanel;
    img_logo: TImage;
    txt_login: TLabeledEdit;
    txt_senha: TLabeledEdit;
    btn_logar: TBitBtn;
    lbl_titulo: TLabel;
    procedure btn_logarClick(Sender: TObject);
  private
    utils: TUtils;
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

uses obj_Usuario;

procedure Tfrm_login.btn_logarClick(Sender: TObject);
var
  usuario : TUsuario;
begin
  usuario := TUsuario.Create;
  usuario.setNmUsuario(txt_login.Text);
  usuario.setSenha(txt_senha.Text);
  if(usuario.login) then
    begin
      self.Visible := false;
      utils.criarFormulario('Tfrm_principal');
      FreeAndNil(frm_principal);
    end;
  FreeAndNil(usuario);
end;

end.
