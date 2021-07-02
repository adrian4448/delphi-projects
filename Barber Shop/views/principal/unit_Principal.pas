unit unit_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, obj_Utils, unit_cadUsuario, unit_visuGenerica,
  obj_Usuario, unit_cadServico, unit_cadCliente;

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
    CadastrarServio1: TMenuItem;
    CadastrarCliente1: TMenuItem;
    VisualizarServios1: TMenuItem;
    VisualizarClientes1: TMenuItem;
    RealizarAgendamento1: TMenuItem;
    VisualizarAgendamentos1: TMenuItem;
    procedure CadastrarUsuario1Click(Sender: TObject);
    procedure VisualizarUsuarios1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CadastrarServio1Click(Sender: TObject);
    procedure CadastrarCliente1Click(Sender: TObject);
    procedure VisualizarServios1Click(Sender: TObject);
    procedure VisualizarClientes1Click(Sender: TObject);
    procedure RealizarAgendamento1Click(Sender: TObject);
    procedure VisualizarAgendamentos1Click(Sender: TObject);
  private
    utils : TUtils;
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses unit_Login, unit_cadAgendamento, unit_visuAgendamento;

procedure Tfrm_principal.CadastrarCliente1Click(Sender: TObject);
begin
  utils.criarFormulario('Tfrm_cadCliente');
  FreeAndNil(frm_cadCliente);
end;

procedure Tfrm_principal.CadastrarServio1Click(Sender: TObject);
begin
  utils.criarFormulario('Tfrm_CadServicos');
  FreeAndNil(frm_CadServicos);
end;

procedure Tfrm_principal.CadastrarUsuario1Click(Sender: TObject);
begin
  utils.criarFormulario('Tfrm_cadUsuario');
  FreeAndNil(frm_cadUsuario);
end;

procedure Tfrm_principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure Tfrm_principal.RealizarAgendamento1Click(Sender: TObject);
begin
  utils.criarFormulario('Tfrm_cadAgendamento');
  FreeAndNil(frm_cadAgendamento);
end;

procedure Tfrm_principal.VisualizarAgendamentos1Click(Sender: TObject);
begin
  utils.criarFormulario('Tfrm_visuAgendamento');
  FreeAndNil(frm_visuAgendamento);
end;

procedure Tfrm_principal.VisualizarClientes1Click(Sender: TObject);
begin
  frm_visuGenerica.setQuery('SELECT * FROM cliente');
  utils.criarFormulario('Tfrm_visuGenerica');

  FreeAndNil(frm_visuGenerica);
end;

procedure Tfrm_principal.VisualizarServios1Click(Sender: TObject);

begin
  frm_visuGenerica.setQuery('SELECT * FROM servico');
  utils.criarFormulario('Tfrm_visuGenerica');

  FreeAndNil(frm_visuGenerica);
end;

procedure Tfrm_principal.VisualizarUsuarios1Click(Sender: TObject);
var
  query: String;
begin
  frm_visuGenerica.setQuery('SELECT * FROM Usuario');
  utils.criarFormulario('Tfrm_visuGenerica');

  FreeAndNil(frm_visuGenerica);
end;

end.
