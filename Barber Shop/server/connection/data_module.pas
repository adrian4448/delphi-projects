unit data_module;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef;

type
  Tdm_connection = class(TDataModule)
    tfd_connection: TFDConnection;
    tfd_transaction: TFDTransaction;
    query_generica: TFDQuery;
    query_cliente: TFDQuery;
    query_usuario: TFDQuery;
    query_servico: TFDQuery;
    dt_cliente: TDataSource;
    dt_usuario: TDataSource;
    dt_servico: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_connection: Tdm_connection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
