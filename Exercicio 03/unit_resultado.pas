unit unit_resultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tform_results = class(TForm)
    nm_resultados: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_results: Tform_results;

implementation

{$R *.dfm}

end.
