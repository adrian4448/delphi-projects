unit unit_methods;

interface
  type
    TMethods = class
    private
    public
      function calcularH : real;
      function somaDezPrimeiros : real;
      function calcularS : real;
      function numPares  : String;
      function numPrimos : String;
      function numImpares : String;
  end;

implementation

uses SysUtils; 

function TMethods.calcularH: real;
var
  i,j,rodizio:integer;
begin
  result := 1 / 1;
  rodizio := 3;
  j := 0;
  for i := 1 to 49 do
    begin
      if(i = 1) then
        begin
          result := result + (i / (i + 1));
        end
      else
        begin
          if(rodizio = 3) then
            begin
              result := result - (i / (i + 1));
              j := j + 1;
              if(j = 2) then
                begin
                  rodizio := 0
                end;
            end
          else
            begin
              result := result + (i / (i + 1));
              rodizio := rodizio + 1;
            end;
        end;
    end;
end;



function TMethods.calcularS: real;
var
  i:integer;
begin
  result := 0;
  for i := 1 to 10 do
  if (Odd(i)) then
    result := result  - (i/(i*i)) //i é par
  else
    result := result  + (i/(i*i)); //i é impar
end;

function TMethods.numImpares: String;
var
  i: Integer;
begin
  for i := 1 to 100 do
    begin
      if(Odd(i)) then
        result := result + ' ' + IntToStr(i);  
    end;
end;

function TMethods.numPares: String;
var
  i: Integer;
begin
  for i := 1 to 100 do
    begin
      if(not Odd(i)) then
        result := result + ' ' + IntToStr(i);  
    end;
end;

function TMethods.numPrimos: String;
var
  i,num,primo: Integer;
begin
  for num := 1 to 100 do
    begin
      primo := 0;
      for I := num downto 1 do
        begin  
          if(num mod i = 0) then
            begin
              Inc(primo);
            end
        end;
    if(primo = 2) then
      begin
        result := result + ' ' + IntToStr(num);
      end;
    primo := 0;  
    end;
end;

function TMethods.somaDezPrimeiros: real;
var
  i,num :integer;
begin
  num := 500;
  for i := 1 to 10 do
    begin
      if odd(i) then
        begin
          result := result - (2 / num);
        end
      else
        begin
          result := result + (5 / num);
        end;
      num := num - 50;
    end;
end;

end.
