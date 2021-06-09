object frm_cadConsorcio: Tfrm_cadConsorcio
  Left = 0
  Top = 0
  Caption = 'Cadastro de Consorcios'
  ClientHeight = 387
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 312
    Height = 336
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 8
      Top = 23
      Width = 289
      Height = 298
    end
    object StaticText1: TStaticText
      Left = 8
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Cadastro de Consorcio'
      TabOrder = 0
    end
    object txt_segmento: TLabeledEdit
      Left = 16
      Top = 48
      Width = 193
      Height = 21
      EditLabel.Width = 93
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Segmento'
      TabOrder = 1
    end
    object txt_taxaSeguro: TLabeledEdit
      Left = 16
      Top = 88
      Width = 193
      Height = 21
      EditLabel.Width = 75
      EditLabel.Height = 13
      EditLabel.Caption = 'Taxa do seguro'
      TabOrder = 2
    end
    object txt_qtdMeses: TLabeledEdit
      Left = 16
      Top = 184
      Width = 193
      Height = 21
      EditLabel.Width = 141
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade de meses (Plano)'
      TabOrder = 3
    end
    object txt_descPlano: TLabeledEdit
      Left = 16
      Top = 141
      Width = 193
      Height = 21
      EditLabel.Width = 75
      EditLabel.Height = 13
      EditLabel.Caption = 'Descri'#231#227'o Plano'
      TabOrder = 4
    end
    object txt_valorCarta: TLabeledEdit
      Left = 16
      Top = 284
      Width = 193
      Height = 21
      EditLabel.Width = 54
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor Carta'
      TabOrder = 5
    end
    object txt_estativo: TLabeledEdit
      Left = 16
      Top = 240
      Width = 121
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = 'Estativo'
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 336
    Width = 312
    Height = 51
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
