object form_principal: Tform_principal
  Left = 0
  Top = 0
  Caption = 'Pesquisa'
  ClientHeight = 260
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormCreate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 179
    Width = 418
    Height = 81
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 337
    ExplicitTop = 0
    ExplicitWidth = 281
    object btn_enviar: TButton
      Left = 16
      Top = 32
      Width = 113
      Height = 25
      Caption = 'Enviar Resultado'
      TabOrder = 0
      OnClick = btn_enviarClick
    end
    object btn_visualizar: TButton
      Left = 288
      Top = 32
      Width = 113
      Height = 25
      Caption = 'Visualizar Resultados'
      TabOrder = 1
      OnClick = btn_visualizarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 418
    Height = 179
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 232
      Top = 8
      Width = 82
      Height = 13
      Caption = 'Digite sua Idade:'
    end
    object result_group: TRadioGroup
      Left = 16
      Top = 8
      Width = 177
      Height = 153
      Caption = 'O que voc'#234' achou do filme'
      Items.Strings = (
        #211'timo'
        'Bom'
        'Regular'
        'Ruim'
        'P'#233'ssimo')
      TabOrder = 0
    end
    object txt_Idade: TEdit
      Left = 232
      Top = 35
      Width = 169
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
  end
end
