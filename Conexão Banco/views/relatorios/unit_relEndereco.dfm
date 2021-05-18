object frm_relEndereco: Tfrm_relEndereco
  Left = 0
  Top = 0
  Caption = 'frm_relEndereco'
  ClientHeight = 336
  ClientWidth = 750
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
    DataSource = data_connection.dataModule_endereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 42
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 20
        Width = 37
        Height = 16
        Info = itNow
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 80
      Width = 718
      Height = 49
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 49
        Align = faClient
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedTop = True
        Borders.FixedBottom = True
        Caption = 'Relat'#243'rio de Endere'#231'os'
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
      Top = 129
      Width = 718
      Height = 49
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 16
        Top = 27
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 104
        Top = 27
        Width = 30
        Height = 16
        Caption = 'Pais'
      end
      object RLLabel4: TRLLabel
        Left = 200
        Top = 27
        Width = 45
        Height = 16
        Caption = 'Estado'
      end
      object RLLabel5: TRLLabel
        Left = 328
        Top = 27
        Width = 44
        Height = 16
        Caption = 'Cidade'
      end
      object RLLabel6: TRLLabel
        Left = 448
        Top = 27
        Width = 38
        Height = 16
        Caption = 'Bairro'
      end
      object RLLabel7: TRLLabel
        Left = 544
        Top = 27
        Width = 27
        Height = 16
        Caption = 'Rua'
      end
      object RLLabel8: TRLLabel
        Left = 656
        Top = 27
        Width = 31
        Height = 16
        Caption = 'CEP'
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 178
      Width = 718
      Height = 47
      object RLDBText1: TRLDBText
        Left = 16
        Top = 16
        Width = 44
        Height = 16
        DataField = 'Codigo'
        DataSource = data_connection.dataModule_endereco
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 104
        Top = 16
        Width = 30
        Height = 16
        DataField = 'Pais'
        DataSource = data_connection.dataModule_endereco
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 200
        Top = 16
        Width = 45
        Height = 16
        DataField = 'Estado'
        DataSource = data_connection.dataModule_endereco
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 328
        Top = 16
        Width = 44
        Height = 16
        DataField = 'Cidade'
        DataSource = data_connection.dataModule_endereco
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 448
        Top = 16
        Width = 38
        Height = 16
        DataField = 'Bairro'
        DataSource = data_connection.dataModule_endereco
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 544
        Top = 16
        Width = 27
        Height = 16
        DataField = 'Rua'
        DataSource = data_connection.dataModule_endereco
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 656
        Top = 16
        Width = 31
        Height = 16
        DataField = 'CEP'
        DataSource = data_connection.dataModule_endereco
        Text = ''
      end
    end
    object rlb_rodape: TRLBand
      Left = 38
      Top = 225
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
