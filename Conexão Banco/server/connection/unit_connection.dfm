object data_connection: Tdata_connection
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 410
  Width = 574
  object fdEndereco: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=JMV@xrms9'
      'Database=endereco'
      'Server=127.0.0.1'
      'DriverID=mySQL')
    Connected = True
    Transaction = FDTransaction1
    Left = 56
    Top = 88
  end
  object FDTransaction1: TFDTransaction
    Connection = fdEndereco
    Left = 104
    Top = 88
  end
  object dataModule_cidade: TDataSource
    DataSet = qr_cidade
    Left = 184
    Top = 304
  end
  object dataModule_estado: TDataSource
    DataSet = qr_estado
    Left = 96
    Top = 304
  end
  object dataModule_pais: TDataSource
    DataSet = qr_pais
    Left = 16
    Top = 304
  end
  object dataModule_bairro: TDataSource
    DataSet = qr_bairro
    Left = 256
    Top = 304
  end
  object dataModule_rua: TDataSource
    DataSet = qr_rua
    Left = 320
    Top = 304
  end
  object qr_rua: TFDQuery
    Connection = fdEndereco
    SQL.Strings = (
      'select * from rua')
    Left = 320
    Top = 352
  end
  object qr_bairro: TFDQuery
    Connection = fdEndereco
    SQL.Strings = (
      'select * from bairro')
    Left = 256
    Top = 352
  end
  object qr_estado: TFDQuery
    Connection = fdEndereco
    SQL.Strings = (
      'select * from estado')
    Left = 96
    Top = 352
  end
  object qr_cidade: TFDQuery
    Connection = fdEndereco
    SQL.Strings = (
      'select * from cidade')
    Left = 184
    Top = 352
  end
  object qr_pais: TFDQuery
    Connection = fdEndereco
    SQL.Strings = (
      'select * from pais')
    Left = 16
    Top = 352
  end
  object qr_endereco: TFDQuery
    Connection = fdEndereco
    SQL.Strings = (
      'select a.codigo '#39'Codigo'#39',a.cep '#39'CEP'#39','
      '       b.descricao '#39'Pais'#39','
      '       c.descricao '#39'Estado'#39','
      '       d.descricao '#39'Cidade'#39','
      '       e.descricao '#39'Bairro'#39','
      '       f.descricao '#39'Rua'#39
      'from endereco a,'
      #9' pais b,'
      #9' estado c,'
      '     cidade d,'
      '     bairro e,'
      '     rua f'
      'where'#9'b.codigo = a.pais'
      'AND  '#9'c.codigo = a.estado'
      'AND  '#9'd.codigo = a.cidade'
      'AND  '#9'e.codigo = a.bairro'
      'AND  '#9'f.codigo = a.rua;  ')
    Left = 384
    Top = 352
  end
  object dataModule_endereco: TDataSource
    DataSet = qr_endereco
    Left = 384
    Top = 304
  end
end
