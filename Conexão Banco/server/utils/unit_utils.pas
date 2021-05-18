unit unit_utils;

interface

  uses
    unit_connection, FireDAC.Comp.Client,FireDAC.DApt, System.SysUtils, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids;

  type TUtils = class
    private

    public
      function createQuery : TFDQuery;
  end;



implementation

{ TUtils }

function TUtils.createQuery : TFDQuery;
var
  query : TFDQuery;
begin
  query := TFDQuery.Create(nil);
  query.Connection := data_connection.fdEndereco;
  query.SQL.Clear;
  result := query;
end;

end.
