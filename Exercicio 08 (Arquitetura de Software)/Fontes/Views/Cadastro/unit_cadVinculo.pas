unit unit_cadVinculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, obj_consorcio, obj_endereco, obj_pessoa, unit_connect;

type
  Tfrm_cadVinculo = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    lbl_title: TLabel;
    cbx_pessoa: TDBLookupComboBox;
    cbx_consorcio: TDBLookupComboBox;
    btn_concluir: TButton;
    procedure btn_concluirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    consorcio: TConsorcio;
  public
    { Public declarations }
  end;

var
  frm_cadVinculo: Tfrm_cadVinculo;

implementation

{$R *.dfm}

procedure Tfrm_cadVinculo.btn_concluirClick(Sender: TObject);
begin
  consorcio.setId(StrToInt(cbx_consorcio.KeyValue));
  consorcio.vincularPessoaFisica(StrToInt(cbx_pessoa.KeyValue));
end;

procedure Tfrm_cadVinculo.FormCreate(Sender: TObject);
begin
  data_connection.qr_pessoa.Open();
  data_connection.qr_consorcio.Open();
  self.consorcio := TConsorcio.Create;
end;

procedure Tfrm_cadVinculo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(consorcio);
end;

end.
