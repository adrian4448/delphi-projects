unit unit_relEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  Tfrm_relEndereco = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    rlb_rodape: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    trl_pag: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_relEndereco: Tfrm_relEndereco;

implementation

{$R *.dfm}

uses unit_connection;

end.
