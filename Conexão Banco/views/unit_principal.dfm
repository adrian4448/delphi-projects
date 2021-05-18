object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  Caption = 'Endere'#231'o'
  ClientHeight = 499
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object panelCliente: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 499
    Align = alClient
    TabOrder = 0
  end
  object mainMenu: TMainMenu
    Left = 320
    Top = 232
    object menuCadastro: TMenuItem
      Caption = 'Cadastro'
      object optPais: TMenuItem
        Caption = 'Pais'
        OnClick = optPaisClick
      end
      object optEstado: TMenuItem
        Caption = 'Estado'
        OnClick = optEstadoClick
      end
      object optCidade: TMenuItem
        Caption = 'Cidade'
        OnClick = optCidadeClick
      end
      object optBairro: TMenuItem
        Caption = 'Bairro'
        OnClick = optBairroClick
      end
      object optRua: TMenuItem
        Caption = 'Rua'
        OnClick = optRuaClick
      end
      object optEndereco: TMenuItem
        Caption = 'Endere'#231'o'
        OnClick = optEnderecoClick
      end
    end
    object Consulta1: TMenuItem
      Caption = 'Consulta'
      object Endereo1: TMenuItem
        Caption = 'Endere'#231'o'
        OnClick = Endereo1Click
      end
    end
    object Relatorios1: TMenuItem
      Caption = 'Relatorios'
      object Pais1: TMenuItem
        Caption = 'Pais'
        OnClick = Pais1Click
      end
      object Estado1: TMenuItem
        Caption = 'Estado'
        OnClick = Estado1Click
      end
      object Cidade1: TMenuItem
        Caption = 'Cidade'
        OnClick = Cidade1Click
      end
      object Bairro1: TMenuItem
        Caption = 'Bairro'
        OnClick = Bairro1Click
      end
      object Rua1: TMenuItem
        Caption = 'Rua'
        OnClick = Rua1Click
      end
      object Endereo2: TMenuItem
        Caption = 'Endere'#231'o'
        OnClick = Endereo2Click
      end
    end
  end
end
