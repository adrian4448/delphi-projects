program PR_Escolaridade;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {form_menu},
  unit_dados in 'unit_dados.pas' {module_img: TDataModule},
  unit_cadastro in 'unit_cadastro.pas' {form_cadastro},
  classe_Pessoa in 'classe_Pessoa.pas',
  pessoa_Service in 'pessoa_Service.pas',
  unit_resultado in 'unit_resultado.pas' {form_resultado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_menu, form_menu);
  Application.CreateForm(Tmodule_img, module_img);
  Application.Run;
end.
