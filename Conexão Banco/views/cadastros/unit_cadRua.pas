unit unit_cadRua;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, obj_rua, unit_consultaGenerica;

type
  Tfrm_cadRua = class(TForm)
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
    rua:TRua;
  public
    { Public declarations }
  end;

var
  frm_cadRua: Tfrm_cadRua;

implementation

{$R *.dfm}

procedure Tfrm_cadRua.btn_alterarClick(Sender: TObject);
begin
  rua.setCodigo(StrToInt(txt_codigo.Text));
  rua.setDescricao(txt_descricao.Text);
  rua.update;
  showMessage('Registro atualizado com sucesso !!');
  btn_limpar.Click;
end;

procedure Tfrm_cadRua.btn_cadastrarClick(Sender: TObject);
begin
  rua.setDescricao(txt_descricao.Text);
  rua.insert;
  btn_limpar.Click;
end;

procedure Tfrm_cadRua.btn_consultaClick(Sender: TObject);
begin
  if(frm_consultaGenerica = nil) then
    begin
      frm_consultaGenerica := Tfrm_consultaGenerica.Create(self);
    end;
  frm_consultaGenerica.setConsulta('select codigo "Código", descricao "Descrição" from rua');
  frm_consultaGenerica.qr_consulta.Open();
  frm_consultaGenerica.ShowModal;
  if(frm_consultaGenerica.ModalResult = 1) then
    begin
      txt_codigo.Text := frm_consultaGenerica.getCodigo;
    end;
  FreeAndNil(frm_consultaGenerica);
end;

procedure Tfrm_cadRua.btn_limparClick(Sender: TObject);
begin
  txt_codigo.Text := '';
  txt_descricao.Text := '';
end;

procedure Tfrm_cadRua.FormCreate(Sender: TObject);
begin
  rua := TRua.create;
end;

procedure Tfrm_cadRua.FormDestroy(Sender: TObject);
begin
  FreeAndNil(rua);
end;

procedure Tfrm_cadRua.txt_codigoChange(Sender: TObject);
begin
  if(txt_codigo.Text <> '') then
    begin
      rua.setCodigo(StrToInt(txt_codigo.Text));
      rua.select;
      txt_descricao.Text := rua.getDescricao;
      btn_alterar.Enabled := true;
    end
  else
    begin
      btn_alterar.Enabled := false;
    end;
end;

end.
