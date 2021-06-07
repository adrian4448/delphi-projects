unit unit_game;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Imaging.jpeg, Vcl.Buttons,obj_utils, generics.collections;

type
  Tfrm_jogo = class(TForm)
    img_fundo: TImage;
    txt_palavra: TMaskEdit;
    txt_letra: TEdit;
    lbl_palavra: TStaticText;
    Image1: TImage;
    lbl_dica: TLabel;
    lbl_dicaPalavra: TLabel;
    img_forca: TImage;
    img_cabeca: TImage;
    img_corpo: TImage;
    img_bracoEsq: TImage;
    img_bracoDir: TImage;
    img_pernaEsq: TImage;
    img_pernaDir: TImage;
    procedure btn_jogarClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure lbl_dicaMouseEnter(Sender: TObject);
    procedure lbl_dicaMouseLeave(Sender: TObject);
  private
    utils:TUtils;
    procedure errou;
  public
    { Public declarations }
  end;

var
  frm_jogo: Tfrm_jogo;

implementation

{$R *.dfm}

{ Tfrm_jogo }

procedure Tfrm_jogo.btn_jogarClick(Sender: TObject);
var
  i: Integer;
  palavra: String;
  palavraJogo: String;
begin
  palavra := lbl_palavra.Caption;
  if(palavra.ToUpper.contains(txt_letra.Text)) then
    begin
      utils := Tutils.Create;
      palavraJogo := txt_letra.Text;
      txt_palavra.Text := utils.TextoJogoSubstituido(lbl_palavra.Caption, txt_palavra.Text, palavraJogo.chars[0]);
      FreeAndNil(utils);
    end
  else
    begin
      self.errou;
    end;
end;

procedure Tfrm_jogo.errou;
begin
  if(not img_cabeca.Visible) then
    begin
      img_cabeca.Visible := true;
    end
  else if(not img_corpo.Visible) then
    begin
      img_corpo.Visible := true;
    end
  else if(not img_bracoEsq.Visible) then
    begin
      img_bracoEsq.Visible := true;
    end
  else if(not img_bracoDir.Visible) then
    begin
      img_bracoDir.Visible := true;
    end
  else if(not img_pernaEsq.Visible) then
    begin
      img_pernaEsq.Visible := true;
    end
  else if(not img_pernaDir.Visible) then
    begin
      img_pernaDir.Visible := true;
      showMessage('Você perdeu !!');
      self.Close;
    end;
end;

procedure Tfrm_jogo.Image1Click(Sender: TObject);
  var
  i: Integer;
  palavra: String;
  palavraJogo: String;
begin
    palavra := lbl_palavra.Caption;
  if(palavra.ToUpper.contains(txt_letra.Text)) then
    begin
    utils := Tutils.Create;
    palavraJogo := txt_letra.Text;
    txt_palavra.Text := utils.TextoJogoSubstituido(lbl_palavra.Caption, txt_palavra.Text, palavraJogo.chars[0]);
    txt_letra.Text := '';
    FreeAndNil(utils);
    if(txt_palavra.Text = lbl_palavra.Caption) then
      begin
        showMessage('Você ganhou, parabéns !!!');
        self.Close;
      end;
    end
  else
    begin
      self.errou;
      txt_letra.Text := '';
    end;
  end;

procedure Tfrm_jogo.lbl_dicaMouseEnter(Sender: TObject);
begin
  lbl_dica.Color := clRed;
  lbl_dicaPalavra.Visible := true;
end;

procedure Tfrm_jogo.lbl_dicaMouseLeave(Sender: TObject);
begin
  lbl_dica.Color := clBlack;
  lbl_dicaPalavra.Visible := false;
end;


end.
