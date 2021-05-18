unit unit_relEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  Tfrm_relEstado = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    rl_title: TRLLabel;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLBand4: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    rlb_rodape: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    trl_pag: TRLSystemInfo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_relEstado: Tfrm_relEstado;

implementation

{$R *.dfm}

uses unit_connection;

end.
