program PR_Empresa;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {form_principal},
  obj_funcionario in 'obj_funcionario.pas',
  funcionario_service in 'funcionario_service.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.Run;
end.
