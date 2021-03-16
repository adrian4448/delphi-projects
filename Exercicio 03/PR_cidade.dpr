program PR_cidade;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {form_principal},
  unit_data in 'unit_data.pas' {data_module: TDataModule},
  objeto_habitante in 'objeto_habitante.pas',
  habitante_service in 'habitante_service.pas',
  unit_cadastro in 'unit_cadastro.pas' {form_cadastro},
  unit_resultado in 'unit_resultado.pas' {form_results};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tdata_module, data_module);
  Application.Run;
end.
