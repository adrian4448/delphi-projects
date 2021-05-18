unit obj_rua;

interface
  uses
    unit_connection, FireDAC.Comp.Client, System.SysUtils, Vcl.Dialogs, unit_utils;

  type TRua = class
    private
      codigo:Integer;
      descricao:String;

      utils:TUtils;
    public
      function getCodigo : Integer;
      function getDescricao : String;
      procedure setCodigo(value:Integer);
      procedure setDescricao(value:String);

      procedure insert;
      procedure select;
      procedure update;
  end;

implementation

{ TRua }

function TRua.getCodigo: Integer;
begin
  result := self.codigo;
end;

function TRua.getDescricao: String;
begin
  result := self.descricao;
end;

procedure TRua.insert;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('INSERT INTO rua VALUES (0,:descricao)');
  query.ParamByName('descricao').AsString := self.descricao;

  try
    query.ExecSQL;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure TRua.select;
var
  query:TFDQuery;  
begin
  query := utils.createQuery;
  query.SQL.Add('SELECT * FROM rua');
  try
    query.Open();
    self.descricao := query.Fields[1].AsString;
  Except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure TRua.setCodigo(value: Integer);
begin
  self.codigo := value;
end;

procedure TRua.setDescricao(value: String);
begin
  self.descricao := value;
end;

procedure TRua.update;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('UPDATE rua SET descricao = :descricao WHERE codigo = :codigo');
  query.ParamByName('descricao').AsString := self.descricao;
  query.ParamByName('codigo').AsInteger := self.codigo;

  try
    query.ExecSQL;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

end.
