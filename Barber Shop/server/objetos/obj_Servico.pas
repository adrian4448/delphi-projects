unit obj_Servico;

interface

uses FireDAC.Comp.Client, obj_utils, Vcl.Dialogs, System.SysUtils;

type TServico = class
  private
    id:Integer;
    descricao:String;
    valor:double;
    utils: TUtils;
  public
    procedure setId(id: Integer);
    procedure setDescricao(desc: String);
    procedure setValor(valor: double);

    function getId : Integer;
    function getDescricao : String;
    function getValor : double;
    procedure insert;
end;

implementation

{ TServico }

function TServico.getDescricao: String;
begin
  result := self.descricao;
end;

function TServico.getId: Integer;
begin
  result := self.id;
end;

function TServico.getValor: double;
begin
  result := self.valor;
end;

procedure TServico.insert;
var
  query: TFDQuery;
begin
  utils.criarQuery(query);
  query.SQL.Add('INSERT INTO servico VALUES (0, :descricao, :valor)');
  query.ParamByName('descricao').AsString := self.descricao;
  query.ParamByName('valor').AsFloat := self.valor;

  try
    query.ExecSQL;
  except
    on e: Exception do
      ShowMessage(e.ToString);
  end;
end;

procedure TServico.setDescricao(desc: String);
begin
   self.descricao := desc;
end;

procedure TServico.setId(id: Integer);
begin
  self.id := id;
end;

procedure TServico.setValor(valor: double);
begin
  self.valor := valor;
end;

end.
