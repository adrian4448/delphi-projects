program pr_principal;

uses
  Vcl.Forms,
  obj_palavra in '..\server\objetos\obj_palavra.pas',
  obj_utils in '..\server\objetos\obj_utils.pas',
  data_module in '..\server\connection\data_module.pas' {DataModule1: TDataModule},
  unit_principal in '..\views\unit_principal.pas' {frm_main},
  unit_dificuldade in '..\views\game\unit_dificuldade.pas' {frm_dificuldade},
  unit_game in '..\views\game\unit_game.pas' {frm_jogo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tfrm_dificuldade, frm_dificuldade);
  Application.CreateForm(Tfrm_jogo, frm_jogo);
  Application.Run;
end.
