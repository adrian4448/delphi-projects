unit habitante_service;

interface
  uses Generics.Collections,System.Classes, objeto_habitante;

  type THabitante_service = Class
    private
      lista : TList<THabitante>;
    public
      constructor create;
      destructor  destroi;
      procedure addHabitante(habitante : THabitante);
  End;

implementation

{ THabitante_service }

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

end.
