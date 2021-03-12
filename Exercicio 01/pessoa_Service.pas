unit pessoa_Service;

interface
uses
    System.Classes, classe_Pessoa, generics.Collections, System.Math;

  type TPessoaService = class
    private
      lista: TList<TPessoa>;
    public
      constructor create;
      destructor  destroi;
      procedure   addPessoa(pessoa:TPessoa);
      function    getTotalLista : integer;
      function    getQtdeGrau(grau:integer) : integer;
      function    getStringGrau(grau:integer) : String;
      function    getPercentGrau(grau:integer) : real;
      function    grauMaiorQtde : integer;
      function    grauMenorQtde : integer;
      function    graduadoPercent : real;
      function    mediaIdadeMestrad : real;
      function    menorIdadeDoutorado : integer;
  end;

implementation

procedure TPessoaService.addPessoa(pessoa: TPessoa);
begin
  self.lista.Add(pessoa);
end;

constructor TPessoaService.create;
begin
  self.lista := TList<TPessoa>.create();
end;

destructor TPessoaService.destroi;
begin
  self.lista.Clear;
end;

function TPessoaService.getPercentGrau(grau: integer): real;
begin
  try
    result := (self.getQtdeGrau(grau) / self.getTotalLista) * 100;
  except
    result := 0;
  end;
end;

function TPessoaService.getQtdeGrau(grau: integer): integer;
var
  p:TPessoa;
begin
  result := 0;
  for p in self.lista do
    begin
      if(p.getGrau = grau) then
        begin
          Inc(result);
        end;
    end;
end;

function TPessoaService.getStringGrau(grau: integer): String;
begin
    case grau of
      1: result := 'Ensino básico ';
      2: result := 'Ensino Médio ';
      3: result := 'Ensino Superior ';
      4: result := 'Pós-graduado ';
      5: result := 'Mestrado ';
      6: result := 'Doutorado ';
    end;    
end;

function TPessoaService.getTotalLista: integer;
begin
  result := self.lista.Count;
end;

function TPessoaService.graduadoPercent: real;
var 
  p:TPessoa;
begin
  result := 0;
  for p in self.lista do
    begin
      if((p.getIdade() <= 24) and (p.getGrau() >= 3)) then
        begin
          result := result + 1;
        end
    end;
  result := (result / self.getTotalLista) * 100; 
end;

function TPessoaService.grauMaiorQtde: integer;
var
  i,qtde:integer;
begin
   qtde := 0;
   for i := 1 to 6 do
     begin   
       if(self.getQtdeGrau(i) > qtde) then
        begin
          qtde := self.getQtdeGrau(i);
          result := i;
        end;
     end;
end;

function TPessoaService.grauMenorQtde: integer;
var
  i,menorIdade:integer;
begin
   menorIdade := 999;
   for i := 1 to 6 do
     begin   
       if(self.getQtdeGrau(i) < menorIdade) then
        begin
          menorIdade := self.getQtdeGrau(i);
          result := i;
        end;
     end;
end;

function TPessoaService.mediaIdadeMestrad: real;
var
  p:TPessoa;
  totalIdades:integer;
begin
  result := 0;
  for p in self.lista do
    begin
      if(p.getGrau = 5) then
        begin
          totalIdades := totalIdades + p.getIdade();
          result := result + 1;
        end;      
    end;
  result := totalIdades / result;  
end;

function TPessoaService.menorIdadeDoutorado: integer;  
var
  p:TPessoa;
begin
   result := 999;
   for p in self.lista do
    begin 
      if((p.getGrau = 6) and (p.getIdade() < result)) then
        begin  
          result := p.getIdade();  
        end;
    end;
    result := ifThen(result = 999, 0, result);
end;

end.
