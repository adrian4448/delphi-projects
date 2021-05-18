unit unit_cadEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, obj_estado, unit_consultaGenerica;

type
  Tfrm_cadEstado = class(TForm)
    panelButtons: TPanel;
    btn_salvar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_limpar: TBitBtn;
    Panel1: TPanel;
    txt_codigo: TLabeledEdit;
    txt_descricao: TLabeledEdit;
    txt_sigla: TLabeledEdit;
    btn_consulta: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_consultaClick(Sender: TObject);
    procedure txt_codigoChange(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
  private
    estado:TEstado;
  public
    { Public declarations }
  end;

var
  frm_cadEstado: Tfrm_cadEstado;

implementation

{$R *.dfm}

procedure Tfrm_cadEstado.btn_alterarClick(Sender: TObject);
begin
  estado.setCodigo(StrToInt(txt_codigo.Text));
  estado.setDescricao(txt_descricao.Text);
  estado.setSigla(txt_sigla.Text);
  estado.update;
  showMessage('Registro atualizado com sucesso !!');
  btn_limpar.Click;
end;

procedure Tfrm_cadEstado.btn_consultaClick(Sender: TObject);
begin
  if(frm_consultaGenerica = nil) then
    begin
      frm_consultaGenerica := Tfrm_consultaGenerica.Create(self);
    end;
  frm_consultaGenerica.setConsulta('select codigo "Código", descricao "descricao", sigla "Sigla" from estado');
  frm_consultaGenerica.qr_consulta.Open();
  frm_consultaGenerica.ShowModal;
  if(frm_consultaGenerica.ModalResult = 1) then
    begin
      txt_codigo.Text := frm_consultaGenerica.getCodigo;
    end;
  FreeAndNil(frm_consultaGenerica);
end;

procedure Tfrm_cadEstado.btn_limparClick(Sender: TObject);
begin
  txt_codigo.Text := '';
  txt_descricao.Text := '';
  txt_sigla.Text := '';
end;

procedure Tfrm_cadEstado.btn_salvarClick(Sender: TObject);
begin
  estado.setDescricao(txt_descricao.Text);
  estado.setSigla(txt_sigla.Text);
  estado.insert;
  btn_limpar.Click;
end;

procedure Tfrm_cadEstado.FormCreate(Sender: TObject);
begin
  estado := TEstado.Create;
end;

procedure Tfrm_cadEstado.FormDestroy(Sender: TObject);
begin
  FreeAndNil(estado);
end;

procedure Tfrm_cadEstado.txt_codigoChange(Sender: TObject);
begin
  if(txt_codigo.Text <> '') then
    begin
      estado.setCodigo(strToInt(txt_codigo.Text));
      estado.select;
      txt_descricao.Text := estado.getDescricao;
      txt_sigla.Text := estado.getSigla;
      btn_alterar.Enabled := true;
    end
  else
    begin
      btn_alterar.Enabled := false;
    end;
end;

end.
