unit obj_Barbeiro;

interface

type TBarbeiro = class
  private
    id:Integer;
    nome:String;
    telefone:String;
  public
    procedure setId(id: Integer);
    procedure setNome(nome: String);
    procedure setTelefone(telefone: String);

    function getId : Integer;
    function getNome : String;
    function getTelefone : String;
end;

implementation

{ TBarbeiro }

function TBarbeiro.getId: Integer;
begin
  result := self.id;
end;

function TBarbeiro.getNome: String;
begin
   result := self.nome;
end;

function TBarbeiro.getTelefone: String;
begin
   result := self.telefone;
end;

procedure TBarbeiro.setId(id: Integer);
begin
    self.id := id;
end;

procedure TBarbeiro.setNome(nome: String);
begin
    self.nome := nome;
end;

procedure TBarbeiro.setTelefone(telefone: String);
begin
   self.telefone := telefone;
end;

end.
