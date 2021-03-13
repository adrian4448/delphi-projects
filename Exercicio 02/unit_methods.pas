unit unit_methods;

interface
  type
    TMethods = class
    private
    public
      function calcularH : real;
  end;

implementation

{ TMethods }



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



end.
