object dm_connection: Tdm_connection
  OldCreateOrder = False
  Height = 320
  Width = 595
  object tfd_connection: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=barbershop'
      'Password=JMV@xrms9'
      'DriverID=MySQL')
    Connected = True
    Transaction = tfd_transaction
    Left = 72
    Top = 80
  end
  object tfd_transaction: TFDTransaction
    Connection = tfd_connection
    Left = 200
    Top = 80
  end
  object query_generica: TFDQuery
    Connection = tfd_connection
    Left = 136
    Top = 144
  end
  object query_cliente: TFDQuery
    Connection = tfd_connection
    SQL.Strings = (
      'SELECT * FROM cliente')
    Left = 344
    Top = 144
  end
  object query_usuario: TFDQuery
    Connection = tfd_connection
    SQL.Strings = (
      'select * from usuario')
    Left = 440
    Top = 144
  end
  object query_servico: TFDQuery
    Connection = tfd_connection
    SQL.Strings = (
      'select * from servico')
    Left = 528
    Top = 144
  end
  object dt_cliente: TDataSource
    DataSet = query_cliente
    Left = 344
    Top = 80
  end
  object dt_usuario: TDataSource
    DataSet = query_usuario
    Left = 440
    Top = 80
  end
  object dt_servico: TDataSource
    DataSet = query_servico
    Left = 528
    Top = 80
  end
end
