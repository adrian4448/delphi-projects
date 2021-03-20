unit unit_resultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, unit_main;

type
  Tform_resultados = class(TForm)
    nm_resultado: TMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_resultados: Tform_resultados;

implementation

{$R *.dfm}

procedure Tform_resultados.FormActivate(Sender: TObject);
begin
  nm_resultado.Lines.Add(format('O número total de funcionarias femininas é: %d', [form_principal.funcionario_service.totalFeminino]));
  nm_resultado.Lines.Add(format('O número total de funcionarios masculinos é: %d', [form_principal.funcionario_service.totalMasculino]));
  nm_resultado.Lines.Add(format('A média de idade de homens com experiencia é: %f', [form_principal.funcionario_service.idadeMediaHomens]));
  nm_resultado.Lines.Add(format('Porcentagem dos homens com mais de 45 anos, em relação ao total de homens é: %f', [form_principal.funcionario_service.totalHomens45]));
  nm_resultado.Lines.Add(format('Quantidade de mulheres com idade inferior a 35 anos e com experiência no serviço é: %d', [form_principal.funcionario_service.quantidadeMulheresExp]));
end;

end.
