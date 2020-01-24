object frmGetStore: TfrmGetStore
  Left = 321
  Top = 254
  BorderStyle = bsNone
  Caption = 'frmGetStore'
  ClientHeight = 41
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 41
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label11: TLabel
      Left = 2
      Top = 2
      Width = 266
      Height = 13
      Caption = #1059#1082#1072#1078#1080#1090#1077' '#1089#1082#1083#1072#1076', '#1085#1072' '#1082#1086#1090#1086#1088#1086#1084' '#1073#1091#1076#1091#1090' '#1074#1099#1087#1086#1083#1085#1103#1090#1100' '#1079#1072#1082#1072#1079':'
    end
    object SpeedButton1: TSpeedButton
      Left = 290
      Top = 19
      Width = 19
      Height = 19
      Cursor = crHandPoint
      AllowAllUp = True
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
    object lcbStore: TcxLookupComboBox
      Left = 75
      Top = 18
      Width = 215
      Height = 21
      Properties.ClearKey = 46
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'FULL_NAME'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsStores
      TabOrder = 0
    end
  end
  object ibdsStores: TIBDataSet
    Database = frmDM.dbMain
    Transaction = frmInvoice.trMain
    BufferChunks = 100
    SelectSQL.Strings = (
      'select S.ID, E.NAME||'#39'/'#39'||S.NAME FULL_NAME'
      'from STORES S, ENTERPRISES E'
      'where (S.ID>0) and (S.ENTERPRISE_ID=E.ID)'
      'order by 2')
    Left = 92
    Top = 11
    object ibdsStoresFULL_NAME: TIBStringField
      FieldName = 'FULL_NAME'
      ProviderFlags = []
      Size = 111
    end
    object ibdsStoresID: TLargeintField
      FieldName = 'ID'
      Origin = '"STORES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsStores: TDataSource
    DataSet = ibdsStores
    Left = 122
    Top = 12
  end
end
