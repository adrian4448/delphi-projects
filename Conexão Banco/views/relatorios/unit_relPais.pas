unit unit_relPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, unit_connection,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_relPais = class(TForm)
    rl_pais: TRLReport;
    RLBand1: TRLBand;
    rlb_title: TRLBand;
    rlb_detail: TRLBand;
    rlb_rodape: TRLBand;
    rlb_data: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    rlb_label: TRLLabel;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    trl_pag: TRLSystemInfo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_relPais: Tfrm_relPais;

implementation

{$R *.dfm}

end.
