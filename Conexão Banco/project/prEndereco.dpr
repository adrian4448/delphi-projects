program prEndereco;

uses
  Vcl.Forms,
  unit_principal in '..\views\unit_principal.pas' {frm_principal},
  unit_relBairro in '..\views\relatorios\unit_relBairro.pas' {frm_relBairro},
  unit_relCidade in '..\views\relatorios\unit_relCidade.pas' {frm_relCidade},
  unit_relEndereco in '..\views\relatorios\unit_relEndereco.pas' {frm_relEndereco},
  unit_relEstado in '..\views\relatorios\unit_relEstado.pas' {frm_relEstado},
  unit_relPais in '..\views\relatorios\unit_relPais.pas' {frm_relPais},
  unit_relRua in '..\views\relatorios\unit_relRua.pas' {frm_relRua},
  unit_consultaGenerica in '..\views\consultas\unit_consultaGenerica.pas' {frm_consultaGenerica},
  unit_cadBairro in '..\views\cadastros\unit_cadBairro.pas' {frm_cadBairro},
  unit_cadCidade in '..\views\cadastros\unit_cadCidade.pas' {frm_cadCidade},
  unit_cadEndereco in '..\views\cadastros\unit_cadEndereco.pas' {frm_cadEndereco},
  unit_cadEstado in '..\views\cadastros\unit_cadEstado.pas' {frm_cadEstado},
  unit_cadPais in '..\views\cadastros\unit_cadPais.pas' {frm_cadPais},
  unit_cadRua in '..\views\cadastros\unit_cadRua.pas' {frm_cadRua},
  unit_utils in '..\server\utils\unit_utils.pas',
  obj_bairro in '..\server\objects\obj_bairro.pas',
  obj_cidade in '..\server\objects\obj_cidade.pas',
  obj_endereco in '..\server\objects\obj_endereco.pas',
  obj_estado in '..\server\objects\obj_estado.pas',
  obj_pais in '..\server\objects\obj_pais.pas',
  obj_rua in '..\server\objects\obj_rua.pas',
  unit_connection in '..\server\connection\unit_connection.pas' {data_connection: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdata_connection, data_connection);
  Application.Run;
end.
