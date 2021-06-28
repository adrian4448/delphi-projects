unit obj_Usuario;

interface

  uses FireDAC.Comp.Client, obj_utils, Vcl.Dialogs, System.SysUtils;

type TUsuario = class
  private
    id:Integer;
    nome:String;
    nm_usuario:String;
    senha:String;
    email:String;

    utils:TUtils;
  public
    procedure setId(id: Integer);
    procedure setNome(nome: String);
    procedure setNmUsuario(nmUsuario: String);
    procedure setSenha(senha: String);
    procedure setEmail(email: String);

    function getId : Integer;
    function getNome : String;
    function getNmUsuario : String;
    function getSenha : String;
    function getEmail : String;

    function login : boolean;
    procedure insert;
end;

implementation

{ TUsuario }

function TUsuario.getEmail: String;
begin
  result := self.email;
end;

function TUsuario.getId: Integer;
begin
  result := self.id;
end;

function TUsuario.getNmUsuario: String;
begin
    result := self.nm_usuario;
end;

function TUsuario.getNome: String;
begin
   result := self.nome;
end;

function TUsuario.getSenha: String;
begin
    result := self.senha;
end;

procedure TUsuario.insert;
var
  query:TFDQuery;
begin
  utils.criarQuery(query);
  query.SQL.Add('INSERT INTO usuario VALUES (0, :nome, :usuario, :senha, :email)');
  query.ParamByName('nome').AsString := self.nome;
  query.ParamByName('usuario').AsString := self.nm_usuario;
  query.ParamByName('senha').AsString := self.senha;
  query.ParamByName('email').AsString := self.email;

  try
    query.ExecSQL;
  Except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure TUsuario.setEmail(email: String);
begin
   self.email := email;
end;

procedure TUsuario.setId(id: Integer);
begin
  self.id := id;
end;

procedure TUsuario.setNmUsuario(nmUsuario: String);
begin
  self.nm_usuario := nmUsuario;
end;

procedure TUsuario.setNome(nome: String);
begin
   self.nome := nome;
end;

procedure TUsuario.setSenha(senha: String);
begin
  self.senha := senha;
end;

function TUsuario.login: boolean;
var
  query : TFDQuery;
begin
  utils.criarQuery(query);
  query.SQL.Add('SELECT count(*) from usuario u where u.nm_usuario = :nm_usuario and u.senha = :senha');
  query.ParamByName('nm_usuario').AsString := self.nm_usuario;
  query.ParamByName('senha').AsString := self.senha;

  try
     query.Open();
     result := query.Fields[0].AsInteger > 0;
  except
    on  e:Exception  do
    showMessage(e.ToString);
  end;
end;

end.
