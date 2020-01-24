object frmComplectDetails: TfrmComplectDetails
  Left = 27
  Top = 165
  Width = 701
  Height = 375
  Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103' '#1082#1086#1084#1087#1083#1077#1082#1090#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgComplectDetails: TcxGrid
    Left = 0
    Top = 0
    Width = 693
    Height = 348
    Align = alClient
    BevelEdges = []
    BevelInner = bvNone
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tvCompounds: TcxGridDBTableView
      DataController.DataSource = dsCompounds
      DataController.Filter.DateTimeFormat = 'dd.mm.yyyy'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'CRC32_SET'
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      Filtering.CustomizeDialog = False
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.DataRowSizing = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      OptionsView.NewItemRowInfoText = #1058#1091#1090' '#1074#1089#1090#1072#1074#1083#1103#1077#1090#1089#1103' '#1085#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100'!'
      Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
      object tvCompoundsNAME: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Width = 439
        DataBinding.FieldName = 'NAME'
      end
      object tvCompoundsREAL_AMOUNT: TcxGridDBColumn
        Caption = #1048#1084#1077#1077#1090#1089#1103' '#1088#1077#1072#1083#1100#1085#1086
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 128
        DataBinding.FieldName = 'REAL_AMOUNT'
      end
      object tvCompoundsWHITE_AMOUNT: TcxGridDBColumn
        Caption = #1048#1084#1077#1077#1090#1089#1103
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 95
        DataBinding.FieldName = 'WHITE_AMOUNT'
      end
    end
    object tvComposition: TcxGridDBTableView
      DataController.DataSource = dsComposition
      DataController.DetailKeyFieldNames = 'CRC32_SET'
      DataController.Filter.Criteria = {FFFFFFFF0000000000}
      DataController.KeyFieldNames = 'CRC32_SET;NAME'
      DataController.MasterKeyFieldNames = 'CRC32_SET'
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0.00##'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      Filtering.CustomizeDialog = False
      Filtering.Visible = fvNever
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.DataRowSizing = True
      OptionsData.Appending = True
      OptionsSelection.InvertSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
      Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
      object tvCompositionNAME: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'NAME'
      end
      object tvCompositionAMOUNT: TcxGridDBColumn
        Caption = #1050#1086#1083'.-'#1074#1086
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        DataBinding.FieldName = 'AMOUNT'
      end
    end
    object glCompounds: TcxGridLevel
      GridView = tvCompounds
      object glComposition: TcxGridLevel
        GridView = tvComposition
      end
    end
  end
  object ibdsCompounds: TIBDataSet
    Database = frmDM.dbMain
    Transaction = frmTovar.trMain
    CachedUpdates = True
    SelectSQL.Strings = (
      
        'select A.NAME, SUM(GS.REAL_AMOUNT) REAL_AMOUNT, SUM(GS.WHITE_AMO' +
        'UNT) WHITE_AMOUNT,'
      'GS.CRC32_SET'
      'from ARTICULS A, GOODS G, GOODS_SETS GS'
      'where (G.ARTICUL_ID=A.ID) and (GS.GOOD_ID=G.ID) and'
      '(G.ID=:ID)'
      'group by A.NAME, GS.CRC32_SET'
      'order by 1')
    DataSource = frmTovar.dsGoodsTotals
    Left = 17
    Top = 63
    object ibdsCompoundsNAME: TIBStringField
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 100
    end
    object ibdsCompoundsREAL_AMOUNT: TFloatField
      FieldName = 'REAL_AMOUNT'
      ProviderFlags = []
      DisplayFormat = '#,##0.###'
    end
    object ibdsCompoundsWHITE_AMOUNT: TFloatField
      FieldName = 'WHITE_AMOUNT'
      ProviderFlags = []
      DisplayFormat = '#,##0.###'
    end
    object ibdsCompoundsCRC32_SET: TIntegerField
      FieldName = 'CRC32_SET'
      ProviderFlags = []
    end
  end
  object dsCompounds: TDataSource
    DataSet = ibdsCompounds
    Left = 17
    Top = 92
  end
  object ibdsComposition: TIBDataSet
    Database = frmDM.dbMain
    Transaction = frmDM.trMain
    CachedUpdates = True
    RefreshSQL.Strings = (
      'select G.ID, G.ARTICUL_ID, A.NAME ARTICUL_NAME, G.MADE_IN,'
      'G.STORE_ID, S.NAME STORE_NAME, S.ENTERPRISE_ID,'
      'E.NAME ENTERPRISE_NAME, G.PRICE, G.PACK_VALUE, G.TOTAL_REAL,'
      'G.TOTAL_WHITE TOTAL, G.MIN_AMOUNT, G.LAST_BUY_PRICE,'
      'G.SERTIFICATE_INFORMATION, G.VALID_DATE, G.COUNTRY_ID,'
      'C.NAME COUNTRY_NAME, G.DECLARATION_NUMBER, G.COMMENTS'
      'from ARTICULS A, STORES S, ENTERPRISES E, GOODS G'
      'left outer join COUNTRIES C on (C.ID=G.COUNTRY_ID)'
      
        'where (G.ID=:ID) and (A.ID=G.ARTICUL_ID) and (G.STORE_ID=S.ID) a' +
        'nd'
      '(S.ENTERPRISE_ID=E.ID) and (G.ARTICUL_ID=:ARTICUL_ID) and'
      '(G.MADE_IN=:MADE_IN)'
      'order by E.NAME, S.NAME')
    SelectSQL.Strings = (
      
        'select distinct PTIB.CRC32_SET, A.NAME, PTIBS.PACK_VALUE*PTIBS.P' +
        'ACKS_AMOUNT+PTIBS.ITEMS_AMOUNT AMOUNT'
      
        'from ARTICULS A, PRIMARY_TOVAR_INCOME_BODY_SETS PTIBS, PRIMARY_T' +
        'OVAR_INCOME_BODY PTIB'
      
        'where (PTIB.ARTICUL_ID=:ARTICUL_ID) and (A.ID=PTIBS.ARTICUL_ID) ' +
        'and'
      '(PTIBS.PRIMARI_TOVAR_INCOME_BODY_ID= PTIB.ID)'
      'order by 1, 2')
    DataSource = frmTovar.dsGoodsTotals
    Left = 46
    Top = 63
    object ibdsCompositionNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"ARTICULS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsCompositionAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      ProviderFlags = []
    end
    object ibdsCompositionCRC32_SET: TIntegerField
      FieldName = 'CRC32_SET'
      Origin = '"PRIMARY_TOVAR_INCOME_BODY"."CRC32_SET"'
    end
  end
  object dsComposition: TDataSource
    DataSet = ibdsComposition
    Left = 46
    Top = 92
  end
end
