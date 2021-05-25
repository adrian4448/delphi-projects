unit obj_utils;

interface

  uses System.SysUtils, System.Variants, System.Classes;

  type TUtils = class
    private
      TPosicoes : array[0..5] of integer;
      tamanhoPosicoes : Integer;
    public
      function palavraVazia(value:String) : String;
      function TextoJogoSubstituido(palavraCompleta:String; palavra:String; letra:Char) : String;
      procedure setPosicoes(palavra:String; letra:char);
  end;
implementation

{ TUtils }

function TUtils.TextoJogoSubstituido(palavraCompleta:String; palavra:String; letra:Char) : String;
var
  i:Integer;
begin
  if(palavra = '') then
    begin
      result := palavraVazia(palavraCompleta);
    end
  else
    begin
      result := palavra;
    end;
  self.setPosicoes(palavraCompleta,letra);
  for i := 0 to self.tamanhoPosicoes do
    begin
      if((i = 0) or (Tposicoes[i] <> 0)) then
        begin
          result[Tposicoes[i] + 1] := letra;
        end;
    end;
end;

procedure TUtils.setPosicoes(palavra:String; letra:char);
var
  i:Integer;
  position:Integer;
begin
  position := 0;
  for i := 0 to palavra.Length do
    begin
      if(palavra.toUpper.ToCharArray[i] = letra) then
        begin
          TPosicoes[position] := i;
          position := position + 1;
          self.tamanhoPosicoes := position;
        end;
    end;
end;

function TUtils.palavraVazia(value: String) : String;
var
  i: Integer;
  palavra : String;
begin
  palavra := '';
  for i := 0 to value.Length - 1 do
    begin
      palavra := palavra + ' ';
    end;
  result := palavra;
end;



end.
