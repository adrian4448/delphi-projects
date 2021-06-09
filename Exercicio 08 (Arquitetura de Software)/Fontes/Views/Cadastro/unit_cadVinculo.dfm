object frm_cadVinculo: Tfrm_cadVinculo
  Left = 0
  Top = 0
  Caption = 'frm_cadVinculo'
  ClientHeight = 239
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 267
    Height = 239
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 8
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Bevel1: TBevel
      Left = 8
      Top = 16
      Width = 233
      Height = 65
    end
    object lbl_title: TLabel
      Left = 40
      Top = 40
      Width = 173
      Height = 16
      Caption = 'Vinculo Consorcio - Pessoa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbx_pessoa: TDBLookupComboBox
      Left = 8
      Top = 104
      Width = 233
      Height = 21
      KeyField = 'id'
      ListField = 'nome'
      ListSource = data_connection.data_pessoa
      TabOrder = 0
    end
    object cbx_consorcio: TDBLookupComboBox
      Left = 8
      Top = 152
      Width = 233
      Height = 21
      KeyField = 'id'
      ListField = 'dsplano'
      ListSource = data_connection.data_consorcio
      TabOrder = 1
    end
    object btn_concluir: TButton
      Left = 8
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Concluir'
      TabOrder = 2
      OnClick = btn_concluirClick
    end
  end
end
