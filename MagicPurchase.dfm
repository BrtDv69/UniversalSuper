inherited frmMagicPurchase: TfrmMagicPurchase
  Left = 2
  Top = 122
  Width = 777
  Height = 455
  Caption = #1042#1086#1083#1096#1077#1073#1085#1099#1077' '#1087#1086#1082#1091#1087#1082#1080
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 769
    Height = 428
    ActivePage = cxTabSheet1
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    Options = [pcoTopToBottomText]
    ParentFont = False
    RaggedRight = True
    Style = 1
    TabOrder = 0
    TabPosition = tpRight
    OnChange = cxPageControl1Change
    object tsPrepare: TcxTabSheet
      Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072
      ImageIndex = 0
      object grdPrepare: TcxGrid
        Left = 0
        Top = 0
        Width = 742
        Height = 392
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = grdSuplayersEnter
        LookAndFeel.NativeStyle = True
        object tvPrepare: TcxGridDBTableView
          OnKeyUp = tvPrepareKeyUp
          DataController.DataSource = dsMainSales
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'ID'
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = tvPrepareCustomDrawCell
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.DataRowSizing = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
          OnCustomDrawColumnHeader = tvPrepareCustomDrawColumnHeader
          object tvPrepareCONTRACTOR_NAME: TcxGridDBColumn
            Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 300
            DataBinding.FieldName = 'CONTRACTOR_NAME'
          end
          object tvPrepareARTICUL_NAME: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 200
            DataBinding.FieldName = 'ARTICUL_NAME'
          end
          object tvPreparePRIMARY_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            DataBinding.FieldName = 'PRIMARY_DATE'
          end
          object tvPrepareNUMBER_NAKL: TcxGridDBColumn
            Caption = #8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
            DataBinding.FieldName = 'NUMBER_NAKL'
          end
          object tvPrepareNUMBER_INV: TcxGridDBColumn
            Caption = #1053#1086#1084#1077#1088' '#1089#1095#1077#1090#1072
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
            DataBinding.FieldName = 'NUMBER_INV'
          end
          object tvPrepareCOUNTRY_ID: TcxGridDBColumn
            Caption = #1057#1090#1088#1072#1085#1072' '#1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsCountries
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.IncSearch = False
            Width = 100
            DataBinding.FieldName = 'COUNTRY_ID'
          end
          object tvPrepareDECLARATION_NUMBER: TcxGridDBColumn
            Caption = #1053#1086#1084#1077#1088' '#1090#1072#1084'. '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.IncSearch = False
            Width = 100
            DataBinding.FieldName = 'DECLARATION_NUMBER'
          end
          object tvPrepareAMOUNT: TcxGridDBColumn
            Caption = #1050#1086#1083'.-'#1074#1086
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            DataBinding.FieldName = 'AMOUNT'
          end
          object tvPreparePRICE_W_NALOG: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            DataBinding.FieldName = 'PRICE_W_NALOG'
          end
          object tvPreparePRICE_WO_NALOG: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1073#1077#1079' '#1085#1072#1083#1086#1075#1072
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            DataBinding.FieldName = 'PRICE_WO_NALOG'
          end
          object tvPrepareTOTAL_W_NALOG: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            DataBinding.FieldName = 'TOTAL_W_NALOG'
          end
          object tvPrepareTOTAL_WO_NALOG: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1085#1072#1083#1086#1075#1086#1074
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            DataBinding.FieldName = 'TOTAL_WO_NALOG'
          end
        end
        object tvSets: TcxGridDBTableView
          OnKeyUp = tvPrepareKeyUp
          DataController.DataSource = dsSets
          DataController.DetailKeyFieldNames = 'PRIMARY_TOVAR_OUTCOME_BODY_ID'
          DataController.Filter.Criteria = {FFFFFFFF0000000000}
          DataController.KeyFieldNames = 'ID'
          DataController.MasterKeyFieldNames = 'ID'
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'TOTAL_W_NALOG'
              Column = tvSetsTOTAL_W_NALOG
            end>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = tvPrepareCustomDrawCell
          Filtering.CustomizeDialog = False
          Filtering.Visible = fvNever
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.DataRowSizing = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
          OnCustomDrawColumnHeader = tvPrepareCustomDrawColumnHeader
          object tvSetsARTICUL_NAME: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 300
            DataBinding.FieldName = 'ARTICUL_NAME'
          end
          object tvSetsCOUNTRY_ID: TcxGridDBColumn
            Caption = #1057#1090#1088#1072#1085#1072' '#1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NAME'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsCountries
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.IncSearch = False
            Width = 100
            DataBinding.FieldName = 'COUNTRY_ID'
          end
          object tvSetsDECLARATION_NUMBER: TcxGridDBColumn
            Caption = #1053#1086#1084#1077#1088' '#1090#1072#1084'. '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.IncSearch = False
            Width = 100
            DataBinding.FieldName = 'DECLARATION_NUMBER'
          end
          object tvSetsAMOUNT: TcxGridDBColumn
            Caption = #1050#1086#1083'.-'#1074#1086
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            DataBinding.FieldName = 'AMOUNT'
          end
          object tvSetsPRICE_W_NALOG: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.IncSearch = False
            DataBinding.FieldName = 'PRICE'
          end
          object tvSetsPRICE_WO_NALOG: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1073#1077#1079' '#1085#1072#1083#1086#1075#1072
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            DataBinding.FieldName = 'PRICE_WO_NALOG'
          end
          object tvSetsTOTAL_W_NALOG: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            DataBinding.FieldName = 'TOTAL_W_NALOG'
          end
          object tvSetsTOTAL_WO_NALOG: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1085#1072#1083#1086#1075#1086#1074
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            DataBinding.FieldName = 'TOTAL_WO_NALOG'
          end
        end
        object lvPrepare: TcxGridLevel
          GridView = tvPrepare
          object lvSets: TcxGridLevel
            GridView = tvSets
          end
        end
      end
      object pnlComments: TRzSizePanel
        Left = 0
        Top = 392
        Width = 742
        Height = 32
        Align = alBottom
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HotSpotHighlight = clScrollBar
        HotSpotVisible = True
        LockBar = True
        ParentFont = False
        SizeBarWidth = 7
        TabOrder = 1
        UseGradients = True
        DesignSize = (
          742
          32)
        object Label1: TLabel
          Left = 2
          Top = 14
          Width = 7
          Height = 13
          Caption = #1057
        end
        object Label2: TLabel
          Left = 115
          Top = 14
          Width = 12
          Height = 13
          Caption = #1087#1086
        end
        object deStart: TcxDateEdit
          Left = 10
          Top = 8
          Width = 96
          Height = 24
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = True
          TabOrder = 0
        end
        object deStop: TcxDateEdit
          Left = 128
          Top = 8
          Width = 96
          Height = 24
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = True
          TabOrder = 1
        end
        object btSave: TcxButton
          Left = 321
          Top = 9
          Width = 75
          Height = 22
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          Enabled = False
          TabOrder = 2
          OnClick = btSaveClick
          LookAndFeel.NativeStyle = True
        end
        object btShow: TcxButton
          Left = 235
          Top = 9
          Width = 75
          Height = 22
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100
          TabOrder = 3
          OnClick = btShowClick
          LookAndFeel.NativeStyle = True
        end
        object pbPrepare: TcxProgressBar
          Left = 409
          Top = 8
          Width = 332
          Height = 24
          Position = 100.000000000000000000
          Anchors = [akLeft, akTop, akRight]
          Properties.BeginColor = clCream
          Properties.EndColor = clSkyBlue
          Properties.BarStyle = cxbsGradient
          Properties.OverloadValue = 50.000000000000000000
          Properties.OverloadBeginColor = clSilver
          Properties.OverloadEndColor = clSkyBlue
          Properties.PeakValue = 100.000000000000000000
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = True
          Style.TransparentBorder = True
          TabOrder = 4
          Visible = False
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #1056#1072#1089#1095#1077#1090#1099
      ImageIndex = 1
      object RzSizePanel1: TRzSizePanel
        Left = 0
        Top = 393
        Width = 742
        Height = 31
        Align = alBottom
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HotSpotHighlight = clScrollBar
        HotSpotVisible = True
        LockBar = True
        ParentFont = False
        SizeBarWidth = 7
        TabOrder = 0
        UseGradients = True
        DesignSize = (
          742
          31)
        object Label3: TLabel
          Left = 2
          Top = 13
          Width = 91
          Height = 13
          Caption = #1055#1077#1088#1080#1086#1076' '#1089#1076#1077#1083#1082#1080' '#1086#1090
        end
        object Label4: TLabel
          Left = 125
          Top = 13
          Width = 42
          Height = 13
          Caption = #1076#1085#1077#1081', '#1076#1086
        end
        object Label5: TLabel
          Left = 198
          Top = 13
          Width = 111
          Height = 13
          Caption = '.  '#1055#1088#1086#1094#1077#1085#1090' '#1085#1072#1094#1077#1085#1082#1080' '#1086#1090
        end
        object Label6: TLabel
          Left = 341
          Top = 13
          Width = 12
          Height = 13
          Caption = #1076#1086
        end
        object Label7: TLabel
          Left = 384
          Top = 13
          Width = 3
          Height = 13
          Caption = '.'
        end
        object cxButton2: TcxButton
          Left = 395
          Top = 8
          Width = 75
          Height = 22
          Caption = #1055#1088#1086#1089#1095#1080#1090#1072#1090#1100
          TabOrder = 0
          OnClick = cxButton2Click
          LookAndFeel.NativeStyle = True
        end
        object meStopBuying: TcxMaskEdit
          Left = 95
          Top = 7
          Width = 28
          Height = 24
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d+'
          Properties.MaxLength = 0
          Style.Shadow = True
          TabOrder = 1
          Text = '2'
        end
        object meStartBuying: TcxMaskEdit
          Left = 169
          Top = 7
          Width = 28
          Height = 24
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d+'
          Properties.MaxLength = 0
          Style.Shadow = True
          TabOrder = 2
          Text = '7'
        end
        object meDeltaStart: TcxMaskEdit
          Left = 311
          Top = 7
          Width = 28
          Height = 24
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d+'
          Properties.MaxLength = 0
          Style.Shadow = True
          TabOrder = 3
          Text = '6'
        end
        object meDeltaStop: TcxMaskEdit
          Left = 355
          Top = 7
          Width = 28
          Height = 24
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d+'
          Properties.MaxLength = 0
          Style.Shadow = True
          TabOrder = 4
          Text = '10'
        end
        object pbSaleSettling: TcxProgressBar
          Left = 472
          Top = 7
          Width = 271
          Height = 24
          Position = 100.000000000000000000
          Anchors = [akLeft, akTop, akRight]
          Properties.BeginColor = clCream
          Properties.EndColor = clSkyBlue
          Properties.BarStyle = cxbsGradient
          Properties.OverloadValue = 50.000000000000000000
          Properties.OverloadBeginColor = clSilver
          Properties.OverloadEndColor = clSkyBlue
          Properties.PeakValue = 100.000000000000000000
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = True
          Style.TransparentBorder = True
          TabOrder = 5
          Visible = False
        end
      end
      object RzSizePanel2: TRzSizePanel
        Left = 0
        Top = 0
        Width = 742
        Height = 164
        Align = alTop
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HotSpotHighlight = clScrollBar
        HotSpotVisible = True
        ParentFont = False
        SizeBarWidth = 7
        TabOrder = 1
        UseGradients = True
        object grdSuplayers: TcxGrid
          Tag = 1
          Left = 0
          Top = 0
          Width = 723
          Height = 156
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = grdSuplayersEnter
          LookAndFeel.NativeStyle = True
          OnFocusedViewChanged = grdSuplayersFocusedViewChanged
          object tvSuplayers: TcxGridDBTableView
            Tag = 1
            DataController.DataSource = dsSuplayers
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'INVOICE_ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OnCustomDrawCell = tvPrepareCustomDrawCell
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
            OnCustomDrawColumnHeader = tvPrepareCustomDrawColumnHeader
            object tvSuplayersCONTRACTOR_NAME: TcxGridDBColumn
              Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 250
              DataBinding.FieldName = 'CONTRACTOR_NAME'
            end
            object tvSuplayersINVOICE_DATE: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1089#1095#1077#1090#1072
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'INVOICE_DATE'
            end
            object tvSuplayersFIRST_PAYMENT_DATE: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1087#1077#1088#1074#1086#1075#1086' '#1087#1083#1072#1090#1077#1078#1072
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'FIRST_PAYMENT_DATE'
            end
            object tvSuplayersNUMBER_STR: TcxGridDBColumn
              Caption = #8470#8470
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'NUMBER_STR'
            end
            object tvSuplayersAVAILABLE: TcxGridDBColumn
              Caption = #1041#1072#1083#1072#1085#1089
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'AVAILABLE'
            end
            object tvSuplayersSALDO_GOODS: TcxGridDBColumn
              Caption = #1057#1072#1083#1100#1076#1086' '#1087#1086' '#1090#1086#1074#1072#1088#1091
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.IncSearch = False
              DataBinding.FieldName = 'SALDO_GOODS'
            end
            object tvSuplayersSALDO_MANY: TcxGridDBColumn
              Caption = #1057#1072#1083#1100#1076#1086' '#1087#1086' '#1076#1077#1085#1100#1075#1072#1084
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'SALDO_MANY'
            end
          end
          object tvPrimaryForBuying: TcxGridDBTableView
            OnDblClick = tvPrimaryForBuyingDblClick
            DataController.DataSource = dsPrimaryForBuying
            DataController.DetailKeyFieldNames = 'INVOICE_ID'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'ID'
            DataController.MasterKeyFieldNames = 'INVOICE_ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OnCustomDrawCell = tvPrepareCustomDrawCell
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
            OnCustomDrawColumnHeader = tvPrepareCustomDrawColumnHeader
            object tvPrimaryForBuyingNUMBER_PP: TcxGridDBColumn
              Caption = #8470#8470
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              DataBinding.FieldName = 'NUMBER_PP'
            end
            object tvPrimaryForBuyingPRIMARY_TOVAR_INCOME_DATE: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1076#1083#1103' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' '#1087#1088#1080#1093'. '#1085#1072#1082#1083#1072#1076#1085#1086#1081
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ReadOnly = False
              Properties.SaveTime = False
              Properties.ShowTime = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              DataBinding.FieldName = 'PRIMARY_TOVAR_INCOME_DATE'
            end
            object tvPrimaryForBuyingNUMBER_DATE: TcxGridDBColumn
              Caption = #8470' '#1076#1072#1090#1072' '#1087#1088#1080#1093#1086#1076#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              DataBinding.FieldName = 'NUMBER_DATE'
            end
            object tvPrimaryForBuyingAMOUNT: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              DataBinding.FieldName = 'AMOUNT'
            end
          end
          object tvPrimaryBodyForBuying: TcxGridDBTableView
            DataController.DataSource = dsPrimaryBodyForBuying
            DataController.DetailKeyFieldNames = 'BUY_PRIMARY_ID'
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'ID'
            DataController.MasterKeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            OnCustomDrawCell = tvPrepareCustomDrawCell
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHiding = True
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsView.CellEndEllipsis = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
            OnCustomDrawColumnHeader = tvPrepareCustomDrawColumnHeader
            object tvPrimaryBodyForBuyingARTICUL_NAME: TcxGridDBColumn
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'ARTICUL_NAME'
            end
            object tvPrimaryBodyForBuyingNUMBER_STR: TcxGridDBColumn
              Caption = #8470' '#1088#1072#1089#1093#1086#1076#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'NUMBER_STR'
            end
            object tvPrimaryBodyForBuyingCOUNTRY_NAME: TcxGridDBColumn
              Caption = #1057#1090#1088#1072#1085#1072' '#1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'COUNTRY_NAME'
            end
            object tvPrimaryBodyForBuyingDECLARATION_NUMBER: TcxGridDBColumn
              Caption = #1053#1086#1084#1077#1088' '#1090#1072#1084'. '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'DECLARATION_NUMBER'
            end
            object tvPrimaryBodyForBuyingAMOUNT: TcxGridDBColumn
              Caption = #1050#1086#1083'.-'#1074#1086
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'AMOUNT'
            end
            object tvPrimaryBodyForBuyingSELL_PRICE: TcxGridDBColumn
              Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'SELL_PRICE'
            end
            object tvPrimaryBodyForBuyingSELL_PRICE_WO_NALOG: TcxGridDBColumn
              Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080' '#1073#1077#1079' '#1085#1072#1083#1086#1075#1086#1074
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'SELL_PRICE_WO_NALOG'
            end
            object tvPrimaryBodyForBuyingSELL_TOTAL: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072' '#1087#1088#1086#1076#1072#1078#1080' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'SELL_TOTAL'
            end
            object tvPrimaryBodyForBuyingSELL_TOTAL_WO_NALOG: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072' '#1087#1088#1086#1076#1072#1078#1080' '#1073#1077#1079' '#1085#1072#1083#1086#1075#1086#1074
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'SELL_TOTAL_WO_NALOG'
            end
            object tvPrimaryBodyForBuyingBUY_PRICE: TcxGridDBColumn
              Caption = #1062#1077#1085#1072' '#1087#1086#1082#1091#1087#1082#1080' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              DataBinding.FieldName = 'BUY_PRICE'
            end
            object tvPrimaryBodyForBuyingBUY_PRICE_WO_NALOG: TcxGridDBColumn
              Caption = #1062#1077#1085#1072' '#1087#1086#1082#1091#1087#1082#1080' '#1073#1077#1079' '#1085#1072#1083#1086#1074
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'BUY_PRICE_WO_NALOG'
            end
            object tvPrimaryBodyForBuyingBUY_TOTAL: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072' '#1087#1086#1082#1091#1087#1082#1080' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'BUY_TOTAL'
            end
            object tvPrimaryBodyForBuyingBUY_TOTAL_WO_NALOG: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072' '#1087#1086#1082#1091#1087#1082#1080' '#1073#1077#1079' '#1085#1072#1083#1086#1074
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'BUY_TOTAL_WO_NALOG'
            end
            object tvPrimaryBodyForBuyingTOTAL_DELTA: TcxGridDBColumn
              Caption = #1055#1086#1083#1091#1095#1077#1085#1085#1072#1103' '#1085#1072#1094#1077#1085#1082#1072' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'TOTAL_DELTA'
            end
          end
          object lvSuplayers: TcxGridLevel
            GridView = tvSuplayers
            object lvPrimaryForBuying: TcxGridLevel
              GridView = tvPrimaryForBuying
              object lvPrimaryBodyForBuying: TcxGridLevel
                GridView = tvPrimaryBodyForBuying
              end
            end
          end
        end
        object Panel3: TPanel
          Left = 723
          Top = 0
          Width = 19
          Height = 156
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object sbCancelInvoice: TSpeedButton
            Left = 0
            Top = 57
            Width = 19
            Height = 19
            Cursor = crHandPoint
            Hint = 
              #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077#13#10#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'|'#1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085 +
              #1080#1103
            AllowAllUp = True
            Enabled = False
            Flat = True
            Glyph.Data = {
              46010000424D460100000000000076000000280000001C0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333000033333333333333333FF33333FF330000333003333300
              3333733F333733F3000033300033300033337333F37333F30000333300030003
              3333373337333F330000333330000033333333733333F3330000333333000333
              33333337333F33330000333330000033333333733333F3330000333300030003
              3333373337333F33000033300033300033337333F37333F30000333003333300
              3333733F333733F3000033333333333333333773333377330000333333333333
              33333333333333330000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = sbCancelInvoiceClick
          end
          object sbApplyInvoice: TSpeedButton
            Left = 0
            Top = 38
            Width = 19
            Height = 19
            Cursor = crHandPoint
            Hint = 
              #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1074#1089#1077#13#10#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'|'#1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085 +
              #1077#1085#1080#1103
            AllowAllUp = True
            Enabled = False
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
            OnClick = sbApplyInvoiceClick
          end
          object sbDeleteInvoice: TSpeedButton
            Tag = 1
            Left = 0
            Top = 19
            Width = 19
            Height = 19
            Cursor = crHandPoint
            Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
            AllowAllUp = True
            Flat = True
            Glyph.Data = {
              46010000424D460100000000000076000000280000001C0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333000033333333333333333333333333330000333333333333
              3333333333333333000033333333333333333333333333330000333333333333
              3337FFFFFFFFFFF3000033000000000033373333333333F30000330000000000
              33373333333333F3000033000000000033373333333333F30000333333333333
              33377777777777F3000033333333333333333333333333330000333333333333
              3333333333333333000033333333333333333333333333330000333333333333
              33333333333333330000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = sbDeleteInvoiceClick
          end
          object sbAddInvoice: TSpeedButton
            Tag = 2
            Left = 0
            Top = 0
            Width = 19
            Height = 19
            Cursor = crHandPoint
            Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
            AllowAllUp = True
            Flat = True
            Glyph.Data = {
              46010000424D460100000000000076000000280000001C0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333300003333333333333333333FFFF333330000333330003333
              3333337333F3333300003333300033333333337333F333330000333330003333
              3333FF3333FFFF3300003300000000033337333333333F330000330000000003
              3337333333333F3300003300000000033337333333333F330000333330003333
              333777733337733300003333300033333333337333F333330000333330003333
              3333337333F33333000033333333333333333377773333330000333333333333
              33333333333333330000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = sbAddInvoiceClick
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 164
        Width = 742
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object grdSaleSettling: TcxGrid
          Tag = 2
          Left = 0
          Top = 0
          Width = 723
          Height = 229
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = grdSuplayersEnter
          LookAndFeel.NativeStyle = True
          object tvSaleSettling: TcxGridDBTableView
            DataController.DataSource = dsSaleSettling
            DataController.Filter.Criteria = {FFFFFFFF0000000000}
            DataController.KeyFieldNames = 'ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = tvSaleSettlingTOTAL_DELTA
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soNullIgnore, soSelectedRecords]
            NavigatorButtons.ConfirmDelete = False
            OnCustomDrawCell = tvPrepareCustomDrawCell
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.ImmediateEditor = False
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.DataRowSizing = True
            OptionsData.Inserting = False
            OptionsSelection.InvertSelect = False
            OptionsSelection.MultiSelect = True
            OptionsView.CellEndEllipsis = True
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
            OnCustomDrawColumnHeader = tvPrepareCustomDrawColumnHeader
            object tvSaleSettlingARTICUL_NAME: TcxGridDBColumn
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 250
              DataBinding.FieldName = 'ARTICUL_NAME'
            end
            object tvSaleSettlingNUMBER_STR: TcxGridDBColumn
              Caption = #8470' '#1088#1072#1089#1093#1086#1076#1085#1086#1081' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 100
              DataBinding.FieldName = 'NUMBER_STR'
            end
            object tvSaleSettlingCOUNTRY_NAME: TcxGridDBColumn
              Caption = #1057#1090#1088#1072#1085#1072' '#1087#1088#1086#1080#1089#1093#1086#1078#1076#1077#1085#1080#1103
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 100
              DataBinding.FieldName = 'COUNTRY_NAME'
            end
            object tvSaleSettlingDECLARATION_NUMBER: TcxGridDBColumn
              Caption = #1053#1086#1084#1077#1088' '#1090#1072#1084'. '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'DECLARATION_NUMBER'
            end
            object tvSaleSettlingAMOUNT: TcxGridDBColumn
              Caption = #1050#1086#1083'.-'#1074#1086
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'AMOUNT'
            end
            object tvSaleSettlingSELL_PRICE: TcxGridDBColumn
              Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'SELL_PRICE'
            end
            object tvSaleSettlingSELL_PRICE_WO_NALOG: TcxGridDBColumn
              Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080' '#1073#1077#1079' '#1085#1072#1083#1086#1075#1086#1074
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'SELL_PRICE_WO_NALOG'
            end
            object tvSaleSettlingSELL_TOTAL: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072' '#1087#1088#1086#1076#1072#1078#1080' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'SELL_TOTAL'
            end
            object tvSaleSettlingSELL_TOTAL_WO_NALOG: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072' '#1087#1088#1086#1076#1072#1078#1080' '#1073#1077#1079' '#1085#1072#1083#1086#1075#1086#1074
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'SELL_TOTAL_WO_NALOG'
            end
            object tvSaleSettlingBUY_PRICE: TcxGridDBColumn
              Caption = #1062#1077#1085#1072' '#1087#1086#1082#1091#1087#1082#1080' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              DataBinding.FieldName = 'BUY_PRICE'
            end
            object tvSaleSettlingBUY_PRICE_WO_NALOG: TcxGridDBColumn
              Caption = #1062#1077#1085#1072' '#1087#1086#1082#1091#1087#1082#1080' '#1073#1077#1079' '#1085#1072#1083#1086#1074
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'BUY_PRICE_WO_NALOG'
            end
            object tvSaleSettlingBUY_TOTAL: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072' '#1087#1086#1082#1091#1087#1082#1080' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'BUY_TOTAL'
            end
            object tvSaleSettlingBUY_TOTAL_WO_NALOG: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072' '#1087#1086#1082#1091#1087#1082#1080' '#1073#1077#1079' '#1085#1072#1083#1086#1074
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'BUY_TOTAL_WO_NALOG'
            end
            object tvSaleSettlingTOTAL_DELTA: TcxGridDBColumn
              Caption = #1055#1086#1083#1091#1095#1077#1085#1085#1072#1103' '#1085#1072#1094#1077#1085#1082#1072' '#1089' '#1085#1072#1083#1086#1075#1072#1084#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'TOTAL_DELTA'
            end
            object tvSaleSettlingSTART_BUYING_DATE: TcxGridDBColumn
              Caption = #1053#1072#1095#1072#1083#1086' '#1087#1086#1082#1091#1087#1082#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'START_BUYING_DATE'
            end
            object tvSaleSettlingSTOP_BUYING_DATE: TcxGridDBColumn
              Caption = #1050#1086#1085#1077#1094' '#1087#1086#1082#1091#1087#1082#1080
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'STOP_BUYING_DATE'
            end
            object tvSaleSettlingTOTAL_WHITE: TcxGridDBColumn
              Caption = #1042#1093#1086#1076#1103#1097#1080#1077' '#1086#1089#1090#1072#1090#1082#1080' '#1085#1072' '#1076#1072#1090#1091' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              DataBinding.FieldName = 'TOTAL_WHITE'
            end
          end
          object glSaleSettling: TcxGridLevel
            GridView = tvSaleSettling
          end
        end
        object Panel2: TPanel
          Left = 723
          Top = 0
          Width = 19
          Height = 229
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object sbCancelSaleSettling: TSpeedButton
            Left = 0
            Top = 38
            Width = 19
            Height = 19
            Cursor = crHandPoint
            Hint = 
              #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077#13#10#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'|'#1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085 +
              #1080#1103
            AllowAllUp = True
            Enabled = False
            Flat = True
            Glyph.Data = {
              46010000424D460100000000000076000000280000001C0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333000033333333333333333FF33333FF330000333003333300
              3333733F333733F3000033300033300033337333F37333F30000333300030003
              3333373337333F330000333330000033333333733333F3330000333333000333
              33333337333F33330000333330000033333333733333F3330000333300030003
              3333373337333F33000033300033300033337333F37333F30000333003333300
              3333733F333733F3000033333333333333333773333377330000333333333333
              33333333333333330000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = sbCancelSaleSettlingClick
          end
          object sbApplySaleSettling: TSpeedButton
            Left = 0
            Top = 19
            Width = 19
            Height = 19
            Cursor = crHandPoint
            Hint = 
              #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1074#1089#1077#13#10#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'|'#1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085 +
              #1077#1085#1080#1103
            AllowAllUp = True
            Enabled = False
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
            OnClick = sbApplySaleSettlingClick
          end
          object SpeedButton3: TSpeedButton
            Left = 0
            Top = 0
            Width = 19
            Height = 19
            Cursor = crHandPoint
            Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
            AllowAllUp = True
            Flat = True
            Glyph.Data = {
              46010000424D460100000000000076000000280000001C0000000D0000000100
              040000000000D000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333000033333333333333333333333333330000333333333333
              3333333333333333000033333333333333333333333333330000333333333333
              3337FFFFFFFFFFF3000033000000000033373333333333F30000330000000000
              33373333333333F3000033000000000033373333333333F30000333333333333
              33377777777777F3000033333333333333333333333333330000333333333333
              3333333333333333000033333333333333333333333333330000333333333333
              33333333333333330000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = SpeedButton3Click
          end
        end
      end
    end
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
    Left = 9
    Top = 2
  end
  inherited ibsGen_ID: TIBSQL
    SQL.Strings = ()
    Left = 100
    Top = 1
  end
  inherited ibsGridsSetup: TIBSQL
    Left = 69
    Top = 1
  end
  object ibdsMainSales: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    OnCalcFields = ibdsMainSalesCalcFields
    BufferChunks = 100
    CachedUpdates = True
    SelectSQL.Strings = (
      
        'select PTOB.ID, PTOB.ARTICUL_ID, C.NAME CONTRACTOR_NAME, A.NAME ' +
        'ARTICUL_NAME,'
      
        'PTOH.PRIMARY_DATE, PTOH.NUMBER_PREFIX, PTOH.NUMBER, PTOH.NUMBER_' +
        'SUFFIX,'
      
        'IH.NUMBER_PREFIX I_NUMBER_PREFIX, IH.NUMBER I_NUMBER, PTOH.ENTER' +
        'PRISE_STORE_ID,'
      
        'IH.NUMBER_SUFFIX I_NUMBER_SUFFIX, cast(PTOB.COUNTRY_ID as INTEGE' +
        'R) COUNTRY_ID,'
      
        'PTOB.DECLARATION_NUMBER, PTOH.ENTERPRISE_ID, PTOH.CURRENCY_ID, P' +
        'TOH.CURRENCY_RATE, (PTOB.PACK_VALUE*PTOB.PACKS_AMOUNT+PTOB.ITEMS' +
        '_AMOUNT) AMOUNT,'
      
        'PTOB.PRICE, PTOB.NDS, PTOB.NSP, PTOH.IS_NAKL, PS.TAKE_NSP, C.PRI' +
        'VATE, A.ITEM_TYPE'
      
        'from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_TOVAR_OUTCOME_BO' +
        'DY PTOB, PRIMARY_SETUP PS,'
      'INVOICE_HEADER IH, ARTICULS A, CONTRACTORS C'
      
        'where (PTOH.CLOSED=1) and (PTOH.PRIMARY_DATE!<:START) and (PTOH.' +
        'PRIMARY_DATE!>:STOP) and'
      '(PTOH.BLACK=0) and (PS.IN_OUT=1) and (PS.MOVEMENT_TYPE=0) and'
      
        '(PTOH.ID=PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID) and (PS.ID=PTOH.P' +
        'RIMARY_SETUP_ID) and'
      
        '(IH.ID=PTOH.PARENT_ID) and (PTOB.ARTICUL_ID=A.ID) and (A.ITEM_TY' +
        'PE in (1,3)) and'
      '(C.ID=PTOH.CONTRACTOR_ID)')
    ModifySQL.Strings = (
      'update GOODS'
      'set'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 10
    Top = 32
    object ibdsMainSalesID: TLargeintField
      FieldName = 'ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainSalesCONTRACTOR_NAME: TIBStringField
      FieldName = 'CONTRACTOR_NAME'
      Origin = '"CONTRACTORS"."NAME"'
      Required = True
      Size = 300
    end
    object ibdsMainSalesARTICUL_NAME: TIBStringField
      FieldName = 'ARTICUL_NAME'
      Origin = '"ARTICULS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsMainSalesPRIMARY_DATE: TDateField
      FieldName = 'PRIMARY_DATE'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."PRIMARY_DATE"'
    end
    object ibdsMainSalesNUMBER_PREFIX: TIBStringField
      FieldName = 'NUMBER_PREFIX'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER_PREFIX"'
      Size = 30
    end
    object ibdsMainSalesNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER"'
      Required = True
    end
    object ibdsMainSalesNUMBER_SUFFIX: TIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER_SUFFIX"'
      Size = 30
    end
    object ibdsMainSalesI_NUMBER_PREFIX: TIBStringField
      FieldName = 'I_NUMBER_PREFIX'
      Origin = '"INVOICE_HEADER"."NUMBER_PREFIX"'
      Size = 30
    end
    object ibdsMainSalesI_NUMBER: TIntegerField
      FieldName = 'I_NUMBER'
      Origin = '"INVOICE_HEADER"."NUMBER"'
      Required = True
    end
    object ibdsMainSalesI_NUMBER_SUFFIX: TIBStringField
      FieldName = 'I_NUMBER_SUFFIX'
      Origin = '"INVOICE_HEADER"."NUMBER_SUFFIX"'
      Size = 30
    end
    object ibdsMainSalesDECLARATION_NUMBER: TIBStringField
      FieldName = 'DECLARATION_NUMBER'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY"."DECLARATION_NUMBER"'
      Size = 30
    end
    object ibdsMainSalesAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object ibdsMainSalesPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY"."PRICE"'
    end
    object ibdsMainSalesNDS: TFloatField
      FieldName = 'NDS'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY"."NDS"'
    end
    object ibdsMainSalesNSP: TFloatField
      FieldName = 'NSP'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY"."NSP"'
    end
    object ibdsMainSalesIS_NAKL: TIntegerField
      FieldName = 'IS_NAKL'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."IS_NAKL"'
    end
    object ibdsMainSalesTAKE_NSP: TIntegerField
      FieldName = 'TAKE_NSP'
      Origin = '"PRIMARY_SETUP"."TAKE_NSP"'
    end
    object ibdsMainSalesITEM_TYPE: TIntegerField
      FieldName = 'ITEM_TYPE'
      Origin = '"ARTICULS"."ITEM_TYPE"'
    end
    object ibdsMainSalesNUMBER_NAKL: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUMBER_NAKL'
      Size = 30
      Calculated = True
    end
    object ibdsMainSalesNUMBER_INV: TStringField
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'NUMBER_INV'
      Size = 30
      Calculated = True
    end
    object ibdsMainSalesPRICE_W_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRICE_W_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsMainSalesPRICE_WO_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRICE_WO_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsMainSalesTOTAL_W_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_W_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsMainSalesTOTAL_WO_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_WO_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsMainSalesPRIVATE: TIntegerField
      FieldName = 'PRIVATE'
      Origin = '"CONTRACTORS"."PRIVATE"'
    end
    object ibdsMainSalesCOUNTRY_ID: TIntegerField
      FieldName = 'COUNTRY_ID'
    end
    object ibdsMainSalesARTICUL_ID: TLargeintField
      FieldName = 'ARTICUL_ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY"."ARTICUL_ID"'
    end
    object ibdsMainSalesENTERPRISE_STORE_ID: TLargeintField
      FieldName = 'ENTERPRISE_STORE_ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."ENTERPRISE_STORE_ID"'
    end
    object ibdsMainSalesENTERPRISE_ID: TLargeintField
      FieldName = 'ENTERPRISE_ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."ENTERPRISE_ID"'
    end
    object ibdsMainSalesCURRENCY_ID: TLargeintField
      FieldName = 'CURRENCY_ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."CURRENCY_ID"'
    end
    object ibdsMainSalesCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."CURRENCY_RATE"'
      Required = True
    end
  end
  object dsMainSales: TDataSource
    DataSet = ibdsMainSales
    Left = 10
    Top = 61
  end
  object ibdsCountries: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 500
    SelectSQL.Strings = (
      'select C.ID, C.NAME'
      'from COUNTRIES C'
      'where (C.VALID=1)'
      'order by 2')
    Left = 10
    Top = 91
    object ibdsCountriesNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 50
      FieldName = 'NAME'
      Origin = 'COUNTRIES.NAME'
      Required = True
      Size = 50
    end
    object ibdsCountriesID: TLargeintField
      FieldName = 'ID'
      Origin = '"COUNTRIES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPrepare
    PopupMenus = <>
    Left = 178
    Top = 66
  end
  object dsCountries: TDataSource
    DataSet = ibdsCountries
    Left = 10
    Top = 121
  end
  object ibdsSets: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    OnCalcFields = ibdsMainSalesCalcFields
    BufferChunks = 100
    CachedUpdates = True
    SelectSQL.Strings = (
      
        'select PTOBS.ID, cast(PTOBS.PRIMARY_TOVAR_OUTCOME_BODY_ID as INT' +
        'EGER) PRIMARY_TOVAR_OUTCOME_BODY_ID,'
      'PTOBS.ARTICUL_ID, C.NAME CONTRACTOR_NAME, A.NAME ARTICUL_NAME,'
      
        'PTOH.PRIMARY_DATE, PTOH.NUMBER_PREFIX, PTOH.NUMBER, PTOH.NUMBER_' +
        'SUFFIX,'
      
        'IH.NUMBER_PREFIX I_NUMBER_PREFIX, IH.NUMBER I_NUMBER, PTOH.ENTER' +
        'PRISE_STORE_ID,'
      
        'IH.NUMBER_SUFFIX I_NUMBER_SUFFIX, cast(PTOBS.COUNTRY_ID as INTEG' +
        'ER) COUNTRY_ID,'
      
        'PTOBS.DECLARATION_NUMBER, PTOH.ENTERPRISE_ID, PTOH.CURRENCY_ID, ' +
        'PTOH.CURRENCY_RATE,'
      
        '(PTOB.PACK_VALUE*PTOB.PACKS_AMOUNT+PTOB.ITEMS_AMOUNT)*(PTOBS.PAC' +
        'K_VALUE*PTOBS.PACKS_AMOUNT+PTOBS.ITEMS_AMOUNT) AMOUNT,'
      
        'PTOBS.PRICE, PTOB.NDS, PTOB.NSP, PTOH.IS_NAKL, PS.TAKE_NSP, C.PR' +
        'IVATE, 3 ITEM_TYPE'
      
        'from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_TOVAR_OUTCOME_BO' +
        'DY PTOB, PRIMARY_SETUP PS,'
      
        'INVOICE_HEADER IH, ARTICULS A, CONTRACTORS C, PRIMARY_TOVAR_OUTC' +
        'OME_BODY_SETS PTOBS'
      
        'where (PTOH.CLOSED=1) and (PTOH.PRIMARY_DATE!<:START) and (PTOH.' +
        'PRIMARY_DATE!>:STOP) and'
      '(PTOH.BLACK=0) and (PS.IN_OUT=1) and (PS.MOVEMENT_TYPE=0) and'
      
        '(PTOH.ID=PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID) and (PS.ID=PTOH.P' +
        'RIMARY_SETUP_ID) and'
      
        '(IH.ID=PTOH.PARENT_ID) and (PTOBS.ARTICUL_ID=A.ID) and (A.ITEM_T' +
        'YPE in (1,3)) and'
      
        '(C.ID=PTOH.CONTRACTOR_ID) and (PTOB.ID=PTOBS.PRIMARY_TOVAR_OUTCO' +
        'ME_BODY_ID)')
    ModifySQL.Strings = (
      'update GOODS'
      'set'
      '  ID = :ID'
      'where'
      '  ID = :OLD_ID')
    Left = 40
    Top = 32
    object ibdsSetsID: TLargeintField
      FieldName = 'ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY_SETS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsSetsPRIMARY_TOVAR_OUTCOME_BODY_ID: TIntegerField
      FieldName = 'PRIMARY_TOVAR_OUTCOME_BODY_ID'
      Required = True
    end
    object ibdsSetsARTICUL_ID: TLargeintField
      FieldName = 'ARTICUL_ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY_SETS"."ARTICUL_ID"'
    end
    object ibdsSetsCONTRACTOR_NAME: TIBStringField
      FieldName = 'CONTRACTOR_NAME'
      Origin = '"CONTRACTORS"."NAME"'
      Required = True
      Size = 300
    end
    object ibdsSetsARTICUL_NAME: TIBStringField
      FieldName = 'ARTICUL_NAME'
      Origin = '"ARTICULS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsSetsPRIMARY_DATE: TDateField
      FieldName = 'PRIMARY_DATE'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."PRIMARY_DATE"'
    end
    object ibdsSetsNUMBER_PREFIX: TIBStringField
      FieldName = 'NUMBER_PREFIX'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER_PREFIX"'
      Size = 30
    end
    object ibdsSetsNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER"'
      Required = True
    end
    object ibdsSetsNUMBER_SUFFIX: TIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER_SUFFIX"'
      Size = 30
    end
    object ibdsSetsI_NUMBER_PREFIX: TIBStringField
      FieldName = 'I_NUMBER_PREFIX'
      Origin = '"INVOICE_HEADER"."NUMBER_PREFIX"'
      Size = 30
    end
    object ibdsSetsI_NUMBER: TIntegerField
      FieldName = 'I_NUMBER'
      Origin = '"INVOICE_HEADER"."NUMBER"'
      Required = True
    end
    object ibdsSetsENTERPRISE_STORE_ID: TLargeintField
      FieldName = 'ENTERPRISE_STORE_ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."ENTERPRISE_STORE_ID"'
    end
    object ibdsSetsI_NUMBER_SUFFIX: TIBStringField
      FieldName = 'I_NUMBER_SUFFIX'
      Origin = '"INVOICE_HEADER"."NUMBER_SUFFIX"'
      Size = 30
    end
    object ibdsSetsCOUNTRY_ID: TIntegerField
      FieldName = 'COUNTRY_ID'
    end
    object ibdsSetsDECLARATION_NUMBER: TIBStringField
      FieldName = 'DECLARATION_NUMBER'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY_SETS"."DECLARATION_NUMBER"'
      Size = 30
    end
    object ibdsSetsAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object ibdsSetsPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY_SETS"."PRICE"'
      DisplayFormat = '#,##0.00'
    end
    object ibdsSetsNDS: TFloatField
      FieldName = 'NDS'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY"."NDS"'
    end
    object ibdsSetsNSP: TFloatField
      FieldName = 'NSP'
      Origin = '"PRIMARY_TOVAR_OUTCOME_BODY"."NSP"'
    end
    object ibdsSetsIS_NAKL: TIntegerField
      FieldName = 'IS_NAKL'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."IS_NAKL"'
    end
    object ibdsSetsTAKE_NSP: TIntegerField
      FieldName = 'TAKE_NSP'
      Origin = '"PRIMARY_SETUP"."TAKE_NSP"'
    end
    object ibdsSetsPRIVATE: TIntegerField
      FieldName = 'PRIVATE'
      Origin = '"CONTRACTORS"."PRIVATE"'
    end
    object ibdsSetsNUMBER_NAKL: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUMBER_NAKL'
      Size = 30
      Calculated = True
    end
    object ibdsSetsNUMBER_INV: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUMBER_INV'
      Size = 30
      Calculated = True
    end
    object ibdsSetsPRICE_W_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRICE_W_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSetsPRICE_WO_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRICE_WO_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSetsTOTAL_W_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_W_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSetsTOTAL_WO_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_WO_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSetsENTERPRISE_ID: TLargeintField
      FieldName = 'ENTERPRISE_ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."ENTERPRISE_ID"'
    end
    object ibdsSetsCURRENCY_ID: TLargeintField
      FieldName = 'CURRENCY_ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."CURRENCY_ID"'
    end
    object ibdsSetsCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."CURRENCY_RATE"'
      Required = True
    end
    object ibdsSetsITEM_TYPE: TIntegerField
      FieldName = 'ITEM_TYPE'
      Required = True
    end
  end
  object dsSets: TDataSource
    DataSet = ibdsSets
    Left = 40
    Top = 61
  end
  object ibdsSuplayers: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsSuplayersAfterDelete
    AfterOpen = ibdsSuplayersAfterOpen
    OnCalcFields = ibdsSuplayersCalcFields
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from INVOICE_FOR_BUYING'
      'where'
      '  INVOICE_ID = :OLD_INVOICE_ID')
    InsertSQL.Strings = (
      'insert into INVOICE_FOR_BUYING'
      '  (INVOICE_ID)'
      'values'
      '  (:INVOICE_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  INVOICE_ID'
      'from INVOICE_FOR_BUYING '
      'where'
      '  INVOICE_ID = :INVOICE_ID')
    SelectSQL.Strings = (
      'select IFB.INVOICE_ID, C.NAME CONTRACTOR_NAME, IH.INVOICE_DATE,'
      
        'min(PP.PAYMENT_DATE) FIRST_PAYMENT_DATE, IH.NUMBER_PREFIX, IH.NU' +
        'MBER, IH.NUMBER_SUFFIX,'
      
        'IH.ENTERPRISE_ID, IH.SALDO_GOODS, -IH.SALDO_MANY SALDO_MANY, IH.' +
        'INCLUDE_NSP, INS.IN_OUT, IH.CONTRACTOR_ID'
      
        'from INVOICE_FOR_BUYING IFB join INVOICE_HEADER IH on (IFB.INVOI' +
        'CE_ID=IH.ID) join'
      
        'INVOICE_SETUP INS on (INS.ID=IH.INVOICE_SETUP_ID) join CONTRACTO' +
        'RS C on (C.ID=IH.CONTRACTOR_ID)'
      
        'left outer join PRIMARY_PAYMENTS PP on (PP.PARENT_TYPE in (3,4))' +
        ' and (PP.PARENT_ID=IH.ID)'
      
        'group by IFB.INVOICE_ID, C.NAME, IH.INVOICE_DATE, IH.ID, IH.NUMB' +
        'ER_PREFIX, IH.NUMBER,'
      
        'IH.NUMBER_SUFFIX, IH.ENTERPRISE_ID, IH.SALDO_GOODS, IH.SALDO_MAN' +
        'Y, IH.INCLUDE_NSP, INS.IN_OUT, IH.CONTRACTOR_ID')
    ModifySQL.Strings = (
      'update INVOICE_FOR_BUYING'
      'set'
      '  INVOICE_ID = :INVOICE_ID'
      'where'
      '  INVOICE_ID = :OLD_INVOICE_ID')
    Left = 69
    Top = 32
    object ibdsSuplayersCONTRACTOR_NAME: TIBStringField
      FieldName = 'CONTRACTOR_NAME'
      Size = 300
    end
    object ibdsSuplayersINVOICE_DATE: TDateField
      FieldName = 'INVOICE_DATE'
    end
    object ibdsSuplayersINVOICE_ID: TLargeintField
      FieldName = 'INVOICE_ID'
      OnChange = ibdsSuplayersINVOICE_IDChange
    end
    object ibdsSuplayersFIRST_PAYMENT_DATE: TDateField
      FieldName = 'FIRST_PAYMENT_DATE'
    end
    object ibdsSuplayersNUMBER_PREFIX: TIBStringField
      FieldName = 'NUMBER_PREFIX'
      Size = 30
    end
    object ibdsSuplayersNUMBER: TIntegerField
      FieldName = 'NUMBER'
    end
    object ibdsSuplayersNUMBER_SUFFIX: TIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Size = 30
    end
    object ibdsSuplayersENTERPRISE_ID: TLargeintField
      FieldName = 'ENTERPRISE_ID'
    end
    object ibdsSuplayersSALDO_GOODS: TFloatField
      FieldName = 'SALDO_GOODS'
      DisplayFormat = '#,##0.00'
    end
    object ibdsSuplayersSALDO_MANY: TFloatField
      FieldName = 'SALDO_MANY'
      DisplayFormat = '#,##0.00'
    end
    object ibdsSuplayersINCLUDE_NSP: TIntegerField
      FieldName = 'INCLUDE_NSP'
    end
    object ibdsSuplayersAVAILABLE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVAILABLE'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSuplayersCONTRACTOR_NUMBER: TStringField
      FieldKind = fkCalculated
      FieldName = 'CONTRACTOR_NUMBER'
      Size = 300
      Calculated = True
    end
    object ibdsSuplayersNUMBER_STR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUMBER_STR'
      Size = 30
      Calculated = True
    end
    object ibdsSuplayersIN_OUT: TIntegerField
      FieldName = 'IN_OUT'
    end
    object ibdsSuplayersCONTRACTOR_ID: TLargeintField
      FieldName = 'CONTRACTOR_ID'
    end
  end
  object dsSuplayers: TDataSource
    DataSet = ibdsSuplayers
    OnStateChange = dsSuplayersStateChange
    Left = 69
    Top = 61
  end
  object ibdsSaleSettling: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterOpen = ibdsSaleSettlingAfterOpen
    BeforeDelete = ibdsSaleSettlingBeforeDelete
    OnCalcFields = ibdsSaleSettlingCalcFields
    BufferChunks = 100
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from SALE_SETTLING'
      'where'
      '  ID = :OLD_ID')
    RefreshSQL.Strings = (
      
        'select SS.ID, A.NAME ARTICUL_NAME, PTOH.NUMBER_PREFIX, PTOH.NUMB' +
        'ER, PTOH.NUMBER_SUFFIX,'
      
        'PTOH.PRIMARY_DATE, C.NAME COUNTRY_NAME, SS.DECLARATION_NUMBER, S' +
        'S.AMOUNT, SS.SELL_PRICE,'
      'SS.SELL_PRICE_WO_NALOG, SS.NDS, SS.NSP, SS.BUY_PRICE,'
      
        'cast (0 as DOUBLE PRECISION) TOTAL_WHITE, PTOH.ENTERPRISE_STORE_' +
        'ID, SS.ARTICUL_ID'
      
        'from SALE_SETTLING SS, ARTICULS A, COUNTRIES C, PRIMARY_TOVAR_OU' +
        'TCOME_BODY PTOB,'
      'PRIMARY_TOVAR_OUTCOME_HEADER PTOH'
      
        'where (A.ID=SS.ARTICUL_ID) and (C.ID=SS.COUNTRY_ID) and (PTOB.ID' +
        '=SS.SELL_PRIMARY_BODY_ID) and'
      '(PTOH.ID=PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID) and (SS.ID=:ID) ')
    SelectSQL.Strings = (
      
        'select SS.ID, A.NAME ARTICUL_NAME, PTOH.NUMBER_PREFIX, PTOH.NUMB' +
        'ER, PTOH.NUMBER_SUFFIX,'
      
        'PTOH.PRIMARY_DATE, C.NAME COUNTRY_NAME, SS.DECLARATION_NUMBER, S' +
        'S.AMOUNT, SS.SELL_PRICE,'
      'SS.SELL_PRICE_WO_NALOG, SS.NDS, SS.NSP, SS.BUY_PRICE,'
      
        'cast (0 as DOUBLE PRECISION) TOTAL_WHITE, PTOH.ENTERPRISE_STORE_' +
        'ID, SS.ARTICUL_ID'
      
        'from SALE_SETTLING SS, ARTICULS A, COUNTRIES C, PRIMARY_TOVAR_OU' +
        'TCOME_BODY PTOB,'
      'PRIMARY_TOVAR_OUTCOME_HEADER PTOH'
      
        'where (A.ID=SS.ARTICUL_ID) and (C.ID=SS.COUNTRY_ID) and (PTOB.ID' +
        '=SS.SELL_PRIMARY_BODY_ID) and'
      
        '(PTOH.ID=PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID) and (SS.BUY_PRIMA' +
        'RY_ID is null)')
    ModifySQL.Strings = (
      'update SALE_SETTLING'
      'set'
      '  BUY_PRICE = :BUY_PRICE'
      'where'
      '  ID = :OLD_ID')
    Left = 69
    Top = 90
    object ibdsSaleSettlingID: TLargeintField
      FieldName = 'ID'
      Origin = '"SALE_SETTLING"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsSaleSettlingARTICUL_NAME: TIBStringField
      FieldName = 'ARTICUL_NAME'
      Origin = '"ARTICULS"."NAME"'
      Size = 100
    end
    object ibdsSaleSettlingNUMBER_STR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUMBER_STR'
      Size = 30
      Calculated = True
    end
    object ibdsSaleSettlingNUMBER_PREFIX: TIBStringField
      FieldName = 'NUMBER_PREFIX'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER_PREFIX"'
      Size = 30
    end
    object ibdsSaleSettlingNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER"'
    end
    object ibdsSaleSettlingNUMBER_SUFFIX: TIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER_SUFFIX"'
      Size = 30
    end
    object ibdsSaleSettlingCOUNTRY_NAME: TIBStringField
      FieldName = 'COUNTRY_NAME'
      Origin = '"COUNTRIES"."NAME"'
      Size = 50
    end
    object ibdsSaleSettlingDECLARATION_NUMBER: TIBStringField
      FieldName = 'DECLARATION_NUMBER'
      Origin = '"SALE_SETTLING"."DECLARATION_NUMBER"'
      Size = 30
    end
    object ibdsSaleSettlingAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Origin = '"SALE_SETTLING"."AMOUNT"'
    end
    object ibdsSaleSettlingSELL_PRICE: TFloatField
      FieldName = 'SELL_PRICE'
      Origin = '"SALE_SETTLING"."SELL_PRICE"'
      DisplayFormat = '#,##0.00'
    end
    object ibdsSaleSettlingSELL_PRICE_WO_NALOG: TFloatField
      FieldName = 'SELL_PRICE_WO_NALOG'
      Origin = '"SALE_SETTLING"."SELL_PRICE_WO_NALOG"'
      DisplayFormat = '#,##0.00'
    end
    object ibdsSaleSettlingSELL_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SELL_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSaleSettlingSELL_TOTAL_WO_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SELL_TOTAL_WO_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSaleSettlingNDS: TFloatField
      FieldName = 'NDS'
      Origin = '"SALE_SETTLING"."NDS"'
    end
    object ibdsSaleSettlingNSP: TFloatField
      FieldName = 'NSP'
      Origin = '"SALE_SETTLING"."NSP"'
    end
    object ibdsSaleSettlingBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = '"SALE_SETTLING"."BUY_PRICE"'
      DisplayFormat = '#,##0.00'
    end
    object ibdsSaleSettlingBUY_PRICE_WO_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BUY_PRICE_WO_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSaleSettlingBUY_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BUY_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSaleSettlingBUY_TOTAL_WO_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BUY_TOTAL_WO_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSaleSettlingSTART_BUYING_DATE: TDateField
      FieldKind = fkCalculated
      FieldName = 'START_BUYING_DATE'
      Calculated = True
    end
    object ibdsSaleSettlingSTOP_BUYING_DATE: TDateField
      FieldKind = fkCalculated
      FieldName = 'STOP_BUYING_DATE'
      Calculated = True
    end
    object ibdsSaleSettlingTOTAL_DELTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_DELTA'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsSaleSettlingPRIMARY_DATE: TDateField
      FieldName = 'PRIMARY_DATE'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."PRIMARY_DATE"'
    end
    object ibdsSaleSettlingTOTAL_WHITE: TFloatField
      FieldName = 'TOTAL_WHITE'
    end
    object ibdsSaleSettlingENTERPRISE_STORE_ID: TLargeintField
      FieldName = 'ENTERPRISE_STORE_ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."ENTERPRISE_STORE_ID"'
    end
    object ibdsSaleSettlingARTICUL_ID: TLargeintField
      FieldName = 'ARTICUL_ID'
      Origin = '"SALE_SETTLING"."ARTICUL_ID"'
    end
  end
  object dsSaleSettling: TDataSource
    DataSet = ibdsSaleSettling
    OnStateChange = dsSaleSettlingStateChange
    Left = 69
    Top = 119
  end
  object pmInvoices: TPopupMenu
    Left = 456
    Top = 48
    object pmParentInvoiceIn: TMenuItem
      Tag = 2
      Caption = #1055#1088#1080#1093#1086#1076#1085#1099#1081' '#1089#1095#1077#1090' '#8470
      Hint = #1042#1099#1073#1086#1088' '#1085#1086#1084#1077#1088#1072' '#1084#1072#1090#1077#1088#1080#1085#1089#1082#1086#1075#1086' '#1089#1095#1077#1090#1072
      OnClick = pmParentInvoiceInClick
    end
    object pmParentInvoiceOut: TMenuItem
      Tag = 1
      Caption = #1056#1072#1089#1093#1086#1076#1085#1099#1081' '#1089#1095#1077#1090' '#8470
      Hint = #1042#1099#1073#1086#1088' '#1085#1086#1084#1077#1088#1072' '#1084#1072#1090#1077#1088#1080#1085#1089#1082#1086#1075#1086' '#1089#1095#1077#1090#1072
      OnClick = pmParentInvoiceInClick
    end
  end
  object ibdsPrimaryForBuying: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsSuplayersAfterDelete
    OnCalcFields = ibdsPrimaryForBuyingCalcFields
    OnNewRecord = ibdsPrimaryForBuyingNewRecord
    BufferChunks = 100
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from PRIMARY_FOR_BUYING'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into PRIMARY_FOR_BUYING'
      '  (ID, INVOICE_ID, PRIMARY_TOVAR_INCOME_HEADER_ID, '
      'PRIMARY_TOVAR_INCOME_DATE)'
      'values'
      '  (:ID, :INVOICE_ID, :PRIMARY_TOVAR_INCOME_HEADER_ID, '
      ':PRIMARY_TOVAR_INCOME_DATE)')
    RefreshSQL.Strings = (
      
        'select PFB.ID, PFB.INVOICE_ID, PFB.PRIMARY_TOVAR_INCOME_HEADER_I' +
        'D,'
      
        'PFB.PRIMARY_TOVAR_INCOME_DATE, PTIH.NUMBER_PREFIX||PTIH.NUMBER||' +
        'PTIH.NUMBER_SUFFIX NUMBER,'
      'PTIH.PRIMARY_DATE'
      
        'from PRIMARY_FOR_BUYING PFB left outer join PRIMARY_TOVAR_INCOME' +
        '_HEADER PTIH on'
      '(PFB.ID=:ID) and (PTIH.ID=PFB.PRIMARY_TOVAR_INCOME_HEADER_ID)')
    SelectSQL.Strings = (
      
        'select PFB.ID, PFB.INVOICE_ID, PFB.PRIMARY_TOVAR_INCOME_HEADER_I' +
        'D,'
      
        'PFB.PRIMARY_TOVAR_INCOME_DATE, PTIH.NUMBER_PREFIX||PTIH.NUMBER||' +
        'PTIH.NUMBER_SUFFIX NUMBER,'
      'PTIH.PRIMARY_DATE, PFB.AMOUNT'
      
        'from PRIMARY_FOR_BUYING PFB left outer join PRIMARY_TOVAR_INCOME' +
        '_HEADER PTIH on'
      '(PTIH.ID=PFB.PRIMARY_TOVAR_INCOME_HEADER_ID)'
      'order by 2')
    ModifySQL.Strings = (
      'update PRIMARY_FOR_BUYING'
      'set'
      
        '  PRIMARY_TOVAR_INCOME_HEADER_ID = :PRIMARY_TOVAR_INCOME_HEADER_' +
        'ID,'
      '  PRIMARY_TOVAR_INCOME_DATE = :PRIMARY_TOVAR_INCOME_DATE'
      'where'
      '  ID = :OLD_ID')
    Left = 99
    Top = 32
    object ibdsPrimaryForBuyingID: TLargeintField
      FieldName = 'ID'
      Origin = '"PRIMARY_FOR_BUYING"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsPrimaryForBuyingINVOICE_ID: TLargeintField
      FieldName = 'INVOICE_ID'
      Origin = '"PRIMARY_FOR_BUYING"."INVOICE_ID"'
    end
    object ibdsPrimaryForBuyingPRIMARY_TOVAR_INCOME_HEADER_ID: TLargeintField
      FieldName = 'PRIMARY_TOVAR_INCOME_HEADER_ID'
      Origin = '"PRIMARY_FOR_BUYING"."PRIMARY_TOVAR_INCOME_HEADER_ID"'
    end
    object ibdsPrimaryForBuyingPRIMARY_TOVAR_INCOME_DATE: TDateField
      FieldName = 'PRIMARY_TOVAR_INCOME_DATE'
      Origin = '"PRIMARY_FOR_BUYING"."PRIMARY_TOVAR_INCOME_DATE"'
    end
    object ibdsPrimaryForBuyingPRIMARY_DATE: TDateField
      FieldName = 'PRIMARY_DATE'
      Origin = '"PRIMARY_TOVAR_INCOME_HEADER"."PRIMARY_DATE"'
    end
    object ibdsPrimaryForBuyingNUMBER_DATE: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUMBER_DATE'
      Size = 30
      Calculated = True
    end
    object ibdsPrimaryForBuyingNUMBER: TIBStringField
      FieldName = 'NUMBER'
      Size = 71
    end
    object ibdsPrimaryForBuyingAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Origin = '"PRIMARY_FOR_BUYING"."AMOUNT"'
      DisplayFormat = '#,##0.00'
    end
    object ibdsPrimaryForBuyingNUMBER_PP: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NUMBER_PP'
      Calculated = True
    end
  end
  object dsPrimaryForBuying: TDataSource
    DataSet = ibdsPrimaryForBuying
    OnStateChange = dsSuplayersStateChange
    Left = 99
    Top = 61
  end
  object ibdsPrimaryBodyForBuying: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsSuplayersAfterDelete
    OnCalcFields = ibdsSaleSettlingCalcFields
    BufferChunks = 100
    CachedUpdates = True
    DeleteSQL.Strings = (
      'update SALE_SETTLING'
      'set'
      '  BUY_PRIMARY_ID= null'
      'where'
      '  ID = :OLD_ID')
    RefreshSQL.Strings = (
      
        'select SS.ID, A.NAME ARTICUL_NAME, PTOH.NUMBER_PREFIX, PTOH.NUMB' +
        'ER, PTOH.NUMBER_SUFFIX,'
      
        'PTOH.PRIMARY_DATE, C.NAME COUNTRY_NAME, SS.DECLARATION_NUMBER, S' +
        'S.AMOUNT, SS.SELL_PRICE,'
      
        'SS.SELL_PRICE_WO_NALOG, SS.NDS, SS.NSP, SS.BUY_PRICE, PTOH.ENTER' +
        'PRISE_STORE_ID, SS.ARTICUL_ID,'
      'SS.BUY_PRIMARY_ID'
      
        'from SALE_SETTLING SS, ARTICULS A, COUNTRIES C, PRIMARY_TOVAR_OU' +
        'TCOME_BODY PTOB,'
      'PRIMARY_TOVAR_OUTCOME_HEADER PTOH'
      
        'where (A.ID=SS.ARTICUL_ID) and (C.ID=SS.COUNTRY_ID) and (PTOB.ID' +
        '=SS.SELL_PRIMARY_BODY_ID) and'
      
        '(PTOH.ID=PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID) and not(SS.BUY_PR' +
        'IMARY_ID is null)'
      'and (SS.ID = :ID)')
    SelectSQL.Strings = (
      
        'select SS.ID, A.NAME ARTICUL_NAME, PTOH.NUMBER_PREFIX, PTOH.NUMB' +
        'ER, PTOH.NUMBER_SUFFIX,'
      
        'PTOH.PRIMARY_DATE, C.NAME COUNTRY_NAME, SS.DECLARATION_NUMBER, S' +
        'S.AMOUNT, SS.SELL_PRICE,'
      
        'SS.SELL_PRICE_WO_NALOG, SS.NDS, SS.NSP, SS.BUY_PRICE, PTOH.ENTER' +
        'PRISE_STORE_ID, SS.ARTICUL_ID,'
      'SS.BUY_PRIMARY_ID'
      
        'from SALE_SETTLING SS, ARTICULS A, COUNTRIES C, PRIMARY_TOVAR_OU' +
        'TCOME_BODY PTOB,'
      'PRIMARY_TOVAR_OUTCOME_HEADER PTOH'
      
        'where (A.ID=SS.ARTICUL_ID) and (C.ID=SS.COUNTRY_ID) and (PTOB.ID' +
        '=SS.SELL_PRIMARY_BODY_ID) and'
      
        '(PTOH.ID=PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID) and not(SS.BUY_PR' +
        'IMARY_ID is null)'
      'order by 17')
    ModifySQL.Strings = (
      'update SALE_SETTLING'
      'set'
      '  BUY_PRICE = :BUY_PRICE'
      'where'
      '  ID = :OLD_ID')
    Left = 99
    Top = 90
    object ibdsPrimaryBodyForBuyingNUMBER_STR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUMBER_STR'
      Size = 30
      Calculated = True
    end
    object ibdsPrimaryBodyForBuyingSELL_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SELL_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsPrimaryBodyForBuyingSELL_TOTAL_WO_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SELL_TOTAL_WO_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsPrimaryBodyForBuyingBUY_PRICE_WO_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BUY_PRICE_WO_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsPrimaryBodyForBuyingBUY_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BUY_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsPrimaryBodyForBuyingBUY_TOTAL_WO_NALOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BUY_TOTAL_WO_NALOG'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsPrimaryBodyForBuyingTOTAL_DELTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_DELTA'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ibdsPrimaryBodyForBuyingID: TLargeintField
      FieldName = 'ID'
      Origin = '"SALE_SETTLING"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsPrimaryBodyForBuyingARTICUL_NAME: TIBStringField
      FieldName = 'ARTICUL_NAME'
      Origin = '"ARTICULS"."NAME"'
      Required = True
      Size = 100
    end
    object ibdsPrimaryBodyForBuyingNUMBER_PREFIX: TIBStringField
      FieldName = 'NUMBER_PREFIX'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER_PREFIX"'
      Size = 30
    end
    object ibdsPrimaryBodyForBuyingNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER"'
      Required = True
    end
    object ibdsPrimaryBodyForBuyingNUMBER_SUFFIX: TIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."NUMBER_SUFFIX"'
      Size = 30
    end
    object ibdsPrimaryBodyForBuyingPRIMARY_DATE: TDateField
      FieldName = 'PRIMARY_DATE'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."PRIMARY_DATE"'
    end
    object ibdsPrimaryBodyForBuyingCOUNTRY_NAME: TIBStringField
      FieldName = 'COUNTRY_NAME'
      Origin = '"COUNTRIES"."NAME"'
      Required = True
      Size = 50
    end
    object ibdsPrimaryBodyForBuyingDECLARATION_NUMBER: TIBStringField
      FieldName = 'DECLARATION_NUMBER'
      Origin = '"SALE_SETTLING"."DECLARATION_NUMBER"'
      Size = 30
    end
    object ibdsPrimaryBodyForBuyingAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Origin = '"SALE_SETTLING"."AMOUNT"'
    end
    object ibdsPrimaryBodyForBuyingSELL_PRICE: TFloatField
      FieldName = 'SELL_PRICE'
      Origin = '"SALE_SETTLING"."SELL_PRICE"'
      DisplayFormat = '#,##0.00'
    end
    object ibdsPrimaryBodyForBuyingSELL_PRICE_WO_NALOG: TFloatField
      FieldName = 'SELL_PRICE_WO_NALOG'
      Origin = '"SALE_SETTLING"."SELL_PRICE_WO_NALOG"'
      DisplayFormat = '#,##0.00'
    end
    object ibdsPrimaryBodyForBuyingNDS: TFloatField
      FieldName = 'NDS'
      Origin = '"SALE_SETTLING"."NDS"'
    end
    object ibdsPrimaryBodyForBuyingNSP: TFloatField
      FieldName = 'NSP'
      Origin = '"SALE_SETTLING"."NSP"'
    end
    object ibdsPrimaryBodyForBuyingBUY_PRICE: TFloatField
      FieldName = 'BUY_PRICE'
      Origin = '"SALE_SETTLING"."BUY_PRICE"'
      DisplayFormat = '#,##0.00'
    end
    object ibdsPrimaryBodyForBuyingENTERPRISE_STORE_ID: TLargeintField
      FieldName = 'ENTERPRISE_STORE_ID'
      Origin = '"PRIMARY_TOVAR_OUTCOME_HEADER"."ENTERPRISE_STORE_ID"'
    end
    object ibdsPrimaryBodyForBuyingARTICUL_ID: TLargeintField
      FieldName = 'ARTICUL_ID'
      Origin = '"SALE_SETTLING"."ARTICUL_ID"'
    end
    object ibdsPrimaryBodyForBuyingBUY_PRIMARY_ID: TLargeintField
      FieldName = 'BUY_PRIMARY_ID'
      Origin = '"SALE_SETTLING"."BUY_PRIMARY_ID"'
    end
  end
  object dsPrimaryBodyForBuying: TDataSource
    DataSet = ibdsPrimaryBodyForBuying
    OnStateChange = dsSuplayersStateChange
    Left = 99
    Top = 119
  end
end
