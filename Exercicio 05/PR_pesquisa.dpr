program PR_pesquisa;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {form_principal},
  obj_pessoa in 'obj_pessoa.pas',
  pessoa_service in 'pessoa_service.pas',
  unit_resultado in 'unit_resultado.pas' {form_resultado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tform_resultado, form_resultado);
  Application.Run;
end.
