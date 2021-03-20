unit unit_principal;

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
    Panel2: TPanel;
    btn_cadastrar: TButton;
    btn_resultado: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    funcionario_service : TFuncionario_service;
  end;

var
  form_principal: Tform_principal;

implementation

uses obj_funcionario;

procedure Tform_principal.FormActivate(Sender: TObject);
begin
  self.funcionario_Service := TFuncionario_Service.Create;
end;

procedure Tform_principal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(self.funcionario_service);
end;

end.
