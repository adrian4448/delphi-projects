unit obj_Servico;

interface

type TServico = class
  private
    id:Integer;
    descricao:String;
    valor:double;

  public
    procedure setId(id: Integer);
    procedure setDescricao(desc: String);
    procedure setValor(valor: double);

    function getId : Integer;
    function getDescricao : String;
    function getValor : double;
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
