program PR_empresa;

uses
  Vcl.Forms,
  obj_funcionario in 'obj_funcionario.pas',
  funcionario_service in 'funcionario_service.pas',
  unit_main in 'unit_main.pas' {form_principal},
  unit_resultado in 'unit_resultado.pas' {form_resultados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tform_resultados, form_resultados);
  Application.Run;
end.
