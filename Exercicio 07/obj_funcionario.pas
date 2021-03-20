unit obj_funcionario;

interface
  type TFuncionario = class
    private
      idade : integer;
      sexo  : integer;
      experiencia : integer;
    public
      function getIdade : integer;
      function getSexo  : integer;
      function getExperiencia : integer;
      procedure setIdade(idade:integer);
      procedure setSexo(sexo:integer);
      procedure setExperiencia(experiencia:integer);
  end;
implementation

{ TFuncionario }

function TFuncionario.getExperiencia: integer;
begin
  result := self.experiencia;
end;

function TFuncionario.getIdade: integer;
begin
  result := self.idade;
end;

function TFuncionario.getSexo: integer;
begin
  result := self.sexo;
end;

procedure TFuncionario.setExperiencia(experiencia: integer);
begin
  self.experiencia := experiencia;
end;

procedure TFuncionario.setIdade(idade: integer);
begin
  self.idade := idade;
end;

procedure TFuncionario.setSexo(sexo: integer);
begin
  self.sexo := sexo;
end;

end.
