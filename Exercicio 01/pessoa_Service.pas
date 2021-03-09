unit pessoa_Service;

interface
uses
    System.Classes, classe_Pessoa, generics.Collections;

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
  end;

implementation


{ TPessoaService }

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
      1: result := 'Ensino b�sico ';
      2: result := 'Ensino M�dio ';
      3: result := 'Ensino Superior ';
      4: result := 'P�s-graduado ';
      5: result := 'Mestrado ';
      6: result := 'Doutorado ';
    end;    
end;

function TPessoaService.getTotalLista: integer;
begin
  result := self.lista.Count;
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
  i,qtde:integer;
begin
   qtde := 999;
   for i := 1 to 6 do
     begin   
       if(self.getQtdeGrau(i) < qtde) then
        begin
          qtde := self.getQtdeGrau(i);
          result := i;
        end;
     end;  
end;

end.