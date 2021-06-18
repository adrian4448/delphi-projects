unit unit_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Mask;

type
  Tfrm_Login = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Login: Tfrm_Login;

implementation

{$R *.dfm}

end.
