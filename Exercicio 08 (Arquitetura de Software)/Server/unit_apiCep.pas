unit unit_apiCep;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  Tdata_api = class(TDataModule)
    api_CEP: TRESTClient;
    api_CEP_request: TRESTRequest;
    api_response: TRESTResponse;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  data_api: Tdata_api;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
