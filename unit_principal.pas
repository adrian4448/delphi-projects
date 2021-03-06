unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  Tform_menu = class(TForm)
    MainMenu1: TMainMenu;
    men_consulta: TMenuItem;
    men_cadastro: TMenuItem;
    op_pessoas: TMenuItem;
    op_qt_grau: TMenuItem;
    op_perc_grau: TMenuItem;
    graudeescolaridademaiormenor1: TMenuItem;
    procedure op_pessoasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_menu: Tform_menu;

implementation

{$R *.dfm}

uses unit_dados, unit_cadastro;

procedure Tform_menu.op_pessoasClick(Sender: TObject);
begin
    if form_cadastro = nil then
      form_cadastro := Tform_cadastro.Create(self);

    form_cadastro.ShowModal;
    FreeAndNil(form_cadastro);
end;

end.
