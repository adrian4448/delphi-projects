unit pessoa_service;

interface
  uses obj_pessoa, Generics.Collections;

  type TPessoa_Service = class
    private
      lista : TList<TPessoa>;
    public
      constructor create;
      destructor destroi;
      procedure addPessoa(pessoa : TPessoa);
      function  quantidadeOtimo : integer;
      function  diferencaBomRegular : integer;
      function  mediaIdadeRuim : real;
      function  porcentagemPessimo : real;
  end;

implementation

{ TPessoa_Service }

procedure TPessoa_Service.addPessoa(pessoa: TPessoa);
begin
  self.lista.Add(pessoa);
end;

constructor TPessoa_Service.create;
begin
  self.lista := TList<TPessoa>.create;
end;

destructor TPessoa_Service.destroi;
begin
  self.lista.Clear;
end;

function TPessoa_Service.diferencaBomRegular: integer;
var
  pessoa : TPessoa;
  totalRegular : integer;
begin
  totalRegular := 0;
  result := 0;
  for pessoa in self.lista do
    begin
      if(pessoa.getSatisfacao = 1) then
        begin
          Inc(result);
        end;
      if(pessoa.getSatisfacao = 2) then
        begin
          Inc(totalRegular);
        end;
    end;
  result := result - totalRegular;
end;

function TPessoa_Service.mediaIdadeRuim: real;
var
  pessoa : TPessoa;
  totalIdade : integer;
begin
  result := 0;
  totalIdade := 0;
  for pessoa in self.lista do
    begin
      if(pessoa.getSatisfacao = 3) then
        begin
          result := result + 1;
          totalIdade := totalIdade + pessoa.getIdade;
        end;
    end;
  result := totalIdade / result;
end;

function TPessoa_Service.porcentagemPessimo: real;
var
  pessoa : TPessoa;
begin
  result := 0;
  for pessoa in self.lista do
    begin
      if(pessoa.getSatisfacao = 4) then
        begin
          result := result + 1;
        end;
    end;
  result := (result * 100) / self.lista.Count;
end;

function TPessoa_Service.quantidadeOtimo: integer;
var
  pessoa : TPessoa;
begin
  result := 0;
  for pessoa in self.lista do
    begin
      if(pessoa.getSatisfacao = 0) then
        begin
          Inc(result);
        end;
    end;
end;

end.
