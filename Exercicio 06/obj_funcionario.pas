unit obj_funcionario;

interface
  type TFuncionario = class
    private
      codigo   : integer;
      categoria : integer;
      salarioAntigo  : real;
      salarioAtual   : real;
    public
      function getCodigo    : integer;
      function getCategoria : integer;
      function getSalarioAntigo   : real;
      function getSalarioAtual    : real;
      procedure setCodigo(codigo : integer);
      procedure setCategoria(categoria : integer);
      procedure setSalarioAntigo(salarioAntigo : real);
      procedure setSalarioAtual(salarioAtual : real);
  end;

implementation

{ TFuncionario }

function TFuncionario.getCategoria: integer;
begin
  result := self.categoria;
end;

function TFuncionario.getCodigo: integer;
begin
  result :=  self.codigo;
end;

function TFuncionario.getSalarioAntigo: real;
begin
  result := self.salarioAntigo;
end;

function TFuncionario.getSalarioAtual: real;
begin
  result := self.salarioAtual;
end;

procedure TFuncionario.setCategoria(categoria: integer);
begin
  self.categoria := categoria;
end;

procedure TFuncionario.setCodigo(codigo: integer);
begin
  self.codigo := codigo;
end;

procedure TFuncionario.setSalarioAntigo(salarioAntigo: real);
begin
  self.salarioAntigo := salarioAntigo;
end;

procedure TFuncionario.setSalarioAtual(salarioAtual: real);
begin
  self.salarioAtual := salarioAtual;
end;

end.
