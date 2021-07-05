object frm_cadAgendamento: Tfrm_cadAgendamento
  Left = 0
  Top = 0
  Caption = 'Realizar Agendamento'
  ClientHeight = 413
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 331
    Height = 413
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 16
      Top = 24
      Width = 297
      Height = 369
    end
    object lbl_titulo: TLabel
      Left = 32
      Top = 40
      Width = 236
      Height = 25
      Caption = 'Realizar Agendamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_cliente: TLabel
      Left = 32
      Top = 93
      Width = 39
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_servico: TLabel
      Left = 32
      Top = 139
      Width = 42
      Height = 13
      Caption = 'Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 192
      Width = 48
      Height = 13
      Caption = 'Barbeiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Valor: TLabel
      Left = 32
      Top = 238
      Width = 29
      Height = 13
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_horario: TLabel
      Left = 32
      Top = 284
      Width = 57
      Height = 13
      Caption = 'Dia / Hora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lkp_cliente: TDBLookupComboBox
      Left = 32
      Top = 112
      Width = 209
      Height = 21
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dm_connection.dt_cliente
      TabOrder = 0
      OnEnter = lkp_clienteEnter
    end
    object lkp_servico: TDBLookupComboBox
      Left = 32
      Top = 158
      Width = 209
      Height = 21
      KeyField = 'id'
      ListField = 'descricao'
      ListSource = dm_connection.dt_servico
      TabOrder = 1
    end
    object lkp_barbeiro: TDBLookupComboBox
      Left = 32
      Top = 211
      Width = 209
      Height = 21
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dm_connection.dt_usuario
      TabOrder = 2
    end
    object txt_data: TMaskEdit
      Left = 32
      Top = 303
      Width = 121
      Height = 21
      EditMask = '!99/99/00 00:00;1;_'
      MaxLength = 14
      TabOrder = 3
      Text = '  /  /     :  '
      TextHint = '01'
    end
    object btn_cadastrar: TBitBtn
      Left = 32
      Top = 354
      Width = 91
      Height = 25
      Caption = 'Cadastrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 4
      OnClick = btn_cadastrarClick
    end
    object btn_limpar: TBitBtn
      Left = 129
      Top = 354
      Width = 75
      Height = 25
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 5
      OnClick = btn_limparClick
    end
    object txt_valor: TEdit
      Left = 32
      Top = 257
      Width = 209
      Height = 21
      TabOrder = 6
    end
  end
end
