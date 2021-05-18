unit obj_endereco;

interface

  uses obj_bairro, obj_cidade, obj_estado, obj_pais, obj_rua, unit_utils, FireDAC.Comp.Client, System.SysUtils, Vcl.Dialogs;

  type TEndereco = class
    private
      cep:String;
      pais:TPais;
      estado:TEstado;
      cidade:TCidade;
      bairro:TBairro;
      rua:TRua;

      utils:TUtils;
    public
      procedure setCep(value:String);
      procedure setPais(value:TPais);
      procedure setEstado(value:TEstado);
      procedure setCidade(value:TCidade);
      procedure setBairro(value:TBairro);
      procedure setRua(value:TRua);

      function getCep : String;
      function getPais : TPais;
      function getEstado : TEstado;
      function getCidade : TCidade;
      function getBairro : TBairro;
      function getRua : TRua;

      procedure insert;
  end;

implementation



{ TEndereco }

function TEndereco.getBairro: TBairro;
begin
  result := self.bairro;
end;

function TEndereco.getCep: String;
begin
  result := self.cep;
end;

function TEndereco.getCidade: TCidade;
begin
  result := self.cidade;
end;

function TEndereco.getEstado: TEstado;
begin
  result := self.estado;
end;

function TEndereco.getPais: TPais;
begin
  result := self.pais;
end;

function TEndereco.getRua: TRua;
begin
  result := self.rua;
end;

procedure TEndereco.insert;
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('INSERT INTO endereco VALUES (0,:pais,:cidade,:estado,:bairro,:rua,:cep)');
  query.ParamByName('pais').AsInteger := self.pais.getCodigo;
  query.ParamByName('estado').AsInteger := self.estado.getCodigo;
  query.ParamByName('cidade').AsInteger := self.cidade.getCodigo;
  query.ParamByName('bairro').AsInteger := self.bairro.getCodigo;
  query.ParamByName('rua').AsInteger := self.rua.getCodigo;
  query.ParamByName('cep').AsString := self.cep;

  try
    query.ExecSQL;
  Except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure TEndereco.setBairro(value: TBairro);
begin
  self.bairro := value;
end;

procedure TEndereco.setCep(value: String);
begin
  self.cep := value;
end;

procedure TEndereco.setCidade(value: TCidade);
begin
  self.cidade := value;
end;

procedure TEndereco.setEstado(value: TEstado);
begin
  self.estado := value;
end;

procedure TEndereco.setPais(value: TPais);
begin
  self.pais := value;
end;

procedure TEndereco.setRua(value: TRua);
begin
  self.rua := value;
end;

end.
