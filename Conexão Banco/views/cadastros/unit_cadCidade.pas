unit unit_cadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,obj_cidade,
  Vcl.Buttons, unit_consultaGenerica,FireDAC.Comp.Client,FireDAC.DApt, unit_utils;

type
  Tfrm_cadCidade = class(TForm)
    panelForm: TPanel;
    panelButtons: TPanel;
    txt_codigo: TLabeledEdit;
    txt_descricao: TLabeledEdit;
    txt_cep: TMaskEdit;
    lbl_cep: TLabel;
    btn_salvar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_limpar: TBitBtn;
    btn_consulta: TSpeedButton;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure txt_codigoChange(Sender: TObject);
    procedure btn_consultaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
  private
    cidade : TCidade;
  public
    { Public declarations }
  end;

var
  frm_cadCidade: Tfrm_cadCidade;

implementation

{$R *.dfm}

procedure Tfrm_cadCidade.btn_alterarClick(Sender: TObject);
begin
  cidade.setCodigo(strToInt(txt_codigo.Text));
  cidade.setDescricao(txt_descricao.Text);
  cidade.setCep(txt_cep.Text);
  cidade.updateCidade;
  showMessage('Registro atualizado com sucesso !');
  btn_limpar.Click;
end;

procedure Tfrm_cadCidade.btn_consultaClick(Sender: TObject);
begin
  if(frm_consultaGenerica = nil) then
    begin
      frm_consultaGenerica := Tfrm_consultaGenerica.Create(self);
    end;
  frm_consultaGenerica.setConsulta(' SELECT codigo "Código", descricao "Descrição", cep "CEP" FROM cidade ');
  frm_consultaGenerica.qr_consulta.Open;
  frm_consultaGenerica.showModal;
  if(frm_consultaGenerica.ModalResult = 1) then
    begin
      txt_codigo.Text := frm_consultaGenerica.getCodigo;
    end;
  FreeAndNil(frm_consultaGenerica);
end;

procedure Tfrm_cadCidade.btn_limparClick(Sender: TObject);
begin
  txt_codigo.Text := '';
  txt_descricao.Text := '';
  txt_cep.Text := '';
end;

procedure Tfrm_cadCidade.btn_salvarClick(Sender: TObject);
begin
  cidade.setDescricao(txt_descricao.Text);
  cidade.setCep(txt_cep.Text);
  cidade.insertCidade;
  btn_limpar.Click;
end;

procedure Tfrm_cadCidade.FormActivate(Sender: TObject);
begin
  cidade := TCidade.Create;
end;

procedure Tfrm_cadCidade.FormDestroy(Sender: TObject);
begin
  FreeAndNil(cidade);
end;

procedure Tfrm_cadCidade.txt_codigoChange(Sender: TObject);
begin
  if(txt_codigo.Text <> '') then
    begin
      cidade.setCodigo(strToInt(txt_codigo.Text));
      cidade.selectCidade;
      txt_descricao.Text := cidade.getDescricao;
      txt_cep.Text := cidade.getCep;
      btn_alterar.Enabled := true;
    end
  else
    begin
      btn_alterar.Enabled := false;
    end;
end;

end.
