object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Tela Principal'
  ClientHeight = 516
  ClientWidth = 893
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
    Left = 112
    Top = 224
    object C1: TMenuItem
      Caption = 'Cadastro'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
      end
      object Servio1: TMenuItem
        Caption = 'Servi'#231'o'
      end
      object Usuario1: TMenuItem
        Caption = 'Usuario'
      end
    end
    object c2: TMenuItem
      Caption = 'Opera'#231#227'o'
      object Agenda1: TMenuItem
        Caption = 'Agenda'
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
    end
  end
end
