object form_principal: Tform_principal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 403
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 362
    Width = 295
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 315
    ExplicitWidth = 246
    object btn_cadastrar: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = btn_cadastrarClick
    end
    object btn_resultados: TButton
      Left = 206
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Resultados'
      TabOrder = 1
      OnClick = btn_resultadosClick
    end
    object btn_limpar: TButton
      Left = 112
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = btn_limparClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 295
    Height = 362
    Align = alClient
    TabOrder = 1
    ExplicitTop = -6
    object lbl_placa: TLabel
      Left = 16
      Top = 16
      Width = 130
      Height = 13
      Caption = 'Informe a placa do veiculo:'
    end
    object lbl_chasi: TLabel
      Left = 16
      Top = 126
      Width = 134
      Height = 13
      Caption = 'Informe o chassi do veiculo:'
    end
    object lbl_cor: TLabel
      Left = 16
      Top = 232
      Width = 120
      Height = 13
      Caption = 'Informe a cor do veiculo:'
    end
    object Label1: TLabel
      Left = 16
      Top = 72
      Width = 157
      Height = 13
      Caption = 'Informe a montadora do veiculo:'
    end
    object Label2: TLabel
      Left = 16
      Top = 174
      Width = 133
      Height = 13
      Caption = 'Informe o motor do veiculo:'
    end
    object Label3: TLabel
      Left = 16
      Top = 278
      Width = 124
      Height = 13
      Caption = 'Informe o Ano do veiculo:'
    end
    object txt_placa: TEdit
      Left = 16
      Top = 35
      Width = 217
      Height = 21
      TabOrder = 0
    end
    object txt_chassi: TEdit
      Left = 16
      Top = 145
      Width = 217
      Height = 21
      TabOrder = 1
    end
    object txt_montadora: TEdit
      Left = 16
      Top = 91
      Width = 217
      Height = 21
      TabOrder = 2
    end
    object cbx_cores: TComboBox
      Left = 16
      Top = 251
      Width = 145
      Height = 21
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      Items.Strings = (
        'Carmim'
        'Castanho'
        'Cereja'
        'Chocolate'
        'Ciano'
        'Cinza'
        'Cinzento'
        'Cobre'
        'Coral'
        'Creme'
        'Damasco'
        'Dourado'
        'Escarlate'
        'Esmeralda'
        'Ferrugem'
        'F'#250'csia'
        'Gelo'
        'Gren'#225
        'Gris'
        #205'ndigo'
        'Jade'
        'Jambo'
        'Laranja'
        'Lavanda'
        'Lil'#225's'
        'Lim'#227'o'
        'Loiro'
        'Magenta'
        'Malva'
        'Marfim'
        'Marrom'
        'Mostarda'
        'Negro'
        'Ocre'
        'Oliva'
        'Ouro'
        'P'#234'ssego'
        'Prata'
        'Preto'
        'P'#250'rpura'
        'Rosa'
        'Roxo'
        'Rubro'
        'Salm'#227'o'
        'S'#233'pia'
        'Terracota'
        'Tijolo'
        'Turquesa'
        'Uva'
        'Verde'
        'Vermelho'
        'Vinho'
        'Violeta')
    end
    object cbx_ano: TComboBox
      Left = 16
      Top = 297
      Width = 145
      Height = 21
      TabOrder = 4
      Items.Strings = (
        '2022'
        '2021'
        '2020'
        '2019'
        '2018'
        '2017'
        '2016'
        '2015'
        '2014'
        '2013'
        '2012'
        '2011'
        '2010'
        '2009'
        '2008'
        '2007'
        '2006'
        '2005'
        '2004'
        '2003'
        '2002'
        '2001'
        '2000'
        '1999'
        '1998'
        '1997'
        '1996'
        '1995'
        '1994'
        '1993'
        '1992'
        '1991'
        '1990'
        '1989'
        '1988'
        '1987'
        '1986'
        '1985'
        '1984'
        '1983'
        '1982'
        '1981'
        '1980'
        '1979'
        '1978'
        '1977'
        '1976'
        '1975'
        '1974'
        '1973'
        '1972'
        '1971'
        '1970'
        '1969'
        '1968'
        '1967'
        '1966'
        '1965'
        '1964'
        '1963'
        '1962'
        '1961'
        '1960'
        '1959'
        '1958'
        '1957'
        '1956'
        '1955'
        '1954'
        '1953'
        '1952'
        '1951'
        '1950'
        '1949'
        '1948'
        '1947'
        '1946'
        '1945'
        '1944'
        '1943'
        '1942'
        '1941'
        '1940'
        '1939'
        '1938'
        '1937'
        '1936'
        '1935'
        '1934'
        '1933'
        '1932'
        '1931'
        '1930')
    end
    object txt_motor: TEdit
      Left = 16
      Top = 197
      Width = 220
      Height = 21
      TabOrder = 5
    end
  end
end
