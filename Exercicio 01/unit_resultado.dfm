object form_resultado: Tform_resultado
  Left = 0
  Top = 0
  Caption = 'form_resultado'
  ClientHeight = 551
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_result: TPanel
    Left = 0
    Top = 0
    Width = 716
    Height = 510
    Align = alClient
    TabOrder = 0
    object memo_result: TMemo
      Left = 0
      Top = 0
      Width = 716
      Height = 510
      Lines.Strings = (
        'memo_result')
      TabOrder = 0
    end
  end
  object pnl_buttons: TPanel
    Left = 0
    Top = 510
    Width = 716
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 631
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Voltar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn3Click
    end
  end
end
