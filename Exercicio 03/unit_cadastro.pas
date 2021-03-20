unit unit_cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tform_cadastro = class(TForm)
    pnl_buttons: TPanel;
    pnl_inputs: TPanel;
    btn_cadastrar: TBitBtn;
    btn_limpar: TBitBtn;
    btn_cancelar: TBitBtn;
    group_sexo: TRadioGroup;
    group_cor_olho: TRadioGroup;
    group_cor_cabelo: TRadioGroup;
    lblI_dade: TLabel;
    txt_idade: TEdit;
    procedure btn_cadastrarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadastro: Tform_cadastro;

implementation

{$R *.dfm}

uses unit_principal, objeto_habitante;

procedure Tform_cadastro.btn_cadastrarClick(Sender: TObject);
var
  habitante : THabitante;
begin
  if((group_cor_olho.ItemIndex = -1) or (group_cor_cabelo.ItemIndex = -1) or (group_sexo.ItemIndex = -1) or (txt_idade.Text = '')) then
    begin
      showMessage('Verifique se você preencheu/selecionou todos os campos');
    end
  else
    begin
      habitante := THabitante.Create;
      habitante.setSexo(group_sexo.ItemIndex);
      habitante.setCorOlhos(group_cor_olho.ItemIndex);
      habitante.setCorCabelos(group_cor_cabelo.ItemIndex);
      habitante.setIdade(StrToInt(txt_idade.Text));
      form_principal.habitante_service.addHabitante(habitante);
      btn_limpar.Click;
    end;

end;

procedure Tform_cadastro.btn_cancelarClick(Sender: TObject);
begin
  self.Close;
end;

procedure Tform_cadastro.btn_limparClick(Sender: TObject);
begin
  group_cor_olho.ItemIndex := -1;
  group_cor_cabelo.ItemIndex := -1;
  group_sexo.ItemIndex := -1;
  txt_idade.Clear;
end;

end.
