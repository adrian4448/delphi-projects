unit obj_Agendamento;

interface

uses  FireDAC.Comp.Client,Vcl.Dialogs, System.SysUtils, obj_utils,
      obj_Cliente, obj_Servico, obj_Usuario, System.DateUtils;

type TAgendamento = class
  private
    id:Integer;
    cliente: TCliente;
    servico: TServico;
    barbeiro: TUsuario;
    valor: double;
    data: TDateTime;
    observacao: String;

    utils: TUtils;
  public
    procedure setId(id: Integer);
    procedure setCliente(cliente: TCliente);
    procedure setServico(servico: TServico);
    procedure setValor(valor: double);
    procedure setData(data: TDateTime);
    procedure setObservacao(observacao: String);
    procedure setBarbeiro(barbeiro: TUsuario);

    function getId : Integer;
    function getCliente: TCliente;
    function getServico: TServico;
    function getValor : double;
    function getData : TDateTime;
    function getObservacao : string;
    function getBarbeiro : TUsuario;

    procedure insert;
    function horarioConflitante : Boolean;

end;

implementation

{ TAgendamento }

function TAgendamento.getBarbeiro: TUsuario;
begin
  result := self.barbeiro;
end;

function TAgendamento.getCliente: TCliente;
begin
  result := self.cliente;
end;

function TAgendamento.getData: TDateTime;
begin
  result := self.data;
end;

function TAgendamento.getId: Integer;
begin
  result := self.id;
end;

function TAgendamento.getObservacao: string;
begin
  result := self.observacao;
end;

function TAgendamento.getServico: TServico;
begin
  result := self.servico;
end;

function TAgendamento.getValor: double;
begin
  result := self.valor;
end;

function TAgendamento.horarioConflitante: Boolean;
var
  query : TFDQuery;
begin
  result := false;
  utils.criarQuery(query);
  query.SQL.Add('SELECT count(*) FROM agendamento WHERE data between :dataMenosUmaHora and :dataMaisUmaHora and barbeiro = :barbeiro');
  query.ParamByName('dataMenosUmaHora').AsDateTime := IncMinute(self.data, -60);
  query.ParamByName('dataMaisUmaHora').AsDateTime := IncMinute(self.data, 60);
  query.ParamByName('barbeiro').AsInteger := self.barbeiro.getId;

  try
    query.Open();
    if(query.Fields[0].AsInteger > 0) then
      begin
        result := true;
      end;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure TAgendamento.insert;
var
  query: TFDQuery;
begin
  utils.criarQuery(query);
  query.SQL.Add('INSERT INTO agendamento ( cliente,servico,barbeiro,valor,data )VALUES (:cliente, :servico, :barbeiro, :valor, :data)');

  query.ParamByName('cliente').AsInteger := self.cliente.getId;
  query.ParamByName('servico').AsInteger := self.servico.getId;
  query.ParamByName('barbeiro').AsInteger := self.barbeiro.getId;
  query.ParamByName('valor').AsFloat := self.valor;
  query.ParamByName('data').AsDateTime := self.data;

  try
    query.ExecSQL
  except
    on e:Exception do
      showMessage(e.ToString);
  end;

end;

procedure TAgendamento.setBarbeiro(barbeiro: TUsuario);
begin
  self.barbeiro := barbeiro;
end;

procedure TAgendamento.setCliente(cliente: TCliente);
begin
  self.cliente := cliente;
end;

procedure TAgendamento.setData(data: TDateTime);
begin
  self.data := data;
end;

procedure TAgendamento.setId(id: Integer);
begin
  self.id := id;
end;

procedure TAgendamento.setObservacao(observacao: String);
begin
  self.observacao := observacao;
end;

procedure TAgendamento.setServico(servico: TServico);
begin
  self.servico := servico;
end;

procedure TAgendamento.setValor(valor: double);
begin
  self.valor := valor;
end;

end.
