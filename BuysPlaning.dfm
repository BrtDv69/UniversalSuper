inherited frmBuysPlaning: TfrmBuysPlaning
  Left = 224
  Top = 158
  Caption = #1055#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1091#1087#1086#1082
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object cxTabControl1: TcxTabControl [0]
    Left = 0
    Top = 0
    Width = 536
    Height = 348
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [pcoTopToBottomText]
    ParentFont = False
    Style = 1
    TabIndex = 0
    TabOrder = 0
    TabPosition = tpRight
    Tabs.Strings = (
      #1055#1086' '#1086#1089#1090#1072#1090#1082#1072#1084
      #1055#1086' '#1082#1083#1080#1077#1085#1090#1072#1084)
    ClientRectBottom = 346
    ClientRectLeft = 2
    ClientRectRight = 511
    ClientRectTop = 2
    object dbgGoods: TcxGrid
      Left = 2
      Top = 2
      Width = 509
      Height = 344
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object tvGoods: TcxGridDBTableView
        OnDblClick = tvGoodsDblClick
        DataController.DataSource = dsMainGoodsReserv
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'NeedTotalToBuyUpReserv'
            Column = tvGoodsNeedTotalToBuyUpReserv
          end
          item
            Kind = skSum
            FieldName = 'NeedTotalToBuyUpReservAndMin'
            Column = tvGoodsNeedTotalToBuyUpReservAndMin
          end
          item
            Kind = skSum
            FieldName = 'Order_Total'
            Column = tvGoodsOrder_Total
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soNullIgnore]
        NavigatorButtons.ConfirmDelete = False
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnHiding = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.Footer = True
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
        OnCustomDrawColumnHeader = tvGoodsCustomDrawColumnHeader
        object tvGoodsARTICUL_NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'ARTICUL_NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
        end
        object tvGoodsSTORE_NAME: TcxGridDBColumn
          Caption = #1057#1082#1083#1072#1076
          DataBinding.FieldName = 'STORE_NAME'
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 150
        end
        object tvGoodsIN_SETS: TcxGridDBColumn
          Caption = #1042' '#1082#1086#1084#1087#1083#1077#1082#1090#1077
          DataBinding.FieldName = 'IN_SETS'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Grouping = False
        end
        object tvGoodsTOTAL: TcxGridDBColumn
          Caption = #1053#1072' '#1089#1082#1083#1072#1076#1077
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Grouping = False
        end
        object tvGoodsTotalWithSets: TcxGridDBColumn
          Caption = #1042#1089#1077#1075#1086
          DataBinding.FieldName = 'TotalWithSets'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Grouping = False
        end
        object tvGoodsFUTURE_INCOME: TcxGridDBColumn
          Caption = #1054#1078#1080#1076#1072#1077#1090#1089#1103
          DataBinding.FieldName = 'FUTURE_INCOME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Grouping = False
        end
        object tvGoodsMIN_AMOUNT: TcxGridDBColumn
          Caption = #1052#1080#1085#1080#1084#1091#1084
          DataBinding.FieldName = 'MIN_AMOUNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Grouping = False
        end
        object tvGoodsIN_RESERV: TcxGridDBColumn
          Caption = #1047#1072#1088#1077#1079#1077#1088#1074#1080#1088#1086#1074#1072#1085#1086
          DataBinding.FieldName = 'IN_RESERV'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Grouping = False
        end
        object tvGoodsLAST_BUY_PRICE: TcxGridDBColumn
          Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1094#1077#1085#1072' '#1079#1072#1082#1091#1087#1082#1080
          DataBinding.FieldName = 'LAST_BUY_PRICE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Grouping = False
        end
        object tvGoodsNeedToBuyUpReserv: TcxGridDBColumn
          Caption = #1050#1091#1087#1080#1090#1100' '#1076#1083#1103' '#1088#1077#1079#1077#1088#1074#1072
          DataBinding.FieldName = 'NeedToBuyUpReserv'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Grouping = False
        end
        object tvGoodsNeedTotalToBuyUpReserv: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1076#1083#1103' '#1088#1077#1079#1077#1088#1074#1072
          DataBinding.FieldName = 'NeedTotalToBuyUpReserv'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
        end
        object tvGoodsNeedToBuyUpReservAndMin: TcxGridDBColumn
          Caption = #1050#1091#1087#1080#1090#1100' '#1076#1083#1103' '#1088#1077#1079#1077#1088#1074#1072' '#1080' '#1084#1080#1085#1080#1084#1091#1084#1072
          DataBinding.FieldName = 'NeedToBuyUpReservAndMin'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Grouping = False
        end
        object tvGoodsNeedTotalToBuyUpReservAndMin: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1076#1083#1103' '#1088#1077#1079#1077#1088#1074#1072' '#1080' '#1084#1080#1085#1080#1084#1091#1084#1072
          DataBinding.FieldName = 'NeedTotalToBuyUpReservAndMin'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
        end
        object tvGoodsORDER_AMOUNT: TcxGridDBColumn
          Caption = #1050#1086#1083'.-'#1074#1086' '#1079#1072#1082#1072#1079#1072
          DataBinding.FieldName = 'ORDER_AMOUNT'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.IncSearch = False
          Options.Grouping = False
        end
        object tvGoodsORDER_PRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072' '#1079#1072#1082#1072#1079#1072
          DataBinding.FieldName = 'ORDER_PRICE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.IncSearch = False
          Options.Grouping = False
        end
        object tvGoodsOrder_Total: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072' '#1079#1072#1082#1072#1079#1072
          DataBinding.FieldName = 'Order_Total'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.IncSearch = False
          Options.Grouping = False
        end
        object tvGoodsCONTRACTOR_ID: TcxGridDBColumn
          Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
          DataBinding.FieldName = 'CONTRACTOR_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              Width = 300
              FieldName = 'NAME'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsContractors
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
      end
      object tvInvoices: TcxGridDBTableView
        DataController.DataModeController.OnDetailFirst = tvInvoicesDataControllerDataModeControllerDetailFirst
        DataController.DataSource = dsMainInvoicesReserv
        DataController.DetailKeyFieldNames = 'ID'
        DataController.KeyFieldNames = 'NUMBER_STR; INVOICE_DATE'
        DataController.MasterKeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnHiding = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.Indicator = True
        Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
        OnCustomDrawColumnHeader = tvGoodsCustomDrawColumnHeader
        object tvInvoicesCONTRACTOR_NAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'CONTRACTOR_NAME'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 200
        end
        object tvInvoicesNUMBER_STR: TcxGridDBColumn
          Caption = #8470' '#1089#1095#1077#1090#1072
          DataBinding.FieldName = 'NUMBER_STR'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 70
        end
        object tvInvoicesINVOICE_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1095#1077#1090#1072
          DataBinding.FieldName = 'INVOICE_DATE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvInvoicesPRICE: TcxGridDBColumn
          Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
          DataBinding.FieldName = 'PRICE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvInvoicesPAYING_PERSENT: TcxGridDBColumn
          Caption = '%% '#1086#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'PAYING_PERSENT'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvInvoicesPAYING_DATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
          DataBinding.FieldName = 'PAYING_DATE'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvInvoicesRESERV_AMOUNT: TcxGridDBColumn
          Caption = #1056#1077#1079#1077#1088#1074
          DataBinding.FieldName = 'RESERV_AMOUNT'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
        end
        object tvInvoicesLATEST_DATE: TcxGridDBColumn
          Caption = #1055#1088#1077#1076#1087#1086#1083#1072#1075#1072#1077#1084#1072#1103' '#1076#1072#1090#1072' '#1086#1090#1076#1072#1095#1080
          DataBinding.FieldName = 'LATEST_DATE'
        end
        object tvInvoicesCOMMENTS_RESERVATION: TcxGridDBColumn
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080' '#1088#1077#1079#1077#1088#1074#1072
          DataBinding.FieldName = 'COMMENTS_RESERVATION'
          Width = 100
        end
      end
      object glGoods: TcxGridLevel
        GridView = tvGoods
        object glInvoices: TcxGridLevel
          GridView = tvInvoices
        end
      end
    end
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
  end
  inherited ibsGen_ID: TIBSQL
    Left = 114
    Top = 92
  end
  object ibdsMainGoodsReserv: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterOpen = ibdsMainGoodsReservAfterOpen
    OnCalcFields = ibdsMainGoodsReservCalcFields
    BufferChunks = 100
    CachedUpdates = True
    SelectSQL.Strings = (
      'select G.ID, A.NAME ARTICUL_NAME, S.NAME STORE_NAME, G.IN_SETS,'
      
        'SUM(GT.TOTAL_REAL) TOTAL, G.MIN_AMOUNT, G.LAST_BUY_PRICE, SUM(GT' +
        '.FUTURE_INCOME) FUTURE_INCOME,'
      'G.IN_RESERV, CAST(0 as DOUBLE PRECISION) TOTALWITHSETS,'
      'CAST(0 as DOUBLE PRECISION) NEEDTOBUYUPRESERV,'
      
        'CAST(0 as DOUBLE PRECISION) NEEDTOBUYUPRESERVANDMIN, CAST(0 as D' +
        'OUBLE PRECISION) ORDER_AMOUNT,'
      
        'CAST(0 as DOUBLE PRECISION) ORDER_PRICE, CAST(0 as INTEGER) CONT' +
        'RACTOR_ID'
      'from STORES S, ARTICULS A, GOODS G, GOODS GT, STORES ST'
      'where (A.ITEM_TYPE=3) and (A.ID=G.ARTICUL_ID) and'
      '(G.TOTAL_REAL<G.MIN_AMOUNT+G.IN_RESERV) and'
      '((G.MIN_AMOUNT>0) or (G.IN_RESERV>0)) and (S.ID=G.STORE_ID) and'
      
        '((ST.IN_LEAVINGS=1) or (ST.IN_LEAVINGS=2)) and (ST.ENTERPRISE_ID' +
        '=S.ENTERPRISE_ID) and (GT.ARTICUL_ID=G.ARTICUL_ID) and'
      '(ST.ID=GT.STORE_ID)'
      
        'group by G.ID, A.NAME, S.NAME, G.IN_SETS, G.MIN_AMOUNT, G.LAST_B' +
        'UY_PRICE, G.IN_RESERV'
      'order by 2')
    ModifySQL.Strings = (
      'update GOODS'
      'set'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 10
    Top = 64
    object ibdsMainGoodsReservID: TLargeintField
      FieldName = 'ID'
      Origin = '"GOODS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainGoodsReservIN_SETS: TFloatField
      FieldName = 'IN_SETS'
      Origin = '"GOODS"."IN_SETS"'
    end
    object ibdsMainGoodsReservTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"GOODS"."TOTAL_REAL"'
    end
    object ibdsMainGoodsReservMIN_AMOUNT: TFloatField
      FieldName = 'MIN_AMOUNT'
      Origin = '"GOODS"."MIN_AMOUNT"'
    end
    object ibdsMainGoodsReservLAST_BUY_PRICE: TFloatField
      FieldName = 'LAST_BUY_PRICE'
      Origin = '"GOODS"."LAST_BUY_PRICE"'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ibdsMainGoodsReservFUTURE_INCOME: TFloatField
      FieldName = 'FUTURE_INCOME'
      Origin = '"GOODS"."FUTURE_INCOME"'
    end
    object ibdsMainGoodsReservIN_RESERV: TFloatField
      FieldName = 'IN_RESERV'
      Origin = '"GOODS"."IN_RESERV"'
    end
    object ibdsMainGoodsReservORDER_AMOUNT: TFloatField
      FieldName = 'ORDER_AMOUNT'
      Required = True
    end
    object ibdsMainGoodsReservORDER_PRICE: TFloatField
      FieldName = 'ORDER_PRICE'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ibdsMainGoodsReservCONTRACTOR_ID: TIntegerField
      FieldName = 'CONTRACTOR_ID'
    end
    object ibdsMainGoodsReservARTICUL_NAME: TIBStringField
      FieldName = 'ARTICUL_NAME'
      Origin = '"ARTICULS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsMainGoodsReservSTORE_NAME: TIBStringField
      FieldName = 'STORE_NAME'
      Origin = '"STORES"."NAME"'
      Required = True
      Size = 50
    end
    object ibdsMainGoodsReservTOTALWITHSETS: TFloatField
      FieldName = 'TOTALWITHSETS'
      Required = True
    end
    object ibdsMainGoodsReservNEEDTOBUYUPRESERV: TFloatField
      FieldName = 'NEEDTOBUYUPRESERV'
      Required = True
    end
    object ibdsMainGoodsReservNEEDTOBUYUPRESERVANDMIN: TFloatField
      FieldName = 'NEEDTOBUYUPRESERVANDMIN'
      Required = True
    end
    object ibdsMainGoodsReservNeedTotalToBuyUpReserv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NeedTotalToBuyUpReserv'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsMainGoodsReservNeedTotalToBuyUpReservAndMin: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NeedTotalToBuyUpReservAndMin'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsMainGoodsReservOrder_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Order_Total'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
  end
  object dsMainGoodsReserv: TDataSource
    DataSet = ibdsMainGoodsReserv
    Left = 10
    Top = 93
  end
  object GridPopupMenu: TcxGridPopupMenu
    Grid = dbgGoods
    PopupMenus = <>
    Left = 248
    Top = 48
  end
  object ibdsContractors: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 200
    SelectSQL.Strings = (
      'select CAST(C.ID as INTEGER) ID, C.NAME'
      'from CONTRACTORS C'
      'where (C.ID>0)'
      'order by 2')
    Left = 10
    Top = 123
    object ibdsContractorsNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"CONTRACTORS"."NAME"'
      Required = True
      Size = 300
    end
    object ibdsContractorsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsContractors: TDataSource
    DataSet = ibdsContractors
    Left = 10
    Top = 153
  end
  object ibdsMainInvoicesReserv: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 100
    SelectSQL.Strings = (
      
        'select GRI.ID, GRI.CONTRACTOR_NAME, GRI.PRICE, GRI.NUMBER_STR, G' +
        'RI.INVOICE_DATE,'
      
        'GRI.PAYING_PERSENT, GRI.PAYING_DATE, GRI.RESERV_AMOUNT, GRI.LATE' +
        'ST_DATE, GRI.COMMENTS_RESERVATION'
      'from GET_RESERVATION_INFO(:ID) GRI')
    ModifySQL.Strings = (
      'update GOODS'
      'set'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 39
    Top = 64
    object ibdsMainInvoicesReservCONTRACTOR_NAME: TIBStringField
      FieldName = 'CONTRACTOR_NAME'
      Origin = '"CONTRACTORS"."NAME"'
      Required = True
      Size = 300
    end
    object ibdsMainInvoicesReservPAYING_PERSENT: TFloatField
      FieldName = 'PAYING_PERSENT'
      Origin = '"INVOICE_BODY"."PAYING_PERSENT"'
    end
    object ibdsMainInvoicesReservPAYING_DATE: TDateField
      FieldName = 'PAYING_DATE'
      Origin = '"INVOICE_BODY"."PAYING_DATE"'
    end
    object ibdsMainInvoicesReservRESERV_AMOUNT: TFloatField
      FieldName = 'RESERV_AMOUNT'
      Origin = '"INVOICE_BODY"."RESERV_AMOUNT"'
    end
    object ibdsMainInvoicesReservNUMBER_STR: TIBStringField
      FieldName = 'NUMBER_STR'
      Required = True
      Size = 90
    end
    object ibdsMainInvoicesReservINVOICE_DATE: TDateField
      FieldName = 'INVOICE_DATE'
      Origin = '"INVOICE_HEADER"."INVOICE_DATE"'
    end
    object ibdsMainInvoicesReservID: TLargeintField
      FieldName = 'ID'
      Origin = '"GOODS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainInvoicesReservLATEST_DATE: TDateField
      FieldName = 'LATEST_DATE'
      Origin = '"INVOICE_BODY"."LATEST_DATE"'
    end
    object ibdsMainInvoicesReservCOMMENTS_RESERVATION: TIBStringField
      FieldName = 'COMMENTS_RESERVATION'
      Origin = '"INVOICE_BODY"."COMMENTS_RESERVATION"'
      Size = 100
    end
    object ibdsMainInvoicesReservPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = '"GET_RESERVATION_INFO"."PRICE"'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object dsMainInvoicesReserv: TDataSource
    DataSet = ibdsMainInvoicesReserv
    Left = 39
    Top = 93
  end
  object opd: TOpenDialog
    DefaultExt = 'xls'
    Filter = #1060#1072#1081#1083#1099' Exel|*.xls'
    Left = 144
    Top = 136
  end
end
