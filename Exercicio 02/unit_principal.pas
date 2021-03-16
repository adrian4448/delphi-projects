unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, unit_methods;

type
  Tform_principal = class(TForm)
    pnl_principal: TPanel;
    nm_resultados: TMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    metodos : TMethods;
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

procedure Tform_principal.FormActivate(Sender: TObject);
begin
  nm_resultados.Lines.Add(format('O Valor de H �: %f',[metodos.calcularH()]));
  nm_resultados.Lines.Add(format('O valor da soma dos dez primeiros n�meros �: %f', [metodos.somaDezPrimeiros()]));
  nm_resultados.Lines.Add(format('O valor de S �: %f',[metodos.calcularS]));
  nm_resultados.Lines.Add(format('Os n�meros pares do intervalo de 0 a 100 s�o: %s', [metodos.numPares]));
  nm_resultados.Lines.Add(format('Os n�meros impares do intervalo de 0 a 100 s�o: %s', [metodos.numImpares]));
  nm_resultados.Lines.Add(format('Os n�meros primos do intervalo de 0 a 100 s�o: %s', [metodos.numPrimos]));
end;

end.
