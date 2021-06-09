object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  Caption = 'Sistema Consorcio'
  ClientHeight = 254
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 208
    Top = 152
    object Consorcio1: TMenuItem
      Caption = 'Consorcio'
      object Cadastro3: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastro3Click
      end
      object VincularPessoa1: TMenuItem
        Caption = 'Vincular Pessoa'
        OnClick = VincularPessoa1Click
      end
      object Visualizar1: TMenuItem
        Caption = 'Visualizar'
        OnClick = Visualizar1Click
      end
    end
    object Pessoas1: TMenuItem
      Caption = 'Pessoas'
      object Cadastro1: TMenuItem
        Caption = 'Importar'
        OnClick = Cadastro1Click
      end
      object Visualizar2: TMenuItem
        Caption = 'Visualizar'
        OnClick = Visualizar2Click
      end
    end
    object Endereo1: TMenuItem
      Caption = 'Endere'#231'o'
      object Cadastro2: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastro2Click
      end
    end
  end
end
