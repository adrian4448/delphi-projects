unit unit_resultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tform_resultado = class(TForm)
    pnl_result: TPanel;
    pnl_buttons: TPanel;
    BitBtn3: TBitBtn;
    memo_result: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_resultado: Tform_resultado;

implementation

{$R *.dfm}

uses pessoa_Service, unit_principal;

procedure Tform_resultado.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tform_resultado.FormCreate(Sender: TObject);
var
  i: integer;
begin
  memo_result.Clear;
  memo_result.Lines.Add('Quantidade de pessoas por Grau:');

  for i := 1 to 6 do
    begin
       memo_result.Lines.Add(Format('%s : %d', [form_menu.ServicoPessoa.getStringGrau(i),
                                                form_menu.ServicoPessoa.getQtdeGrau(i)]));
    end;

  memo_result.Lines.Add('');

  memo_result.Lines.Add('Percentual de pessoas por Grau:');

  for i := 1 to 6 do
    begin
       memo_result.Lines.Add(Format('%s : %f', [form_menu.ServicoPessoa.getStringGrau(i),
                                                form_menu.ServicoPessoa.getPercentGrau(i)]));
    end;

  memo_result.Lines.Add('');
  memo_result.Lines.Add('Grau com maior quantidade de pessoas � o: ' + form_menu.ServicoPessoa.getStringGrau(form_menu.ServicoPessoa.grauMaiorQtde));
  memo_result.Lines.Add('Grau com menor quantidade de pessoas � o: ' + form_menu.ServicoPessoa.getStringGrau(form_menu.ServicoPessoa.grauMenorQtde));

end;

end.
