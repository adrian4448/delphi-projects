unit obj_Agendamento;

interface

uses obj_Barbeiro, obj_Cliente, obj_Servico;

type TAgendamento = class
  private
    id:Integer;
    cliente: TCliente;
    servico: TServico;
    barbeiro: TBarbeiro;
    valor: double;
    data: TDateTime;
    hora: String;
    observacao: String;
  public
    procedure setId(id: Integer);
    procedure setCliente(cliente: TCliente);
    procedure setServico(servico: TServico);
    procedure setBarbeiro(barbeiro: TBarbeiro);
    procedure setValor(valor: double);
    procedure setData(data: TDateTime);
    procedure setHora(hora: String);
    procedure setObservacao(observacao: String);

    function getId : Integer;
    function getCliente: TCliente;
    function getServico: TServico;
    function getBarbeiro : TBarbeiro;
    function getValor : double;
    function getData : TDateTime;
    function getHora: string;
    function getObservacao: string;
end;

implementation

{ TAgendamento }

function TAgendamento.getBarbeiro: TBarbeiro;
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

function TAgendamento.getHora: string;
begin
  result := self.hora;
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
  result := self.barbeiro;
end;

procedure TAgendamento.setBarbeiro(barbeiro: TBarbeiro);
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

procedure TAgendamento.setHora(hora: String);
begin
  self.hora := hora;
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
