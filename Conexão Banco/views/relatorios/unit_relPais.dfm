object frm_relPais: Tfrm_relPais
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Paises'
  ClientHeight = 662
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rl_pais: TRLReport
    Left = 32
    Top = -24
    Width = 794
    Height = 1123
    DataSource = data_connection.dataModule_pais
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object rlb_data: TRLSystemInfo
        Left = 3
        Top = 21
        Width = 39
        Height = 16
        Text = ''
      end
    end
    object rlb_title: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 32
      BandType = btTitle
      object rlb_label: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 32
        Align = faClient
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        Caption = 'Relat'#243'rio de Paises'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object rlb_detail: TRLBand
      Left = 38
      Top = 163
      Width = 718
      Height = 40
      Transparent = False
      object RLDBText1: TRLDBText
        Left = 24
        Top = 18
        Width = 42
        Height = 16
        DataField = 'codigo'
        DataSource = data_connection.dataModule_pais
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 120
        Top = 18
        Width = 60
        Height = 16
        DataField = 'descricao'
        DataSource = data_connection.dataModule_pais
        Text = ''
      end
    end
    object rlb_rodape: TRLBand
      Left = 38
      Top = 203
      Width = 718
      Height = 46
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 502
        Top = 21
        Width = 131
        Height = 16
        Info = itPageNumber
        Text = 'P'#225'gina:'
      end
      object trl_pag: TRLSystemInfo
        Left = 623
        Top = 20
        Width = 132
        Height = 16
        Info = itLastPageNumber
        Text = 'De:'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 50
      BandType = btColumnHeader
      object RLLabel1: TRLLabel
        Left = 24
        Top = 16
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel2: TRLLabel
        Left = 120
        Top = 16
        Width = 62
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
    end
  end
end
