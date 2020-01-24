inherited frmRequests: TfrmRequests
  Left = 58
  Top = 174
  Width = 790
  Caption = #1047#1072#1082#1072#1079#1099' '#1085#1072' '#1089#1073#1086#1088#1082#1091
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 782
    Height = 348
    ActivePage = tsRequest
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    HotTrack = True
    Options = [pcoTopToBottomText]
    ParentFont = False
    TabOrder = 0
    TabPosition = tpRight
    OnChange = PageControl1Change
    OnPageChanging = PageControl1PageChanging
    ClientRectBottom = 347
    ClientRectLeft = 1
    ClientRectRight = 758
    ClientRectTop = 1
    object tsRequestsList: TcxTabSheet
      Caption = #1057#1087#1080#1089#1086#1082
      ImageIndex = 0
      object grdRequestsList: TcxGrid
        Left = 0
        Top = 0
        Width = 738
        Height = 346
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object tvRequestsList: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsMainRequestsList
          DataController.Filter.OnBeforeChange = tvRequestsListDataControllerFilterBeforeChange
          DataController.KeyFieldNames = 'ID'
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.IncSearch = True
          OptionsCustomize.DataRowSizing = True
          OptionsCustomize.GroupRowSizing = True
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          Preview.Column = tvRequestsListCOMMENTS
          Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
          OnCustomDrawColumnHeader = tvRequestsListCustomDrawColumnHeader
          object tvRequestsListSTORE_NAME: TcxGridDBColumn
            Caption = #1057#1082#1083#1072#1076
            DataBinding.FieldName = 'STORE_NAME'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 112
          end
          object tvRequestsListCONTRACTOR_NAME: TcxGridDBColumn
            Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
            DataBinding.FieldName = 'CONTRACTOR_NAME'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 154
          end
          object tvRequestsListMASTER_NAME: TcxGridDBColumn
            Caption = #1052#1077#1085#1077#1076#1078#1077#1088
            DataBinding.FieldName = 'MASTER_NAME'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 129
          end
          object tvRequestsListINVOICE_NUMBER: TcxGridDBColumn
            Caption = #1057#1095#1077#1090' '#8470
            DataBinding.FieldName = 'INVOICE_NUMBER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRequestsListNUMBER: TcxGridDBColumn
            Caption = #1053#1086#1084#1077#1088
            DataBinding.FieldName = 'NUMBER'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 86
          end
          object tvRequestsListREQUEST_TIMESTAMP: TcxGridDBColumn
            Caption = #1047#1072#1082#1072#1079' '#1074#1099#1076#1072#1085
            DataBinding.FieldName = 'REQUEST_TIMESTAMP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 83
          end
          object tvRequestsListREQUEST_END_TIMESTAMP: TcxGridDBColumn
            Caption = #1057#1088#1086#1082' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
            DataBinding.FieldName = 'REQUEST_END_TIMESTAMP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object tvRequestsListREQUEST_DONE_TIMESTAMP: TcxGridDBColumn
            Caption = #1047#1072#1082#1072#1079' '#1074#1099#1087#1086#1083#1085#1077#1085
            DataBinding.FieldName = 'REQUEST_DONE_TIMESTAMP'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 86
          end
          object tvRequestsListEXECUTOR_ID: TcxGridDBColumn
            Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
            DataBinding.FieldName = 'EXECUTOR_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'ShortFIO'
              end>
            Properties.ListSource = dsPersons
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 101
          end
          object tvRequestsListTESTER_ID: TcxGridDBColumn
            Caption = #1055#1088#1086#1074#1077#1088#1103#1102#1097#1080#1081
            DataBinding.FieldName = 'TESTER_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'ShortFIO'
              end>
            Properties.ListSource = dsPersons
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 107
          end
          object tvRequestsListCOMMENTS: TcxGridDBColumn
            DataBinding.FieldName = 'COMMENTS'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object tvRequestsListCLOSED: TcxGridDBColumn
            Caption = #1042#1099#1087#1086#1083#1085#1077#1085
            DataBinding.FieldName = 'CLOSED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = #1047#1072#1082#1088#1099#1090
            Properties.DisplayUnchecked = #1053#1077' '#1079#1072#1082#1088#1099#1090
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 74
          end
        end
        object lvRequestsList: TcxGridLevel
          GridView = tvRequestsList
        end
      end
      object Panel4: TPanel
        Left = 738
        Top = 0
        Width = 19
        Height = 346
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object sbCancelRequestsList: TSpeedButton
          Left = 0
          Top = 114
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
          OnClick = sbCancelRequestsListClick
        end
        object sbApplyRequestsList: TSpeedButton
          Left = 0
          Top = 95
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
          OnClick = sbApplyRequestsListClick
        end
        object sbDeleteRequestsList: TSpeedButton
          Left = 0
          Top = 76
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
          OnClick = sbDeleteRequestsListClick
        end
        object sbLastRequestsList: TSpeedButton
          Left = 0
          Top = 57
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            46010000424D460100000000000076000000280000001C0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333000033333333333333333333333333330000333333333333
            3333FF333333FFF30000330733333370333733FF333733F30000330007333370
            33373333FF3733F300003300000733703337333333F333F30000330000000770
            33373333333333F3000033000007337033373333337733F30000330007333370
            33373333773733F3000033073333337033373377333733F30000333333333333
            3337773333377733000033333333333333333333333333330000333333333333
            33333333333333330000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbLastRequestsListClick
        end
        object sbNextRequestsList: TSpeedButton
          Left = 0
          Top = 38
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1055#1086#1089#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            12010000424D12010000000000007600000028000000140000000D0000000100
            0400000000009C00000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FFFF33333333333333333333CEEC33333333333FF3333333CDFC3073
            333333733FF33333CDFC300073333373333FF333CDFC30000073337333333FF3
            CCEC3000000073733333333FCFFD30000073337333333773EFFF300073333373
            33377333EFFE30733333337337733333EEEE33333333337773333333FFFF3333
            3333333333333333FFFF33333333333333333333FFFF}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbNextRequestsListClick
        end
        object sbPriorRequestsList: TSpeedButton
          Left = 0
          Top = 19
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            12010000424D12010000000000007600000028000000140000000D0000000100
            0400000000009C00000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333335AAA33333333333333333333E11133333333333333333FFF5AAA3333
            33370333333FF33FF0003333370003333FF3333FD22233370000033FF333333F
            F0003700000003733333333FD2223337000003377333333F3000333337000333
            3773333FD2223333333703333337733FF00033333333333333333773D2223333
            3333333333333333F00033333333333333333333D222}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbPriorRequestsListClick
        end
        object sbFirstRequestsList: TSpeedButton
          Left = 0
          Top = 0
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            46010000424D460100000000000076000000280000001C0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333000033333333333333333333333333330000333333333333
            3333FFF33333FFF30000330733333370333733F333FF33F30000330733337000
            333733F3FF3333F30000330733700000333733FF333333F30000330770000000
            33373333333333F3000033073370000033373337333333F30000330733337000
            333733F3773333F30000330733333370333733F3337733F30000333333333333
            3337773333337733000033333333333333333333333333330000333333333333
            33333333333333330000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbFirstRequestsListClick
        end
        object sbFilterRequestsList: TSpeedButton
          Left = 0
          Top = 152
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1060#1080#1083#1100#1090#1088'/'#1087#1086#1080#1089#1082
          AllowAllUp = True
          GroupIndex = 1
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF131313282828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFAAAAAA6F6F6F666666969696FFFFFF4646461C1C1C9D9D
            9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F0F0F0F1C1C1C2B
            2B2B2222221212121D1D1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF5A5A5A1C1C1C7D7D7DAEAEAEAAAAAA999999515151252525FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9898982F2F2FA8A8A8FDFDFDECECECAD
            ADADA3A3A3C3C3C36B6B6B555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            5E5E5E5B5B5BF8F8F8FFFFFFF4F4F4E3E3E3A8A8A8B1B1B1A8A8A83B3B3BFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF737373424242DCDCDCFFFFFFFEFEFEFF
            FFFFFBFBFBD7D7D7777777434343FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2A2A2A505050D4D4D4F8F8F8FDFDFDECECEC9F9F9F202020777777FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A11717171E1E1E5E5E5E6E
            6E6E414141101010555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF4949491B1B1B1919192B2B2B797979FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbFilterRequestsListClick
        end
        object sbClose: TSpeedButton
          Left = 0
          Top = 190
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1047#1072#1082#1088#1099#1090#1100
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A87969F99000000FF
            FFFFFFFFFFFFFFFF9E9C9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF0F6EEFFFFFF494D520000008889866D706E000000000000D1CB
            CFD7D5D0000000FFFFFFFFFFFFFFFFFFFFFFFF7E7F7FFFFFFF7C7C794F5C5565
            66620B0906959595FFFFFFF9FFFCFFFFFF040B04000000FFFFFF7F7F7D000000
            FFFFFFFFFFFFF7F9F0000000000000000000000000000000545A57FFFFFFFFFF
            FF000000C0BFBCFFFFFFEDF3EF0000000D0F0CC5CACE00000000000000080000
            0B00000800000000000000000000FFFFFF3C3D3BFFFFFFFFFFFFBDBDBCFFFFFF
            272D28000000000000000400000A00000800000900000B000009000000004347
            3F484B46FFFFFFFFFFFFFFFFFFFFFFFFDBE5E7000000000500000B0000080000
            0800000800000800000B00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
            C6CCC0000000000000000A00000800000800000800000800000B000000000000
            00484F4DBEBDB9FFFFFFFFFFFF959E9843463A000000000000000B0000080000
            0800000800000800000C00000000050E00FFFFFF000000FFFFFF8A8889D0D3C8
            D2D6D6000000000000000900000B00000900000900000A00000E000000007177
            6CFFFFFF000000FCFAFFD4D6D6FFFFFFFFFFFF6A756E00000000000000000000
            0900000C00000500000000000000C7CBCCFFFFFF909687000000FFFFFFFFFFFF
            D9D7D98F9291C8C4C2000000000000000000000000000000000000272E280000
            00AAAAACC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33363300
            0000000000000000C2C3C3FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000004E4E4FDEDDE3F6F6F3DDDBDBFFFFFF0000
            00F8FBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E4DF595B59FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF888785FFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbCloseClick
        end
        object sbRefreshRequestsList: TSpeedButton
          Left = 0
          Top = 133
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1054#1073#1085#1086#1074#1080#1090#1100
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            46010000424D460100000000000076000000280000001C0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333FFFFF3333000033333707333333333FF3337733330000333700733333
            3333733337333333000033300733333333337333733333330000337073333333
            3337333F3333333300003300333333333337333F3FFFFFF30000330033300000
            3337333F733333F300003300733370003337333F373333F30000337007370000
            33373333F33333F3000033300000007033337333333373F30000333370007330
            33333733333773F3000033333333333333333377777337330000333333333333
            33333333333333330000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbRefreshRequestsListClick
        end
        object sbPrintRequestsList: TSpeedButton
          Left = 0
          Top = 171
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1055#1077#1095#1072#1090#1100'|'#1055#1077#1095#1072#1090#1100
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbPrintRequestsListClick
        end
      end
    end
    object tsRequest: TcxTabSheet
      Caption = #1047#1072#1082#1072#1079
      ImageIndex = 1
      object pnlTools: TPanel
        Left = 738
        Top = 0
        Width = 19
        Height = 346
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object sbCancelRequest: TSpeedButton
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
          OnClick = sbCancelRequestClick
        end
        object sbApplyRequest: TSpeedButton
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
          OnClick = sbApplyRequestClick
        end
        object sbDeleteRequest: TSpeedButton
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
          OnClick = sbDeleteRequestClick
        end
        object SpeedButton21: TSpeedButton
          Left = 0
          Top = 95
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1047#1072#1082#1088#1099#1090#1100
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A87969F99000000FF
            FFFFFFFFFFFFFFFF9E9C9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF0F6EEFFFFFF494D520000008889866D706E000000000000D1CB
            CFD7D5D0000000FFFFFFFFFFFFFFFFFFFFFFFF7E7F7FFFFFFF7C7C794F5C5565
            66620B0906959595FFFFFFF9FFFCFFFFFF040B04000000FFFFFF7F7F7D000000
            FFFFFFFFFFFFF7F9F0000000000000000000000000000000545A57FFFFFFFFFF
            FF000000C0BFBCFFFFFFEDF3EF0000000D0F0CC5CACE00000000000000080000
            0B00000800000000000000000000FFFFFF3C3D3BFFFFFFFFFFFFBDBDBCFFFFFF
            272D28000000000000000400000A00000800000900000B000009000000004347
            3F484B46FFFFFFFFFFFFFFFFFFFFFFFFDBE5E7000000000500000B0000080000
            0800000800000800000B00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
            C6CCC0000000000000000A00000800000800000800000800000B000000000000
            00484F4DBEBDB9FFFFFFFFFFFF959E9843463A000000000000000B0000080000
            0800000800000800000C00000000050E00FFFFFF000000FFFFFF8A8889D0D3C8
            D2D6D6000000000000000900000B00000900000900000A00000E000000007177
            6CFFFFFF000000FCFAFFD4D6D6FFFFFFFFFFFF6A756E00000000000000000000
            0900000C00000500000000000000C7CBCCFFFFFF909687000000FFFFFFFFFFFF
            D9D7D98F9291C8C4C2000000000000000000000000000000000000272E280000
            00AAAAACC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33363300
            0000000000000000C2C3C3FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000004E4E4FDEDDE3F6F6F3DDDBDBFFFFFF0000
            00F8FBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E4DF595B59FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF888785FFFFFFFFFFFFFFFFFF}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbCloseClick
        end
        object sbRefreshRequest: TSpeedButton
          Left = 0
          Top = 57
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1054#1073#1085#1086#1074#1080#1090#1100
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            46010000424D460100000000000076000000280000001C0000000D0000000100
            040000000000D000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333FFFFF3333000033333707333333333FF3337733330000333700733333
            3333733337333333000033300733333333337333733333330000337073333333
            3337333F3333333300003300333333333337333F3FFFFFF30000330033300000
            3337333F733333F300003300733370003337333F373333F30000337007370000
            33373333F33333F3000033300000007033337333333373F30000333370007330
            33333733333773F3000033333333333333333377777337330000333333333333
            33333333333333330000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          Visible = False
          OnClick = sbRefreshRequestClick
        end
        object sbPrintRequest: TSpeedButton
          Left = 0
          Top = 76
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1055#1077#1095#1072#1090#1100'|'#1055#1077#1095#1072#1090#1100
          AllowAllUp = True
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbPrintRequestClick
        end
        object sbShowComments: TSpeedButton
          Tag = 3
          Left = 0
          Top = 125
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080'|'#1055#1086#1082#1072#1079#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          AllowAllUp = True
          GroupIndex = 1
          Flat = True
          Glyph.Data = {
            82000000424D82000000000000003E0000002800000011000000110000000100
            010000000000440000000000000000000000020000000000000000000000FFFF
            FF00FF7F8000FE3F8000FD5F8000FB6F8000F3678000EB6B8000DB6D8000FB6F
            8000FB6F8000FB6F8000FB6F8000FB6F8000FB6F8000FB6F8000FB6F8000FB6F
            8000FFFF8000}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = sbShowCommentsClick
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 738
        Height = 346
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 738
          Height = 95
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          OnEnter = Panel2Enter
          DesignSize = (
            738
            95)
          object Label23: TLabel
            Left = 1
            Top = 1
            Width = 14
            Height = 16
            Caption = #8470
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblManager: TLabel
            Left = 392
            Top = 1
            Width = 63
            Height = 16
            Caption = #1052#1077#1085#1077#1076#1078#1077#1088
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 1
            Top = 39
            Width = 80
            Height = 16
            Caption = #1047#1072#1082#1072#1079' '#1074#1099#1076#1072#1085':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 1
            Top = 77
            Width = 98
            Height = 16
            Caption = #1047#1072#1082#1072#1079' '#1080#1089#1087#1086#1083#1085#1077#1085':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 1
            Top = 58
            Width = 109
            Height = 16
            Caption = #1057#1088#1086#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 237
            Top = 39
            Width = 39
            Height = 16
            Caption = #1042#1088#1077#1084#1103
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 237
            Top = 77
            Width = 39
            Height = 16
            Caption = #1042#1088#1077#1084#1103
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 237
            Top = 58
            Width = 39
            Height = 16
            Caption = #1042#1088#1077#1084#1103
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 121
            Top = 39
            Width = 28
            Height = 16
            Caption = #1044#1072#1090#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 121
            Top = 58
            Width = 28
            Height = 16
            Caption = #1044#1072#1090#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 121
            Top = 77
            Width = 28
            Height = 16
            Caption = #1044#1072#1090#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 335
            Top = 39
            Width = 44
            Height = 16
            Caption = #1057#1086#1073#1088#1072#1083
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 335
            Top = 58
            Width = 58
            Height = 16
            Caption = #1055#1088#1086#1074#1077#1088#1080#1083
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 131
            Top = 1
            Width = 37
            Height = 16
            Caption = #1057#1082#1083#1072#1076
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lblContractor: TLabel
            Left = 1
            Top = 20
            Width = 54
            Height = 16
            Caption = #1047#1072#1082#1072#1079#1095#1080#1082
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object cxDBPopupEdit1: TcxDBPopupEdit
            Left = 17
            Top = -1
            DataBinding.DataField = 'NumberStr'
            DataBinding.DataSource = dsMainRequest
            Properties.PopupControl = pnlNumber
            Properties.PopupSizeable = False
            TabOrder = 0
            Width = 108
          end
          object pnlNumber: TPanel
            Left = 510
            Top = 148
            Width = 142
            Height = 61
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
            object Label1: TLabel
              Left = 3
              Top = 4
              Width = 59
              Height = 16
              Caption = #1055#1088#1077#1092#1080#1082#1089
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 3
              Top = 40
              Width = 61
              Height = 16
              Caption = #1057#1091#1092#1092#1080#1082#1089
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 3
              Top = 22
              Width = 28
              Height = 16
              Caption = #8470#8470
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 65
              Top = 2
              Hint = #1063#1072#1089#1090#1100' '#1085#1086#1084#1077#1088#1072' '#1087#1088#1077#1076#1096#1077#1089#1090#1091#1102#1097#1072#1103' '#1094#1080#1092#1088#1086#1074#1086#1081' '#1077#1075#1086' '#1095#1072#1089#1090#1080
              DataBinding.DataField = 'NUMBER_PREFIX'
              DataBinding.DataSource = dsMainRequest
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 75
            end
            object cxDBTextEdit2: TcxDBTextEdit
              Left = 65
              Top = 38
              Hint = #1063#1072#1089#1090#1100' '#1085#1086#1084#1077#1088#1072' '#1087#1086#1089#1083#1077#1076#1091#1102#1097#1072#1103' '#1094#1080#1092#1088#1086#1074#1086#1081' '#1077#1075#1086' '#1095#1072#1089#1090#1080
              DataBinding.DataField = 'NUMBER_SUFFIX'
              DataBinding.DataSource = dsMainRequest
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 75
            end
            object cxDBSpinEdit1: TcxDBSpinEdit
              Left = 32
              Top = 20
              DataBinding.DataField = 'NUMBER'
              DataBinding.DataSource = dsMainRequest
              ParentFont = False
              Style.Font.Charset = RUSSIAN_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.ButtonStyle = btsDefault
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 108
            end
          end
          object deRequestStartDate: TcxDateEdit
            Left = 151
            Top = 37
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.OnChange = deRequestStartDatePropertiesChange
            TabOrder = 2
            Width = 80
          end
          object deRequestDoneDate: TcxDateEdit
            Left = 151
            Top = 75
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.OnChange = deRequestDoneDatePropertiesChange
            TabOrder = 3
            Width = 80
          end
          object deRequestEndDate: TcxDateEdit
            Left = 151
            Top = 56
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.OnChange = deRequestEndDatePropertiesChange
            TabOrder = 4
            Width = 80
          end
          object teRequestStartTime: TcxTimeEdit
            Left = 277
            Top = 37
            EditValue = 0.000000000000000000
            Properties.TimeFormat = tfHourMin
            Properties.OnChange = teRequestStartTimePropertiesChange
            TabOrder = 5
            Width = 52
          end
          object teRequestDoneTime: TcxTimeEdit
            Left = 277
            Top = 75
            EditValue = 0.000000000000000000
            Properties.TimeFormat = tfHourMin
            Properties.OnChange = teRequestDoneTimePropertiesChange
            TabOrder = 6
            Width = 52
          end
          object teRequestEndTime: TcxTimeEdit
            Left = 277
            Top = 56
            EditValue = 0.000000000000000000
            Properties.TimeFormat = tfHourMin
            Properties.OnChange = teRequestEndTimePropertiesChange
            TabOrder = 7
            Width = 52
          end
          object lcbExecutor: TcxDBLookupComboBox
            Left = 394
            Top = 37
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'EXECUTOR_ID'
            DataBinding.DataSource = dsMainRequest
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'ShortFIO'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsPersons
            TabOrder = 8
            Width = 216
          end
          object lcbTester: TcxDBLookupComboBox
            Left = 394
            Top = 56
            Anchors = [akLeft, akTop, akRight]
            DataBinding.DataField = 'TESTER_ID'
            DataBinding.DataSource = dsMainRequest
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'ShortFIO'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsPersons
            TabOrder = 9
            Width = 216
          end
          object cxDBLookupComboBox3: TcxDBLookupComboBox
            Left = 170
            Top = -1
            DataBinding.DataField = 'ENTERPRISE_STORE_ID'
            DataBinding.DataSource = dsMainRequest
            Properties.ClearKey = 46
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'FULL_NAME'
              end>
            Properties.ListOptions.AnsiSort = True
            Properties.ListOptions.GridLines = glNone
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsStores
            TabOrder = 10
            Width = 215
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 651
            Top = 35
            Anchors = [akTop, akRight]
            Caption = #1047#1072#1082#1088#1099#1090#1099#1081
            DataBinding.DataField = 'CLOSED'
            DataBinding.DataSource = dsMainRequest
            ParentFont = False
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 11
            Width = 83
          end
        end
        object pnlComments: TRzSizePanel
          Left = 0
          Top = 338
          Width = 738
          Height = 8
          Hint = #1055#1072#1085#1077#1083#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1077#1074
          Align = alBottom
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
          VisualStyle = vsGradient
          HotSpotClosed = True
          HotSpotPosition = 67
          object Label39: TLabel
            Left = 0
            Top = 8
            Width = 738
            Height = 16
            Align = alTop
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object dbmComments: TcxDBMemo
            Left = 0
            Top = 24
            Align = alClient
            DataBinding.DataField = 'COMMENTS'
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Height = 43
            Width = 738
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 95
          Width = 738
          Height = 243
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            738
            243)
          object grdSerials: TcxGrid
            Left = 561
            Top = 0
            Width = 177
            Height = 243
            Align = alRight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object tvSerials: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsMainRequestBodySerials
              DataController.KeyFieldNames = 'REQUEST_BODY_ID;SERIAL_ID'
              DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.DataRowSizing = True
              OptionsCustomize.GroupRowSizing = True
              OptionsData.Appending = True
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              OptionsView.HeaderEndEllipsis = True
              OptionsView.Indicator = True
              Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
              OnCustomDrawColumnHeader = tvRequestsListCustomDrawColumnHeader
              object tvSerialsSERIAL_ID: TcxGridDBColumn
                Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
                DataBinding.FieldName = 'SERIAL_ID'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.ClearKey = 46
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'STROKE_CODE'
                  end>
                Properties.ListOptions.GridLines = glNone
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsSerials
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
              end
              object tvSerialsREQUEST_BODY_ID: TcxGridDBColumn
                DataBinding.FieldName = 'REQUEST_BODY_ID'
                Visible = False
                Hidden = True
              end
            end
            object lvSerials: TcxGridLevel
              GridView = tvSerials
            end
          end
          object cxSplitter1: TcxSplitter
            Left = 553
            Top = 0
            Width = 8
            Height = 243
            Hint = #1057#1077#1088#1080#1081#1085#1099#1077' '#1085#1086#1084#1077#1088#1072
            HotZoneClassName = 'TcxMediaPlayer9Style'
            AlignSplitter = salRight
            Control = grdSerials
            ShowHint = True
            ParentShowHint = False
          end
          object grdRequestBody: TcxGrid
            Left = 0
            Top = 0
            Width = 553
            Height = 243
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = grdRequestBodyEnter
            OnFocusedViewChanged = grdRequestBodyFocusedViewChanged
            object tvRequestBody: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              FilterBox.CustomizeDialog = False
              DataController.DataSource = dsMainRequestBody
              DataController.KeyFieldNames = 'ID'
              DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.00##'
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.ImmediateEditor = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.DataRowSizing = True
              OptionsData.Appending = True
              OptionsSelection.InvertSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GroupByBox = False
              OptionsView.HeaderEndEllipsis = True
              OptionsView.Indicator = True
              Preview.Column = tvRequestBodyCOMMENTS
              Styles.StyleSheet = frmMain.cxGridTableViewStyleSheet1
              object tvRequestBodyARTICUL_ID: TcxGridDBColumn
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'ARTICUL_ID'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.ClearKey = 46
                Properties.DropDownAutoSize = True
                Properties.DropDownSizeable = True
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    Width = 364
                    FieldName = 'NAME'
                  end>
                Properties.ListOptions.AnsiSort = True
                Properties.ListOptions.GridLines = glNone
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = frmDM.dsArticuls
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 380
              end
              object tvRequestBodyPACKS_AMOUNT: TcxGridDBColumn
                Caption = #1050#1086#1083'.-'#1074#1086
                DataBinding.FieldName = 'AMOUNT'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 80
              end
              object tvRequestBodyCOMMENTS: TcxGridDBColumn
                DataBinding.FieldName = 'COMMENTS'
              end
            end
            object lvRequestBody: TcxGridLevel
              GridView = tvRequestBody
            end
          end
          object pnlMessage: TPanel
            Left = 190
            Top = 111
            Width = 358
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            BevelInner = bvLowered
            Caption = #1055#1086#1083#1091#1095#1077#1085#1080#1077' '#1085#1086#1084#1077#1088#1072'. '#1054#1078#1080#1076#1072#1085#1080#1077' '#1086#1095#1077#1088#1077#1076#1080'...'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            Visible = False
          end
        end
      end
    end
  end
  inherited trMain: TIBTransaction
    Active = True
    DefaultDatabase = frmDM.dbMain
    Left = 18
    Top = 122
  end
  inherited ibsGen_ID: TIBSQL
    Left = 126
    Top = 104
  end
  inherited ibsGridsSetup: TIBSQL
    Left = 96
    Top = 104
  end
  object ibdsMainRequestsList: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainRequestsListAfterDelete
    AfterScroll = ibdsMainRequestsListAfterScroll
    OnUpdateRecord = ibdsMainRequestsListUpdateRecord
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from REQUEST_HEADERS'
      'where'
      '  ID = :OLD_ID')
    SelectSQL.Strings = (
      'select RH.ID, S.NAME STORE_NAME, C.NAME CONTRACTOR_NAME,'
      'P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME MASTER_NAME,'
      
        'RH.NUMBER_PREFIX, RH.NUMBER, RH.NUMBER_SUFFIX, IH.NUMBER_PREFIX ' +
        'INVOICE_NUMBER_PREFIX, IH.NUMBER INVOICE_NUMBER, IH.NUMBER_SUFFI' +
        'X INVOICE_NUMBER_SUFFIX,'
      
        'RH.REQUEST_TIMESTAMP, RH.CLOSED, RH.REQUEST_END_TIMESTAMP, RH.RE' +
        'QUEST_DONE_TIMESTAMP,'
      'RH.EXECUTOR_ID, RH.TESTER_ID, RH.COMMENTS'
      
        'from REQUEST_HEADERS RH, STORES S, INVOICE_HEADER IH, INVOICE_BO' +
        'DY IB, CONTRACTORS C,'
      'PERSONS P'
      
        'where (S.ID=RH.ENTERPRISE_STORE_ID) and (IB.ID=RH.INVOICE_BODY_I' +
        'D) and'
      
        '(IH.ID=IB.INVOICE_ID) and (C.ID=IH.CONTRACTOR_ID) and (P.ID=IH.M' +
        'ASTER_ID)')
    Left = 18
    Top = 152
    object ibdsMainRequestsListID: TIntegerField
      FieldName = 'ID'
      Origin = 'RH.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainRequestsListSTORE_NAME: TIBStringField
      FieldName = 'STORE_NAME'
      Origin = 'S.NAME'
      Size = 50
    end
    object ibdsMainRequestsListCONTRACTOR_NAME: TIBStringField
      FieldName = 'CONTRACTOR_NAME'
      Origin = 'C.NAME'
      Size = 300
    end
    object ibdsMainRequestsListMASTER_NAME: TIBStringField
      FieldName = 'MASTER_NAME'
      Origin = 'P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME'
      ProviderFlags = []
      Size = 92
    end
    object ibdsMainRequestsListNUMBER_PREFIX: TIBStringField
      FieldName = 'NUMBER_PREFIX'
      Origin = 'RH.NUMBER_PREFIX'
      Size = 30
    end
    object ibdsMainRequestsListNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'RH.NUMBER'
      OnGetText = ibdsMainRequestsListNUMBERGetText
    end
    object ibdsMainRequestsListNUMBER_SUFFIX: TIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Origin = 'RH.NUMBER_SUFFIX'
      Size = 30
    end
    object ibdsMainRequestsListREQUEST_TIMESTAMP: TDateTimeField
      FieldName = 'REQUEST_TIMESTAMP'
      Origin = 'RH.REQUEST_TIMESTAMP'
      DisplayFormat = 'dd.mm.yy hh:nn'
    end
    object ibdsMainRequestsListCLOSED: TIntegerField
      FieldName = 'CLOSED'
      Origin = 'RH.CLOSED'
    end
    object ibdsMainRequestsListREQUEST_END_TIMESTAMP: TDateTimeField
      FieldName = 'REQUEST_END_TIMESTAMP'
      Origin = 'RH.REQUEST_END_TIMESTAMP'
      DisplayFormat = 'dd.mm.yy hh:nn'
    end
    object ibdsMainRequestsListREQUEST_DONE_TIMESTAMP: TDateTimeField
      FieldName = 'REQUEST_DONE_TIMESTAMP'
      Origin = 'RH.REQUEST_DONE_TIMESTAMP'
      DisplayFormat = 'dd.mm.yy hh:nn'
    end
    object ibdsMainRequestsListEXECUTOR_ID: TLargeintField
      FieldName = 'EXECUTOR_ID'
      Origin = 'RH.EXECUTOR_ID'
    end
    object ibdsMainRequestsListTESTER_ID: TLargeintField
      FieldName = 'TESTER_ID'
      Origin = 'RH.TESTER_ID'
    end
    object ibdsMainRequestsListCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = 'RH.COMMENTS'
      Size = 100
    end
    object ibdsMainRequestsListINVOICE_NUMBER_PREFIX: TIBStringField
      FieldName = 'INVOICE_NUMBER_PREFIX'
      Origin = '"INVOICE_HEADER"."NUMBER_PREFIX"'
      Size = 30
    end
    object ibdsMainRequestsListINVOICE_NUMBER: TIntegerField
      FieldName = 'INVOICE_NUMBER'
      Origin = '"INVOICE_HEADER"."NUMBER"'
      Required = True
      OnGetText = ibdsMainRequestsListINVOICE_NUMBERGetText
    end
    object ibdsMainRequestsListINVOICE_NUMBER_SUFFIX: TIBStringField
      FieldName = 'INVOICE_NUMBER_SUFFIX'
      Origin = '"INVOICE_HEADER"."NUMBER_SUFFIX"'
      Size = 30
    end
  end
  object dsMainRequestsList: TDataSource
    DataSet = ibdsMainRequestsList
    Left = 18
    Top = 181
  end
  object ibdsPersons: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    OnCalcFields = ibdsPersonsCalcFields
    BufferChunks = 100
    SelectSQL.Strings = (
      'select P.ID, P.SURNAME, P.NAME, P.SECOND_NAME'
      'from PERSONS P'
      'order by 2,3,4')
    Left = 143
    Top = 152
    object ibdsPersonsSURNAME: TIBStringField
      FieldName = 'SURNAME'
      Origin = '"PERSONS"."SURNAME"'
      Size = 30
    end
    object ibdsPersonsSECOND_NAME: TIBStringField
      FieldName = 'SECOND_NAME'
      Origin = '"PERSONS"."SECOND_NAME"'
      Size = 30
    end
    object ibdsPersonsShortFIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'ShortFIO'
      Size = 37
      Calculated = True
    end
    object ibdsPersonsID: TLargeintField
      FieldName = 'ID'
      Origin = '"PERSONS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsPersonsNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"PERSONS"."NAME"'
      Size = 30
    end
  end
  object dsPersons: TDataSource
    DataSet = ibdsPersons
    Left = 143
    Top = 182
  end
  object GridPopupMenu: TcxGridPopupMenu
    Grid = grdRequestsList
    PopupMenus = <>
    Left = 186
    Top = 114
  end
  object ibdsMainRequest: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainRequestAfterDelete
    AfterOpen = ibdsMainRequestAfterOpen
    BeforeOpen = ibdsMainRequestBeforeOpen
    OnCalcFields = ibdsMainRequestCalcFields
    OnNewRecord = ibdsMainRequestNewRecord
    OnUpdateRecord = ibdsMainRequestUpdateRecord
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from REQUEST_HEADERS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into REQUEST_HEADERS'
      
        '  (CLOSED, COMMENTS, CRC32_SET, ENTERPRISE_STORE_ID, EXECUTOR_ID' +
        ', ID, INVOICE_BODY_ID, '
      
        '   NUMBER, NUMBER_PREFIX, NUMBER_SUFFIX, REQUEST_DONE_TIMESTAMP,' +
        ' REQUEST_END_TIMESTAMP, '
      '   REQUEST_TIMESTAMP, SECURITY_LEVEL, TESTER_ID)'
      'values'
      
        '  (:CLOSED, :COMMENTS, :CRC32_SET, :ENTERPRISE_STORE_ID, :EXECUT' +
        'OR_ID, '
      
        '   :ID, :INVOICE_BODY_ID, :NUMBER, :NUMBER_PREFIX, :NUMBER_SUFFI' +
        'X, :REQUEST_DONE_TIMESTAMP, '
      
        '   :REQUEST_END_TIMESTAMP, :REQUEST_TIMESTAMP, :SECURITY_LEVEL, ' +
        ':TESTER_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  ENTERPRISE_STORE_ID,'
      '  INVOICE_BODY_ID,'
      '  CRC32_SET,'
      '  SECURITY_LEVEL,'
      '  NUMBER_PREFIX,'
      '  NUMBER,'
      '  NUMBER_SUFFIX,'
      '  REQUEST_TIMESTAMP,'
      '  CLOSED,'
      '  REQUEST_END_TIMESTAMP,'
      '  REQUEST_DONE_TIMESTAMP,'
      '  EXECUTOR_ID,'
      '  TESTER_ID,'
      '  COMMENTS,'
      '  CREATOR,'
      '  CREATE_DATE,'
      '  CHANGER,'
      '  CHANGE_DATE'
      'from REQUEST_HEADERS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select RH.ID, cast(RH.ENTERPRISE_STORE_ID as INTEGER) ENTERPRISE' +
        '_STORE_ID, RH.INVOICE_BODY_ID,'
      'RH.CRC32_SET, RH.SECURITY_LEVEL, RH.NUMBER_PREFIX, RH.NUMBER,'
      'RH.NUMBER_SUFFIX, RH.REQUEST_TIMESTAMP, RH.CLOSED,'
      'RH.REQUEST_END_TIMESTAMP, RH.REQUEST_DONE_TIMESTAMP,'
      
        'cast(RH.EXECUTOR_ID as INTEGER) EXECUTOR_ID, cast(RH.TESTER_ID a' +
        's INTEGER) TESTER_ID, RH.COMMENTS,'
      'IH.BLACK,'
      
        'P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME MASTER_NAME, C.NAME C' +
        'ONTRACTOR_NAME, IB.CRC32_SET INVOICE_CRC32_SET'
      
        'from REQUEST_HEADERS RH, INVOICE_HEADER IH, INVOICE_BODY IB, CON' +
        'TRACTORS C, PERSONS P'
      
        'where (RH.ID=:ID) and (IB.ID=RH.INVOICE_BODY_ID) and (IH.ID=IB.I' +
        'NVOICE_ID) and'
      '(C.ID=IH.CONTRACTOR_ID) and (P.ID=IH.MASTER_ID)')
    ModifySQL.Strings = (
      'update REQUEST_HEADERS'
      'set'
      '  CLOSED = :CLOSED,'
      '  COMMENTS = :COMMENTS,'
      '  CRC32_SET = :CRC32_SET,'
      '  ENTERPRISE_STORE_ID = :ENTERPRISE_STORE_ID,'
      '  EXECUTOR_ID = :EXECUTOR_ID,'
      '  ID = :ID,'
      '  INVOICE_BODY_ID = :INVOICE_BODY_ID,'
      '  NUMBER = :NUMBER,'
      '  NUMBER_PREFIX = :NUMBER_PREFIX,'
      '  NUMBER_SUFFIX = :NUMBER_SUFFIX,'
      '  REQUEST_DONE_TIMESTAMP = :REQUEST_DONE_TIMESTAMP,'
      '  REQUEST_END_TIMESTAMP = :REQUEST_END_TIMESTAMP,'
      '  REQUEST_TIMESTAMP = :REQUEST_TIMESTAMP,'
      '  SECURITY_LEVEL = :SECURITY_LEVEL,'
      '  TESTER_ID = :TESTER_ID'
      'where'
      '  ID = :OLD_ID')
    Left = 47
    Top = 152
    object ibdsMainRequestID: TIntegerField
      FieldName = 'ID'
      Origin = '"REQUEST_HEADERS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainRequestINVOICE_BODY_ID: TLargeintField
      FieldName = 'INVOICE_BODY_ID'
      Origin = '"REQUEST_HEADERS"."INVOICE_BODY_ID"'
    end
    object ibdsMainRequestCRC32_SET: TIntegerField
      FieldName = 'CRC32_SET'
      Origin = '"REQUEST_HEADERS"."CRC32_SET"'
    end
    object ibdsMainRequestSECURITY_LEVEL: TIntegerField
      FieldName = 'SECURITY_LEVEL'
      Origin = '"REQUEST_HEADERS"."SECURITY_LEVEL"'
    end
    object ibdsMainRequestNUMBER_PREFIX: TIBStringField
      FieldName = 'NUMBER_PREFIX'
      Origin = '"REQUEST_HEADERS"."NUMBER_PREFIX"'
      Size = 30
    end
    object ibdsMainRequestNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = '"REQUEST_HEADERS"."NUMBER"'
    end
    object ibdsMainRequestNUMBER_SUFFIX: TIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Origin = '"REQUEST_HEADERS"."NUMBER_SUFFIX"'
      Size = 30
    end
    object ibdsMainRequestREQUEST_TIMESTAMP: TDateTimeField
      FieldName = 'REQUEST_TIMESTAMP'
      Origin = '"REQUEST_HEADERS"."REQUEST_TIMESTAMP"'
    end
    object ibdsMainRequestCLOSED: TIntegerField
      FieldName = 'CLOSED'
      Origin = '"REQUEST_HEADERS"."CLOSED"'
    end
    object ibdsMainRequestREQUEST_END_TIMESTAMP: TDateTimeField
      FieldName = 'REQUEST_END_TIMESTAMP'
      Origin = '"REQUEST_HEADERS"."REQUEST_END_TIMESTAMP"'
    end
    object ibdsMainRequestREQUEST_DONE_TIMESTAMP: TDateTimeField
      FieldName = 'REQUEST_DONE_TIMESTAMP'
      Origin = '"REQUEST_HEADERS"."REQUEST_DONE_TIMESTAMP"'
    end
    object ibdsMainRequestCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"REQUEST_HEADERS"."COMMENTS"'
      Size = 100
    end
    object ibdsMainRequestNumberStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'NumberStr'
      Size = 90
      Calculated = True
    end
    object ibdsMainRequestMASTER_NAME: TIBStringField
      FieldName = 'MASTER_NAME'
      ProviderFlags = []
      Size = 92
    end
    object ibdsMainRequestCONTRACTOR_NAME: TIBStringField
      FieldName = 'CONTRACTOR_NAME'
      Origin = '"CONTRACTORS"."NAME"'
      Size = 300
    end
    object ibdsMainRequestBLACK: TIntegerField
      Tag = 99
      FieldName = 'BLACK'
      Origin = '"INVOICE_HEADER"."BLACK"'
    end
    object ibdsMainRequestINVOICE_CRC32_SET: TIntegerField
      FieldName = 'INVOICE_CRC32_SET'
      Origin = '"INVOICE_BODY"."CRC32_SET"'
    end
    object ibdsMainRequestENTERPRISE_STORE_ID: TIntegerField
      FieldName = 'ENTERPRISE_STORE_ID'
      ProviderFlags = []
    end
    object ibdsMainRequestEXECUTOR_ID: TIntegerField
      FieldName = 'EXECUTOR_ID'
      ProviderFlags = []
    end
    object ibdsMainRequestTESTER_ID: TIntegerField
      FieldName = 'TESTER_ID'
      ProviderFlags = []
    end
  end
  object dsMainRequest: TDataSource
    DataSet = ibdsMainRequest
    OnStateChange = dsMainRequestStateChange
    Left = 47
    Top = 181
  end
  object ibdsMainRequestBody: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainRequestAfterDelete
    BeforeOpen = ibdsMainRequestBodyBeforeOpen
    OnNewRecord = ibdsMainRequestBodyNewRecord
    OnUpdateRecord = ibdsMainRequestBodyUpdateRecord
    BufferChunks = 30
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from REQUEST_BODIES'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into REQUEST_BODIES'
      '  (AMOUNT, ARTICUL_ID, COMMENTS, ID, REQUEST_HEADER_ID)'
      'values'
      '  (:AMOUNT, :ARTICUL_ID, :COMMENTS, :ID, :REQUEST_HEADER_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  REQUEST_HEADER_ID,'
      '  ARTICUL_ID,'
      '  AMOUNT,'
      '  COMMENTS'
      'from REQUEST_BODIES '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select RB.ID, RB.REQUEST_HEADER_ID, RB.ARTICUL_ID, RB.AMOUNT, RB' +
        '.COMMENTS'
      'from REQUEST_BODIES RB'
      'where (RB.REQUEST_HEADER_ID=:ID)')
    ModifySQL.Strings = (
      'update REQUEST_BODIES'
      'set'
      '  AMOUNT = :AMOUNT,'
      '  ARTICUL_ID = :ARTICUL_ID,'
      '  COMMENTS = :COMMENTS'
      'where'
      '  ID = :OLD_ID')
    Left = 76
    Top = 152
    object ibdsMainRequestBodyID: TIntegerField
      FieldName = 'ID'
      Origin = '"REQUEST_BODIES"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainRequestBodyREQUEST_HEADER_ID: TIntegerField
      FieldName = 'REQUEST_HEADER_ID'
      Origin = '"REQUEST_BODIES"."REQUEST_HEADER_ID"'
    end
    object ibdsMainRequestBodyARTICUL_ID: TLargeintField
      FieldName = 'ARTICUL_ID'
      Origin = '"REQUEST_BODIES"."ARTICUL_ID"'
    end
    object ibdsMainRequestBodyAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Origin = '"REQUEST_BODIES"."AMOUNT"'
    end
    object ibdsMainRequestBodyCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"REQUEST_BODIES"."COMMENTS"'
      Size = 100
    end
  end
  object dsMainRequestBody: TDataSource
    DataSet = ibdsMainRequestBody
    OnStateChange = dsMainRequestStateChange
    Left = 76
    Top = 181
  end
  object ibsWhite: TIBSQL
    Database = frmDM.dbWhite
    Transaction = trMain
    Left = 172
    Top = 152
  end
  object ibdsStores: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    OnCalcFields = ibdsPersonsCalcFields
    BufferChunks = 100
    SelectSQL.Strings = (
      'select S.ID, E.NAME||'#39'/'#39'||S.NAME FULL_NAME'
      'from STORES S, ENTERPRISES E'
      'where (S.ID>0) and (S.ENTERPRISE_ID=E.ID)'
      'order by 2')
    Left = 143
    Top = 211
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
    Left = 143
    Top = 241
  end
  object ibsAux: TIBSQL
    Database = frmDM.dbMain
    Transaction = trMain
    Left = 172
    Top = 182
  end
  object trLock: TIBTransaction
    DefaultDatabase = frmDM.dbGenerators
    IdleTimer = 20
    Params.Strings = (
      'consistency'
      'lock_write=REQUESTS_LOCK'
      'exclusive'
      'wait')
    Left = 48
    Top = 122
  end
  object ibdsMainRequestBodySerials: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterDelete = ibdsMainRequestAfterDelete
    AfterScroll = ibdsMainRequestBodySerialsAfterScroll
    BeforeOpen = ibdsMainRequestBodyBeforeOpen
    OnNewRecord = ibdsMainRequestBodySerialsNewRecord
    OnUpdateRecord = ibdsMainRequestBodySerialsUpdateRecord
    BufferChunks = 30
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from REQUEST_BODY_SERIALS'
      'where'
      '  REQUEST_BODY_ID = :OLD_REQUEST_BODY_ID and'
      '  SERIAL_ID = :OLD_SERIAL_ID')
    InsertSQL.Strings = (
      'insert into REQUEST_BODY_SERIALS'
      '  (PRIMARY_TOVAR_OUTCOME_BODY_ID, REQUEST_BODY_ID, SERIAL_ID)'
      'values'
      '  (:PRIMARY_TOVAR_OUTCOME_BODY_ID, :REQUEST_BODY_ID, :SERIAL_ID)')
    RefreshSQL.Strings = (
      'Select '
      '  SERIAL_ID,'
      '  REQUEST_BODY_ID,'
      '  PRIMARY_TOVAR_OUTCOME_BODY_ID'
      'from REQUEST_BODY_SERIALS '
      'where'
      '  REQUEST_BODY_ID = :REQUEST_BODY_ID and'
      '  SERIAL_ID = :SERIAL_ID')
    SelectSQL.Strings = (
      
        'select cast(RBS.SERIAL_ID as INTEGER) SERIAL_ID, RBS.REQUEST_BOD' +
        'Y_ID, RBS.PRIMARY_TOVAR_OUTCOME_BODY_ID'
      
        'from REQUEST_BODY_SERIALS RBS, REQUEST_BODIES RB, REQUEST_HEADER' +
        'S RH'
      
        'where (RH.ID=:ID) and (RB.REQUEST_HEADER_ID=RH.ID) and (RBS.REQU' +
        'EST_BODY_ID=RB.ID)')
    ModifySQL.Strings = (
      'update REQUEST_BODY_SERIALS'
      'set'
      '  SERIAL_ID = :SERIAL_ID'
      'where'
      '  REQUEST_BODY_ID = :OLD_REQUEST_BODY_ID and'
      '  SERIAL_ID = :OLD_SERIAL_ID')
    Left = 105
    Top = 152
    object ibdsMainRequestBodySerialsREQUEST_BODY_ID: TIntegerField
      FieldName = 'REQUEST_BODY_ID'
      Origin = '"REQUEST_BODY_SERIALS"."REQUEST_BODY_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsMainRequestBodySerialsPRIMARY_TOVAR_OUTCOME_BODY_ID: TLargeintField
      FieldName = 'PRIMARY_TOVAR_OUTCOME_BODY_ID'
      Origin = '"REQUEST_BODY_SERIALS"."PRIMARY_TOVAR_OUTCOME_BODY_ID"'
    end
    object ibdsMainRequestBodySerialsSERIAL_ID: TIntegerField
      FieldName = 'SERIAL_ID'
      Origin = 'RBS.SERIAL_ID'
      ProviderFlags = []
      OnChange = ibdsMainRequestBodySerialsSERIAL_IDChange
    end
  end
  object dsMainRequestBodySerials: TDataSource
    DataSet = ibdsMainRequestBodySerials
    OnStateChange = dsMainRequestStateChange
    Left = 105
    Top = 181
  end
  object ibdsSerials: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BeforeOpen = ibdsMainRequestBodyBeforeOpen
    BufferChunks = 100
    SelectSQL.Strings = (
      'select SN.ID, SN.STROKE_CODE, PTIB.ARTICUL_ID'
      
        'from SERIAL_NUMBERS SN, PRIMARY_TOVAR_INCOME_BODY PTIB, REQUEST_' +
        'BODIES RB'
      
        'where (RB.REQUEST_HEADER_ID=:ID) and (PTIB.ID=SN.PRIMARY_TOVAR_I' +
        'NCOME_BODY_ID) and'
      '(PTIB.ARTICUL_ID=RB.ARTICUL_ID)'
      'order by 2')
    Left = 143
    Top = 271
    object ibdsSerialsID: TLargeintField
      FieldName = 'ID'
      Origin = '"SERIAL_NUMBERS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsSerialsSTROKE_CODE: TIBStringField
      FieldName = 'STROKE_CODE'
      Origin = '"SERIAL_NUMBERS"."STROKE_CODE"'
      Size = 80
    end
    object ibdsSerialsARTICUL_ID: TLargeintField
      FieldName = 'ARTICUL_ID'
      Origin = '"PRIMARY_TOVAR_INCOME_BODY"."ARTICUL_ID"'
    end
  end
  object dsSerials: TDataSource
    DataSet = ibdsSerials
    Left = 143
    Top = 301
  end
end
