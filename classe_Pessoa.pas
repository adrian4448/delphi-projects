unit classe_Pessoa;

interface

type
    TPessoa = class
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

function TPessoa.getGrau: Integer;
begin
  result := self.grau;
end;

function TPessoa.getIdade: Integer;
begin
  result := self.idade;
end;

procedure TPessoa.setGrau(grau: integer);
begin
  self.grau := grau;
end;

procedure TPessoa.setIdade(idade: integer);
begin
  self.idade := idade;
end;

end.
