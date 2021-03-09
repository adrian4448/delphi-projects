unit unit_cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,unit_principal;

type
  Tform_cadastro = class(TForm)
    pnl_buttons: TPanel;
    pnl_form: TPanel;
    lblIdade: TLabel;
    lblGrau: TLabel;
    cbxGrau: TComboBox;
    txtIdade: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadastro: Tform_cadastro;
implementation

{$R *.dfm}

uses classe_Pessoa;

procedure Tform_cadastro.BitBtn1Click(Sender: TObject);
var
  pessoa : TPessoa;
begin
    if(txtIdade.Text = '') then
      begin
        showMessage('Campo idade é obrigatorio!');
        txtIdade.setFocus;
        exit;
      end;
    if(cbxGrau.itemIndex = 0) then
      begin
        showMessage('Selecione o grau de escolaridade!');
        cbxGrau.setFocus;
        exit;
      end;

    pessoa := TPessoa.Create();
    pessoa.setIdade(StrToInt(txtIdade.Text));
    pessoa.setGrau(cbxGrau.ItemIndex);
    form_menu.ServicoPessoa.addPessoa(pessoa);

    self.BitBtn2Click(bitBtn2);
end;

procedure Tform_cadastro.BitBtn2Click(Sender: TObject);
begin
    txtIdade.Clear;
    cbxGrau.ItemIndex := 0;
    txtIdade.SetFocus;
end;

procedure Tform_cadastro.BitBtn3Click(Sender: TObject);
begin
    close;
end;

end.
