unit unit_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  Tfrm_principal = class(TForm)
    MainMenu1: TMainMenu;
    Consorcio1: TMenuItem;
    Pessoas1: TMenuItem;
    Endereo1: TMenuItem;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    Cadastro3: TMenuItem;
    Visualizar1: TMenuItem;
    Visualizar2: TMenuItem;
    VincularPessoa1: TMenuItem;
    procedure Cadastro3Click(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure VincularPessoa1Click(Sender: TObject);
    procedure Visualizar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

uses unit_cadConsorcio, unit_vsConsorcio, unit_importPessoas, unit_cadEndereco,
  unit_cadVinculo, unit_vsPessoa;

procedure Tfrm_principal.Cadastro1Click(Sender: TObject);
begin
  if(frm_importarPessoas = nil) then
    begin
      frm_importarPessoas := Tfrm_importarPessoas.create(self);
    end;
  frm_importarPessoas.showModal;
  FreeAndNil(frm_importarPessoas);
end;

procedure Tfrm_principal.Cadastro2Click(Sender: TObject);
begin
  if(frm_cadEndereco = nil) then
    begin
      frm_cadEndereco := Tfrm_cadEndereco.Create(self);
    end;
  frm_cadEndereco.ShowModal;
  FreeAndNil(frm_cadEndereco);
end;

procedure Tfrm_principal.Cadastro3Click(Sender: TObject);
begin
  if(frm_cadConsorcio = nil) then
    begin
      frm_cadConsorcio := Tfrm_cadConsorcio.Create(self);
    end;
  frm_cadConsorcio.ShowModal;
  FreeAndNil(frm_cadConsorcio);
end;

procedure Tfrm_principal.VincularPessoa1Click(Sender: TObject);
begin
  if(frm_cadVinculo = nil) then
    begin
      frm_cadVinculo := TFrm_cadVinculo.Create(self);
    end;
  frm_cadVinculo.ShowModal;
  FreeAndNil(frm_cadVinculo);
end;

procedure Tfrm_principal.Visualizar1Click(Sender: TObject);
begin
  if(frm_vsConsorcio = nil) then
    begin
      frm_vsConsorcio := Tfrm_vsConsorcio.Create(self);
    end;
  frm_vsConsorcio.ShowModal;
  FreeAndNil(frm_vsConsorcio);
end;

procedure Tfrm_principal.Visualizar2Click(Sender: TObject);
begin
  if(frm_vsPessoa = nil) then
    begin
      frm_vsPessoa := Tfrm_vsPessoa.Create(self);
    end;
  frm_vsPessoa.ShowModal;
  FreeAndNil(frm_vsPessoa);
end;

end.
