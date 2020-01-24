object frmChoiseCopy: TfrmChoiseCopy
  Left = 273
  Top = 166
  BorderStyle = bsNone
  Caption = 'frmChoiseCopy'
  ClientHeight = 59
  ClientWidth = 136
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 136
    Height = 59
    Align = alClient
    BevelInner = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 27
      Top = 37
      Width = 81
      Height = 19
      Cursor = crHandPoint
      Hint = 
        'Применить все'#13#10'сделанные изменения|Применить все сделанные измен' +
        'ения'
      AllowAllUp = True
      Caption = 'Принять'
      Flat = True
      Glyph.Data = {
        46010000424D460100000000000076000000280000001C0000000D0000000100
        040000000000D000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333330000333333333333333333F3333333330000333303333333
        33333F3F3333333300003330003333333333F333F33333330000330000033333
        333F33333F33333300003000300033333373333333F333330000300333000333
        337333F7333F33330000333333300033333777337333F3330000333333330003
        3333333337333F33000033333333300033333333337333F30000333333333300
        3333333333373373000033333333333333333333333377330000333333333333
        33333333333333330000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = SpeedButton1Click
    end
    object chbHeader: TCheckBox
      Left = 3
      Top = 2
      Width = 130
      Height = 17
      Caption = 'Копировать шапку'
      TabOrder = 0
      OnClick = chbHeaderClick
    end
    object chbBody: TCheckBox
      Left = 3
      Top = 20
      Width = 120
      Height = 17
      Caption = 'Копировать тело'
      Enabled = False
      TabOrder = 1
    end
  end
end
