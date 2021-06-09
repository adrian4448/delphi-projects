program pr_consorcio;

uses
  Vcl.Forms,
  unit_principal in 'Fontes\Views\unit_principal.pas' {frm_principal},
  unit_cadConsorcio in 'Fontes\Views\Cadastro\unit_cadConsorcio.pas' {frm_cadConsorcio},
  obj_consorcio in 'Fontes\Objects\obj_consorcio.pas',
  unit_connect in 'Server\unit_connect.pas' {data_connection: TDataModule},
  unit_vsConsorcio in 'Fontes\Views\Visualizar\unit_vsConsorcio.pas' {frm_vsConsorcio},
  unit_importPessoas in 'Fontes\Views\Importar\unit_importPessoas.pas' {frm_importarPessoas},
  obj_pessoa in 'Fontes\Objects\obj_pessoa.pas',
  unit_cadEndereco in 'Fontes\Views\Cadastro\unit_cadEndereco.pas' {frm_cadEndereco},
  obj_endereco in 'Fontes\Objects\obj_endereco.pas',
  unit_cadVinculo in 'Fontes\Views\Cadastro\unit_cadVinculo.pas' {frm_cadVinculo},
  unit_apiCep in 'Server\unit_apiCep.pas' {data_api: TDataModule},
  unit_vsPessoa in 'Fontes\Views\Visualizar\unit_vsPessoa.pas' {frm_vsPessoa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdata_connection, data_connection);
  Application.CreateForm(Tfrm_cadVinculo, frm_cadVinculo);
  Application.CreateForm(Tdata_api, data_api);
  Application.CreateForm(Tfrm_vsPessoa, frm_vsPessoa);
  Application.Run;
end.
