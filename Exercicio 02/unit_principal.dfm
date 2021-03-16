object form_principal: Tform_principal
  Left = 0
  Top = 0
  Caption = 'form_principal'
  ClientHeight = 281
  ClientWidth = 418
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
  object pnl_principal: TPanel
    Left = 0
    Top = 0
    Width = 418
    Height = 281
    Align = alClient
    TabOrder = 0
    object nm_resultados: TMemo
      Left = 1
      Top = 1
      Width = 416
      Height = 279
      Align = alClient
      ReadOnly = True
      TabOrder = 0
    end
  end
end
