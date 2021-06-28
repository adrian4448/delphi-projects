unit unit_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, obj_Utils, unit_cadUsuario, unit_visuGenerica;

type
  Tfrm_principal = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Agendamento1: TMenuItem;
    Cliente1: TMenuItem;
    Usuario1: TMenuItem;
    Servios1: TMenuItem;
    CadastrarUsuario1: TMenuItem;
    VisualizarUsuarios1: TMenuItem;
    procedure CadastrarUsuario1Click(Sender: TObject);
    procedure VisualizarUsuarios1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    utils : TUtils;
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses unit_Login;

procedure Tfrm_principal.CadastrarUsuario1Click(Sender: TObject);
begin
  utils.criarFormulario('Tfrm_cadUsuario');
  FreeAndNil(frm_cadUsuario);
end;

procedure Tfrm_principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure Tfrm_principal.VisualizarUsuarios1Click(Sender: TObject);
var
  query: String;
begin
  frm_visuGenerica.setQuery('SELECT * FROM Usuario u');
  utils.criarFormulario('Tfrm_visuGenerica');

  FreeAndNil(frm_visuGenerica);
end;

end.
