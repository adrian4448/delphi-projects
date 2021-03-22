unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, carro_service, obj_carro, System.DateUtils;

type
  Tform_principal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    txt_placa: TEdit;
    lbl_placa: TLabel;
    lbl_chasi: TLabel;
    txt_chassi: TEdit;
    txt_montadora: TEdit;
    lbl_cor: TLabel;
    cbx_cores: TComboBox;
    btn_cadastrar: TButton;
    btn_resultados: TButton;
    btn_limpar: TButton;
    cbx_ano: TComboBox;
    Label1: TLabel;
    txt_motor: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure btn_resultadosClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_cadastrarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    carro_service : TCarro_Service;
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

uses unit_resultados;

procedure Tform_principal.btn_cadastrarClick(Sender: TObject);
var
  carro : TCarro;
begin
  if((txt_placa.Text = '') and (cbx_ano.Text = '') and (txt_chassi.Text = '') and (txt_montadora.Text = '') and (cbx_cores.ItemIndex = -1)) then
    begin
      ShowMessage('Informe todos os campos !!');
    end
  else
    begin
      carro := TCarro.Create;
      carro.setPlaca(txt_placa.Text);
      carro.setAno(StrToDate('01/01/' + cbx_ano.Text));
      carro.setChassi(txt_chassi.Text);
      carro.setMontadora(txt_montadora.Text);
      carro.setCor(cbx_cores.Text);
      carro.setMotor(txt_motor.Text);
      carro_service.addCarro(carro);
      showMessage('Carro cadastrado com sucesso !!');
      btn_limpar.Click;
    end;
end;

procedure Tform_principal.btn_limparClick(Sender: TObject);
begin
  txt_placa.Text := '';
  cbx_ano.ItemIndex := -1;
  txt_chassi.Text := '';
  txt_montadora.Text := '';
  txt_motor.Text := '';
  cbx_cores.ItemIndex := -1;
end;

procedure Tform_principal.btn_resultadosClick(Sender: TObject);
begin
  if form_resultados = nil then
    begin
      form_resultados := Tform_resultados.Create(self);
    end;
  form_resultados.ShowModal;
  FreeAndNil(form_resultados);
end;

procedure Tform_principal.FormActivate(Sender: TObject);
begin
  self.carro_service := TCarro_Service.Create;
end;

procedure Tform_principal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(self.carro_service);
end;

end.
