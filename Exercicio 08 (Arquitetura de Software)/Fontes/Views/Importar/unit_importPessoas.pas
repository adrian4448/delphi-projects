unit unit_importPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfrm_importarPessoas = class(TForm)
    Panel1: TPanel;
    txt_caminho: TEdit;
    Cancelar: TBitBtn;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_importarPessoas: Tfrm_importarPessoas;

implementation

{$R *.dfm}

uses obj_pessoa;

procedure Tfrm_importarPessoas.BitBtn1Click(Sender: TObject);
var
  arquivo:TextFile;
  linha:String;
  pessoa:TPessoa;
  strArray  : Array of String;
  charArray : Array[0..0] of Char;
begin
  AssignFile(arquivo, txt_caminho.Text);
  Reset(arquivo);

  if(IOResult <> 0) then
    begin
      showMessage('Erro na leitura do arquivo !!');
    end
  else
    begin
      while(not eof(arquivo)) do
        begin
          readln(arquivo, linha);
          pessoa := TPessoa.Create;
          pessoa.setNome(Copy(linha,0,99).Trim);
          pessoa.setCpf(Copy(linha,114,11).Trim);
          pessoa.setRg(Copy(linha,127,10).Trim);
          pessoa.setData_nascimento(StrToDate(Copy(linha,104,8).Trim));
          pessoa.insert;
          FreeAndNil(pessoa);
        end;
        CloseFile(arquivo);
    end;

end;

procedure Tfrm_importarPessoas.CancelarClick(Sender: TObject);
begin
  self.close;
end;

procedure Tfrm_importarPessoas.SpeedButton1Click(Sender: TObject);
begin
  OpenDialog1.Execute();
  txt_caminho.Text := OpenDialog1.FileName;
end;

end.
