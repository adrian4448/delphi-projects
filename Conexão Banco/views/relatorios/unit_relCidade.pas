unit unit_relCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  Tfrm_relCidade = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    rlb_rodape: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    trl_pag: TRLSystemInfo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_relCidade: Tfrm_relCidade;

implementation

{$R *.dfm}

uses unit_connection;

end.
