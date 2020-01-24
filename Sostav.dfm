inherited frmSostav: TfrmSostav
  Left = 51
  Top = 180
  Width = 680
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1089#1086#1089#1090#1072#1074#1091' '#1087#1077#1088#1074#1080#1095#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000777770000000000000000000000000C40777770000000000000
    000000000CCC440777770000000000000000000CCCCC44407777700000000000
    00000CCCCCCE44440777770000000000000CCCCCCEECC4444077777000000000
    0CCCCCCCC4CCCC44407777770000000CCCCCCCCCC44CCCC4407777777000000C
    CCCCCCCCC444CCCC407777700000000CCE0CCCCCC4444CC0077770000000000E
    EC0CCCCCC44440077770000000000000CC0CCCCCC44440777000000000000000
    0C0CCCCCC44440700000000000000000000CCCCCC44440000000000000000000
    000CCCCCC44440000000000000000000000CCCCCC44440000000000000000000
    000CCCCCC44440000000000000000000000CCCCEEC4440000000000000000000
    000CCEECCCC4400000000000000000000CCEEC4444CC40000000000000000000
    0EECC0000444C00000000000000000000CC004444004C0000000000000000000
    0004444444400000000000000000000000044444444000000000000000000000
    0044CCC4C444000000000000000000000044CCCCC44400000000000000000000
    004CCCCCC44400000000000000000000004CCFCCC44400000000000000000000
    000CCCCCC4400000000000000000000000044CC4444000000000000000000000
    000004444000000000000000000000000000000000000000000000000000FFFE
    03FFFFF801FFFFE000FFFF80007FFE00003FF800001FE000000FC0000007C000
    001FC000007FC00001FFE00007FFF0001FFFF8003FFFFC003FFFFC003FFFFC00
    3FFFFC003FFFF8003FFFF0003FFFF0003FFFF0003FFFF8007FFFFC00FFFFF800
    7FFFF8007FFFF8007FFFF8007FFFFC00FFFFFC00FFFFFE01FFFFFF87FFFF}
  KeyPreview = True
  OldCreateOrder = True
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid [0]
    Tag = 1
    Left = 0
    Top = 0
    Width = 672
    Height = 348
    DisableThemesInTitle = False
    ControlType.Strings = (
      'CLOSED;CheckBox;1;0'
      'BLACK;CheckBox;1;0')
    Selected.Strings = (
      'NAME'#9'44'#9#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      'MADE_IN'#9'30'#9#1055#1088#1086#1080#1079'-~'#1074#1086#1076#1080#1090#1077#1083#1100
      'AMOUNT'#9'10'#9#1050#1086#1083'.-'#1074#1086
      'PRICE'#9'10'#9#1062#1077#1085#1072
      'SYMBOL'#9'9'#9#1042#1072#1083#1102#1090#1072)
    IniAttributes.Delimiter = ';;'
    IniAttributes.CheckNewFields = True
    ExportOptions.Delimiter = '#9'
    ExportOptions.ExportType = wwgetSYLK
    ExportOptions.FileName = 'c:\aa.txt'
    ExportOptions.Options = [esoShowHeader, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowAlternating, esoClipboard]
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm, ecoDisableEditorIfReadOnly]
    Align = alClient
    DataSource = dsGoods
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyOptions = []
    MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgNoLimitColSize, dgTrailingEllipsis, dgShowCellHint, dgRowResize]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = True
    OnTitleButtonClick = wwDBGrid1TitleButtonClick
    OnDblClick = wwDBGrid1DblClick
    OnCalcTitleImage = wwDBGrid1CalcTitleImage
    TitleImageList = frmDM.ImageList2
    PadColumnStyle = pcsPlain
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
  end
  inherited ibsGen_ID: TIBSQL
    Left = 66
  end
  inherited ibsGridsSetup: TIBSQL
    Left = 88
  end
  object ibdsGoods: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 100
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from PRIMARY_TOVAR_INCOME_HEADER'
      'where'
      '  ID=0')
    SelectSQL.Strings = (
      'select A.NAME, PTIB.MADE_IN,'
      'SUM(PTIB.PACK_VALUE*PTIB.PACKS_AMOUNT+PTIB.ITEMS_AMOUNT) AMOUNT,'
      'PTIB.PRICE, C.SYMBOL'
      'from PRIMARY_TOVAR_INCOME_BODY PTIB, ARTICULS A,'
      'PRIMARY_TOVAR_INCOME_HEADER PTIH, CURRENCY C'
      'where (PTIB.PRIMARI_TOVAR_INCOME_HEADER_ID=PTIH.ID) and'
      '(A.ID=PTIB.ARTICUL_ID) and (C.ID=PTIH.CURRENCY_ID) and'
      '(PTIH.ID=:ID)'
      'group by A.NAME, PTIB.MADE_IN, PTIB.PRICE, C.SYMBOL'
      'order by 1')
    ModifySQL.Strings = (
      'update PRIMARY_TOVAR_INCOME_HEADER'
      'set'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 25
    Top = 63
    object ibdsGoodsNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 44
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object ibdsGoodsMADE_IN: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079'-~'#1074#1086#1076#1080#1090#1077#1083#1100
      DisplayWidth = 30
      FieldName = 'MADE_IN'
      Required = True
      Size = 30
    end
    object ibdsGoodsAMOUNT: TFloatField
      DisplayLabel = #1050#1086#1083'.-'#1074#1086
      DisplayWidth = 10
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.###'
    end
    object ibdsGoodsPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'PRICE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object ibdsGoodsSYMBOL: TIBStringField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      DisplayWidth = 9
      FieldName = 'SYMBOL'
      Size = 4
    end
  end
  object dsGoods: TDataSource
    DataSet = ibdsGoods
    Left = 25
    Top = 92
  end
end
