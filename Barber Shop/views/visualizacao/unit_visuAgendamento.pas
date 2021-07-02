unit unit_visuAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, data_module, obj_Cliente, obj_Servico,
  obj_Usuario, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

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
    procedure FormActivate(Sender: TObject);
    procedure btn_filtrarClick(Sender: TObject);
  private
    sqlWhere : String;
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
          if((self.Components[i] as TMaskEdit).Text <> EmptyStr) then
            begin
              campo := 'data';
              self.sqlWhere := self.sqlWhere + ' AND a.' + campo + ' = ' + (self.Components[i] as TMaskEdit).Text;
            end;
        end;
    end;
  query.SQL.Add(self.sqlWhere);
  query.open();
end;

procedure Tfrm_visuAgendamento.FormActivate(Sender: TObject);
begin
  query.Open();
end;

end.
