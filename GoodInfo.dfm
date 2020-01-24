inherited frmGoodInfo: TfrmGoodInfo
  Left = 220
  Top = 197
  Width = 680
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1085#1072#1083#1080#1095#1080#1102' '#1090#1086#1074#1072#1088#1072
  FormStyle = fsStayOnTop
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
  PopupMenu = PopupMenu1
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 157
    Width = 672
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object wwDBGrid1: TwwDBGrid [1]
    Tag = 1
    Left = 0
    Top = 0
    Width = 672
    Height = 157
    DisableThemesInTitle = False
    ControlType.Strings = (
      'CLOSED;CheckBox;1;0'
      'BLACK;CheckBox;1;0')
    Selected.Strings = (
      'STORE_NAME'#9'20'#9#1057#1082#1083#1072#1076#9#9
      'TOTAL'#9'10'#9#1054#1089#1090#1072#1090#1082#1080#9#9
      'ENTERPRISE_NAME'#9'30'#9#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.CheckNewFields = True
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
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize, dgShowCellHint, dgRowResize, dgHideBottomDataLine]
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
    OnCalcTitleImage = wwDBGrid1CalcTitleImage
    TitleImageList = frmDM.ImageList2
    PadColumnStyle = pcsPlain
  end
  object wwDBGrid2: TwwDBGrid [2]
    Tag = 1
    Left = 0
    Top = 160
    Width = 672
    Height = 188
    DisableThemesInTitle = False
    ControlType.Strings = (
      'CLOSED;CheckBox;1;0'
      'BLACK;CheckBox;1;0')
    Selected.Strings = (
      'NAME'#9'30'#9#1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#9#9
      'NUMBER_STR'#9'8'#9#8470#8470#9#9
      'INVOICE_DATE'#9'10'#9#1044#1072#1090#1072#9#9
      'MASTER_NAME'#9'30'#9#1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081#9#9
      'RESERV_AMOUNT'#9'10'#9#1056#1077#1079#1077#1088#1074#9#9
      'MAX_BUY_PRICE'#9'10'#9#1052#1072#1082#1089'.~'#1094#1077#1085#1072#9#9
      'PRICE'#9'10'#9#1062#1077#1085#1072'~'#1087#1088#1086#1076#1072#1078#1080#9'F'#9
      'LATEST_DATE'#9'10'#9#1044#1072#1090#1072'~'#1086#1090#1076#1072#1095#1080#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm, ecoDisableEditorIfReadOnly]
    Align = alBottom
    DataSource = dsReservation
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize, dgShowCellHint, dgRowResize, dgHideBottomDataLine]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    TitleButtons = True
    OnTitleButtonClick = wwDBGrid2TitleButtonClick
    OnCalcTitleImage = wwDBGrid2CalcTitleImage
    TitleImageList = frmDM.ImageList2
    PadColumnStyle = pcsPadHeader
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
      'select G.TOTAL_REAL TOTAL, S.NAME STORE_NAME,'
      'E.NAME ENTERPRISE_NAME'
      'from GOODS G, STORES S, ENTERPRISES E'
      'where (S.ENTERPRISE_ID=E.ID) and (S.ID=G.STORE_ID) and'
      '(G.ARTICUL_ID=:ARTICUL_ID) and (G.TOTAL_REAL!=0)')
    ModifySQL.Strings = (
      'update PRIMARY_TOVAR_INCOME_HEADER'
      'set'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 25
    Top = 63
    object ibdsGoodsSTORE_NAME: TIBStringField
      DisplayLabel = #1057#1082#1083#1072#1076
      DisplayWidth = 20
      FieldName = 'STORE_NAME'
      Origin = 'STORES.NAME'
      Required = True
      Size = 50
    end
    object ibdsGoodsTOTAL: TFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1082#1080
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Origin = 'GOODS.TOTAL_REAL'
      Required = True
    end
    object ibdsGoodsENTERPRISE_NAME: TIBStringField
      DisplayLabel = #1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077
      DisplayWidth = 30
      FieldName = 'ENTERPRISE_NAME'
      Origin = 'ENTERPRISES.NAME'
      Required = True
      Size = 60
    end
  end
  object dsGoods: TDataSource
    DataSet = ibdsGoods
    Left = 25
    Top = 92
  end
  object ibdsReservation: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 100
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from PRIMARY_TOVAR_INCOME_HEADER'
      'where'
      '  ID=0')
    SelectSQL.Strings = (
      
        'select CNTR.NAME, IH.NUMBER_PREFIX||cast(IH.NUMBER as varchar(30' +
        '))||IH.NUMBER_SUFFIX NUMBER_STR,'
      
        'IH.INVOICE_DATE, P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME MAST' +
        'ER_NAME,'
      
        'SUM(IB.RESERV_AMOUNT) RESERV_AMOUNT, IB.MAX_BUY_PRICE, IB.LATEST' +
        '_DATE, IB.PRICE'
      
        'from CONTRACTORS CNTR, INVOICE_HEADER IH, PERSONS P, INVOICE_BOD' +
        'Y IB'
      'where (IB.ARTICUL_ID=:ARTICUL_ID) and (IB.INVOICE_ID=IH.ID) and'
      
        '(P.ID=IH.MASTER_ID) and (CNTR.ID=IH.CONTRACTOR_ID) and (IB.RESER' +
        'V_AMOUNT!=0)'
      
        'group by CNTR.NAME, IH.NUMBER_PREFIX, IH.NUMBER, IH.NUMBER_SUFFI' +
        'X,'
      'IH.INVOICE_DATE, P.SURNAME, P.NAME, P.SECOND_NAME,'
      'IB.MAX_BUY_PRICE, IB.LATEST_DATE, IB.PRICE'
      'union'
      
        'select CNTR.NAME, IH.NUMBER_PREFIX||cast(IH.NUMBER as varchar(30' +
        '))||IH.NUMBER_SUFFIX NUMBER_STR,'
      
        'IH.INVOICE_DATE, P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME MAST' +
        'ER_NAME,'
      
        'SUM(IBS.RESERV_AMOUNT) RESERV_AMOUNT, IBS.MAX_BUY_PRICE, IBS.LAT' +
        'EST_DATE, IBS.PRICE'
      
        'from CONTRACTORS CNTR, INVOICE_HEADER IH, PERSONS P, INVOICE_BOD' +
        'Y IB, INVOICE_BODY_SETS IBS'
      
        'where (IB.ID=IBS.INVOICE_BODY_ID) and (IBS.ARTICUL_ID=:ARTICUL_I' +
        'D) and'
      
        '(IB.INVOICE_ID=IH.ID) and (P.ID=IH.MASTER_ID) and (CNTR.ID=IH.CO' +
        'NTRACTOR_ID) and'
      '(IBS.RESERV_AMOUNT!=0)'
      
        'group by CNTR.NAME, IH.NUMBER_PREFIX, IH.NUMBER, IH.NUMBER_SUFFI' +
        'X, IH.INVOICE_DATE,'
      
        'P.SURNAME, P.NAME, P.SECOND_NAME, IBS.MAX_BUY_PRICE, IBS.LATEST_' +
        'DATE, IBS.PRICE')
    Left = 54
    Top = 63
    object ibdsReservationNAME: TIBStringField
      DisplayLabel = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'CONTRACTORS.NAME'
      Size = 100
    end
    object ibdsReservationNUMBER_STR: TIBStringField
      DisplayLabel = #8470#8470
      DisplayWidth = 8
      FieldName = 'NUMBER_STR'
      Size = 90
    end
    object ibdsReservationINVOICE_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 10
      FieldName = 'INVOICE_DATE'
      Origin = 'INVOICE_HEADER.INVOICE_DATE'
    end
    object ibdsReservationMASTER_NAME: TIBStringField
      DisplayLabel = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
      DisplayWidth = 30
      FieldName = 'MASTER_NAME'
      Size = 92
    end
    object ibdsReservationRESERV_AMOUNT: TFloatField
      DisplayLabel = #1056#1077#1079#1077#1088#1074
      DisplayWidth = 10
      FieldName = 'RESERV_AMOUNT'
      Origin = 'INVOICE_BODY.RESERV_AMOUNT'
    end
    object ibdsReservationMAX_BUY_PRICE: TFloatField
      DisplayLabel = #1052#1072#1082#1089'.~'#1094#1077#1085#1072
      DisplayWidth = 10
      FieldName = 'MAX_BUY_PRICE'
      Origin = 'INVOICE_BODY.MAX_BUY_PRICE'
    end
    object ibdsReservationPRICE: TFloatField
      DisplayLabel = #1062#1077#1085#1072'~'#1087#1088#1086#1076#1072#1078#1080
      DisplayWidth = 10
      FieldName = 'PRICE'
    end
    object ibdsReservationLATEST_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072'~'#1086#1090#1076#1072#1095#1080
      DisplayWidth = 10
      FieldName = 'LATEST_DATE'
      Origin = 'INVOICE_BODY.LATEST_DATE'
    end
  end
  object dsReservation: TDataSource
    DataSet = ibdsReservation
    Left = 54
    Top = 92
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 96
    object N1: TMenuItem
      Caption = #1055#1086#1074#1077#1088#1093' '#1074#1089#1077#1093
      Checked = True
      OnClick = N1Click
    end
  end
end
