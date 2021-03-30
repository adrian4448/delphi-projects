program prEndereco;

uses
  Vcl.Forms,
  unit_principal in '..\Fontes\unit_principal.pas' {frm_principal},
  unit_dados in '..\Fontes\unit_dados.pas' {dm_dados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.Run;
end.
