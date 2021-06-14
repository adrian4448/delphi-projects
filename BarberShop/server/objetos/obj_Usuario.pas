unit obj_Usuario;

interface

type TUsuario = class
  private
    id:Integer;
    nome:String;
    nm_usuario:String;
    senha:String;
    email:String;
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


end.
