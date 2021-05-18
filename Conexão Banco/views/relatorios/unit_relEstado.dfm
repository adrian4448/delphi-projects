object frm_relEstado: Tfrm_relEstado
  Left = 0
  Top = 0
  Caption = 'frm_relEstado'
  ClientHeight = 458
  ClientWidth = 688
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
    Left = -32
    Top = 8
    Width = 794
    Height = 1123
    DataSource = data_connection.dataModule_estado
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 51
      BandType = btHeader
      Transparent = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 32
        Width = 37
        Height = 16
        Info = itNow
        Text = ''
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 40
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object rl_title: TRLLabel
        Left = 1
        Top = 1
        Width = 716
        Height = 38
        Align = faClient
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Estados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -30
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 48
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 133
        Top = 17
        Width = 64
        Height = 16
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Descri'#231#227'o'
      end
      object RLLabel3: TRLLabel
        Left = 296
        Top = 16
        Width = 33
        Height = 16
        Caption = 'Sigla'
      end
    end
    object RLLabel1: TRLLabel
      Left = 65
      Top = 145
      Width = 44
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Caption = 'C'#243'digo'
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 177
      Width = 718
      Height = 56
      object RLDBText2: TRLDBText
        Left = 137
        Top = 24
        Width = 60
        Height = 16
        DataField = 'descricao'
        DataSource = data_connection.dataModule_estado
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 296
        Top = 24
        Width = 31
        Height = 16
        DataField = 'sigla'
        DataSource = data_connection.dataModule_estado
        Text = ''
      end
    end
    object RLDBText1: TRLDBText
      Left = 65
      Top = 201
      Width = 44
      Height = 16
      DataField = 'codigo'
      DataSource = data_connection.dataModule_estado
      Text = ''
    end
    object rlb_rodape: TRLBand
      Left = 38
      Top = 233
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
