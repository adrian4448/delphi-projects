unit unit_consultaGenerica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, unit_connection,unit_utils,DBCommon,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, system.json, system.NetEncoding,System.Win.ComObj;

type
  Tfrm_consultaGenerica = class(TForm)
    panel_principal: TPanel;
    qr_consulta: TFDQuery;
    ds_consulta: TDataSource;
    grid_consulta: TDBGrid;
    btn_carregar: TBitBtn;
    txt_descricao: TLabeledEdit;
    btn_excluir: TBitBtn;
    PopupMenu1: TPopupMenu;
    JSON1: TMenuItem;
    HTML51: TMenuItem;
    Memo1: TMemo;
    exto1: TMenuItem;
    Word1: TMenuItem;
    Excel1: TMenuItem;
    procedure txt_descricaoChange(Sender: TObject);
    procedure btn_carregarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure HTML51Click(Sender: TObject);
    procedure JSON1Click(Sender: TObject);
    procedure exto1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    codigo : String;
    utils:TUtils;
  public
    procedure setConsulta(sql:String);
    function  getCodigo : String;
  end;

var
  frm_consultaGenerica: Tfrm_consultaGenerica;

implementation

{$R *.dfm}

{ Tfrm_consultaGenerica }

procedure Tfrm_consultaGenerica.txt_descricaoChange(Sender: TObject);
begin
  qr_consulta.Locate(grid_consulta.Columns[1].FieldName, txt_descricao.Text, [loCaseInsensitive,loPartialKey]);
end;


procedure Tfrm_consultaGenerica.Word1Click(Sender: TObject);
var
  i:integer;
  MSWord: Variant;
begin
     self.qr_consulta.Open;

     if (qr_consulta.IsEmpty) then
       exit;

     try
        MSWord:= CreateOleObject('Word.Application'); // Abre o Word
     except
           ShowMessage ('Versão do MS - Word'+'Incompatível');
     end;

     MSWord.Visible := True; //mostra o word

     try
        MSWord.Documents.Add; // Novo documento

        //Ajusta as margens do indivíduo
        MSWord.Application.Selection.PageSetup.TopMargin := '1,02 cm';
        MSWord.Application.Selection.PageSetup.BottomMargin := '2,49 cm';
        MSWord.Application.Selection.PageSetup.LeftMargin := '1,5 cm';
        MSWord.Application.Selection.PageSetup.RightMargin := '1,5 cm';

        MSWord.Application.Selection.Font.Bold := true;
        MSWord.Application.Selection.Font.Size := 12;
        MSWord.Application.Selection.Font.Name := 'Courier New';
        MSWord.Application.Selection.ParagraphFormat.Alignment := 1; //Centralizado
        MSWord.Selection.TypeText('Consulta' + #13);

        MSWord.Application.Selection.TypeParagraph;
        MSWord.Application.Selection.Font.Size := 10;
        MSWord.Application.Selection.Font.Bold := false;

        //Adiciona tabela
        qr_consulta.Last; //Para contar o numero de registros
        MSWord.ActiveDocument.Tables.Add( Range := MSWord.Selection.Range, NumRows := qr_consulta.RecordCount, NumColumns := qr_consulta.FieldCount);

        if qr_consulta.FieldCount > 0 then
          for i := 0 to qr_consulta.FieldCount - 1 do
            begin
                 MSWord.Application.Selection.ParagraphFormat.Alignment := 1; //Centralizado
                 MSWord.Application.Selection.Font.Size := 10;
                 MSWord.Application.Selection.Font.Bold := true;
                 MSWord.Selection.TypeText(Text := qr_consulta.Fields[i].FieldName);
                 MSWord.Selection.MoveRight(12);
            end;

        MSWord.Application.Selection.Font.Bold := false;

        qr_consulta.First;
        while (not qr_consulta.Eof) do
             begin
                  For i := 0 to qr_consulta.FieldCount - 1 do
                     begin
                          MSWord.Application.Selection.Font.Size := 10;
                          MSWord.Application.Selection.Font.Bold := false;
                          MSWord.Application.Selection.ParagraphFormat.Alignment := 0; //0 = centralizado 1 = esquerda 2 = Direita
                          MSWord.Selection.TypeText(Text := qr_consulta.Fields[i].AsString);

                          MSWord.Selection.MoveRight(12); // Próxima célula
                     end;
                  qr_consulta.Next;
             end;

        MSWord.Selection.Tables.Item(1).Select; // Seleciona a 1º tabela
        MSWord.Selection.Cells.AutoFit; // Auto-formata

        MSWord.Selection.MoveDown;
        MSWord.Selection.MoveDown;

        if not MSWord.Visible then
          begin
               MSWord.ActiveDocument.SaveAs(FileName := wideString(GetCurrentDir + '\getWordByQuery.docx')); // Para salvar...
               MSWord.ActiveDocument.Close(SaveChanges := 0); // Fecha documento
               MSWord.Quit; // Fecha o Word
               ShowMessage(pChar('Arquivo ' + GetCurrentDir + '\getWordByQuery.docx'));
          end;

     except
     end;
end;

procedure Tfrm_consultaGenerica.btn_carregarClick(Sender: TObject);
begin
  codigo := grid_consulta.Columns[0].Field.AsString;
  ModalResult := mrOk;
end;

procedure Tfrm_consultaGenerica.btn_excluirClick(Sender: TObject);
var
  query:TFDQuery;
begin
  query := utils.createQuery;
  query.SQL.Add('DELETE FROM ');
  query.SQL.Add(GetTableNameFromQuery(qr_consulta.SQL.Text));
  query.SQL.Add('WHERE codigo = :codigo');
  query.ParamByName('codigo').AsInteger := StrToInt(grid_consulta.Columns[0].Field.AsString);

  try
    query.ExecSQL;
    qr_consulta.Refresh;
    grid_consulta.Refresh;
  except
    on e:Exception do
      showMessage(e.ToString);
  end;
end;

procedure Tfrm_consultaGenerica.Excel1Click(Sender: TObject);
var
  i, j, iLinha:integer;
  Excel : Variant;
  slTipos:tStringList;
begin
     self.qr_consulta.Open;

     if (qr_consulta.IsEmpty) then
       exit;

     try
        Excel := CreateOleObject('\Excel.Application\');

        Excel.Workbooks.Add;
     except
           ShowMessage ('Versão do Ms-Excel Incompatível');
     end;

     iLinha := 1;

     Excel.Workbooks[1].Sheets.Add;

     for i := 0 to qr_consulta.FieldCount - 1 do
        begin
             Excel.WorkBooks[1].Sheets[1].Cells[iLinha,0].Font.Name := 'Courier New';
             Excel.WorkBooks[1].Sheets[1].Cells[iLinha,0].Font.Size := 10;
             Excel.WorkBooks[1].Sheets[1].Cells[iLinha,0].Font.Bold := True;
             Excel.WorkBooks[1].Sheets[1].Cells[iLinha,0] := qr_consulta.Fields[i].FieldName;

             iLinha := iLinha + 1;
        end;

     if (qr_consulta.FieldCount > 0) then
       begin
            iLinha := iLinha + 2;

             for i := 0 to qr_consulta.FieldCount - 1 do
               begin
                    Excel.WorkBooks[1].Sheets[1].Cells[iLinha,i+1].Font.Name := 'Courier New';
                    Excel.WorkBooks[1].Sheets[1].Cells[iLinha,i+1].Font.Size := 10;
                    Excel.WorkBooks[1].Sheets[1].Cells[iLinha,i+1].Font.Bold := True;
                    Excel.WorkBooks[1].Sheets[1].Cells[iLinha,i+1] := qr_consulta.Fields[i].FieldName;
               end;
       end;

     iLinha := iLinha + 1;
     qr_consulta.First;
     while (not qr_consulta.Eof) do
       begin
            For i := 0 to qr_consulta.FieldCount - 1 do
              Excel.WorkBooks[1].Sheets[1].Cells[iLinha,i+1] := '=("' + qr_consulta.Fields[i].AsString + '")';

            iLinha := iLinha + 1;
            qr_consulta.Next;
       end;

     Excel.Columns.AutoFit;
     Excel.Visible := True;

     if not Excel.Visible then
       begin
             Excel.WorkBooks[1].SaveAs(GetCurrentDir + '\getExelByQuery.xls');
             Excel.WorkBooks[1].Close;
             ShowMessage(pChar('Arquivo ' + GetCurrentDir + '\getExelByQuery.xls' + ' salvo com sucesso!'));
       end;
     Excel:= Unassigned;
end;

procedure Tfrm_consultaGenerica.exto1Click(Sender: TObject);
var
   Arq: TextFile;
   i: Integer;
   sAux: String;
begin
     self.qr_consulta.Open;

     if (qr_consulta.IsEmpty) then
       exit;

     try
        AssignFile(Arq, GetCurrentDir + '\getArqTxtByQuery.txt');
        Rewrite(Arq);

        sAux := '';

        for i := 0 to qr_consulta.FieldCount - 1 do
          sAux := sAux + qr_consulta.Fields[i].FieldName+'|';

        Writeln(Arq, sAux);

        qr_consulta.First;
        while (not qr_consulta.Eof) do
            begin
                 sAux:= '';
                 For i := 0 to qr_consulta.FieldCount - 1 do
                    sAux := sAux + qr_consulta.Fields[i].AsString + '|';

                 Writeln(Arq, sAux);
                 qr_consulta.Next;
            end;

        CloseFile(Arq);
        ShowMessage(pChar('Arquivo ' +GetCurrentDir + '\getArqTxtByQuery.txt'));
     except
     end;
end;

function Tfrm_consultaGenerica.getCodigo: String;
begin
  result := self.codigo;
end;

procedure Tfrm_consultaGenerica.HTML51Click(Sender: TObject);
var
   htmlfile: TextFile;
   i:integer;
   linha:string;
const
     wrap=#13+#10; //constante com o valor da tecla enter
     alinhamento = '<td align="left">'; //constsnte para alinhamento
begin
  qr_Consulta.Open;

     if (qr_Consulta.IsEmpty) then
       exit;

     AssignFile(htmlFile, GetCurrentDir + '\getHtmlByQuery.html');
     Rewrite(htmlFile);
     Writeln(htmlfile, '<html><head>' + wrap +
                          '<title>Relatório</title>' + wrap +
                          '</head>' + wrap +
                          '<body bgcolor="#FFFFFF">' + wrap +
                          '<p align="center"><b><font face="Courier New" size="3">');

     //Título geral
     Writeln(htmlfile,'Busca de dados<br>');

     Writeln(htmlfile,'</font></b></p>');
     Writeln(htmlfile,'<table border="1" bordercolor="#000000" align="center" cellspacing="0" cellpadding="0">' + wrap);
     Writeln(htmlfile,'<tr>');

     //Títulos da Tabela
     for i := 0 to qr_Consulta.FieldCount - 1 do
        begin
             Writeln(htmlfile,'<td bgcolor="#CCCCCC" align="center"><b><font face="Courier New" size="2">' + qr_consulta.Fields[i].FieldName + '</font></b></td>');
        end;

     Writeln(htmlfile,'</tr>');

     //Valores da tabela
     qr_Consulta.First;
     while (not qr_Consulta.Eof) do
       begin
            linha:='<tr>'+wrap;
            for i := 0 to qr_Consulta.FieldCount - 1 do
              begin
                   if qr_Consulta.Fields[i].AsString = '' then
                      linha := linha + alinhamento + '<font face="Courier New" size="2">' + '&nbsp<br>'
                   else
                       linha := linha + alinhamento + '<font face="Courier New" size="2">' + qr_Consulta.Fields[i].AsString + '<br>';
              end;
            Writeln(htmlfile, linha);
            Writeln(htmlfile, '</tr>');
            qr_Consulta.next;
       end;

     writeln(htmlfile,'</font></b></p>');
     writeln(htmlfile, '</body></html>');
     CloseFile(htmlfile);
     ShowMessage('Arquivo ' + GetCurrentDir + '\getHtmlByQuery.html salvo com sucesso!');
end;

procedure Tfrm_consultaGenerica.JSON1Click(Sender: TObject);
var
   i:Integer;
   Json, JsonAux: TJSONObject;
   JsonArray : TJsonArray;
   StreamIn: TStream;
   StreamOut : TStringStream;
begin
     self.qr_consulta.open;

     if (qr_consulta.IsEmpty) then
       exit;

     Json := TJSONObject.Create;

     if (qr_consulta.IsEmpty) then
       begin
            json.AddPair('Aviso', TJSONString.Create('Não foi encontrado dados na busca!'));
            exit;
       end
     else
         begin
              JsonArray := TJsonArray.Create;
              qr_consulta.First;

              while not qr_consulta.Eof do
                   begin
                        JsonAux := TJSONObject.Create;

                        for i := 0 to qr_consulta.FieldCount -1  do
                          begin
                               if qr_consulta.Fields[i].IsNull then //Tratando valores nulos para não “quebrar” a aplicação
                                 JsonAux.AddPair(qr_consulta.Fields[i].DisplayName, EmptyStr)
                               else
                                  if qr_consulta.Fields[i].IsBlob then //tipo blob -> imagens...
                                    begin
                                         StreamIn := qr_consulta.CreateBlobStream(qr_consulta.Fields[i], bmRead);
                                         StreamOut := TStringStream.Create;
                                         TNetEncoding.Base64.Encode(StreamIn, StreamOut);
                                         StreamOut.Position := 0;
                                         JsonAux.AddPair(qr_consulta.Fields[i].DisplayName, StreamOut.DataString);
                                         FreeAndNil(StreamOut);
                                    end
                                  else //outros tipos
                                      JsonAux.AddPair(qr_consulta.Fields[i].DisplayName, trim(qr_consulta.Fields[i].Value));
                          end;

                        JsonArray.Add(JsonAux);

                        qr_consulta.Next;
                   end;

              Json.AddPair('dados', JsonArray);
         end;

   if (Memo1.Visible) then
       begin
            Memo1.Visible := false;
            Memo1.Align := alNone;
            exit;
       end;

     Memo1.Visible := true;
     Memo1.Align := alClient;
     Memo1.Text := Json.ToString;
end;

procedure Tfrm_consultaGenerica.setConsulta(sql: String);
begin
  self.qr_consulta.SQL.Clear;
  self.qr_consulta.SQL.Add(sql);
end;

end.
