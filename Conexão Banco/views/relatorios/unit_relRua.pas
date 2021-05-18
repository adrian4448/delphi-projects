unit unit_relRua;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  Tfrm_relRua = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
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
  frm_relRua: Tfrm_relRua;

implementation

{$R *.dfm}

uses unit_connection;

end.
