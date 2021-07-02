object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'BarberShop'
  ClientHeight = 512
  ClientWidth = 871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 871
    Height = 512
    Align = alClient
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 424
    Top = 240
    object Agendamento1: TMenuItem
      Caption = 'Agendamento'
      object RealizarAgendamento1: TMenuItem
        Caption = 'Cadastrar Agendamento'
        OnClick = RealizarAgendamento1Click
      end
      object VisualizarAgendamentos1: TMenuItem
        Caption = 'Visualizar Agendamentos'
        OnClick = VisualizarAgendamentos1Click
      end
    end
    object Cliente1: TMenuItem
      Caption = 'Cliente'
      object CadastrarCliente1: TMenuItem
        Caption = 'Cadastrar Cliente'
        OnClick = CadastrarCliente1Click
      end
      object VisualizarClientes1: TMenuItem
        Caption = 'Visualizar Clientes'
        OnClick = VisualizarClientes1Click
      end
    end
    object Servios1: TMenuItem
      Caption = 'Servi'#231'os'
      object CadastrarServio1: TMenuItem
        Caption = 'Cadastrar Servi'#231'o'
        OnClick = CadastrarServio1Click
      end
      object VisualizarServios1: TMenuItem
        Caption = 'Visualizar Servi'#231'os'
        OnClick = VisualizarServios1Click
      end
    end
    object Usuario1: TMenuItem
      Caption = 'Usuario'
      object CadastrarUsuario1: TMenuItem
        Caption = 'Cadastrar Usuario'
        OnClick = CadastrarUsuario1Click
      end
      object VisualizarUsuarios1: TMenuItem
        Caption = 'Visualizar Usuarios'
        OnClick = VisualizarUsuarios1Click
      end
    end
  end
end
