unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls,unit_cadBairro, unit_cadEstado, unit_cadPais, unit_cadRua,unit_cadEndereco,
  Vcl.CheckLst, Vcl.ButtonGroup, unit_consultaGenerica, unit_connection, unit_relEstado, unit_relCidade;

type
  Tfrm_principal = class(TForm)
    panelCliente: TPanel;
    mainMenu: TMainMenu;
    menuCadastro: TMenuItem;
    optCidade: TMenuItem;
    optEstado: TMenuItem;
    optPais: TMenuItem;
    optBairro: TMenuItem;
    optRua: TMenuItem;
    optEndereco: TMenuItem;
    Consulta1: TMenuItem;
    Endereo1: TMenuItem;
    Relatorios1: TMenuItem;
    Pais1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    Bairro1: TMenuItem;
    Rua1: TMenuItem;
    Endereo2: TMenuItem;
    procedure optCidadeClick(Sender: TObject);
    procedure optBairroClick(Sender: TObject);
    procedure optEstadoClick(Sender: TObject);
    procedure optPaisClick(Sender: TObject);
    procedure optRuaClick(Sender: TObject);
    procedure optEnderecoClick(Sender: TObject);
    procedure Endereo1Click(Sender: TObject);
    procedure Pais1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Bairro1Click(Sender: TObject);
    procedure Rua1Click(Sender: TObject);
    procedure Endereo2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses
  unit_cadCidade, unit_relPais, unit_relBairro, unit_relRua, unit_relEndereco;

procedure Tfrm_principal.Bairro1Click(Sender: TObject);
begin
  if(frm_relBairro = nil) then
    begin
      frm_relBairro := TFrm_relBairro.create(self);
    end;
  data_connection.qr_bairro.Open;
  frm_relBairro.RLReport1.Preview();
  frm_relBairro.Free;
end;

procedure Tfrm_principal.Cidade1Click(Sender: TObject);
begin
  if frm_relCidade = nil then
    begin
      frm_relCidade := Tfrm_relCidade.create(self);
    end;
  data_connection.qr_cidade.Open();
  frm_relCidade.RLReport1.Preview;
  frm_relCidade.Free;
end;

procedure Tfrm_principal.Endereo1Click(Sender: TObject);
begin
  if(frm_consultaGenerica = nil) then
    begin
      frm_consultaGenerica := TFrm_consultaGenerica.Create(self);
    end;
  frm_consultaGenerica.setConsulta('select a.codigo "Codigo",a.cep "CEP", ' +
                                   'b.descricao "Pais", ' +
                                   'c.descricao "Estado", ' +
                                   'd.descricao "Cidade", '  +
                                   'e.descricao "Bairro", ' +
                                   'f.descricao "Rua" ' +
                                   'from endereco a, ' +
                                   'pais b, ' +
                                   'estado c, ' +
                                   'cidade d, ' +
                                   'bairro e, ' +
                                   'rua f ' +
                                   'where	b.codigo = a.pais ' +
                                   'AND  	c.codigo = a.estado ' +
                                   'AND  	d.codigo = a.cidade ' +
                                   'AND  	e.codigo = a.bairro ' +
                                   'AND  	f.codigo = a.rua;  ');
  frm_consultaGenerica.qr_consulta.Open();
  frm_consultaGenerica.ShowModal;
  FreeAndNil(frm_consultaGenerica);
end;

procedure Tfrm_principal.Endereo2Click(Sender: TObject);
begin
  if(frm_relEndereco = nil) then
    begin
      frm_relEndereco := Tfrm_relEndereco.Create(self);
    end;
  data_connection.qr_endereco.Open();
  frm_relEndereco.RLReport1.Preview();
  frm_relEndereco.Free;
end;

procedure Tfrm_principal.Estado1Click(Sender: TObject);
begin
  if(frm_relEstado = nil) then
    begin
      frm_relEstado := TFrm_relEstado.create(self);
    end;
  data_connection.qr_estado.Open();
  frm_relEstado.RLReport1.Preview;
  frm_relEstado.free;
end;

procedure Tfrm_principal.optBairroClick(Sender: TObject);
begin
  if(frm_cadBairro = nil) then
    begin
      frm_cadBairro := Tfrm_cadBairro.Create(self);
    end;
  frm_cadBairro.ShowModal;
  FreeAndNil(frm_cadBairro);
end;

procedure Tfrm_principal.optCidadeClick(Sender: TObject);
begin
  if(frm_cadCidade = nil) then
    begin
      frm_cadCidade := Tfrm_cadCidade.Create(self);
    end;
  frm_cadCidade.ShowModal;
  FreeAndNil(frm_cadCidade);
end;

procedure Tfrm_principal.optEnderecoClick(Sender: TObject);
begin
  if(frm_cadEndereco = nil) then
    begin
      frm_cadEndereco := Tfrm_cadEndereco.Create(self);
    end;
  frm_cadEndereco.ShowModal;
  frm_cadEndereco.Free;
end;

procedure Tfrm_principal.optEstadoClick(Sender: TObject);
begin
  if frm_cadEstado = nil then
    begin
      frm_cadEstado := Tfrm_cadEstado.Create(self);
    end;
  frm_cadEstado.ShowModal;
  FreeAndNil(frm_cadEstado);
end;

procedure Tfrm_principal.optPaisClick(Sender: TObject);
begin
  if(frm_cadPais = nil) then
    begin
      frm_cadPais := Tfrm_cadPais.Create(self);
    end;
  frm_cadPais.ShowModal;
  FreeAndNil(frm_cadPais);
end;

procedure Tfrm_principal.optRuaClick(Sender: TObject);
begin
  if(frm_cadRua = nil) then
    begin
      frm_cadRua := Tfrm_cadRua.Create(self);
    end;
  frm_cadRua.ShowModal;
  FreeAndNil(frm_cadRua);
end;

procedure Tfrm_principal.Pais1Click(Sender: TObject);
begin
  if(frm_relPais = nil) then
    begin
      frm_relPais := Tfrm_relPais.Create(self);
    end;
  data_connection.qr_pais.Open;
  frm_relPais.rl_pais.Prepare;
  frm_relPais.rl_pais.Preview;
end;

procedure Tfrm_principal.Rua1Click(Sender: TObject);
begin
  if(frm_relRua = nil) then
    begin
      frm_relRua := Tfrm_relRua.Create(self);
    end;
  data_connection.qr_rua.Open();
  frm_relRua.RLReport1.Preview();
  frm_relRua.Free;
end;

end.
