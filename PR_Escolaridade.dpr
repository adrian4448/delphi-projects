program PR_Escolaridade;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {form_menu},
  unit_dados in 'unit_dados.pas' {module_img: TDataModule},
  unit_cadastro in 'unit_cadastro.pas' {form_cadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_menu, form_menu);
  Application.CreateForm(Tmodule_img, module_img);
  Application.Run;
end.
