object form_principal: Tform_principal
  Left = 0
  Top = 0
  Caption = 'form_principal'
  ClientHeight = 299
  ClientWidth = 852
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
    Left = 392
    Top = 88
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object CadastrarHabitante1: TMenuItem
        Caption = 'Cadastrar Habitante'
        OnClick = CadastrarHabitante1Click
      end
    end
    object Resultados1: TMenuItem
      Caption = 'Resultados'
      object VisualizarResultados1: TMenuItem
        Caption = 'Visualizar Resultados'
        OnClick = VisualizarResultados1Click
      end
    end
  end
end
