unit unit_vsPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  Tfrm_vsPessoa = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_vsPessoa: Tfrm_vsPessoa;

implementation

{$R *.dfm}

uses unit_connect;

procedure Tfrm_vsPessoa.FormCreate(Sender: TObject);
begin
  data_connection.qr_vsPessoaCon.Open();
end;

end.
