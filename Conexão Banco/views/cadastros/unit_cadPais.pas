unit unit_cadPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, obj_pais, unit_consultaGenerica;

type
  Tfrm_cadPais = class(TForm)
    Panel2: TPanel;
    btn_consulta: TSpeedButton;
    txt_codigo: TLabeledEdit;
    txt_descricao: TLabeledEdit;
    Panel1: TPanel;
    btn_cadastrar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_limpar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_cadastrarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_consultaClick(Sender: TObject);
    procedure txt_codigoChange(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
  private
    pais:TPais;
  public
    { Public declarations }
  end;

var
  frm_cadPais: Tfrm_cadPais;

implementation

{$R *.dfm}

procedure Tfrm_cadPais.btn_alterarClick(Sender: TObject);
begin
  pais.setCodigo(StrToInt(txt_codigo.Text));
  pais.setDescricao(txt_descricao.Text);
  pais.update;
  showMessage('Registro atualizado com sucesso !!');
  btn_limpar.Click;
end;

procedure Tfrm_cadPais.btn_cadastrarClick(Sender: TObject);
begin
  pais.setDescricao(txt_descricao.Text);
  pais.insert;
  btn_limpar.Click;
end;

procedure Tfrm_cadPais.btn_consultaClick(Sender: TObject);
var
  teste:integer;
begin
  if(frm_consultaGenerica = nil) then
    begin
      frm_consultaGenerica := Tfrm_consultaGenerica.Create(self);
    end;
  frm_consultaGenerica.setConsulta('select codigo "Código", descricao "Descrição" from pais');
  frm_consultaGenerica.qr_consulta.Open();
  frm_consultaGenerica.ShowModal;
  if(frm_consultaGenerica.ModalResult = 1) then
    begin
      txt_codigo.Text := frm_consultaGenerica.getCodigo;
    end;
  FreeAndNil(frm_consultaGenerica);
end;

procedure Tfrm_cadPais.btn_limparClick(Sender: TObject);
begin
  txt_codigo.Text := '';
  txt_descricao.Text := '';
end;

procedure Tfrm_cadPais.FormCreate(Sender: TObject);
begin
  pais := TPais.Create;
end;

procedure Tfrm_cadPais.FormDestroy(Sender: TObject);
begin
  FreeAndNil(pais);
end;

procedure Tfrm_cadPais.txt_codigoChange(Sender: TObject);
begin
  if(txt_codigo.Text <> '') then
    begin
      pais.setCodigo(StrToInt(txt_codigo.Text));
      pais.select;
      txt_descricao.Text := pais.getDescricao;
      btn_alterar.Enabled := true;
    end
  else
    begin
       btn_alterar.Enabled := false;
    end;
end;

end.
