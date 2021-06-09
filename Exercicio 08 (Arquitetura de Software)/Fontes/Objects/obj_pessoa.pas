unit obj_pessoa;

interface

  uses FireDAC.Comp.Client,Vcl.Dialogs,System.SysUtils;

  type Tpessoa = class
    private
      id:Integer;
      nome:String;
      cpf:String;
      rg:String;
      data_nascimento:TDate;
    public
      function getId : Integer;
      function getNome : String;
      function getCpf : String;
      function getRg : String;
      function getData_nascimento : TDate;

      procedure setId(value : Integer);
      procedure setNome(value : String);
      procedure setCpf(value : String);
      procedure setRg(value : String);
      procedure setData_Nascimento(value : TDate);

      procedure insert;
  end;
implementation

{ Tpessoa }

uses unit_connect;

function Tpessoa.getCpf: String;
begin
  result := self.cpf;
end;

function Tpessoa.getData_nascimento: TDate;
begin
  result := self.data_nascimento;
end;

function Tpessoa.getId: Integer;
begin
  result := self.id;
end;

function Tpessoa.getNome: String;
begin
  result := self.nome;
end;

function Tpessoa.getRg: String;
begin
  result := self.rg;
end;

procedure Tpessoa.insert;
var
  sql:TFDQuery;
begin
  sql := TFDQuery.create(nil);
  sql.Connection := data_connection.consorcio_con;
  sql.SQL.Clear;
  sql.SQL.Add('INSERT INTO dtbs_arq_new.pessoa VALUES (0,:nome,:cpf,:rg,:data_nascimento)');
  sql.ParamByName('nome').AsString := self.nome;
  sql.ParamByName('cpf').AsString := self.cpf;
  sql.ParamByName('rg').AsString := self.rg;
  sql.ParamByName('data_nascimento').AsDateTime := self.data_nascimento;

  try
    sql.ExecSQL;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure Tpessoa.setCpf(value: String);
begin
  self.cpf := value;
end;

procedure Tpessoa.setData_Nascimento(value: TDate);
begin
  self.data_nascimento := value;
end;

procedure Tpessoa.setId(value: Integer);
begin
  self.id := value;
end;

procedure Tpessoa.setNome(value: String);
begin
  self.nome := value;
end;

procedure Tpessoa.setRg(value: String);
begin
  self.rg := value;
end;

end.
