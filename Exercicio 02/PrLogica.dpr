program PrLogica;

uses
  Vcl.Forms,
  unit_principal in 'unit_principal.pas' {form_principal},
  unit_methods in 'unit_methods.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.Run;
end.
