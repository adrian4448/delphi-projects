program projeto;

uses
  Vcl.Forms,
  unit_Login in '..\views\unit_Login.pas' {frm_Login};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Login, frm_Login);
  Application.Run;
end.
