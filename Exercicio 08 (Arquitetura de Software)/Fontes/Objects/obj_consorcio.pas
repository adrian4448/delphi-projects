unit obj_consorcio;

interface
  uses
    FireDAC.Comp.Client, Data.DB, Vcl.Dialogs, System.SysUtils ;

  type TConsorcio = class
    private
      id : Integer;
      nome_segmento: String;
      taxa_seguro: real;
      desc_plano: String;
      meses_plano: Integer;
      valor_carta: real;
      estativo : real;
    public
      function getNome_segmento : String;
      function getTaxa_seguro : real;
      function getDesc_plano : String;
      function getMeses_plano : Integer;
      function getValor_carta : real;
      function getEstativo : real;
      function getId : Integer;

      procedure setNome_segmento(value:String);
      procedure setTaxa_seguro(value:real);
      procedure setDesc_plano(value:String);
      procedure setMeses_plano(value:Integer);
      procedure setValor_carta(value:real);
      procedure setEstativo(value:real);
      procedure setId(value:Integer);

      procedure insert;
      procedure vincularPessoaFisica(value : Integer);
  end;

implementation

{ TConsorcio }

uses unit_connect;

function TConsorcio.getDesc_plano: String;
begin
  result := self.desc_plano;
end;

function TConsorcio.getEstativo: real;
begin
  result := self.estativo;
end;

function TConsorcio.getId: Integer;
begin
  result := self.id;
end;

function TConsorcio.getMeses_plano: Integer;
begin
  result := self.meses_plano;
end;

function TConsorcio.getNome_segmento: String;
begin
  result := self.nome_segmento;
end;

function TConsorcio.getTaxa_seguro: real;
begin
  result := self.taxa_seguro;
end;

function TConsorcio.getValor_carta: real;
begin
  result := self.valor_carta;
end;

procedure TConsorcio.setDesc_plano(value: String);
begin
  self.desc_plano := value;
end;

procedure TConsorcio.setEstativo(value: real);
begin
  self.estativo := value;
end;

procedure TConsorcio.setId(value: Integer);
begin
  self.id := value;
end;

procedure TConsorcio.setMeses_plano(value: Integer);
begin
  self.meses_plano := value;
end;

procedure TConsorcio.setNome_segmento(value: String);
begin
  self.nome_segmento := value;
end;

procedure TConsorcio.setTaxa_seguro(value: real);
begin
  self.taxa_seguro := value;
end;

procedure TConsorcio.setValor_carta(value: real);
begin
  self.valor_carta := value;
end;

procedure TConsorcio.vincularPessoaFisica(value: Integer);
var
  query:TFDQuery;
begin
  query := TFDQuery.Create(nil);
  query.Connection := data_connection.consorcio_con;
  query.SQL.Clear;
  query.SQL.Add('INSERT INTO dtbs_arq_new.pessoa_consorcio VALUES (0, :id_pessoa, :id_plano)');
  query.ParamByName('id_pessoa').AsInteger := value;
  query.ParamByName('id_plano').AsInteger := self.id;

  query.ExecSQL;
end;

procedure TConsorcio.insert;
var
  query:TFDQuery;
begin
  query := TFDQuery.Create(nil);
  query.Connection := data_connection.consorcio_con;
  query.SQL.Clear;
  query.SQL.Add('INSERT INTO consorcio VALUES (:nome_segmento,:taxa_de_seguro,:estaativo,:qtd_mesesPlano,'
               + ':descricaoplano,:valorcarta)');
  query.ParamByName('nome_segmento').AsString := self.nome_segmento;
  query.ParamByName('taxa_de_seguro').AsFloat := self.taxa_seguro;
  query.ParamByName('estaativo').asFloat := self.estativo;
  query.ParamByName('qtd_mesesPlano').AsInteger := self.meses_plano;
  query.ParamByName('descricaoplano').AsString := self.desc_plano;
  query.ParamByName('valorcarta').AsFloat := self.valor_carta;

  try
    query.ExecSQL;
  Except
    on e:Exception do
      showMessage(e.ToString);
  end;

end;

end.
