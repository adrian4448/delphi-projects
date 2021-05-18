object F_inicial: TF_inicial
  Left = 0
  Top = 0
  Caption = 'Inicio'
  ClientHeight = 404
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu_inicial
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object stb_inicial: TStatusBar
    Left = 0
    Top = 385
    Width = 591
    Height = 19
    Panels = <>
  end
  object menu_inicial: TMainMenu
    Left = 464
    Top = 136
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Configuraes1: TMenuItem
        Caption = 'Ajustes'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
    object Cadastros2: TMenuItem
      Caption = 'Cadastros / Consultas'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      object PDV1: TMenuItem
        Caption = 'PDV'
      end
      object Caixa1: TMenuItem
        Caption = 'Caixa'
      end
      object VendasAbertas1: TMenuItem
        Caption = 'Vendas Abertas'
      end
      object MVendas1: TMenuItem
        Caption = 'Gerenciar Vendas'
      end
      object RelatrioVendas1: TMenuItem
        Caption = 'Relat'#243'rio Vendas'
      end
    end
  end
end
