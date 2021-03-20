unit funcionario_service;

interface
  uses generics.Collections, obj_funcionario;

  type TFuncionario_Service = class
    private
      lista : TList<TFuncionario>;
    public
      constructor create;
      destructor  destruct;
      procedure   addItem(f : TFuncionario);
      function    totalFeminino : integer;
      function    totalMasculino : integer;
      function    idadeMediaHomens : real;
      function    totalHomens45 : real;
      function    quantidadeMulheresExp : integer;
  end;
implementation

{ TFuncionario_Service }

procedure TFuncionario_Service.addItem(f: TFuncionario);
begin
  self.lista.Add(f);
end;

constructor TFuncionario_Service.create;
begin
  self.lista := TList<TFuncionario>.create;
end;

destructor TFuncionario_Service.destruct;
begin
  self.lista.Clear;
end;

function TFuncionario_Service.idadeMediaHomens: real;
var
  f : TFuncionario;
  totalIdade : integer;
begin
  result := 0;
  totalIdade := 0;
  for f in self.lista do
    begin
      if((f.getSexo = 0) and (f.getExperiencia = 0)) then
        begin
          totalIdade := totalIdade + f.getIdade;
          result := 1 + result;
        end;
    end;
  result := totalIdade / result;
end;

function TFuncionario_Service.quantidadeMulheresExp: integer;
var
  f : TFuncionario;
begin
  result := 0;
  for f in self.lista do
    begin
      if((f.getSexo = 1) and (f.getIdade < 35)) then
        begin
          inc(result);
        end;
    end;
end;

function TFuncionario_Service.totalFeminino: integer;
var
  f : TFuncionario;
begin
  result := 0;
  for f in self.lista do
    begin
      if(f.getSexo = 1) then
        begin
          Inc(result);
        end;
    end;
end;

function TFuncionario_Service.totalHomens45: real;
var
  f : TFuncionario;
  totalHomens : integer;
begin
  result := 0;
  totalHomens := 0;
  for f in self.lista do
    begin
      if((f.getSexo = 0) and (f.getIdade > 45)) then
        begin
          Inc(totalHomens);
        end;
    end;
  result := (totalHomens * 100) / self.lista.Count;
end;

function TFuncionario_Service.totalMasculino: integer;
var
  f : TFuncionario;
begin
  result := 0;
  for f in self.lista do
    begin
      if(f.getSexo = 0) then
        begin
          Inc(result);
        end;
    end;
end;

end.
