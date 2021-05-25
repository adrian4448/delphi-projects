unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, obj_palavra,
  obj_utils, Vcl.Imaging.jpeg;

type
  Tfrm_main = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    lbl_iniciar: TLabel;
    Label2: TLabel;
    lbl_regras: TLabel;
    lbl_sair: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure lbl_iniciarClick(Sender: TObject);
    procedure lbl_sairClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    palavra: TPalavra;
    utils : TUtils;
    dificuldade: Integer;
  public
    procedure setDificuldade(value:Integer);
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

uses unit_dificuldade, unit_game;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  palavra := TPalavra.Create();
end;

procedure Tfrm_main.Label2Click(Sender: TObject);
begin
  if(frm_dificuldade = nil) then
    begin
      frm_dificuldade := TFrm_dificuldade.Create(self);
    end;
  frm_dificuldade.ShowModal;
  FreeAndNil(frm_dificuldade);
end;

procedure Tfrm_main.lbl_iniciarClick(Sender: TObject);
var
  i:integer;
  mask:String;
begin
  if(self.dificuldade <> 0) then
    begin
      mask := '';
      if(frm_jogo = nil) then
        begin
          frm_jogo := TFrm_jogo.create(self);
        end;
      palavra.getPalavra(self.dificuldade);
      for i := 1 to palavra.getDescricao.Length do
        begin
          mask := mask + '# ';
        end;
      frm_jogo.txt_palavra.EditMask := mask + ';0;_';
      frm_jogo.lbl_palavra.Caption := palavra.getDescricao.ToUpper;
      frm_jogo.lbl_dicaPalavra.Caption := palavra.getDica;
      frm_jogo.ShowModal;
      FreeAndNil(frm_jogo);
    end
  else
    begin
      showMessage('Selecione uma dificuldade antes');
    end;

end;

procedure Tfrm_main.lbl_sairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_main.setDificuldade(value: Integer);
begin
  self.dificuldade := value;
end;

end.
