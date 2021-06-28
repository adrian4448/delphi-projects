program projeto;

uses
  Vcl.Forms,
  obj_Cliente in '..\server\objetos\obj_Cliente.pas',
  obj_Usuario in '..\server\objetos\obj_Usuario.pas',
  obj_Servico in '..\server\objetos\obj_Servico.pas',
  {$R}
  obj_Agendamento in '..\server\objetos\obj_Agendamento.pas' {$R *.res},
  data_module in '..\server\connection\data_module.pas' {dm_connection: TDataModule},
  obj_Utils in '..\server\objetos\obj_Utils.pas',
  unit_Login in '..\views\principal\unit_Login.pas' {frm_login},
  unit_Principal in '..\views\principal\unit_Principal.pas' {frm_principal},
  unit_cadUsuario in '..\views\cadastro\unit_cadUsuario.pas' {frm_cadUsuario},
  unit_visuGenerica in '..\views\visualizacao\unit_visuGenerica.pas' {frm_visuGenerica};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_connection, dm_connection);
  Application.CreateForm(Tfrm_login, frm_login);
  Application.Run;
end.
