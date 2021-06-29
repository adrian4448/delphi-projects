unit unit_cadServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, obj_Servico, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, obj_Utils;

type
  Tfrm_CadServicos = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    lbl_titulo: TLabel;
    txt_descricao: TLabeledEdit;
    txt_valor: TLabeledEdit;
    btn_cadastrar: TBitBtn;
    btn_limpar: TBitBtn;
    procedure btn_cadastrarClick(Sender: TObject);
  private
    utils:TUtils;
  public
    { Public declarations }
  end;

var
  frm_CadServicos: Tfrm_CadServicos;

implementation

{$R *.dfm}

procedure Tfrm_CadServicos.btn_cadastrarClick(Sender: TObject);
var
  servico: TServico;
begin
   if(not utils.camposIsNull(self)) then
    begin
      servico := TServico.Create;
      servico.setDescricao(txt_descricao.Text);
      servico.setValor(StrToFloat(txt_valor.Text));
      servico.insert;
      ShowMessage('Serviço cadastrado com sucesso!!');
      FreeAndNil(servico);
    end
   else
    begin
      ShowMessage('Preencha todos os campos!!');
    end;
end;



end.
