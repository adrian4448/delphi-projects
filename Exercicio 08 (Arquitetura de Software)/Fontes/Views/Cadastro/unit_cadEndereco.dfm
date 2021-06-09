object frm_cadEndereco: Tfrm_cadEndereco
  Left = 0
  Top = 0
  Caption = 'Cadastro de Endere'#231'os'
  ClientHeight = 429
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 429
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 16
      Top = 8
      Width = 233
      Height = 50
    end
    object Label1: TLabel
      Left = 40
      Top = 24
      Width = 186
      Height = 19
      Caption = 'Cadastro de Endere'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txt_rua: TLabeledEdit
      Left = 16
      Top = 168
      Width = 233
      Height = 21
      EditLabel.Width = 19
      EditLabel.Height = 13
      EditLabel.Caption = 'Rua'
      TabOrder = 0
    end
    object txt_bairro: TLabeledEdit
      Left = 16
      Top = 208
      Width = 233
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Bairro'
      TabOrder = 1
    end
    object txt_cidade: TLabeledEdit
      Left = 16
      Top = 256
      Width = 233
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Cidade'
      TabOrder = 2
    end
    object txt_cep: TLabeledEdit
      Left = 16
      Top = 120
      Width = 233
      Height = 21
      EditLabel.Width = 19
      EditLabel.Height = 13
      EditLabel.Caption = 'CEP'
      TabOrder = 3
      OnExit = txt_cepExit
    end
    object txt_estado: TLabeledEdit
      Left = 16
      Top = 304
      Width = 233
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Estado'
      TabOrder = 4
    end
    object btn_cadastrar: TBitBtn
      Left = 16
      Top = 392
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
      TabOrder = 5
      OnClick = btn_cadastrarClick
    end
    object txt_numero: TLabeledEdit
      Left = 16
      Top = 357
      Width = 233
      Height = 21
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = 'Numero da rua'
      TabOrder = 6
    end
    object cbx_pessoa: TDBLookupComboBox
      Left = 16
      Top = 72
      Width = 233
      Height = 21
      KeyField = 'id'
      ListField = 'nome'
      ListSource = data_connection.data_pessoa
      TabOrder = 7
    end
  end
end
