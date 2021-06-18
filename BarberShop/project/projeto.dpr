program projeto;

uses
  Vcl.Forms,
  unit_Login in '..\views\unit_Login.pas' {frm_Login},
  obj_Cliente in '..\server\objetos\obj_Cliente.pas',
  obj_Barbeiro in '..\server\objetos\obj_Barbeiro.pas',
  obj_Usuario in '..\server\objetos\obj_Usuario.pas',
  obj_Servico in '..\server\objetos\obj_Servico.pas',
  obj_Agendamento in '..\server\objetos\obj_Agendamento.pas',
  data_module in '..\server\connection\data_module.pas' {DM_BarberShop: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Login, frm_Login);
  Application.CreateForm(TDM_BarberShop, DM_BarberShop);
  Application.Run;
end.
