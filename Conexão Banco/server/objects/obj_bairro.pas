unit obj_bairro;

interface

  uses
  unit_connection, FireDAC.Comp.Client, System.SysUtils, Vcl.Dialogs, unit_utils;

  type TBairro = class
    private
      codigo:integer;
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

{ TBairro }

function TBairro.getCodigo: Integer;
begin
  result := self.codigo;
end;

function TBairro.getDescricao: String;
begin
  result := self.descricao;
end;

procedure TBairro.select;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('SELECT * FROM bairro WHERE codigo = :codigo');
  query.ParamByName('codigo').AsInteger := self.codigo;

  try
    query.Open();
    self.descricao := query.Fields[1].AsString;
  except
    on e:Exception do
      showMessage(e.ToString);

  end;
end;

procedure TBairro.setCodigo(value: Integer);
begin
  self.codigo := value;
end;

procedure TBairro.setDescricao(value: String);
begin
  self.descricao := value;
end;

procedure TBairro.update;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('UPDATE bairro set descricao = :descricao WHERE codigo = :codigo');
  query.ParamByName('descricao').AsString := self.descricao;
  query.ParamByName('codigo').AsInteger := self.codigo;

  try
    query.ExecSQL;
  except
    on e:Exception do
      showMessage(e.ToString);

  end;
end;

procedure TBairro.insert;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('INSERT INTO bairro (codigo,descricao) VALUES (0,:descricao)');
  query.ParamByName('descricao').AsString := self.descricao;
  try
    query.ExecSQL;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

end.
