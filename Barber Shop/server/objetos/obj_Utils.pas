unit obj_Utils;

interface
  uses FireDAC.Comp.Client, data_module, Vcl.Forms, System.SysUtils,
  Vcl.Controls, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,System.Classes,
  Vcl.DBCtrls;

  type TUtils = class
    private

    public
      procedure criarQuery(var query:TFDQuery);
      procedure criarFormulario(const ClasseForm : String);
      function  camposIsNull(formulario:TForm) : Boolean;
      procedure limparCampos(formulario:TForm);
      procedure enviarEmail(emailCliente, corpoMensagem: String);
  end;

implementation

{ TUtils }

uses unit_cadUsuario, unit_Login, unit_Principal, unit_visuGenerica,
  unit_cadCliente, unit_cadServico, unit_cadAgendamento, unit_visuAgendamento,
  IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
  IdExplicitTLSClientServerBase, Vcl.Mask;

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
      if(formulario.Components[i] is TDBLookupComboBox) then
        begin
          if((formulario.Components[i] as TDBLookupComboBox).Text = '') then
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

procedure TUtils.enviarEmail(emailCliente, corpoMensagem: String);
var
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo: string;
begin
  // instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create();
  IdSMTP := TIdSMTP.Create();
  IdMessage := TIdMessage.Create();

  try
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;


    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.UseTLS := utUseImplicitTLS;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := 465;
    IdSMTP.Host := 'smtp.gmail.com';
    IdSMTP.Username := 'adrian.estudo@gmail.com'; //'usuario@gmail.com';
    IdSMTP.Password := '88995566'; //aqui vai a senha

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := 'adrian.estudo@gmail.com'; //'usuario@gmail.com';
    IdMessage.From.Name := 'Adrian Morais';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := emailCliente; //email de destino
    IdMessage.Subject := 'Agendamento BarberShop'; //Titulo
    IdMessage.Encoding := meMIME;

    // Configuração do corpo do email (TIdText)
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add(corpoMensagem);
    IdText.ContentType := 'text/plain; charset=iso-8859-1';


    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conexão ou autenticação: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
    except
      On E:Exception do
      begin
        MessageDlg('Erro ao enviar a mensagem: ' +
          E.Message, mtWarning, [mbOK], 0);
      end;
    end;
  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // liberação da DLL
    UnLoadOpenSSLLibrary;
    // liberação dos objetos da memória
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
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
      if(formulario.Components[i] is TDBLookupComboBox) then
        begin
          (formulario.Components[i] as TDBLookupComboBox).KeyValue := 0;
        end;
      if(formulario.Components[i] is TMaskEdit) then
        begin
          (formulario.Components[i] as TMaskEdit).Text := '';
        end;
    end;
end;

initialization
  begin
    RegisterClasses([Tfrm_cadUsuario, Tfrm_login, Tfrm_principal, Tfrm_visuGenerica, Tfrm_CadCliente, Tfrm_CadServicos,
                     Tfrm_cadAgendamento, Tfrm_visuAgendamento]);
  end;


end.
