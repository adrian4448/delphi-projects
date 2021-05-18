unit unit_cadBairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, obj_bairro, unit_consultaGenerica;

type
  Tfrm_cadBairro = class(TForm)
    Panel2: TPanel;
    txt_codigo: TLabeledEdit;
    txt_descricao: TLabeledEdit;
    panelButtons: TPanel;
    btn_salvar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_limpar: TBitBtn;
    btn_consulta: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_consultaClick(Sender: TObject);
    procedure txt_codigoChange(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
  private
    bairro:TBairro;
  public
    { Public declarations }
  end;

var
  frm_cadBairro: Tfrm_cadBairro;

implementation

{$R *.dfm}

procedure Tfrm_cadBairro.btn_alterarClick(Sender: TObject);
begin
  bairro.setCodigo(StrToInt(txt_codigo.Text));
  bairro.setDescricao(txt_descricao.Text);
  bairro.update;
  showMessage('Registro atualizado com sucesso !!');
  btn_limpar.Click;
end;

procedure Tfrm_cadBairro.btn_consultaClick(Sender: TObject);
begin
  if(frm_consultaGenerica = nil) then
    begin
      frm_consultaGenerica := Tfrm_consultaGenerica.Create(self);
    end;
  frm_consultaGenerica.setConsulta('select codigo "Código", descricao "Descrição" from bairro');
  frm_consultaGenerica.qr_consulta.Open();
  frm_consultaGenerica.ShowModal;
  if(frm_consultaGenerica.ModalResult = 1) then
    begin
      txt_codigo.Text := frm_consultaGenerica.getCodigo;
    end;
  FreeAndNil(frm_consultaGenerica);
end;

procedure Tfrm_cadBairro.btn_limparClick(Sender: TObject);
begin
  txt_codigo.Text := '';
  txt_descricao.Text := '';
end;

procedure Tfrm_cadBairro.btn_salvarClick(Sender: TObject);
begin
  bairro.setDescricao(txt_descricao.Text);
  bairro.insert;
  btn_limpar.Click;
end;

procedure Tfrm_cadBairro.FormActivate(Sender: TObject);
begin
  bairro := TBairro.Create;
end;

procedure Tfrm_cadBairro.FormDestroy(Sender: TObject);
begin
  FreeAndNil(bairro);
end;

procedure Tfrm_cadBairro.txt_codigoChange(Sender: TObject);
begin
  if(txt_codigo.Text <> '') then
    begin
      bairro.setCodigo(strToInt(txt_codigo.Text));
      bairro.select;
      txt_descricao.Text := bairro.getDescricao;
      btn_alterar.Enabled := true;
    end
  else
    begin
      btn_alterar.Enabled := false;
    end;
end;

end.
