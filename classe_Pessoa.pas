unit classe_Pessoa;

interface

type
    Pessoa = class
      private
        idade:Integer;
        grau:Integer;
      public
        procedure setIdade(idade:integer);
        procedure setGrau(grau:integer);
        function  getIdade : Integer;
        function  getGrau  : Integer;

  end;

implementation

{ Pessoa }

function Pessoa.getGrau: Integer;
begin
  result := self.grau;
end;

function Pessoa.getIdade: Integer;
begin
  result := self.idade;
end;

procedure Pessoa.setGrau(grau: integer);
begin
  self.grau := grau;
end;

procedure Pessoa.setIdade(idade: integer);
begin
  self.idade := idade;
end;

end.
