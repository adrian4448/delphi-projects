unit unit_resultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, unit_principal;

type
  Tform_resultado = class(TForm)
    nm_resultado: TMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_resultado: Tform_resultado;

implementation

{$R *.dfm}

uses pessoa_service;

procedure Tform_resultado.FormActivate(Sender: TObject);
begin
  nm_resultado.Clear;
  nm_resultado.Lines.Add(format('O total de votos ótimos é: %d', [form_principal.pessoa_Service.quantidadeOtimo]));
  nm_resultado.Lines.Add(format('A diferença de votos entre respostas Bom e Regular: %d', [form_principal.pessoa_Service.diferencaBomRegular]));
  nm_resultado.Lines.Add(format('A média de idade das pessoas que responderam ruim é: %f', [form_principal.pessoa_Service.mediaIdadeRuim]));
  nm_resultado.Lines.Add(format('A porcentagem de respostas Péssimo é: %f', [form_principal.pessoa_Service.porcentagemPessimo]));
end;

end.
