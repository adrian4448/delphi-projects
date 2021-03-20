object form_cadastro: Tform_cadastro
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de cadastro'
  ClientHeight = 224
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_buttons: TPanel
    Left = 0
    Top = 165
    Width = 730
    Height = 59
    Align = alBottom
    TabOrder = 0
    object btn_cadastrar: TBitBtn
      Left = 437
      Top = 16
      Width = 91
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = btn_cadastrarClick
    end
    object btn_limpar: TBitBtn
      Left = 534
      Top = 16
      Width = 88
      Height = 25
      Caption = 'Limpar'
      TabOrder = 1
      OnClick = btn_limparClick
    end
    object btn_cancelar: TBitBtn
      Left = 628
      Top = 16
      Width = 85
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btn_cancelarClick
    end
  end
  object pnl_inputs: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 165
    Align = alClient
    TabOrder = 1
    object lblI_dade: TLabel
      Left = 352
      Top = 80
      Width = 78
      Height = 13
      Caption = 'Digite sua Idade'
    end
    object group_sexo: TRadioGroup
      Left = 24
      Top = 11
      Width = 305
      Height = 54
      Caption = 'Selecione seu Sexo'
      Columns = 3
      Items.Strings = (
        'Masculino'
        'Feminino')
      TabOrder = 0
    end
    object group_cor_olho: TRadioGroup
      Left = 352
      Top = 11
      Width = 361
      Height = 54
      Caption = 'Selecione a cor do olho'
      Columns = 3
      Items.Strings = (
        'Azul'
        'Verde'
        'Castanho')
      TabOrder = 1
    end
    object group_cor_cabelo: TRadioGroup
      Left = 24
      Top = 71
      Width = 305
      Height = 50
      Caption = 'Selecione a cor dos cabelos'
      Columns = 3
      Items.Strings = (
        'Louro'
        'Castanho'
        'Preto')
      TabOrder = 2
    end
    object txt_idade: TEdit
      Left = 352
      Top = 99
      Width = 129
      Height = 21
      MaxLength = 2
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
  end
end
