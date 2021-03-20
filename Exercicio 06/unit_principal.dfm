object form_principal: Tform_principal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 609
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 560
    Width = 538
    Height = 49
    Align = alBottom
    TabOrder = 0
    object btn_cadastrar: TBitBtn
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = btn_cadastrarClick
    end
    object btn_resultados: TBitBtn
      Left = 96
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Resultados'
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 560
    Align = alClient
    TabOrder = 1
    object lbl_Codigo: TLabel
      Left = 8
      Top = 16
      Width = 141
      Height = 13
      Caption = 'Digite o c'#243'digo do funcionario'
    end
    object lbl_Salario: TLabel
      Left = 8
      Top = 80
      Width = 145
      Height = 13
      Caption = 'Digite o sal'#225'rio do funcionario:'
    end
    object Label1: TLabel
      Left = 8
      Top = 501
      Width = 120
      Height = 13
      Caption = 'Total de sal'#225'rios antigos:'
    end
    object Label2: TLabel
      Left = 8
      Top = 533
      Width = 114
      Height = 13
      Caption = 'Total de sal'#225'rios novos:'
    end
    object lbl_salarioAntigo: TLabel
      Left = 134
      Top = 501
      Width = 6
      Height = 13
      Caption = '0'
    end
    object lbl_salarioNovo: TLabel
      Left = 128
      Top = 533
      Width = 6
      Height = 13
      Caption = '0'
    end
    object txt_codigo: TEdit
      Left = 8
      Top = 43
      Width = 249
      Height = 21
      TabOrder = 0
    end
    object txt_salario: TEdit
      Left = 8
      Top = 99
      Width = 249
      Height = 21
      TabOrder = 1
    end
    object categoria_group: TRadioGroup
      Left = 8
      Top = 144
      Width = 361
      Height = 145
      Caption = 'Selecione  a cat'#233'goria'
      Columns = 2
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G')
      TabOrder = 2
    end
    object nm_resultados: TMemo
      Left = 8
      Top = 299
      Width = 473
      Height = 190
      Align = alCustom
      TabOrder = 3
    end
  end
end
