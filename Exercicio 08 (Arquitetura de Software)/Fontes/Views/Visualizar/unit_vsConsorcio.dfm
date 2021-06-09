object frm_vsConsorcio: Tfrm_vsConsorcio
  Left = 0
  Top = 0
  Caption = 'Visualiza'#231#227'o de Consorcios'
  ClientHeight = 418
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 803
    Height = 402
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGrid1Enter
  end
  object FDQuery1: TFDQuery
    Connection = data_connection.consorcio_con
    SQL.Strings = (
      'select * from consorcio_vw')
    Left = 424
    Top = 280
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 424
    Top = 224
  end
end
