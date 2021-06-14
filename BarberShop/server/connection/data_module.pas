unit data_module;

interface

uses
  System.SysUtils, System.Classes;

type
  TDM_BarberShop = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_BarberShop: TDM_BarberShop;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
