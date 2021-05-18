unit unit_relBairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  Tfrm_relBairro = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    rlb_rodape: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    trl_pag: TRLSystemInfo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_relBairro: Tfrm_relBairro;

implementation

{$R *.dfm}

uses unit_connection;

end.
