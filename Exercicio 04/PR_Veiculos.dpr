program PR_Veiculos;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {form_principal},
  obj_carro in 'obj_carro.pas',
  unit_resultados in 'unit_resultados.pas' {form_resultados},
  carro_service in 'carro_service.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tform_resultados, form_resultados);
  Application.Run;
end.
