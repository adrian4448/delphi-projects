unit unit_connection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  Tdata_connection = class(TDataModule)
    fdEndereco: TFDConnection;
    FDTransaction1: TFDTransaction;
    dataModule_cidade: TDataSource;
    dataModule_estado: TDataSource;
    dataModule_pais: TDataSource;
    dataModule_bairro: TDataSource;
    dataModule_rua: TDataSource;
    qr_rua: TFDQuery;
    qr_bairro: TFDQuery;
    qr_estado: TFDQuery;
    qr_cidade: TFDQuery;
    qr_pais: TFDQuery;
    qr_endereco: TFDQuery;
    dataModule_endereco: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  data_connection: Tdata_connection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdata_connection.DataModuleCreate(Sender: TObject);
begin
  if(not fdEndereco.Connected) then
    begin
      fdEndereco.Connected := true;
    end;
end;

procedure Tdata_connection.DataModuleDestroy(Sender: TObject);
begin
  if(fdEndereco.Connected) then
    begin
      fdEndereco.Connected := false;
    end;
end;

end.
