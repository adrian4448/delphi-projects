unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, pessoa_service;

type
  Tform_principal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    result_group: TRadioGroup;
    btn_enviar: TButton;
    btn_visualizar: TButton;
    Label1: TLabel;
    txt_Idade: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_enviarClick(Sender: TObject);
    procedure btn_visualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    pessoa_Service : TPessoa_Service;
  end;

var
  form_principal: Tform_principal;

implementation

uses
unit_resultado,obj_pessoa;

{$R *.dfm}

procedure Tform_principal.btn_enviarClick(Sender: TObject);
var
  p : TPessoa;
begin
  if((result_group.ItemIndex = -1) and (txt_Idade.Text = '')) then
    begin
      showMessage('Preencha todos os campos !');
    end
  else
    begin
      p := TPessoa.Create;
      p.setIdade(StrToInt(txt_Idade.Text));
      p.setSatisfacao(result_group.ItemIndex);
      pessoa_Service.addPessoa(p);
      txt_Idade.Text := '';
      result_group.ItemIndex := -1;
    end;
end;

procedure Tform_principal.btn_visualizarClick(Sender: TObject);
begin
  if(form_resultado = nil) then
    begin
      form_resultado := Tform_resultado.Create(self);
    end;
  form_resultado.ShowModal;
  FreeAndNil(form_resultado);
end;

procedure Tform_principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(pessoa_Service);
end;

procedure Tform_principal.FormCreate(Sender: TObject);
begin
  self.pessoa_Service := TPessoa_Service.Create;
end;

end.
