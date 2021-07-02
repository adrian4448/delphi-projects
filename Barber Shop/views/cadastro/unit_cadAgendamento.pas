unit unit_cadAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Buttons;

type
  Tfrm_cadAgendamento = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    lkp_cliente: TDBLookupComboBox;
    lbl_titulo: TLabel;
    lbl_cliente: TLabel;
    lbl_servico: TLabel;
    Label3: TLabel;
    lkp_servico: TDBLookupComboBox;
    lkp_barbeiro: TDBLookupComboBox;
    lbl_Valor: TLabel;
    lbl_horario: TLabel;
    txt_data: TMaskEdit;
    btn_cadastrar: TBitBtn;
    btn_limpar: TBitBtn;
    txt_valor: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_cadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadAgendamento: Tfrm_cadAgendamento;

implementation

{$R *.dfm}

uses data_module, obj_Cliente, obj_Servico, obj_Usuario, obj_Agendamento;

procedure Tfrm_cadAgendamento.btn_cadastrarClick(Sender: TObject);
var
  cliente: TCliente;
  barbeiro: TUsuario;
  servico: TServico;
  agendamento: TAgendamento;
begin

  cliente := TCliente.Create;
  barbeiro := TUsuario.Create;
  servico := TServico.Create;
  agendamento := TAgendamento.Create;

  cliente.setId(lkp_cliente.KeyValue);
  barbeiro.setId(lkp_barbeiro.KeyValue);
  servico.setId(lkp_servico.KeyValue);

  agendamento.setCliente(cliente);
  agendamento.setServico(servico);
  agendamento.setBarbeiro(barbeiro);
  agendamento.setValor(StrToFloat(txt_valor.Text));
  agendamento.setData(StrToDateTime(txt_data.Text));

  agendamento.insert;

  FreeAndNil(cliente);
  FreeAndNil(barbeiro);
  FreeAndNil(servico);
  FreeAndNil(agendamento);

  ShowMessage('Agendamento realizado com sucesso !!');
end;

procedure Tfrm_cadAgendamento.FormCreate(Sender: TObject);
begin
  data_module.dm_connection.query_cliente.Open();
  data_module.dm_connection.query_usuario.Open();
  data_module.dm_connection.query_servico.Open();
end;

end.
