object frm_relBairro: Tfrm_relBairro
  Left = 0
  Top = 0
  Caption = 'frm_relBairro'
  ClientHeight = 377
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = data_connection.dataModule_bairro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 36
      BandType = btHeader
      Transparent = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 17
        Width = 37
        Height = 16
        Info = itNow
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 74
      Width = 718
      Height = 47
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 47
        Align = faClient
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedTop = True
        Borders.FixedBottom = True
        Caption = 'Relat'#243'rio de Bairros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -33
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 48
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 16
        Top = 16
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 152
        Top = 16
        Width = 62
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 48
      object RLDBText1: TRLDBText
        Left = 16
        Top = 16
        Width = 42
        Height = 16
        DataField = 'codigo'
        DataSource = data_connection.dataModule_bairro
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 152
        Top = 16
        Width = 60
        Height = 16
        DataField = 'descricao'
        DataSource = data_connection.dataModule_bairro
        Text = ''
      end
    end
    object rlb_rodape: TRLBand
      Left = 38
      Top = 217
      Width = 718
      Height = 46
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo2: TRLSystemInfo
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
  end
end
