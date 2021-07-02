object frm_visuAgendamento: Tfrm_visuAgendamento
  Left = 0
  Top = 0
  Caption = 'Visualiza'#231#227'o de Agendamentos'
  ClientHeight = 652
  ClientWidth = 916
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
    Width = 916
    Height = 652
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 24
      Top = 16
      Width = 857
      Height = 201
    end
    object lbl_cliente: TLabel
      Left = 40
      Top = 96
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
      Left = 224
      Top = 96
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
    object lbl_barbeiro: TLabel
      Left = 432
      Top = 96
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
    object lbl_titulo: TLabel
      Left = 320
      Top = 40
      Width = 202
      Height = 33
      Caption = 'Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object grid_agendamentos: TDBGrid
      Left = 24
      Top = 248
      Width = 865
      Height = 393
      DataSource = data_source
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object lkp_cliente: TDBLookupComboBox
      Left = 40
      Top = 115
      Width = 178
      Height = 21
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dm_connection.dt_cliente
      TabOrder = 1
    end
    object lkp_barbeiro: TDBLookupComboBox
      Left = 432
      Top = 115
      Width = 201
      Height = 21
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dm_connection.dt_usuario
      TabOrder = 2
    end
    object lkp_servico: TDBLookupComboBox
      Left = 224
      Top = 115
      Width = 202
      Height = 21
      KeyField = 'id'
      ListField = 'descricao'
      ListSource = dm_connection.dt_servico
      TabOrder = 3
    end
    object btn_filtrar: TBitBtn
      Left = 40
      Top = 174
      Width = 97
      Height = 25
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnClick = btn_filtrarClick
    end
    object btn_limpar: TBitBtn
      Left = 151
      Top = 174
      Width = 91
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
    end
  end
  object data_source: TDataSource
    DataSet = query
    Left = 376
    Top = 408
  end
  object query: TFDQuery
    Connection = dm_connection.tfd_connection
    SQL.Strings = (
      'select a.id '#39'Sequencia'#39','
      '       b.nome '#39'Cliente'#39','
      '       c.descricao '#39'Servi'#231'o'#39','
      '       d.nome '#39'Barbeiro'#39','
      '       a.valor '#39'Valor'#39','
      '       a.data '#39'Data'#39
      'from agendamento a,'
      '     cliente b,'
      '     servico c, '
      '     usuario d'
      'where a.cliente = b.id'
      'and   a.servico = c.id'
      'and   a.barbeiro = d.id')
    Left = 464
    Top = 408
  end
end
