unit unit_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, funcionario_service;

type
  Tform_principal = class(TForm)
    Panel1: TPanel;
    lbl_idade: TLabel;
    txt_idade: TEdit;
    sexo_group: TRadioGroup;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    experiencia_group: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    funcionario_service : TFuncionario_Service;
  end;

var
  form_principal: Tform_principal;

implementation

uses obj_funcionario, unit_resultado;

  {$R *.dfm}

procedure Tform_principal.Button1Click(Sender: TObject);
var
  f : TFuncionario;
begin
  if((sexo_group.ItemIndex = -1) and (experiencia_group.ItemIndex = -1) and (txt_idade.Text = '')) then
    begin
      showMessage('Preencha todos os campos !');
    end
  else
    begin
      f := TFuncionario.Create;
      f.setIdade(StrToInt(txt_Idade.Text));
      f.setSexo(sexo_group.ItemIndex);
      f.setExperiencia(experiencia_group.ItemIndex);
      funcionario_service.addItem(f);
      showMessage('Funcionario cadastrado com sucesso !');
      sexo_group.ItemIndex := -1;
      experiencia_group.ItemIndex := -1;
      txt_idade.Text := '';
    end;
end;

procedure Tform_principal.Button2Click(Sender: TObject);
begin
  if(form_resultados = nil) then
    begin
      form_resultados := TForm_resultados.create(self);
    end;
  form_resultados.ShowModal;
  FreeAndNil(form_resultados);
end;

procedure Tform_principal.FormActivate(Sender: TObject);
begin
  self.funcionario_Service := TFuncionario_Service.Create;
end;

procedure Tform_principal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(self.funcionario_service);
end;

end.
