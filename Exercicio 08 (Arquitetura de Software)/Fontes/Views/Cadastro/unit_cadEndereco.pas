unit unit_cadEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, obj_endereco,
  Vcl.DBCtrls;

type
  Tfrm_cadEndereco = class(TForm)
    Panel1: TPanel;
    txt_rua: TLabeledEdit;
    txt_bairro: TLabeledEdit;
    txt_cidade: TLabeledEdit;
    txt_cep: TLabeledEdit;
    txt_estado: TLabeledEdit;
    btn_cadastrar: TBitBtn;
    txt_numero: TLabeledEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    cbx_pessoa: TDBLookupComboBox;
    procedure txt_cepExit(Sender: TObject);
    procedure btn_cadastrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    endereco : TEndereco;
  public
    { Public declarations }
  end;

var
  frm_cadEndereco: Tfrm_cadEndereco;

implementation

{$R *.dfm}

uses unit_apiCep, REST.Json, System.JSON, unit_connect;

procedure Tfrm_cadEndereco.btn_cadastrarClick(Sender: TObject);
var
  idPessoa : Integer;
begin
  if((txt_rua.Text <> '') and (txt_bairro.Text <> '') and (txt_cidade.Text <> '') and (txt_estado.Text <> '')) then
    begin
      endereco.setLogradouro(txt_rua.Text);
      endereco.setBairro(txt_bairro.Text);
      endereco.setCidade(txt_cidade.Text);
      endereco.setEstado(txt_estado.Text);
      endereco.setNumeroRua(StrToInt(txt_numero.Text));
      endereco.Insert;

      idPessoa := StrToInt(cbx_pessoa.KeyValue);
      self.endereco.ligarPessoaFisica(idPessoa);
    end;
end;

procedure Tfrm_cadEndereco.txt_cepExit(Sender: TObject);
var
  ObjetoJSON : TJSONObject;
begin
  if(txt_cep.text <> '') then
    begin
      data_api.api_CEP.BaseURL := 'http://viacep.com.br/ws/' + txt_cep.Text + '/json';
      data_api.api_CEP_request.Execute;
      if(data_api.api_response.Content <> '') then
        begin
          ObjetoJSON := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(data_api.api_response.Content), 0) as TJSONObject;
          txt_rua.Text := ObjetoJSON.GetValue('logradouro').Value;
          txt_bairro.Text := ObjetoJSON.GetValue('bairro').Value;
          txt_cidade.Text := ObjetoJSON.GetValue('localidade').Value;
          txt_estado.Text := ObjetoJSON.GetValue('uf').Value;
        end;
    end;
end;

procedure Tfrm_cadEndereco.FormActivate(Sender: TObject);
begin
  endereco := TEndereco.create;
  data_connection.qr_consorcio.Open();
  data_connection.qr_pessoa.Open();
end;

end.
