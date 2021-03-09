unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, pessoa_Service;

type
  Tform_menu = class(TForm)
    MainMenu1: TMainMenu;
    men_consulta: TMenuItem;
    men_cadastro: TMenuItem;
    op_pessoas: TMenuItem;
    op_resultado: TMenuItem;
    procedure op_pessoasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure op_resultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    ServicoPessoa : TPessoaService;
  end;

var
  form_menu: Tform_menu;
implementation

{$R *.dfm}

uses unit_dados, unit_cadastro, unit_resultado;

procedure Tform_menu.FormCreate(Sender: TObject);
begin
    ServicoPessoa := TPessoaService.Create;
end;

procedure Tform_menu.FormDestroy(Sender: TObject);
begin
    FreeAndNil(ServicoPessoa);
end;

procedure Tform_menu.op_pessoasClick(Sender: TObject);
begin
    if form_cadastro = nil then
      form_cadastro := Tform_cadastro.Create(self);

    form_cadastro.ShowModal;
    FreeAndNil(form_cadastro);
end;

procedure Tform_menu.op_resultadoClick(Sender: TObject);
begin
    if form_resultado = nil then
      form_resultado := Tform_resultado.Create(self);

      form_resultado.ShowModal;
      FreeAndNil(form_resultado)
end;

end.
