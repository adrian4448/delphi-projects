object frm_cadEndereco: Tfrm_cadEndereco
  Left = 0
  Top = 0
  Caption = 'Cadastro de endere'#231'o'
  ClientHeight = 374
  ClientWidth = 296
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 296
    Height = 374
    Align = alClient
    TabOrder = 0
    object lbl_cep: TLabel
      Left = 16
      Top = 18
      Width = 19
      Height = 13
      Caption = 'Cep'
    end
    object lbl_pais: TLabel
      Left = 16
      Top = 64
      Width = 19
      Height = 13
      Caption = 'Pais'
    end
    object lbl_estado: TLabel
      Left = 16
      Top = 110
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object lbl_cidade: TLabel
      Left = 18
      Top = 156
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object lbl_bairro: TLabel
      Left = 16
      Top = 204
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object lbl_rua: TLabel
      Left = 16
      Top = 250
      Width = 19
      Height = 13
      Caption = 'Rua'
    end
    object Panel1: TPanel
      Left = 1
      Top = 316
      Width = 294
      Height = 57
      Align = alBottom
      TabOrder = 0
      object btn_cadastrar: TBitBtn
        Left = 119
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Salvar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
          7700333333337777777733333333008088003333333377F73377333333330088
          88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
          000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
          FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
          99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btn_cadastrarClick
      end
      object btn_limpar: TBitBtn
        Left = 200
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Limpar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btn_limparClick
      end
    end
    object cbx_pais: TDBLookupComboBox
      Left = 16
      Top = 83
      Width = 233
      Height = 21
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = data_connection.dataModule_pais
      TabOrder = 1
    end
    object cbx_estado: TDBLookupComboBox
      Left = 16
      Top = 129
      Width = 233
      Height = 21
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = data_connection.dataModule_estado
      TabOrder = 2
    end
    object cbx_cidade: TDBLookupComboBox
      Left = 16
      Top = 175
      Width = 233
      Height = 21
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = data_connection.dataModule_cidade
      TabOrder = 3
    end
    object cbx_bairro: TDBLookupComboBox
      Left = 16
      Top = 223
      Width = 233
      Height = 21
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = data_connection.dataModule_bairro
      TabOrder = 4
    end
    object cbx_rua: TDBLookupComboBox
      Left = 16
      Top = 269
      Width = 233
      Height = 21
      KeyField = 'codigo'
      ListField = 'descricao'
      ListSource = data_connection.dataModule_rua
      TabOrder = 5
    end
  end
  object txt_cep: TMaskEdit
    Left = 16
    Top = 37
    Width = 233
    Height = 21
    EditMask = '##.###-###;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  .   -   '
  end
end
