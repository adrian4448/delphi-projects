object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 318
  Width = 477
  object con_forca: TFDConnection
    Params.Strings = (
      'Database=forca_dlp'
      'User_Name=root'
      'Password=JMV@xrms9'
      'DriverID=MySQL')
    Left = 72
    Top = 56
  end
end
