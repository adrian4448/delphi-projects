unit unit_connect;

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
    consorcio_con: TFDConnection;
    transaction: TFDTransaction;
    qr_pessoa: TFDQuery;
    data_pessoa: TDataSource;
    data_consorcio: TDataSource;
    qr_consorcio: TFDQuery;
    qr_endereco: TFDQuery;
    data_endereco: TDataSource;
    qr_vsPessoaCon: TFDQuery;
    data_vsPessoaCon: TDataSource;
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
  consorcio_con.Connected := true;
end;

procedure Tdata_connection.DataModuleDestroy(Sender: TObject);
begin
  consorcio_con.Connected := false;
end;

end.
