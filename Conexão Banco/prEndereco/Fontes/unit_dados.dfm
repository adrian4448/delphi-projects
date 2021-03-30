object dm_dados: Tdm_dados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 274
  Width = 361
  object fdEndereco: TFDConnection
    Params.Strings = (
      'Database=endereco'
      'User_Name=root'
      'Server=localhost'
      'CharacterSet=latin1'
      'Password=JMV@xrms9'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Transaction = fdTransactionEndereco
    Left = 56
    Top = 24
  end
  object fdTransactionEndereco: TFDTransaction
    Connection = fdEndereco
    Left = 192
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = fdEndereco
    Left = 216
    Top = 144
  end
end
