object form_principal: Tform_principal
  Left = 0
  Top = 0
  Caption = 'Formulario'
  ClientHeight = 327
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 327
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 72
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lbl_idade: TLabel
      Left = 16
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Digite sua Idade'
    end
    object txt_idade: TEdit
      Left = 16
      Top = 35
      Width = 185
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object sexo_group: TRadioGroup
      Left = 16
      Top = 72
      Width = 281
      Height = 105
      Caption = 'Escolha o Sexo'
      Columns = 2
      Items.Strings = (
        'Masculino'
        'Feminino')
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 331
      Top = 1
      Width = 123
      Height = 325
      Align = alRight
      TabOrder = 2
      object btn_cadastrar: TButton
        Left = 8
        Top = 240
        Width = 105
        Height = 25
        Caption = 'Cadastrar'
        TabOrder = 0
      end
      object btn_resultado: TButton
        Left = 8
        Top = 271
        Width = 105
        Height = 25
        Caption = 'Resultados'
        TabOrder = 1
      end
    end
  end
end
