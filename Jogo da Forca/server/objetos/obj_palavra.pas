unit obj_palavra;

interface

  uses FireDAC.Comp.Client, FireDac.Dapt, System.SysUtils, Vcl.Dialogs;

  type TPalavra = class
    private
      codigo:Integer;
      descricao:String;
      dica:String;
      dificuldade:Integer;
    public
      procedure setCodigo(value:Integer);
      procedure setDescricao(value:String);
      procedure setDificuldade(value:Integer);
      procedure setDica(value:String);

      function getCodigo : Integer;
      function getDescricao : String;
      function getDificuldade : Integer;
      function getDica : String;

      procedure getPalavra(dificuldade:Integer);
  end;

implementation

{ TPalavra }

uses data_module;

function TPalavra.getCodigo: Integer;
begin
  result := self.codigo;
end;

function TPalavra.getDescricao: String;
begin
  result := self.descricao;
end;

function TPalavra.getDica: String;
begin
  result := self.dica;
end;

function TPalavra.getDificuldade: Integer;
begin
  result := self.dificuldade;
end;

procedure TPalavra.getPalavra(dificuldade: Integer);
var
  query:TFDQuery;
begin
  query := TFDQuery.Create(nil);
  query.Connection := DataModule1.con_forca;
  query.SQL.Clear;
  query.SQL.Add('SELECT * FROM palavras WHERE dificuldade = :dificuldade order by RAND() limit 1');
  query.ParamByName('dificuldade').AsInteger := dificuldade;

  try
    query.Open;
    self.codigo := query.FieldByName('codigo').AsInteger;
    self.descricao := query.FieldByName('descricao').AsString;
    self.dica := query.FieldByName('dica').AsString;
    self.dificuldade := dificuldade;
  except
    on e:Exception do
      showMessage(e.toString);
  end;
end;

procedure TPalavra.setCodigo(value: Integer);
begin
  self.codigo := value;
end;

procedure TPalavra.setDescricao(value: String);
begin
  self.descricao := value;
end;

procedure TPalavra.setDica(value: String);
begin
  self.dica := value;
end;

procedure TPalavra.setDificuldade(value: Integer);
begin
  self.dificuldade := value;
end;

end.
