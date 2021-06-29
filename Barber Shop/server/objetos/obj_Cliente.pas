unit obj_Cliente;

interface

uses FireDAC.Comp.Client, obj_utils, Vcl.Dialogs, System.SysUtils;

type TCliente = class
  private
    id:Integer;
    nome:String;
    telefone:String;
    email:String;
    utils:TUtils;
  public
    procedure setId(id: Integer);
    procedure setNome(nome: String);
    procedure setTelefone(telefone: String);
    procedure setEmail(email: String);

    function getId : Integer;
    function getNome : String;
    function getTelefone : String;
    function getEmail : String;
    procedure insert;
end;


implementation

{ TCliente }

function TCliente.getEmail: String;
begin
  result := self.email;
end;

function TCliente.getId: Integer;
begin
   result := self.id;
end;

function TCliente.getNome: String;
begin
   result:= self.nome;
end;

function TCliente.getTelefone: String;
begin
   result:= self.telefone;
end;

procedure TCliente.insert;
VAR
  query : TFDQuery;
begin
  utils.criarQuery(query);
  query.SQL.Add('INSERT INTO cliente VALUES (0, :nome, :telefone, :email)');
  query.ParamByName('nome').AsString := self.nome;
  query.ParamByName('telefone').AsString := self.telefone;
  query.ParamByName('email').AsString := self.email;

  try
    query.ExecSQL;
  except
    on e:Exception do
      ShowMessage(e.ToString);
  end;
end;

procedure TCliente.setEmail(email: String);
begin
   self.email := email;
end;

procedure TCliente.setId(id: Integer);
begin
    self.id := id;
end;

procedure TCliente.setNome(nome: String);
begin
   self.nome:= nome;
end;

procedure TCliente.setTelefone(telefone: String);
begin
   self.telefone:= telefone;
end;

end.
