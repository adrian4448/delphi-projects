unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, habitante_service;

type
  Tform_principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    CadastrarHabitante1: TMenuItem;
    Resultados1: TMenuItem;
    VisualizarResultados1: TMenuItem;
    procedure CadastrarHabitante1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure VisualizarResultados1Click(Sender: TObject);
  private
    { Private declarations }
  public
    habitante_service : THabitante_service;
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

uses unit_cadastro, unit_resultado;

procedure Tform_principal.CadastrarHabitante1Click(Sender: TObject);
begin
  if(form_cadastro = nil) then
    begin
      form_cadastro := Tform_cadastro.Create(self);
    end;
  form_cadastro.ShowModal;
  FreeAndNil(form_cadastro);
end;

procedure Tform_principal.FormCreate(Sender: TObject);
begin
  self.habitante_service := THabitante_service.Create;
end;

procedure Tform_principal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(habitante_service);
end;

procedure Tform_principal.VisualizarResultados1Click(Sender: TObject);
begin
  if(form_results = nil) then
    begin
      form_results := Tform_results.Create(self);
    end;
  form_results.ShowModal;
  FreeAndNil(form_results);
end;

end.
