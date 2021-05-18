object frm_relCidade: Tfrm_relCidade
  Left = 0
  Top = 0
  Caption = 'frm_relCidade'
  ClientHeight = 510
  ClientWidth = 776
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
    DataSource = data_connection.dataModule_cidade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 41
      BandType = btHeader
      Transparent = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 22
        Width = 37
        Height = 16
        Info = itNow
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 79
      Width = 718
      Height = 58
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 58
        Align = faClient
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        Caption = 'Relat'#243'rio de Cidades'
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
      Top = 137
      Width = 718
      Height = 48
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 16
        Top = 18
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 168
        Top = 18
        Width = 62
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
      object RLLabel4: TRLLabel
        Left = 326
        Top = 16
        Width = 31
        Height = 16
        Caption = 'CEP'
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 185
      Width = 718
      Height = 56
      object RLDBText1: TRLDBText
        Left = 18
        Top = 24
        Width = 42
        Height = 16
        DataField = 'codigo'
        DataSource = data_connection.dataModule_cidade
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 168
        Top = 24
        Width = 60
        Height = 16
        DataField = 'descricao'
        DataSource = data_connection.dataModule_cidade
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 326
        Top = 24
        Width = 25
        Height = 16
        DataField = 'cep'
        DataSource = data_connection.dataModule_cidade
        Text = ''
      end
    end
    object rlb_rodape: TRLBand
      Left = 38
      Top = 241
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
