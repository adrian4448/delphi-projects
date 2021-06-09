unit unit_cadConsorcio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, obj_consorcio;

type
  Tfrm_cadConsorcio = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Bevel1: TBevel;
    StaticText1: TStaticText;
    txt_segmento: TLabeledEdit;
    txt_taxaSeguro: TLabeledEdit;
    txt_qtdMeses: TLabeledEdit;
    txt_descPlano: TLabeledEdit;
    txt_valorCarta: TLabeledEdit;
    BitBtn1: TBitBtn;
    txt_estativo: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    consorcio : TConsorcio;
  public
    { Public declarations }
  end;

var
  frm_cadConsorcio: Tfrm_cadConsorcio;

implementation

{$R *.dfm}

procedure Tfrm_cadConsorcio.BitBtn1Click(Sender: TObject);
begin

  if((txt_segmento.Text <> '') and (txt_taxaSeguro.Text <> '' ) and (txt_descPlano.Text <> '') and
    (txt_qtdMeses.Text <> '') and (txt_valorCarta.Text <> '' ) and (txt_estativo.Text <> '')) then
    begin
      consorcio.setNome_segmento(txt_segmento.Text);
      consorcio.setTaxa_seguro(StrToFloat(txt_taxaSeguro.Text));
      consorcio.setDesc_plano(txt_descPlano.Text);
      consorcio.setMeses_plano(StrToInt(txt_qtdMeses.Text));
      consorcio.setValor_carta(StrToFloat(txt_valorCarta.Text));
      consorcio.setEstativo(StrToFloat(txt_estativo.Text));
      consorcio.insert;
      showMessage('Cadastro efetuado com sucesso !!');
    end
  else
    begin
      showMessage('Preencha todos os campos !!');
    end;
end;

procedure Tfrm_cadConsorcio.FormCreate(Sender: TObject);
begin
  consorcio := TConsorcio.Create;
end;

procedure Tfrm_cadConsorcio.FormDestroy(Sender: TObject);
begin
  consorcio.free;
end;

end.
