unit funcionario_service;

interface
  uses obj_funcionario, Generics.Collections;

  type TFuncionario_service = class
    private
    public
      procedure calculaNovoSalario(funcionario : TFuncionario);
  end;

implementation

{ TFuncionario_service }

{ TFuncionario_service }

procedure TFuncionario_service.calculaNovoSalario(funcionario: TFuncionario);
begin
  if((funcionario.getCategoria = 0) or (funcionario.getCategoria = 2)) then
    begin
      funcionario.setSalarioAtual(funcionario.getSalarioAntigo + funcionario.getSalarioAntigo * 0.02);
    end
  else if((funcionario.getCategoria = 1) or (funcionario.getCategoria = 3) or (funcionario.getCategoria = 4)) then
    begin
      funcionario.setSalarioAtual(funcionario.getSalarioAntigo + funcionario.getSalarioAntigo * 0.03);
    end
  else
    begin
      funcionario.setSalarioAtual(funcionario.getSalarioAntigo + funcionario.getSalarioAntigo * 0.05);
    end;
end;

{ TFuncionario_service }


end.

