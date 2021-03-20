unit unit_resultados;

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

procedure Tform_resultado.FormActivate(Sender: TObject);
begin

end;

end.
