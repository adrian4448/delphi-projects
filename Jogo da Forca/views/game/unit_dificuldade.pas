unit unit_dificuldade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  Tfrm_dificuldade = class(TForm)
    Image1: TImage;
    lbl_facil: TLabel;
    lbl_medio: TLabel;
    lbl_dificil: TLabel;
    procedure lbl_facilClick(Sender: TObject);
    procedure lbl_medioClick(Sender: TObject);
    procedure lbl_dificilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dificuldade: Tfrm_dificuldade;

implementation

{$R *.dfm}

uses unit_principal;

procedure Tfrm_dificuldade.lbl_dificilClick(Sender: TObject);
begin
  frm_main.setDificuldade(3);
  self.Close;
end;

procedure Tfrm_dificuldade.lbl_facilClick(Sender: TObject);
begin
  frm_main.setDificuldade(1);
  self.Close;
end;

procedure Tfrm_dificuldade.lbl_medioClick(Sender: TObject);
begin
  frm_main.setDificuldade(2);
  self.Close;
end;

end.
