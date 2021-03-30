unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  Tfrm_principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Pas1: TMenuItem;
    Cidade1: TMenuItem;
    Bairro1: TMenuItem;
    Rua1: TMenuItem;
    Estado1: TMenuItem;
    Endereo1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

end.
