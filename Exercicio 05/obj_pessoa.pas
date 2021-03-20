unit obj_pessoa;

interface
  type TPessoa = class
     private
      satisfacao : integer;
      idade : integer;
     public
      procedure setIdade(idade:integer);
      procedure setSatisfacao(satisfacao:integer);
      function  getIdade : integer;
      function  getSatisfacao : integer;
  end;

implementation

{ TPessoa }

function TPessoa.getIdade: integer;
begin
  result := self.idade;
end;

function TPessoa.getSatisfacao: integer;
begin
  result := self.satisfacao;
end;

procedure TPessoa.setIdade(idade: integer);
begin
  self.idade := idade;
end;

procedure TPessoa.setSatisfacao(satisfacao: integer);
begin
  self.satisfacao := satisfacao;
end;

end.
