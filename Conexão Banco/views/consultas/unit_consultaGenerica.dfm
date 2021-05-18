object frm_consultaGenerica: Tfrm_consultaGenerica
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 580
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object panel_principal: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 580
    Align = alClient
    TabOrder = 0
    object grid_consulta: TDBGrid
      Left = 9
      Top = 71
      Width = 848
      Height = 449
      DataSource = ds_consulta
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object btn_carregar: TBitBtn
      Left = 595
      Top = 526
      Width = 128
      Height = 33
      Caption = 'Carregar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btn_carregarClick
    end
    object txt_descricao: TLabeledEdit
      Left = 9
      Top = 40
      Width = 280
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o'
      TabOrder = 2
      OnChange = txt_descricaoChange
    end
    object btn_excluir: TBitBtn
      Left = 729
      Top = 526
      Width = 128
      Height = 33
      Caption = 'Excluir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btn_excluirClick
    end
    object Memo1: TMemo
      Left = 9
      Top = 384
      Width = 544
      Height = 136
      Lines.Strings = (
        'Memo1')
      TabOrder = 4
      Visible = False
    end
  end
  object qr_consulta: TFDQuery
    Connection = data_connection.fdEndereco
    SQL.Strings = (
      'select * from cidade')
    Left = 256
    Top = 312
  end
  object ds_consulta: TDataSource
    DataSet = qr_consulta
    Left = 192
    Top = 312
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 312
    object JSON1: TMenuItem
      Caption = 'JSON'
      ShortCut = 16449
      OnClick = JSON1Click
    end
    object HTML51: TMenuItem
      Caption = 'HTML5'
      ShortCut = 16450
      OnClick = HTML51Click
    end
    object exto1: TMenuItem
      Caption = 'Texto'
      ShortCut = 16451
      OnClick = exto1Click
    end
    object Word1: TMenuItem
      Caption = 'Word'
      ShortCut = 16452
      OnClick = Word1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      ShortCut = 16453
      OnClick = Excel1Click
    end
  end
end
