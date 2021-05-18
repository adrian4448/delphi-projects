unit unit_cadEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons,FireDAC.Comp.Client,FireDAC.DApt,unit_connection,
  Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.Comp.DataSet,obj_pais,obj_estado,obj_cidade,
  obj_bairro,obj_rua, obj_endereco, Vcl.Mask ;

type
  Tfrm_cadEndereco = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    btn_cadastrar: TBitBtn;
    btn_limpar: TBitBtn;
    txt_cep: TMaskEdit;
    lbl_cep: TLabel;
    lbl_pais: TLabel;
    lbl_estado: TLabel;
    lbl_cidade: TLabel;
    lbl_bairro: TLabel;
    lbl_rua: TLabel;
    cbx_pais: TDBLookupComboBox;
    cbx_estado: TDBLookupComboBox;
    cbx_cidade: TDBLookupComboBox;
    cbx_bairro: TDBLookupComboBox;
    cbx_rua: TDBLookupComboBox;
    procedure btn_cadastrarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    endereco:TEndereco;
    pais:TPais;
    estado:TEstado;
    cidade:TCidade;
    bairro:TBairro;
    rua:TRua;
  public
    { Public declarations }
  end;

var
  frm_cadEndereco: Tfrm_cadEndereco;

implementation

{$R *.dfm}

procedure Tfrm_cadEndereco.btn_cadastrarClick(Sender: TObject);
begin
  pais.setCodigo(cbx_pais.KeyValue);
  pais.setDescricao(cbx_pais.KeyField);
  endereco.setPais(pais);

  estado.setCodigo(cbx_estado.KeyValue);
  estado.setDescricao(cbx_estado.KeyField);
  endereco.setEstado(estado);

  cidade.setCodigo(cbx_cidade.KeyValue);
  cidade.setDescricao(cbx_cidade.KeyField);
  endereco.setCidade(cidade);

  bairro.setCodigo(cbx_bairro.KeyValue);
  bairro.setDescricao(cbx_bairro.KeyField);
  endereco.setBairro(bairro);

  rua.setCodigo(cbx_rua.KeyValue);
  rua.setDescricao(cbx_rua.KeyField);
  endereco.setRua(rua);

  endereco.setCep(txt_cep.Text);
  endereco.insert;
  showMessage('Endereço cadastrado com sucesso !!');
  btn_limpar.Click;
end;

procedure Tfrm_cadEndereco.btn_limparClick(Sender: TObject);
begin
  txt_cep.Text := '';
end;

procedure Tfrm_cadEndereco.FormCreate(Sender: TObject);
begin
  endereco := TEndereco.Create;
  pais := TPais.Create;
  estado := TEstado.Create;
  cidade := TCidade.Create;
  bairro := TBairro.Create;
  rua := TRua.Create;

  data_connection.qr_pais.Open();
  data_connection.qr_estado.Open();
  data_connection.qr_cidade.Open();
  data_connection.qr_bairro.Open();
  data_connection.qr_rua.Open();
end;

procedure Tfrm_cadEndereco.FormDestroy(Sender: TObject);
begin
  endereco.Free;
  pais.Free;
  estado.Free;
  cidade.Free;
  bairro.Free;
  rua.Free;
end;

end.
