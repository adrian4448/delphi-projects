unit objeto_habitante;

interface
  type THabitante = Class
    private
      sexo:integer;
      corOlhos:integer;
      corCabelos:integer;
      idade:integer;
    public
      function getSexo        : integer;
      function getCorOlhos    : integer;
      function getCorCabelos  : integer;
      function getIdade       : integer;
      procedure setSexo(sexo:integer);
      procedure setCorOlhos(corOlhos:integer);
      procedure setCorCabelos(corCabelos:integer);
      procedure setIdade(idade:integer);
  End;

implementation

{ TObjeto_habitante }

function Thabitante.getCorCabelos: integer;
begin
  result := self.corCabelos
end;

function Thabitante.getCorOlhos: integer;
begin
  result := self.corOlhos;
end;

function Thabitante.getIdade: integer;
begin
  result := self.idade
end;

function Thabitante.getSexo: integer;
begin
  result := self.sexo;
end;

procedure Thabitante.setCorCabelos(corCabelos: integer);
begin
  self.corCabelos := corCabelos;
end;

procedure Thabitante.setCorOlhos(corOlhos: integer);
begin
  self.corOlhos := corOlhos;
end;

procedure Thabitante.setIdade(idade: integer);
begin
  self.idade := idade;
end;

procedure Thabitante.setSexo(sexo: integer);
begin
  self.sexo := sexo;
end;

end.
