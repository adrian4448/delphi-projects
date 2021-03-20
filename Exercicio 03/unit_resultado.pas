unit unit_resultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, unit_principal;

type
  Tform_results = class(TForm)
    nm_resultados: TMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_results: Tform_results;

implementation

{$R *.dfm}

procedure Tform_results.FormActivate(Sender: TObject);
begin
  nm_resultados.Clear;
  nm_resultados.Lines.Add(format('A média de idade dos habitantes é de: %f',[form_principal.habitante_service.mediaIdade]));
  nm_resultados.Lines.Add(format('O percentual dos habitantes acima de 60 anos é de: %f',[form_principal.habitante_service.acima60]));
  nm_resultados.Lines.Add(format('A quantidade de habitantes do sexo feminino entre 17 e 36 é de: %d',[form_principal.habitante_service.mulheresMediaIdade]));
  nm_resultados.Lines.Add(format('O percentual de pessoas do sexo masculino com idade superior a 18 anos é de: %f',[form_principal.habitante_service.mediaHomens]));

end;

end.
