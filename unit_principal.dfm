object form_menu: Tform_menu
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 357
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Images = module_img.imgList
    Left = 112
    Top = 16
    object men_cadastro: TMenuItem
      Caption = '&Cadastro'
      object op_pessoas: TMenuItem
        Caption = 'Pessoas'
        ImageIndex = 0
        OnClick = op_pessoasClick
      end
    end
    object men_consulta: TMenuItem
      Caption = 'Consul&ta'
      object op_resultado: TMenuItem
        Caption = 'Resultados'
        OnClick = op_resultadoClick
      end
    end
    object TMenuItem
    end
  end
end
