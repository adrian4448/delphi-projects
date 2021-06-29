program projeto;

uses
  Vcl.Forms,
  obj_Cliente in '..\server\objetos\obj_Cliente.pas',
  obj_Usuario in '..\server\objetos\obj_Usuario.pas',
  obj_Servico in '..\server\objetos\obj_Servico.pas',
  obj_Agendamento in '..\server\objetos\obj_Agendamento.pas' {$R *.res},
  data_module in '..\server\connection\data_module.pas' {dm_connection: TDataModule},
  obj_Utils in '..\server\objetos\obj_Utils.pas',
  unit_Login in '..\views\principal\unit_Login.pas' {frm_login},
  unit_Principal in '..\views\principal\unit_Principal.pas' {frm_principal},
  unit_cadUsuario in '..\views\cadastro\unit_cadUsuario.pas' {frm_cadUsuario},
  unit_visuGenerica in '..\views\visualizacao\unit_visuGenerica.pas' {frm_visuGenerica},
  unit_cadServico in '..\views\cadastro\unit_cadServico.pas' {frm_CadServicos},
  unit_cadCliente in '..\views\cadastro\unit_cadCliente.pas' {frm_cadCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_connection, dm_connection);
  Application.CreateForm(Tfrm_login, frm_login);
  Application.CreateForm(Tfrm_CadServicos, frm_CadServicos);
  Application.CreateForm(Tfrm_cadCliente, frm_cadCliente);
  Application.Run;
end.
