inherited frmFactura: TfrmFactura
  Left = 49
  Top = 187
  Width = 790
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1095#1077#1090#1086#1074'-'#1092#1072#1082#1090#1091#1088
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 763
    Height = 348
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 0
      Width = 763
      Height = 287
      DisableThemesInTitle = False
      Selected.Strings = (
        'TYPE_NAME'#9'22'#9#1058#1080#1087#9'F'
        'CONTRACTOR_NAME'#9'41'#9#1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#9'F'
        'FACTURA_DATE'#9'16'#9#1044#1072#1090#1072#9'F'
        'NUMBER_STR'#9'19'#9#8470#8470#9'F'
        'AMOUNT'#9'20'#9#1057#1091#1084#1084#1072#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
      Align = alClient
      DataSource = dsMainFacturaList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = [dgAllowDelete]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize, dgTrailingEllipsis, dgShowCellHint, dgProportionalColResize, dgRowResize]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = RUSSIAN_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = True
      UseTFields = False
      OnTitleButtonClick = wwDBGrid1TitleButtonClick
      OnCreateHintWindow = wwDBGrid1CreateHintWindow
      OnCalcTitleImage = wwDBGrid1CalcTitleImage
      TitleImageList = frmDM.ImageList2
      PadColumnStyle = pcsPlain
    end
    object pnlMomInfo: TPanel
      Left = 0
      Top = 287
      Width = 763
      Height = 19
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
    end
    object pnlText: TPanel
      Left = 0
      Top = 306
      Width = 763
      Height = 17
      Align = alBottom
      AutoSize = True
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      DesignSize = (
        763
        17)
      object lblFilter: TLabel
        Left = 2
        Top = 2
        Width = 759
        Height = 13
        Align = alTop
        AutoSize = False
        Caption = 'lblFilter'
        Color = clBtnFace
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object SpeedButton3: TSpeedButton
        Left = 749
        Top = 4
        Width = 11
        Height = 11
        Cursor = crHandPoint
        Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1080'|'#1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1080
        AllowAllUp = True
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          46010000424D460100000000000076000000280000001C0000000D0000000100
          040000000000D000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333000033333333333333333333333333330000333333333333
          333333333333333300003333333333333333FFFFFFFFFFF30000330000000000
          33373333333333F300003330000000033333733333333F330000333300000033
          333337333333F333000033333000033333333373333F33330000333333003333
          3333333733F33333000033333333333333333333773333330000333333333333
          3333333333333333000033333333333333333333333333330000333333333333
          33333333333333330000}
        Layout = blGlyphRight
        NumGlyphs = 2
        Visible = False
        OnClick = SpeedButton5Click
      end
      object SpeedButton5: TSpeedButton
        Left = 749
        Top = 4
        Width = 11
        Height = 11
        Cursor = crHandPoint
        Hint = #1059#1073#1088#1072#1090#1100#13#10#1087#1072#1085#1077#1083#1100' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1080'|'#1059#1073#1088#1072#1090#1100' '#1087#1072#1085#1077#1083#1100' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1080
        AllowAllUp = True
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          46010000424D460100000000000076000000280000001C0000000D0000000100
          040000000000D0000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333000033333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333773333333333333333003333
          3333333733F33333333333333000033333333373333F33333333333300000033
          333337333333F33333333330000000033333733333333F333333330000000000
          33373333333333F333303333333333333333FFFFFFFFFFF33300333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          33333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
        OnClick = SpeedButton5Click
      end
    end
    object pnlFilter: TPanel
      Left = 0
      Top = 323
      Width = 763
      Height = 25
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      object Label42: TLabel
        Left = 117
        Top = 6
        Width = 16
        Height = 16
        Caption = #1055#1086
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object sbReFilter: TSpeedButton
        Left = 446
        Top = 4
        Width = 98
        Height = 18
        Cursor = crHandPoint
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        Flat = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          7A040000424D7A0400000000000036000000280000001C0000000D0000000100
          1800000000004404000000000000000000000000000000000000008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          80008080FFFFFF00808000808000808000808000808000808000808000808000
          8080008080008080008080008080000000008080008080008080008080008080
          008080008080008080008080008080008080008080FFFFFF008080FFFFFF0080
          8000808000808000808000808000808000808000808000808000808000808000
          0000000000000000008080008080008080008080008080008080008080008080
          008080008080FFFFFF008080008080008080FFFFFF0080800080800080800080
          8000808000808000808000808000808000000000000000000000000000000000
          8080008080008080008080008080008080008080008080FFFFFF008080008080
          008080008080008080FFFFFF0080800080800080800080800080800080800080
          8000000000000000000000808000000000000000000000808000808000808000
          8080008080008080808080008080008080008080008080008080008080008080
          FFFFFF0080800080800080800080800080800080800000000000000080800080
          8000808000000000000000000000808000808000808000808000808080808000
          8080008080008080FFFFFF808080008080008080008080FFFFFF008080008080
          0080800080800080800080800080800080800080800080800080800000000000
          0000000000808000808000808000808000808080808080808080808000808000
          8080808080008080008080008080FFFFFF008080008080008080008080008080
          0080800080800080800080800080800080800000000000000000000080800080
          8000808000808000808000808000808000808000808000808080808000808000
          8080008080FFFFFF008080008080008080008080008080008080008080008080
          0080800080800080800000000000000000000080800080800080800080800080
          80008080008080008080008080008080808080008080008080008080FFFFFF00
          8080008080008080008080008080008080008080008080008080008080008080
          0000000000000080800080800080800080800080800080800080800080800080
          8000808000808080808000808000808080808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080808080
          8080808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080008080008080008080008080008080}
        NumGlyphs = 2
        ParentFont = False
        Visible = False
        OnClick = sbReFilterClick
      end
      object deDateStop: TwwDBDateTimePicker
        Left = 134
        Top = 3
        Width = 80
        Height = 19
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ButtonEffects.Flat = True
        Frame.Enabled = True
        Frame.Transparent = True
        Frame.MouseEnterSameAsFocus = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 1
      end
      object cbPeriod: TwwCheckBox
        Left = 2
        Top = 5
        Width = 34
        Height = 17
        DisableThemes = False
        AlwaysTransparent = True
        Frame.Enabled = True
        Frame.Transparent = True
        Frame.MouseEnterSameAsFocus = True
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = #1057
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = cbPeriodClick
      end
      object deDateStart: TwwDBDateTimePicker
        Left = 36
        Top = 3
        Width = 80
        Height = 19
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ButtonEffects.Flat = True
        Frame.Enabled = True
        Frame.Transparent = True
        Frame.MouseEnterSameAsFocus = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 0
      end
      object cbType: TwwCheckBox
        Left = 226
        Top = 5
        Width = 49
        Height = 17
        DisableThemes = False
        AlwaysTransparent = True
        Frame.Enabled = True
        Frame.Transparent = True
        Frame.MouseEnterSameAsFocus = True
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = #1058#1080#1087':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cbPeriodClick
      end
      object edType: TwwDBComboBox
        Left = 276
        Top = 3
        Width = 167
        Height = 19
        ShowButton = True
        Style = csDropDownList
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        DropDownCount = 8
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        Frame.Enabled = True
        Frame.Transparent = True
        Frame.MouseEnterSameAsFocus = True
        ItemHeight = 0
        Items.Strings = (
          #1057#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072#9'1'
          #1057#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1072' '#1085#1072' '#1087#1088#1077#1076#1086#1087#1083#1072#1090#1091#9'3'
          #1057#1095#1077#1090' '#1092#1072#1082#1090#1091#1088#1072' '#1085#1072' '#1089#1090#1086#1088#1085#1086#9'4')
        ParentFont = False
        Sorted = False
        TabOrder = 4
        UnboundDataType = wwDefault
      end
    end
  end
  object Panel4: TPanel [1]
    Left = 763
    Top = 0
    Width = 19
    Height = 348
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object sbCancelFacturaList: TSpeedButton
      Left = 0
      Top = 133
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
      OnClick = sbCancelFacturaListClick
    end
    object sbApplyFacturaList: TSpeedButton
      Left = 0
      Top = 114
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
      OnClick = sbApplyFacturaListClick
    end
    object sbDeleteFacturaList: TSpeedButton
      Left = 0
      Top = 95
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Enabled = False
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
      OnClick = sbDeleteFacturaListClick
    end
    object sbAddFacturaList: TSpeedButton
      Left = 0
      Top = 76
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091' '#1085#1072' '#1089#1090#1086#1088#1085#1086
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
      OnClick = sbAddFacturaListClick
    end
    object sbLastFacturaList: TSpeedButton
      Left = 0
      Top = 57
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Enabled = False
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
      OnClick = sbLastFacturaListClick
    end
    object sbNextFacturaList: TSpeedButton
      Left = 0
      Top = 38
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1055#1086#1089#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Enabled = False
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
      OnClick = sbNextFacturaListClick
    end
    object sbPriorFacturaList: TSpeedButton
      Left = 0
      Top = 19
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Enabled = False
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
      OnClick = sbPriorFacturaListClick
    end
    object sbFirstFacturaList: TSpeedButton
      Left = 0
      Top = 0
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      AllowAllUp = True
      Enabled = False
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
      OnClick = sbFirstFacturaListClick
    end
    object sbFilterFacturaList: TSpeedButton
      Left = 0
      Top = 171
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = #1060#1080#1083#1100#1090#1088'/'#1087#1086#1080#1089#1082
      AllowAllUp = True
      GroupIndex = 2
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333300000000000033000FFFFFFFFFF030000FFFFFFF000000030FFFFFF07887
        00330FFFFF0788E7F0330FFFFF08888780330FFFFF08E88780330FFFFF07EE87
        F0330FFFFFF0788703330FFFFFFF000033330FFFFFFFFFF033330FFFFFFF0000
        33330FFFFFFF080333330FFFFFFF003333330000000003333333}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = sbFilterFacturaListClick
    end
    object SpeedButton10: TSpeedButton
      Left = 0
      Top = 209
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
      OnClick = SpeedButton10Click
    end
    object sbRefreashFacturaList: TSpeedButton
      Left = 0
      Top = 152
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
      OnClick = sbRefreashFacturaListClick
    end
    object sbPrintFacturaList: TSpeedButton
      Left = 0
      Top = 190
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
      OnClick = sbPrintFacturaListClick
    end
  end
  object pnlFactura: TPanel [2]
    Left = 366
    Top = 76
    Width = 150
    Height = 98
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    Visible = False
    object Label6: TLabel
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
    object Label9: TLabel
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
    object Label3: TLabel
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
    object sbApplyFactura: TSpeedButton
      Left = 128
      Top = 3
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 
        #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1074#1089#1077#13#10#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'|'#1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085 +
        #1077#1085#1080#1103
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
      OnClick = sbApplyFacturaClick
    end
    object sbCancelFactura: TSpeedButton
      Left = 128
      Top = 22
      Width = 19
      Height = 19
      Cursor = crHandPoint
      Hint = 
        #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077#13#10#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1103'|'#1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1089#1076#1077#1083#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1085#1077#1085 +
        #1080#1103
      AllowAllUp = True
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
      OnClick = sbCancelFacturaClick
    end
    object Label13: TLabel
      Left = 3
      Top = 59
      Width = 32
      Height = 16
      Caption = #1044#1072#1090#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 3
      Top = 76
      Width = 43
      Height = 16
      Caption = #1057#1091#1084#1084#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbePrefix: TwwDBEdit
      Left = 66
      Top = 3
      Width = 60
      Height = 19
      BorderStyle = bsNone
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object spNumber: TwwDBSpinEdit
      Left = 33
      Top = 21
      Width = 63
      Height = 19
      Increment = 1.000000000000000000
      BorderStyle = bsNone
      CharCase = ecUpperCase
      ButtonEffects.Flat = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
    end
    object dbeSuffix: TwwDBEdit
      Left = 66
      Top = 39
      Width = 60
      Height = 19
      BorderStyle = bsNone
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dtDate: TwwDBDateTimePicker
      Left = 38
      Top = 57
      Width = 88
      Height = 19
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ButtonEffects.Flat = True
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.MouseEnterSameAsFocus = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 3
    end
    object dbeAmount: TwwDBEdit
      Left = 49
      Top = 75
      Width = 77
      Height = 19
      BorderStyle = bsNone
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Frame.Enabled = True
      Frame.Transparent = True
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlMessage: TPanel [3]
    Left = 105
    Top = 162
    Width = 559
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
    TabOrder = 2
    Visible = False
  end
  inherited trMain: TIBTransaction
    DefaultDatabase = frmDM.dbMain
    Left = 33
    Top = 86
  end
  inherited ibsGen_ID: TIBSQL
    Left = 91
    Top = 86
  end
  object trLock: TIBTransaction
    DefaultDatabase = frmDM.dbGenerators
    IdleTimer = 60
    Params.Strings = (
      'consistency'
      'lock_write=FACTURA_LOCK'
      'exclusive'
      'wait')
    Left = 62
    Top = 86
  end
  object ibdsMainFacturaList: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    AfterOpen = ibdsMainFacturaListAfterOpen
    AfterScroll = ibdsMainFacturaListAfterScroll
    OnCalcFields = ibdsMainFacturaListCalcFields
    OnUpdateRecord = ibdsMainFacturaListUpdateRecord
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from FACTURA'
      'where'
      '  ID = :OLD_ID')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  PARENT_TYPE,'
      '  PARENT_ID,'
      '  NUMBER_PREFIX,'
      '  NUMBER,'
      '  NUMBER_SUFFIX,'
      '  FACTURA_DATE,'
      '  AMOUNT,'
      '  CREATOR,'
      '  CREATE_DATE,'
      '  CHANGER,'
      '  CHANGE_DATE'
      'from FACTURA '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select F.ID, F.PARENT_TYPE, F.PARENT_ID, F.FACTURA_DATE,'
      
        'F.NUMBER_PREFIX, F.NUMBER, F.NUMBER_SUFFIX, PS.TAKE_NSP, C.PRIVA' +
        'TE,'
      
        'PTOH.AMOUNT, C.NAME CONTRACTOR_NAME, C.INN, C.KPP, cast('#39'01.01.1' +
        '900'#39' as DATE) PAYMENT_DATE'
      
        'from FACTURA F, PRIMARY_TOVAR_OUTCOME_HEADER PTOH, CONTRACTORS C' +
        ', PRIMARY_SETUP PS'
      
        'where (F.PARENT_TYPE=1) and (PTOH.ID=F.PARENT_ID) and (C.ID=PTOH' +
        '.CONTRACTOR_ID) and (PTOH.PRIMARY_SETUP_ID=PS.ID)'
      'union'
      'select F.ID, F.PARENT_TYPE, F.PARENT_ID, F.FACTURA_DATE,'
      
        'F.NUMBER_PREFIX, F.NUMBER, F.NUMBER_SUFFIX, PS.TAKE_NSP, C.PRIVA' +
        'TE,'
      'F.AMOUNT, C.NAME CONTRACTOR_NAME, C.INN, C.KPP, PP.PAYMENT_DATE'
      
        'from FACTURA F, PRIMARY_PAYMENTS PP, CONTRACTORS C, PRIMARY_SETU' +
        'P PS'
      
        'where (F.PARENT_TYPE=3) and (PP.ID=F.PARENT_ID) and (C.ID=PP.CON' +
        'TRACTOR_ID) and (PP.PRIMARY_SETUP_ID=PS.ID)'
      'union'
      'select F.ID, F.PARENT_TYPE, F.PARENT_ID, F.FACTURA_DATE,'
      
        'F.NUMBER_PREFIX, F.NUMBER, F.NUMBER_SUFFIX, 0 TAKE_NSP, C.PRIVAT' +
        'E,'
      'F.AMOUNT, C.NAME CONTRACTOR_NAME, C.INN, C.KPP, PP.PAYMENT_DATE'
      'from FACTURA F, PRIMARY_PAYMENTS PP, CONTRACTORS C, FACTURA F2'
      
        'where (F.PARENT_TYPE=4) and (F2.ID=F.PARENT_ID) and (PP.ID=F2.PA' +
        'RENT_ID) and (C.ID=PP.CONTRACTOR_ID)'
      'order by 5 desc, 4 desc')
    Left = 46
    Top = 115
    object ibdsMainFacturaListID: TLargeintField
      FieldName = 'ID'
      Origin = 'FACTURA.ID'
      Required = True
    end
    object ibdsMainFacturaListPARENT_TYPE: TIntegerField
      FieldName = 'PARENT_TYPE'
      Origin = 'FACTURA.PARENT_TYPE'
      Required = True
    end
    object ibdsMainFacturaListPARENT_ID: TLargeintField
      FieldName = 'PARENT_ID'
      Origin = 'FACTURA.PARENT_ID'
      Required = True
    end
    object ibdsMainFacturaListFACTURA_DATE: TDateField
      Alignment = taCenter
      FieldName = 'FACTURA_DATE'
      Origin = 'FACTURA.FACTURA_DATE'
      Required = True
    end
    object ibdsMainFacturaListNUMBER_STR: TIBStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'NUMBER_STR'
      Required = True
      Size = 90
      Calculated = True
    end
    object ibdsMainFacturaListAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,###.00'
    end
    object ibdsMainFacturaListTYPE_NAME: TStringField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'TYPE_NAME'
      Calculated = True
    end
    object ibdsMainFacturaListNUMBER_PREFIX: TIBStringField
      FieldName = 'NUMBER_PREFIX'
      Required = True
      Size = 30
    end
    object ibdsMainFacturaListNUMBER: TIntegerField
      FieldName = 'NUMBER'
      Required = True
    end
    object ibdsMainFacturaListNUMBER_SUFFIX: TIBStringField
      FieldName = 'NUMBER_SUFFIX'
      Required = True
      Size = 30
    end
    object ibdsMainFacturaListCONTRACTOR_NAME: TIBStringField
      FieldName = 'CONTRACTOR_NAME'
      Required = True
      Size = 300
    end
    object ibdsMainFacturaListINN: TIBStringField
      FieldName = 'INN'
      Visible = False
      Size = 12
    end
    object ibdsMainFacturaListPAYMENT_DATE: TDateField
      FieldName = 'PAYMENT_DATE'
      Required = True
      Visible = False
    end
    object ibdsMainFacturaListPAYMENT_DATE_STR: TStringField
      FieldKind = fkCalculated
      FieldName = 'PAYMENT_DATE_STR'
      Visible = False
      Calculated = True
    end
    object ibdsMainFacturaListTAKE_NSP: TIntegerField
      FieldName = 'TAKE_NSP'
      Required = True
      Visible = False
    end
    object ibdsMainFacturaListPRIVATE: TIntegerField
      FieldName = 'PRIVATE'
      Required = True
      Visible = False
    end
    object ibdsMainFacturaListNSP_AMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NSP_AMOUNT'
      Calculated = True
    end
    object ibdsMainFacturaListNDS_AMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NDS_AMOUNT'
      Calculated = True
    end
    object ibdsMainFacturaListKPP: TIBStringField
      FieldName = 'KPP'
      ProviderFlags = []
      Size = 10
    end
  end
  object dsMainFacturaList: TDataSource
    DataSet = ibdsMainFacturaList
    OnStateChange = dsMainFacturaListStateChange
    Left = 46
    Top = 144
  end
  object ibsWhite: TIBSQL
    Database = frmDM.dbWhite
    Transaction = trMain
    Left = 91
    Top = 115
  end
  object ibsNumb: TIBSQL
    Database = frmDM.dbMain
    Transaction = trMain
    Left = 91
    Top = 144
  end
  object ibdsReportHeader: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    BufferChunks = 1
    CachedUpdates = True
    SelectSQL.Strings = (
      
        'select E.NAME ENTERPRISE_NAME, E.ADDRESS, E.PHONE, E.INN ENTERPR' +
        'ISE_INN, E.KPP ENTERPRISE_KPP,'
      
        'PTOH.NUMBER_PREFIX||cast(PTOH.NUMBER as varchar(30))||PTOH.NUMBE' +
        'R_SUFFIX NUMBER_STR,'
      
        'PTOH.PRIMARY_DATE, C.NAME CONTRACTOR_NAME, C.ADDRESS CONTRACTOR_' +
        'ADDRESS, C.UR_ADDRESS CONTRACTOR_UR_ADDRESS,'
      
        'C.INN CONTRACTOR_INN, C.KPP CONTRACTOR_KPP, P.SURNAME||'#39' '#39'||P.NA' +
        'ME||'#39' '#39'||P.SECOND_NAME MASTER_NAME,'
      'CUR.NAME CURRENCY_NAME, CUR.DECIMALS_IN, CUR.DECIMALS_OUT,'
      'CUR.SYMBOL, CUR.NAME1, CUR.NAME3, CUR.NAME5, CUR.NAME001,'
      'PTOH.CURRENCY_RATE, PS.NAME SETUP_NAME, PS.TAKE_NSP, C.PRIVATE,'
      
        'S.NAME STORE_NAME, F.FACTURA_DATE, PTOH.ID PRIMARY_TOVAR_OUTCOME' +
        '_HEADER_ID,'
      
        'F.NUMBER_PREFIX||cast(F.NUMBER as varchar(30))||F.NUMBER_SUFFIX ' +
        'FACTURA_NUMBER,'
      
        'PB.SURNAME BOSS_SURNAME, PB.NAME BOSS_NAME, PB.SECOND_NAME BOSS_' +
        'SECOND_NAME,'
      
        'PA.SURNAME CHIEF_ACCOUNTANT_SURNAME, PA.NAME CHIEF_ACCOUNTANT_NA' +
        'ME,'
      'PA.SECOND_NAME CHIEF_ACCOUNTANT_SECOND_NAME'
      
        'from FACTURA F join PRIMARY_TOVAR_OUTCOME_HEADER PTOH on (F.ID=:' +
        'ID) and (F.PARENT_ID=PTOH.ID)'
      
        'join PRIMARY_SETUP PS on (PTOH.PRIMARY_SETUP_ID=PS.ID) join PERS' +
        'ONS P on (PTOH.MASTER_ID=P.ID)'
      
        'join ENTERPRISES E on (PTOH.ENTERPRISE_ID=E.ID) join CONTRACTORS' +
        ' C on'
      
        '(PTOH.CONTRACTOR_ID=C.ID) join CURRENCY CUR on (PTOH.CURRENCY_ID' +
        '=CUR.ID) join STORES S on'
      
        '(S.ID=PTOH.ENTERPRISE_STORE_ID) left outer join PERSONS PB on (E' +
        '.ID_BOSS=PB.ID)'
      'left outer join PERSONS PA on (E.ID_CHIEF_ACCOUNTANT=PA.ID)')
    DataSource = dsMainFacturaList
    Left = 482
    Top = 192
    object ibdsReportHeaderENTERPRISE_NAME: TIBStringField
      FieldName = 'ENTERPRISE_NAME'
      Origin = 'ENTERPRISES.NAME'
      Required = True
      Size = 60
    end
    object ibdsReportHeaderADDRESS: TIBStringField
      FieldName = 'ADDRESS'
      Origin = 'ENTERPRISES.ADDRESS'
      Size = 100
    end
    object ibdsReportHeaderPHONE: TIBStringField
      FieldName = 'PHONE'
      Origin = 'ENTERPRISES.PHONE'
      Size = 30
    end
    object ibdsReportHeaderNUMBER_STR: TIBStringField
      FieldName = 'NUMBER_STR'
      Required = True
      Size = 90
    end
    object ibdsReportHeaderPRIMARY_DATE: TDateField
      FieldName = 'PRIMARY_DATE'
      Origin = 'PRIMARY_TOVAR_OUTCOME_HEADER.PRIMARY_DATE'
      Required = True
    end
    object ibdsReportHeaderCONTRACTOR_NAME: TIBStringField
      FieldName = 'CONTRACTOR_NAME'
      Origin = 'CONTRACTORS.NAME'
      Required = True
      Size = 300
    end
    object ibdsReportHeaderMASTER_NAME: TIBStringField
      FieldName = 'MASTER_NAME'
      Required = True
      Size = 92
    end
    object ibdsReportHeaderCURRENCY_NAME: TIBStringField
      FieldName = 'CURRENCY_NAME'
      Origin = 'CURRENCY.NAME'
      Required = True
      Size = 25
    end
    object ibdsReportHeaderDECIMALS_IN: TSmallintField
      FieldName = 'DECIMALS_IN'
      Origin = 'CURRENCY.DECIMALS_IN'
      Required = True
    end
    object ibdsReportHeaderDECIMALS_OUT: TSmallintField
      FieldName = 'DECIMALS_OUT'
      Origin = 'CURRENCY.DECIMALS_OUT'
      Required = True
    end
    object ibdsReportHeaderSYMBOL: TIBStringField
      FieldName = 'SYMBOL'
      Origin = 'CURRENCY.SYMBOL'
      Size = 4
    end
    object ibdsReportHeaderNAME1: TIBStringField
      FieldName = 'NAME1'
      Origin = 'CURRENCY.NAME1'
      Size = 25
    end
    object ibdsReportHeaderNAME3: TIBStringField
      FieldName = 'NAME3'
      Origin = 'CURRENCY.NAME3'
      Size = 25
    end
    object ibdsReportHeaderNAME5: TIBStringField
      FieldName = 'NAME5'
      Origin = 'CURRENCY.NAME5'
      Size = 25
    end
    object ibdsReportHeaderNAME001: TIBStringField
      FieldName = 'NAME001'
      Origin = 'CURRENCY.NAME001'
      Size = 25
    end
    object ibdsReportHeaderCURRENCY_RATE: TFloatField
      FieldName = 'CURRENCY_RATE'
      Origin = 'PRIMARY_TOVAR_OUTCOME_HEADER.CURRENCY_RATE'
      Required = True
    end
    object ibdsReportHeaderSETUP_NAME: TIBStringField
      FieldName = 'SETUP_NAME'
      Origin = 'PRIMARY_SETUP.NAME'
      Required = True
      Size = 30
    end
    object ibdsReportHeaderTAKE_NSP: TIntegerField
      FieldName = 'TAKE_NSP'
      Origin = 'PRIMARY_SETUP.TAKE_NSP'
      Required = True
    end
    object ibdsReportHeaderPRIVATE: TIntegerField
      FieldName = 'PRIVATE'
      Origin = 'CONTRACTORS.PRIVATE'
      Required = True
    end
    object ibdsReportHeaderSTORE_NAME: TIBStringField
      FieldName = 'STORE_NAME'
      Origin = 'STORES.NAME'
      Required = True
      Size = 50
    end
    object ibdsReportHeaderENTERPRISE_INN: TIBStringField
      FieldName = 'ENTERPRISE_INN'
      Origin = 'ENTERPRISES.INN'
      Size = 10
    end
    object ibdsReportHeaderCONTRACTOR_ADDRESS: TIBStringField
      FieldName = 'CONTRACTOR_ADDRESS'
      Origin = 'CONTRACTORS.ADDRESS'
      Size = 300
    end
    object ibdsReportHeaderCONTRACTOR_INN: TIBStringField
      FieldName = 'CONTRACTOR_INN'
      Origin = 'CONTRACTORS.INN'
      Size = 12
    end
    object ibdsReportHeaderAMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AMOUNT'
      Calculated = True
    end
    object ibdsReportHeaderFACTURA_NUMBER: TStringField
      FieldName = 'FACTURA_NUMBER'
      Size = 90
    end
    object ibdsReportHeaderFACTURA_DATE: TDateField
      FieldName = 'FACTURA_DATE'
    end
    object ibdsReportHeaderPRIMARY_TOVAR_OUTCOME_HEADER_ID: TLargeintField
      FieldName = 'PRIMARY_TOVAR_OUTCOME_HEADER_ID'
      Origin = 'PRIMARY_TOVAR_OUTCOME_HEADER.ID'
      Required = True
    end
    object ibdsReportHeaderCONTRACTOR_UR_ADDRESS: TIBStringField
      FieldName = 'CONTRACTOR_UR_ADDRESS'
      Origin = '"CONTRACTORS"."UR_ADDRESS"'
      Size = 100
    end
    object ibdsReportHeaderENTERPRISE_KPP: TIBStringField
      FieldName = 'ENTERPRISE_KPP'
      Origin = '"ENTERPRISES"."KPP"'
      Size = 9
    end
    object ibdsReportHeaderCONTRACTOR_KPP: TIBStringField
      FieldName = 'CONTRACTOR_KPP'
      Origin = '"CONTRACTORS"."KPP"'
      Size = 10
    end
  end
  object ibdsReportBody: TIBDataSet
    Database = frmDM.dbMain
    Transaction = trMain
    OnCalcFields = ibdsReportBodyCalcFields
    BufferChunks = 80
    CachedUpdates = True
    SelectSQL.Strings = (
      'select A.NAME ARTICUL_NAME, PTOB.MADE_IN, A.UNITS,'
      'PTOB.PACKS_AMOUNT*PTOB.PACK_VALUE+PTOB.ITEMS_AMOUNT AMOUNT,'
      
        'PTOB.PRICE, PTOB.NDS, PTOB.NSP, PTOB.DECLARATION_NUMBER, PTOB.CO' +
        'UNTRY_ID'
      'from ARTICULS A, PRIMARY_TOVAR_OUTCOME_BODY PTOB'
      
        'where (PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID=:PRIMARY_TOVAR_OUTCO' +
        'ME_HEADER_ID) and'
      '(PTOB.ARTICUL_ID=A.ID)'
      'order by A.ARTICUL')
    DataSource = dsMainFacturaList
    Left = 482
    Top = 221
    object ibdsReportBodyARTICUL_NAME: TIBStringField
      FieldName = 'ARTICUL_NAME'
      Origin = 'ARTICULS.NAME'
      Required = True
      Size = 100
    end
    object ibdsReportBodyMADE_IN: TIBStringField
      FieldName = 'MADE_IN'
      Origin = 'PRIMARY_TOVAR_OUTCOME_BODY.MADE_IN'
      Required = True
      Size = 30
    end
    object ibdsReportBodyUNITS: TIBStringField
      FieldName = 'UNITS'
      Origin = 'ARTICULS.UNITS'
      Size = 6
    end
    object ibdsReportBodyAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      Required = True
    end
    object ibdsReportBodyPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRIMARY_TOVAR_OUTCOME_BODY.PRICE'
      Required = True
    end
    object ibdsReportBodyNDS: TFloatField
      FieldName = 'NDS'
      Origin = 'PRIMARY_TOVAR_OUTCOME_BODY.NDS'
      Required = True
    end
    object ibdsReportBodyNSP: TFloatField
      FieldName = 'NSP'
      Origin = 'PRIMARY_TOVAR_OUTCOME_BODY.NSP'
      Required = True
    end
    object ibdsReportBodyDECLARATION_NUMBER: TIBStringField
      FieldName = 'DECLARATION_NUMBER'
      Origin = 'PRIMARY_TOVAR_OUTCOME_BODY.DECLARATION_NUMBER'
      Size = 30
    end
    object ibdsReportBodyCOUNTRY_ID: TLargeintField
      FieldName = 'COUNTRY_ID'
      Origin = 'PRIMARY_TOVAR_OUTCOME_BODY.COUNTRY_ID'
    end
    object ibdsReportBodyNDS_AMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NDS_AMOUNT'
      Calculated = True
    end
    object ibdsReportBodyNSP_AMOUNT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NSP_AMOUNT'
      Calculated = True
    end
    object ibdsReportBodyCOUNTRY_NAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'COUNTRY_NAME'
      Size = 50
      Calculated = True
    end
    object ibdsReportBodyDECLARATION_NUMBER_FULL: TStringField
      FieldKind = fkCalculated
      FieldName = 'DECLARATION_NUMBER_FULL'
      Size = 30
      Calculated = True
    end
  end
  object dsReportHeader: TDataSource
    DataSet = ibdsReportHeader
    OnStateChange = dsMainFacturaListStateChange
    Left = 454
    Top = 192
  end
  object ibsAux: TIBSQL
    Database = frmDM.dbMain
    Transaction = trMain
    Left = 91
    Top = 173
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 48
    object N1: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1084#1072#1090#1077#1088#1080#1085#1089#1082#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      OnClick = N1Click
    end
  end
end
