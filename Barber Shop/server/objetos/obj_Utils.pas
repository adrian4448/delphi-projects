unit obj_Utils;

interface
  uses FireDAC.Comp.Client, data_module, Vcl.Forms, System.SysUtils,
  Vcl.Controls, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,System.Classes;

  type TUtils = class
    private

    public
      procedure criarQuery(var query:TFDQuery);
      procedure criarFormulario(const ClasseForm : String);
      function camposIsNull(formulario:TForm) : Boolean;
      procedure limparCampos(formulario:TForm);
  end;

implementation

{ TUtils }

uses unit_cadUsuario, unit_Login, unit_Principal, unit_visuGenerica;

function TUtils.camposIsNull(formulario: TForm) : Boolean;
var
  i: integer;
begin
  result := false;
  for i := formulario.ComponentCount -1 downto 0 do
    begin
      if(formulario.Components[i] is TLabeledEdit) then
        begin
          if((formulario.Components[i] as TLabeledEdit).Text = '') then
            begin
               result := true;
            end;
        end;
    end;
end;

procedure TUtils.criarFormulario(const classeForm : String);
var
 classe : TFormClass;
 objeto : TObject;
begin
  objeto := nil;
  classe := TFormClass(FindClass(classeForm));
  if not Assigned(Objeto) then
     objeto := Classe.Create(nil);
     (objeto as TForm).ShowModal;
end;

procedure TUtils.criarQuery(var query: TFDQuery);
begin
  query := TFDQuery.Create(nil);
  query.Connection := data_module.dm_connection.tfd_connection;
  query.SQL.Clear;
end;

procedure TUtils.limparCampos(formulario: TForm);
var
  i: integer;
begin
  for i := formulario.ComponentCount -1 downto 0 do
    begin
      if(formulario.Components[i] is TLabeledEdit) then
        begin
          (formulario.Components[i] as TLabeledEdit).Text := '';
        end;
    end;
end;

initialization
  begin
    RegisterClasses([Tfrm_cadUsuario, Tfrm_login, Tfrm_principal, Tfrm_visuGenerica]);
  end;


end.
