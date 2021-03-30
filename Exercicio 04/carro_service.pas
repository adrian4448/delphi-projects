unit carro_service;

interface
  uses Generics.Collections, obj_carro;

  type TCarro_Service = class
    private
      lista : TList<TCarro>;
    public
      constructor create;
      destructor  destruct;
      procedure addCarro(carro:TCarro);
      function quantidadeDeVeiculos : integer;
      function maisDezAnos : integer;
      function maisVinteAnos : integer;
      function menosCincoAnos : real;
      function percentCarroBranco : real;
    end;
implementation

{ TCarro_Service }

uses System.DateUtils, System.SysUtils ;

procedure TCarro_Service.addCarro(carro: TCarro);
begin
  self.lista.Add(carro);
end;

constructor TCarro_Service.create;
begin
  self.lista := TList<TCarro>.Create;
end;

destructor TCarro_Service.destruct;
begin
  self.lista.Clear;
end;

function TCarro_Service.maisDezAnos: integer;
var
  c : TCarro;
  dataAtual : TDateTime;
begin
  dataAtual := StrToDate(FormatDateTime('dd/mm/yyyy', Today));
  result := 0;
  for c in lista do
    begin
      if(YearsBetween(c.getAno, dataAtual) > 10 ) then
        begin
          Inc(result);
        end;
    end;
end;

function TCarro_Service.maisVinteAnos: integer;
var
  c : TCarro;
  dataAtual : TDateTime;
begin
  dataAtual := StrToDate(FormatDateTime('dd/mm/yyyy', Today));
  result := 0;
  for c in lista do
    begin
      if(YearsBetween(c.getAno, dataAtual) > 20 ) then
        begin
          Inc(result);
        end;
    end;
end;

function TCarro_Service.menosCincoAnos: real;
var
  c : TCarro;
  dataAtual : TDateTime;
begin
  dataAtual := StrToDate(FormatDateTime('dd/mm/yyyy', Today));
  result := 0;
  for c in lista do
    begin
      if(YearsBetween(c.getAno, dataAtual) < 5 ) then
        begin
          result := result + 1;
        end;
    end;
  result := (result * 100) / self.lista.Count;
end;

function TCarro_Service.percentCarroBranco: real;
var
  c : TCarro;
  dataAtual : TDateTime;
begin
  dataAtual := StrToDate(FormatDateTime('dd/mm/yyyy', Today));
  result := 0;
  for c in lista do
    begin
      if((c.getAno > 01/01/2020) and (c.getCor = 'Branca') and (c.getMotor = '1.0')) then
        begin
          result := result + 1;
        end;
    end;
  result := (result * 100) / self.lista.Count;
end;

function TCarro_Service.quantidadeDeVeiculos: integer;
begin
  result := self.lista.Count;
end;

end.
