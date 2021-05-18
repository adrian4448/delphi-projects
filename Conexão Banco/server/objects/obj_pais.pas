unit obj_pais;

interface
  uses
    unit_connection, FireDAC.Comp.Client, System.SysUtils, Vcl.Dialogs, unit_utils;

  type TPais = class
    private
      codigo:Integer;
      descricao:String;

      utils:TUtils;
    public
      function  getCodigo : Integer;
      function  getDescricao : String;
      procedure setCodigo(value:Integer);
      procedure setDescricao(value:String);

      procedure insert;
      procedure select;
      procedure update;
  end;

implementation

{ TPais }

function TPais.getCodigo: Integer;
begin
  result := self.codigo;
end;

function TPais.getDescricao: String;
begin
  result := self.descricao;
end;

procedure TPais.insert;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.Sql.Add('INSERT INTO pais VALUES (0,:descricao)');
  query.ParamByName('descricao').AsString := self.descricao;

  try
    query.ExecSQL;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure TPais.select;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('SELECT * FROM pais WHERE codigo = :codigo');
  query.ParamByName('codigo').AsInteger := self.codigo;

  try
    query.Open();
    self.descricao := query.Fields[1].AsString;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure TPais.setCodigo(value: Integer);
begin
  self.codigo := value;
end;

procedure TPais.setDescricao(value: String);
begin
  self.descricao := value;
end;

procedure TPais.update;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('UPDATE pais SET descricao = :descricao WHERE codigo = :codigo');
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
