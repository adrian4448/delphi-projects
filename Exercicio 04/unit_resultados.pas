unit unit_resultados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, unit_principal;

type
  Tform_resultados = class(TForm)
    nm_resultados: TMemo;
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
  nm_resultados.Lines.Add(format('O número total de veiculos é de: %d ', [form_principal.carro_service.quantidadeDeVeiculos]));
  nm_resultados.Lines.Add(format('O número total de veiculos com mais de dez anos é de: %d ', [form_principal.carro_service.maisDezAnos]));
  nm_resultados.Lines.Add(format('O número total de veiculos com mais de vinte anos é de: %d ', [form_principal.carro_service.maisVinteAnos]));
  nm_resultados.Lines.Add(format('O percentual total de veiculos com menos de cinco anos é de: %f ', [form_principal.carro_service.menosCincoAnos]));
  nm_resultados.Lines.Add(format('O percentual total de veiculos com motor 1.0, ano acima de 2000 e cor branca é de: %f ', [form_principal.carro_service.percentCarroBranco]));
  end;

end.
