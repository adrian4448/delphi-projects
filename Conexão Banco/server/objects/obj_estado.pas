unit obj_estado;

interface
  uses
    unit_connection, FireDAC.Comp.Client, System.SysUtils, Vcl.Dialogs, unit_utils;

  type TEstado = class
    private
      codigo:Integer;
      descricao:String;
      sigla:String;

      utils:TUtils;
    public
      function getCodigo : Integer;
      function getDescricao : String;
      function getSigla : String;
      procedure setCodigo(value:Integer);
      procedure setDescricao(value:String);
      procedure setSigla(value:String);

      procedure insert;
      procedure select;
      procedure update;

  end;
implementation

{ TEstado }

function TEstado.getCodigo: Integer;
begin
  result := self.codigo;
end;

function TEstado.getDescricao: String;
begin
  result := self.descricao;
end;

function TEstado.getSigla: String;
begin
  result := self.sigla;
end;

procedure TEstado.insert;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('INSERT INTO estado VALUES (0, :descricao, :sigla)');
  query.ParamByName('descricao').AsString := self.descricao;
  query.ParamByName('sigla').AsString := self.sigla;
  try
    query.ExecSQL;
  except
    on e:exception do
      ShowMessage(e.ToString);
  end;
end;

procedure TEstado.select;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('SELECT * FROM estado ');

  try
    query.Open();
    self.descricao := query.Fields[1].AsString;
    self.sigla := query.Fields[2].AsString;
  Except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure TEstado.setCodigo(value: Integer);
begin
  self.codigo := value;
end;

procedure TEstado.setDescricao(value: String);
begin
  self.descricao := value;
end;

procedure TEstado.setSigla(value: String);
begin
  self.sigla := value;
end;

procedure TEstado.update;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('UPDATE estado SET descricao = :descricao, sigla = :sigla WHERE codigo = :codigo');
  query.ParamByName('descricao').AsString := self.descricao;
  query.ParamByName('sigla').AsString := self.sigla;
  query.ParamByName('codigo').AsInteger := self.codigo;

  try
    query.ExecSQL;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

end.
