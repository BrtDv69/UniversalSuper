object frmLastBuyPrice: TfrmLastBuyPrice
  Left = 411
  Top = 180
  Width = 249
  Height = 231
  BorderStyle = bsSizeToolWin
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dbgAccountBody: TwwDBGrid
    Tag = 2
    Left = 0
    Top = 0
    Width = 241
    Height = 204
    ControlType.Strings = (
      'ARTICUL_NAME;CustomEdit;wwDBLookupCombo8;F'
      'MADE_IN;CustomEdit;wwDBLookupCombo10;F'
      'LATEST_DATE;CustomEdit;wwDBDateTimePicker3;F'
      'COMMENTS_IR;RichEdit;wwDBRichEdit1'
      'COMMENTS_RESERVATION;RichEdit;wwDBRichEdit1;F')
    Selected.Strings = (
      'PRICE_FMT'#9'14'#9'Цена закупки'#9'F'
      'SYMBOL'#9'8'#9'Валюта'#9'F'
      'CLOSE_DATE'#9'10'#9'Дата'#9'F')
    IniAttributes.Delimiter = ';;'
    ExportOptions.Delimiter = '#9'
    ExportOptions.ExportType = wwgetSYLK
    ExportOptions.Options = [esoShowHeader, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowAlternating, esoClipboard]
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsLastBuyPrice
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgFooter3DCells, dgNoLimitColSize, dgTrailingEllipsis, dgShowCellHint, dgProportionalColResize, dgRowResize, dgHideBottomDataLine]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    TitleImageList = frmDM.ImageList2
    PadColumnStyle = pcsPlain
  end
  object ibdsLastBuyPrice: TIBDataSet
    Database = frmDM.dbMain
    Transaction = frmDM.trUser
    OnCalcFields = ibdsLastBuyPriceCalcFields
    BufferChunks = 1000
    CachedUpdates = True
    SelectSQL.Strings = (
      
        'select first 10 PTIH.CLOSE_DATE, PTIB.PRICE, C.SYMBOL, C.DECIMAL' +
        'S_IN'
      
        'from PRIMARY_TOVAR_INCOME_BODY PTIB, PRIMARY_TOVAR_INCOME_HEADER' +
        ' PTIH, PRIMARY_SETUP PS,'
      'CURRENCY C'
      
        'where (PS.SET_NEW_COST=1) and (PTIH.CLOSED=1) and (PTIH.FAKE=0) ' +
        'and (PTIB.PRICE!=0) and'
      
        '(PTIB.ARTICUL_ID=:ARTICUL_ID) and (PTIH.ENTERPRISE_STORE_ID=:STO' +
        'RE_ID) and'
      
        '(PTIB.PRIMARI_TOVAR_INCOME_HEADER_ID=PTIH.ID) and (PS.ID=PTIH.PR' +
        'IMARY_SETUP_ID) and'
      '(C.ID=PTIH.CURRENCY_ID)'
      'order by PTIH.CLOSE_DATE desc')
    Left = 58
    Top = 272
    object ibdsLastBuyPriceCLOSE_DATE: TDateField
      Alignment = taCenter
      DisplayWidth = 10
      FieldName = 'CLOSE_DATE'
      Origin = '"PRIMARY_TOVAR_INCOME_HEADER"."CLOSE_DATE"'
    end
    object ibdsLastBuyPricePRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'PRICE'
      Origin = '"PRIMARY_TOVAR_INCOME_BODY"."PRICE"'
      Required = True
    end
    object ibdsLastBuyPriceSYMBOL: TIBStringField
      Alignment = taCenter
      DisplayWidth = 4
      FieldName = 'SYMBOL'
      Origin = '"CURRENCY"."SYMBOL"'
      Size = 4
    end
    object ibdsLastBuyPriceDECIMALS_IN: TSmallintField
      DisplayWidth = 10
      FieldName = 'DECIMALS_IN'
      Origin = '"CURRENCY"."DECIMALS_IN"'
      Required = True
    end
    object ibdsLastBuyPricePRICE_FMT: TStringField
      Alignment = taRightJustify
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'PRICE_FMT'
      Calculated = True
    end
  end
  object dsLastBuyPrice: TDataSource
    DataSet = ibdsLastBuyPrice
    Left = 58
    Top = 301
  end
end
