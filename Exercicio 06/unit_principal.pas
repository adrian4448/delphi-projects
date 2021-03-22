unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, funcionario_service;

type
  Tform_principal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lbl_Codigo: TLabel;
    txt_codigo: TEdit;
    lbl_Salario: TLabel;
    txt_salario: TEdit;
    categoria_group: TRadioGroup;
    btn_cadastrar: TBitBtn;
    btn_resultados: TBitBtn;
    nm_resultados: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    lbl_salarioAntigo: TLabel;
    lbl_salarioNovo: TLabel;
    procedure btn_cadastrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    funcionario_service : TFuncionario_service;
  end;

var
  form_principal: Tform_principal;

implementation

uses obj_funcionario;

{$R *.dfm}

procedure Tform_principal.btn_cadastrarClick(Sender: TObject);
var
  f : TFuncionario;
begin
  if((txt_codigo.Text = '') and (txt_salario.Text = '') and (categoria_group.ItemIndex = -1)) then
    begin
      showMessage('Digite todos os dados do funcionario');
    end
  else
    begin
      f := TFuncionario.Create;
      f.setCodigo(StrToInt(txt_codigo.Text));
      f.setSalarioAntigo(StrToFloat(txt_salario.Text));
      f.setCategoria(categoria_group.ItemIndex);
      funcionario_service.calculaNovoSalario(f);
      ShowMessage('Funcionario cadastrado com sucesso');
      nm_resultados.Lines.Add(format('O funcionario do código: %d  tinha o sálario: %f e com aumento possui o sálario de %f', [f.getCodigo, f.getSalarioAntigo, f.getSalarioAtual]));
      lbl_salarioAntigo.Caption := Format('%f', [StrToFloat(lbl_salarioAntigo.Caption) + f.getSalarioAntigo]);
      lbl_salarioNovo.Caption := Format('%f', [StrToFloat(lbl_salarioNovo.Caption) + f.getSalarioAtual]);
    end;
end;

procedure Tform_principal.FormActivate(Sender: TObject);
begin
  self.funcionario_service := TFuncionario_service.create;
end;

procedure Tform_principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(funcionario_service);
end;

end.
