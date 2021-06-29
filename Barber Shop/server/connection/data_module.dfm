object dm_connection: Tdm_connection
  OldCreateOrder = False
  Height = 320
  Width = 595
  object tfd_connection: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=barbershop'
      'DriverID=MySQL')
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
    Left = 312
    Top = 80
  end
end
