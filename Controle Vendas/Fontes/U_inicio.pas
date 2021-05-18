unit U_inicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.ExtCtrls,U_Cliente,
  Vcl.Buttons;

type
  TF_inicial = class(TForm)
    stb_inicial: TStatusBar;
    menu_inicial: TMainMenu;
    Sistema1: TMenuItem;
    Cadastros2: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    Movimentos1: TMenuItem;
    PDV1: TMenuItem;
    Caixa1: TMenuItem;
    MVendas1: TMenuItem;
    RelatrioVendas1: TMenuItem;
    VendasAbertas1: TMenuItem;
    Configuraes1: TMenuItem;
    Sair1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_inicial: TF_inicial;

implementation

{$R *.dfm}

procedure TF_inicial.Clientes1Click(Sender: TObject);
begin
  if(F_clientes = nil) then
    begin
      F_clientes := TF_clientes.Create(self);
    end;
  F_clientes.ShowModal;
  FreeAndNil(F_clientes);
end;

end.
