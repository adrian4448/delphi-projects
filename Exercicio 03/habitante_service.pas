unit habitante_service;

interface
  uses Generics.Collections, System.Classes, objeto_habitante;

  type THabitante_service = Class
    private
      lista : TList<THabitante>;
    public
      constructor create;
      destructor  destroi;
      procedure addHabitante(habitante : THabitante);
      function  mediaIdade : real;
      function  acima60    : real;
      function  mulheresMediaIdade : integer;
      function  mediaHomens : real;
  End;

implementation

{ THabitante_service }

function THabitante_service.acima60: real;
var
  habitante  : THabitante;
begin
for habitante in self.lista do
    begin
      if(habitante.getIdade > 60) then
        begin
          result := result + habitante.getIdade;
        end;
    end;
    result := result / self.lista.Count;
end;

procedure THabitante_service.addHabitante(habitante: THabitante);
begin
  self.lista.add(habitante);
end;

constructor THabitante_service.create;
begin
  self.lista := TList<THabitante>.create();
end;

destructor THabitante_service.destroi;
begin
  self.lista.Clear;
end;

function THabitante_service.mediaHomens: real;
var
  habitante  : THabitante;
begin
  result := 0;
  for habitante in self.lista do
    begin
      if((habitante.getSexo = 0) and (habitante.getCorCabelos = 2) and (habitante.getCorOlhos <> 0)) then
        begin
          result := result + 1;
        end;

    end;
  result := result / self.lista.Count;
end;

function THabitante_service.mediaIdade: real;
var
  habitante  : THabitante;
begin
  for habitante in self.lista do
    begin
      result := result + habitante.getIdade;
    end;
  result := result / self.lista.Count;
end;

function THabitante_service.mulheresMediaIdade: integer;
var
  habitante  : THabitante;
begin
  result := 0;
  for habitante in self.lista do
    begin
      if((habitante.getSexo = 1) and (habitante.getIdade > 17) and (habitante.getIdade < 36)) then
        begin
          Inc(result);
        end;
    end;
end;

end.
