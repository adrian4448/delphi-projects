unit unit_visuAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, data_module, obj_Cliente, obj_Servico,
  obj_Usuario, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus, obj_Utils;

type
  Tfrm_visuAgendamento = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    grid_agendamentos: TDBGrid;
    lkp_cliente: TDBLookupComboBox;
    lkp_barbeiro: TDBLookupComboBox;
    lkp_servico: TDBLookupComboBox;
    btn_filtrar: TBitBtn;
    btn_limpar: TBitBtn;
    lbl_cliente: TLabel;
    lbl_servico: TLabel;
    lbl_barbeiro: TLabel;
    lbl_titulo: TLabel;
    query: TFDQuery;
    data_source: TDataSource;
    PopupMenu1: TPopupMenu;
    EnviarEmail1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure btn_filtrarClick(Sender: TObject);
    procedure EnviarEmail1Click(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
  private
    sqlWhere : String;
    utils : TUtils;
  public
    { Public declarations }
  end;

var
  frm_visuAgendamento: Tfrm_visuAgendamento;

implementation

{$R *.dfm}

procedure Tfrm_visuAgendamento.btn_filtrarClick(Sender: TObject);
var
  i,cliente,barbeiro,servico : Integer;
  campo: String;
begin
  self.sqlWhere := StringReplace(query.SQL.Text, sqlWhere, ' ', [rfReplaceAll, rfIgnoreCase]);
  query.SQL.Clear;
  query.SQL.Add(sqlWhere);
  self.sqlWhere := '';
  for I := self.ComponentCount -1 downto 0 do
    begin
      if((self.Components[i] is TDBLookupComboBox) or (self.Components[i] is TMaskEdit)) then
        begin
          if((self.Components[i] as TDBLookupComboBox).Text <> EmptyStr) then
            begin
              campo := (self.Components[i] as TDBLookupComboBox).Name;
              self.sqlWhere := self.sqlWhere + ' AND a.' + Copy(campo, 5, campo.Length) + ' = ' + FloatToStr((self.Components[i] as TDBLookupComboBox).KeyValue);
            end;
        end;
    end;
  query.SQL.Add(self.sqlWhere);
  query.open();
end;

procedure Tfrm_visuAgendamento.btn_limparClick(Sender: TObject);
begin
  utils.limparCampos(self);
end;

procedure Tfrm_visuAgendamento.EnviarEmail1Click(Sender: TObject);
var
  textoEmail, emailCliente: String;
begin
  textoEmail := 'Boa tarde ' + grid_agendamentos.Columns[1].Field.AsString + ' '
                + ' Estamos enviando este email para lembrar do serviço: ' + grid_agendamentos.Columns[3].Field.AsString
                + ' Agendado para o dia: ' + grid_agendamentos.Columns[6].Field.AsString;
  emailCliente := grid_agendamentos.Columns[2].Field.AsString;
  utils.enviarEmail(emailCliente, textoEmail);
end;

procedure Tfrm_visuAgendamento.FormActivate(Sender: TObject);
begin
  dm_connection.query_cliente.Open();
  dm_connection.query_servico.Open();
  dm_connection.query_usuario.Open();
  query.Open();
end;

end.
