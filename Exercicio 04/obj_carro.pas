unit obj_carro;

interface
  type TCarro = class
    private
      placa : string;
      ano   : TDate;
      chassi : string;
      montadora : string;
      cor : string;
      motor : string;
    public
      procedure setPlaca(placa:string);
      procedure setAno(ano:TDate);
      procedure setChassi(chassi:string);
      procedure setMontadora(montadora:string);
      procedure setCor(cor:string);
      procedure setMotor(motor:string);
      function getPlaca : string;
      function getAno : TDate;
      function getChassi : string;
      function getMontadora : string;
      function getCor : string;
      function getMotor : string;
  end;

implementation

{ TCarro }

function TCarro.getAno: TDate;
begin
  result := self.ano
end;

function TCarro.getChassi: string;
begin
  result := self.chassi;
end;

function TCarro.getCor: string;
begin
  result := self.cor;
end;

function TCarro.getMontadora: string;
begin
  result := self.montadora;
end;

function TCarro.getMotor: string;
begin
  result := self.motor
end;

function TCarro.getPlaca: string;
begin
  result := self.placa;
end;

procedure TCarro.setAno(ano: TDate);
begin
  self.ano := ano;
end;

procedure TCarro.setChassi(chassi: string);
begin
  self.chassi := chassi;
end;

procedure TCarro.setCor(cor: string);
begin
  self.cor := cor;
end;

procedure TCarro.setMontadora(montadora: string);
begin
  self.montadora := montadora;
end;

procedure TCarro.setMotor(motor: string);
begin
  self.motor := motor;
end;

procedure TCarro.setPlaca(placa: string);
begin
  self.placa := placa;
end;

end.
