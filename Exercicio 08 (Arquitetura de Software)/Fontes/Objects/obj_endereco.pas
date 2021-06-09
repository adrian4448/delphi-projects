unit obj_endereco;

interface

  uses FireDAC.Comp.Client, System.SysUtils;

  type TEndereco = class
    private
      codigo:integer;
      numero:integer;
      logradouro:String;
      bairro:String;
      cidade:String;
      estado:String;
    public
      function getCodigo : Integer;
      function getLogradouro : String;
      function getBairro : String;
      function getCidade : String;
      function getEstado : String;
      function getNumeroRua : Integer;

      procedure setCodigo(value:Integer);
      procedure setLogradouro(value : String);
      procedure setBairro(value : String);
      procedure setCidade(value : String);
      procedure setEstado(value : String);
      procedure setNumeroRua(value : Integer);

      procedure insert;
      procedure ligarPessoaFisica(id : Integer);
  end;

implementation

{ TEnderedo }

uses unit_connect;

function TEndereco.getBairro: String;
begin
  result := self.bairro;
end;

function TEndereco.getCidade: String;
begin
  result := self.cidade;
end;

function TEndereco.getCodigo: Integer;
begin
  result := self.codigo;
end;

function TEndereco.getEstado: String;
begin
  result := self.estado;
end;

function TEndereco.getLogradouro: String;
begin
  result := self.logradouro;
end;

function TEndereco.getNumeroRua: Integer;
begin
  result := self.numero;
end;

procedure TEndereco.insert;
var
  query : TFDQuery;
begin
  query := TFDQuery.create(nil);
  query.Connection := data_connection.consorcio_con;
  query.SQL.Clear;
  query.SQL.Add('INSERT INTO dtbs_arq_new.endereco VALUES (0, :numeroRua, :logradouro, :bairro, :cidade, :estado)');
  query.ParamByName('logradouro').AsString := self.logradouro;
  query.ParamByName('bairro').AsString := self.bairro;
  query.ParamByName('cidade').AsString := self.cidade;
  query.ParamByName('estado').AsString := self.estado;
  query.ParamByName('numeroRua').AsInteger := self.numero;

  query.ExecSQL;

  query.SQL.Clear;
  query.SQL.Add('SELECT max(codigo) codigo from dtbs_arq_new.endereco;');
  query.Open();

  self.codigo := query.FieldByName('codigo').AsInteger;
end;

procedure TEndereco.ligarPessoaFisica(id: Integer);
var
  query:TFDQuery;
begin
  query := TFDQuery.create(nil);
  query.Connection := data_connection.consorcio_con;
  query.SQL.Clear;
  query.SQL.Add('INSERT INTO dtbs_arq_new.pessoa_endereco VALUES (0, :id_pessoaFisica, :id_endereco)');
  query.ParamByName('id_pessoaFisica').AsInteger := id;
  query.ParamByName('id_endereco').AsInteger := self.codigo;

  query.ExecSQL;
end;

procedure TEndereco.setBairro(value: String);
begin
  self.bairro := value;
end;

procedure TEndereco.setCidade(value: String);
begin
  self.cidade := value;
end;

procedure TEndereco.setCodigo(value: Integer);
begin
  self.codigo := value;
end;

procedure TEndereco.setEstado(value: String);
begin
  self.estado := value;
end;

procedure TEndereco.setLogradouro(value: String);
begin
  self.logradouro := value;
end;

procedure TEndereco.setNumeroRua(value: Integer);
begin
  self.numero := value;
end;

end.
