unit obj_cidade;

interface

  uses
    unit_connection, FireDAC.Comp.Client, System.SysUtils, Vcl.Dialogs, unit_utils;

  type TCidade = class
    private
      codigo:Integer;
      descricao:String;
      cep:String;

      utils:TUtils;
    public
      function getCodigo : Integer;
      function getDescricao : String;
      function getCep : String;
      procedure setCodigo(value:integer);
      procedure setDescricao(value:String);
      procedure setCep(value:String);

      procedure insertCidade;
      procedure deleteCidade;
      procedure selectCidade;
      procedure updateCidade;

  end;

implementation

{ TCidade }

function TCidade.getCep: String;
begin
  result := self.cep;
end;

function TCidade.getCodigo: Integer;
begin
  result := self.codigo;
end;

function TCidade.getDescricao: String;
begin
  result := self.descricao;
end;

procedure TCidade.setCep(value: String);
begin
  self.cep := value
end;

procedure TCidade.setCodigo(value: integer);
begin
  self.codigo := value;
end;

procedure TCidade.setDescricao(value: String);
begin
  self.descricao := value;
end;

procedure TCidade.updateCidade;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('UPDATE cidade SET descricao = :descricao, cep = :cep WHERE codigo = :codigo');
  query.ParamByName('descricao').AsString := self.descricao;
  query.ParamByName('cep').AsString := self.cep;
  query.ParamByName('codigo').AsInteger := self.codigo;

  try
    query.ExecSQL;
  Except
    on e:Exception do
      ShowMessage(e.ToString);
  end;
end;

procedure TCidade.insertCidade;
var
  query:TFDQuery;
begin
   query := utils.createQuery();
   query.SQL.Add('INSERT INTO cidade VALUES (0, :descricao, :cep)');
   query.ParamByName('descricao').AsString := self.descricao;
   query.ParamByName('cep').AsString := self.cep;

   try
    query.ExecSQL;
   except
    on e:Exception do
      ShowMessage('Erro de inserção: ' + e.ToString);
   end;

   query.Free;
end;

procedure TCidade.deleteCidade;
var
  query: TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('DELETE FROM cidade WHERE codigo = :codigo');
  query.ParamByName('codigo').AsInteger := self.codigo;

  try
    query.ExecSQL;
  except
    on e:exception do
      ShowMessage('Erro ao deletar: ' + e.ToString);
  end;

  query.Free;
end;

procedure TCidade.selectCidade;
var
  query: TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('SELECT * FROM cidade WHERE codigo = :codigo');
  query.ParamByName('codigo').AsInteger := self.codigo;

  try
    query.Open;

    if(not query.IsEmpty) then
      begin
        self.descricao := query.Fields[1].AsString;
        self.cep := query.Fields[2].AsString;
      end;
  except
    on e:Exception do
      ShowMessage('Erro na busca: ' + e.ToString);
  end;
end;

end.
