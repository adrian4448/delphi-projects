unit unit_visuGenerica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, obj_Utils, DBCommon;

type
  Tfrm_visuGenerica = class(TForm)
    Panel1: TPanel;
    grid_consulta: TDBGrid;
    Deletar: TBitBtn;
    LabeledEdit1: TLabeledEdit;
    data_source: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure data_sourceUpdateData(Sender: TObject);
  private
    utils : TUtils;
    qrSql : String;
  public
    procedure setQuery(sql:String);
  end;

var
  frm_visuGenerica: Tfrm_visuGenerica;

implementation

{$R *.dfm}

uses data_module;

procedure Tfrm_visuGenerica.data_sourceUpdateData(Sender: TObject);
var
  query:TFDQuery;
begin
  utils.criarQuery(query);
  query.SQL.Add('UPDATE ');
  query.SQL.Add(GetTableNameFromQuery(data_module.dm_connection.query_generica.SQL.Text));
  query.SQL.Add(' SET ' + grid_consulta.Columns[grid_consulta.SelectedField.Index].FieldName + ' = :value');
  query.SQL.Add('WHERE id =  ' + grid_consulta.Columns[0].Field.AsString);
  query.ParamByName('value').AsString :=  grid_consulta.SelectedField.Text;

  try
    query.ExecSQL;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure Tfrm_visuGenerica.DeletarClick(Sender: TObject);
var
  query:TFDQuery;
begin
  utils.criarQuery(query);
  query.SQL.Add('DELETE FROM ');
  query.SQL.Add(GetTableNameFromQuery(data_module.dm_connection.query_generica.SQL.Text));
  query.SQL.Add('WHERE id = :id');
  query.ParamByName('id').AsInteger := StrToInt(grid_consulta.Columns[0].Field.AsString);

  try
    query.ExecSQL;
    data_module.dm_connection.query_generica.Refresh;
    grid_consulta.Refresh;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure Tfrm_visuGenerica.FormCreate(Sender: TObject);
begin
  data_module.dm_connection.query_generica.Open();
end;

procedure Tfrm_visuGenerica.setQuery(sql: String);
begin
  data_module.dm_connection.query_generica.SQL.Clear;
  data_module.dm_connection.query_generica.SQL.Add(sql);
end;

end.
