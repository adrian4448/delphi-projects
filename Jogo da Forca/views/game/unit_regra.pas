unit unit_regra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  Tform_Regras = class(TForm)
    Image1: TImage;
    lbl_Regras: TLabel;
    lbl_iniciar: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_Voltar: TLabel;
    procedure lbl_VoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_Regras: Tform_Regras;

implementation

{$R *.dfm}





procedure Tform_Regras.lbl_VoltarClick(Sender: TObject);
begin
  self.Close;
end;

end.
