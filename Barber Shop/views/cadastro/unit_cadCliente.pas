unit unit_cadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, obj_Cliente, Vcl.Mask, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, obj_Utils;

type
  Tfrm_cadCliente = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    lbl_titulo: TLabel;
    txt_nome: TLabeledEdit;
    btn_cadastrar: TBitBtn;
    txt_email: TLabeledEdit;
    btn_limpar: TBitBtn;
    txt_telefone: TMaskEdit;
    Label1: TLabel;
    procedure btn_cadastrarClick(Sender: TObject);
  private
    utils: TUtils;
  public
    { Public declarations }
  end;

var
  frm_cadCliente: Tfrm_cadCliente;

implementation

{$R *.dfm}

procedure Tfrm_cadCliente.btn_cadastrarClick(Sender: TObject);
var
  cliente: TCliente;
begin
   if(not utils.camposIsNull(self)) then
    begin
      cliente := TCliente.Create;
      cliente.setNome(txt_nome.Text);
      cliente.setTelefone(txt_telefone.Text);
      cliente.setEmail(txt_email.Text);
      cliente.insert;
      ShowMessage('Cliente cadastrado com sucesso!!');
      FreeAndNil(cliente);
    end
   else
    begin
      ShowMessage('Preencha todos os campos!!');
    end;
end;


end.
