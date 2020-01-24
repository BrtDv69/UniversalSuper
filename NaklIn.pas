unit NaklIn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, StdCtrls, ComCtrls, wwriched, wwrichedspell,
  wwdbdatetimepicker, wwdblook, Mask, wwdbedit, DBCtrls, fcLabel, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, fcText, IBSQL, IBDatabase, Db, IBCustomDataSet,
  Wwdotdot, Wwdbcomb, wwcheckbox, Wwdbspin, Menus, Math, Variants,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, RzPanel,
  RzSplit, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridDBDataDefinitions, cxGraphics, Clipbrd, cxDBData,
  dxdbtrel;

type
 TObjProcedure = procedure of object;

type
  TfrmNaklIn = class(TfrmLike)
    PageControl1: TPageControl;
    tsPrimaryTovarIncomeList: TTabSheet;
    Panel1: TPanel;
    dbgPrimaryTovarIncomeList: TwwDBGrid;
    Panel4: TPanel;
    sbCancelPrimaryTovarIncomeList: TSpeedButton;
    sbApplyPrimaryTovarIncomeList: TSpeedButton;
    sbDeletePrimaryTovarIncomeList: TSpeedButton;
    sbAddPrimaryTovarIncomeList: TSpeedButton;
    sbLastPrimaryTovarIncomeList: TSpeedButton;
    sbNextPrimaryTovarIncomeList: TSpeedButton;
    sbPriorPrimaryTovarIncomeList: TSpeedButton;
    sbFirstPrimaryTovarIncomeList: TSpeedButton;
    sbFilterPrimaryTovarIncomeList: TSpeedButton;
    sbClose: TSpeedButton;
    sbRefreshPrimaryTovarIncomeList: TSpeedButton;
    sbPrintPrimaryTovarIncomeList: TSpeedButton;
    tsPrimaryTovarIncome: TTabSheet;
    pnlTools: TPanel;
    sbCancelPrimaryTovarIncome: TSpeedButton;
    sbApplyPrimaryTovarIncome: TSpeedButton;
    sbDeletePrimaryTovarIncome: TSpeedButton;
    sbAddPrimaryTovarIncome: TSpeedButton;
    SpeedButton21: TSpeedButton;
    sbRefreshPrimaryTovarIncome: TSpeedButton;
    sbPrintPrimaryTovarIncome: TSpeedButton;
    SpeedButton35: TSpeedButton;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label12: TLabel;
    dbeTovar: TwwDBEdit;
    Label19: TLabel;
    dbeNDS: TwwDBEdit;
    Label20: TLabel;
    dbeNSP: TwwDBEdit;
    Label21: TLabel;
    dbeItogo: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label16: TLabel;
    Label22: TLabel;
    trLock: TIBTransaction;
    ibsWhite: TIBSQL;
    ibsNumb: TIBSQL;
    ibsAux: TIBSQL;
    ibdsMainPrimaryTovarIncomeList: TIBDataSet;
    ibdsMainPrimaryTovarIncome: TIBDataSet;
    ibdsMainPrimaryTovarIncomeBody: TIBDataSet;
    ibdsMainPrimaryTovarIncomeBodyItogo: TFloatField;
    ibdsMainPrimaryTovarIncomeBodyItogoMany: TFloatField;
    dsMainPrimaryTovarIncomeList: TDataSource;
    dsMainPrimaryTovarIncome: TDataSource;
    dsMainPrimaryTovarIncomeBody: TDataSource;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesNAME: TIBStringField;
    ibdsEnterprisesID: TLargeintField;
    dsEnterprises: TDataSource;
    ibdsEnterpriseStores: TIBDataSet;
    ibdsEnterpriseStoresNAME: TIBStringField;
    ibdsEnterpriseStoresID: TLargeintField;
    ibdsPersons: TIBDataSet;
    ibdsPersonsID: TLargeintField;
    ibdsMadeIn: TIBDataSet;
    ibdsMadeInMADE_IN: TIBStringField;
    ibdsPrimary_Setup: TIBDataSet;
    dsMadeIn: TDataSource;
    ibdsContractors: TIBDataSet;
    ibdsContractorsNAME: TIBStringField;
    ibdsContractorsID: TLargeintField;
    pnlMessage: TPanel;
    ibdsMainPrimaryTovarIncomeListID: TLargeintField;
    ibdsMainPrimaryTovarIncomeListMASTER_NAME: TIBStringField;
    ibdsMainPrimaryTovarIncomeListNUMBER_STR: TIBStringField;
    ibdsMainPrimaryTovarIncomeListPRIMARY_DATE: TDateField;
    ibdsMainPrimaryTovarIncomeListDUE_DATE: TDateField;
    ibdsMainPrimaryTovarIncomeListENTERPRISE_STORE: TIBStringField;
    ibdsMainPrimaryTovarIncomeListCONTRACTOR_NAME: TIBStringField;
    ibdsMainPrimaryTovarIncomeListCLOSED: TIntegerField;
    ibdsMainPrimaryTovarIncomeListBLACK: TIntegerField;
    ibdsMainPrimaryTovarIncomeListSETUP_NAME: TIBStringField;
    Label23: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    Label25: TLabel;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    Label26: TLabel;
    wwDBLookupCombo11: TwwDBLookupCombo;
    wwCheckBox3: TwwCheckBox;
    Label27: TLabel;
    lcPrimaryType: TwwDBLookupCombo;
    Label29: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label30: TLabel;
    wwDBLookupCombo13: TwwDBLookupCombo;
    Label31: TLabel;
    fcContract: TfcLabel;
    dbcbBlack: TwwCheckBox;
    Label32: TLabel;
    wwDBLookupCombo15: TwwDBLookupCombo;
    Label34: TLabel;
    wwDBLookupCombo16: TwwDBLookupCombo;
    Label36: TLabel;
    wwDBLookupCombo18: TwwDBLookupCombo;
    Label37: TLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    tsPayments: TTabSheet;
    ibdsMainPrimaryTovarIncomeID: TLargeintField;
    ibdsMainPrimaryTovarIncomePARENT_TYPE: TIntegerField;
    ibdsMainPrimaryTovarIncomePARENT_ID: TLargeintField;
    ibdsMainPrimaryTovarIncomePRIMARY_SETUP_ID: TLargeintField;
    ibdsMainPrimaryTovarIncomeNUMBER_FORMAT: TIntegerField;
    ibdsMainPrimaryTovarIncomeNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsMainPrimaryTovarIncomePRICE_FORMULA: TIBStringField;
    ibdsMainPrimaryTovarIncomeMASTER_ID: TLargeintField;
    ibdsMainPrimaryTovarIncomeSECURITY_LEVEL: TIntegerField;
    ibdsMainPrimaryTovarIncomeNUMBER_PREFIX: TIBStringField;
    ibdsMainPrimaryTovarIncomeNUMBER: TIntegerField;
    ibdsMainPrimaryTovarIncomeNUMBER_SUFFIX: TIBStringField;
    ibdsMainPrimaryTovarIncomePRIMARY_DATE: TDateField;
    ibdsMainPrimaryTovarIncomeDUE_DATE: TDateField;
    ibdsMainPrimaryTovarIncomePRIORITY: TIntegerField;
    ibdsMainPrimaryTovarIncomeENTERPRISE_ID: TLargeintField;
    ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID: TLargeintField;
    ibdsMainPrimaryTovarIncomeCONTRACTOR_ID: TLargeintField;
    ibdsMainPrimaryTovarIncomeCURRENCY_ID: TLargeintField;
    ibdsMainPrimaryTovarIncomeCURRENCY_RATE: TFloatField;
    ibdsMainPrimaryTovarIncomeCLOSED: TIntegerField;
    ibdsMainPrimaryTovarIncomeBLACK: TIntegerField;
    ibdsMainPrimaryTovarIncomeCOMMENTS: TIBStringField;
    ibdsMainPrimaryTovarIncomeNumber_Str: TStringField;
    ibdsMainPrimaryTovarIncomeARRIVAL_DATE: TDateField;
    ibdsPrimary_SetupID: TLargeintField;
    ibdsPrimary_SetupINVOICE_ID_DEFAULT: TLargeintField;
    ibdsPrimary_SetupNAME: TIBStringField;
    ibdsPrimary_SetupNUMBER_PREFIX: TIBStringField;
    ibdsPrimary_SetupNUMBER_FORMAT: TIntegerField;
    ibdsPrimary_SetupNUMBER_SUFFIX: TIBStringField;
    ibdsPrimary_SetupNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsPrimary_SetupBLACK_DEFAULT: TIntegerField;
    ibdsPrimary_SetupSECURITY_LEVEL: TIntegerField;
    ibdsPrimary_SetupCURRENCY_ID_DEFAULT: TLargeintField;
    ibdsPrimary_SetupTAKE_NSP: TIntegerField;
    ibdsPrimary_SetupBLACK: TIntegerField;
    ibdsCurrency: TIBDataSet;
    ibdsCurrencyNAME: TIBStringField;
    ibdsCurrencyID: TLargeintField;
    ibdsCurrencySYMBOL: TIBStringField;
    ibdsCurrencyDECIMALS_IN: TSmallintField;
    ibdsCurrencyNAME1: TIBStringField;
    ibdsCurrencyNAME3: TIBStringField;
    ibdsCurrencyNAME5: TIBStringField;
    ibdsCurrencyNAME001: TIBStringField;
    ibdsCurrencyCURRENT_RATE: TFloatField;
    pnlNumber: TPanel;
    SpeedButton22: TSpeedButton;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBEdit11: TwwDBEdit;
    ibdsMainPrimaryTovarIncomeBodyID: TLargeintField;
    ibdsMainPrimaryTovarIncomeBodyPRIMARI_TOVAR_INCOME_HEADER_ID: TLargeintField;
    ibdsMainPrimaryTovarIncomeBodyARTICUL: TIBStringField;
    ibdsMainPrimaryTovarIncomeBodyARTICUL_NAME: TIBStringField;
    ibdsMainPrimaryTovarIncomeBodyUNITS: TIBStringField;
    ibdsMainPrimaryTovarIncomeBodyMADE_IN: TIBStringField;
    ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT: TIntegerField;
    ibdsMainPrimaryTovarIncomeBodyPACK_VALUE: TFloatField;
    ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT: TFloatField;
    ibdsMainPrimaryTovarIncomeBodyPRICE: TFloatField;
    ibdsMainPrimaryTovarIncomeBodyNDS: TFloatField;
    ibdsMainPrimaryTovarIncomeBodyNSP: TFloatField;
    ibdsMainPrimaryTovarIncomeBodyMAIN_LEAVINGS_TOTAL: TFloatField;
    ibdsMainPrimaryTovarIncomeBodyADDITIONAL_LEAVINGS_TOTAL: TFloatField;
    ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE: TFloatField;
    ibdsMainPrimaryTovarIncomeBodyLABEL: TIBStringField;
    ibdsMainPrimaryTovarIncomeBodyITOGOMANYOLD: TFloatField;
    ibdsPrimary_SetupSET_NEW_COST: TIntegerField;
    ibdsMainPrimaryTovarIncomeFAKE: TIntegerField;
    ibdsMainPrimaryTovarIncomeBodyDECLARATION_NUMBER: TIBStringField;
    ibdsCountries: TIBDataSet;
    ibdsCountriesID: TLargeintField;
    ibdsCountriesNAME: TIBStringField;
    ibdsMainPrimaryTovarIncomeBodyCOUNTRY_NAME: TIBStringField;
    pmParent: TPopupMenu;
    pmParentInvoiceIn: TMenuItem;
    pmParentInvoiceOut: TMenuItem;
    N4: TMenuItem;
    pmParentSelf: TMenuItem;
    ibdsMainPrimaryTovarIncomeListCONTRACTOR_ID: TLargeintField;
    ibdsMainPrimaryTovarIncomeListAMOUNT: TFloatField;
    ibdsMainPrimaryTovarIncomeListSYMBOL: TIBStringField;
    ibdsMainPrimaryTovarIncomeListDECIMALS: TSmallintField;
    ibdsMainPrimaryTovarIncomeListAMOUNT_FMT: TStringField;
    PopupMenu6: TPopupMenu;
    N13: TMenuItem;
    ibdsMainPrimaryTovarIncomeCONTRACTOR_NAME: TIBStringField;
    pnlFilter: TPanel;
    Label42: TLabel;
    sbReFilter: TSpeedButton;
    edMeneger: TwwDBLookupCombo;
    cbPaid: TwwCheckBox;
    edContractor: TwwDBEdit;
    deDateStart: TwwDBDateTimePicker;
    deDateStop: TwwDBDateTimePicker;
    cbArticuls: TwwCheckBox;
    cbType: TwwCheckBox;
    cbMeneger: TwwCheckBox;
    cbContractor: TwwCheckBox;
    cbPeriod: TwwCheckBox;
    cbOpen: TwwCheckBox;
    edType: TwwDBLookupCombo;
    edArticul: TwwDBLookupCombo;
    cbPrefix: TwwCheckBox;
    edPrefix: TwwDBEdit;
    cbNumber: TwwCheckBox;
    edNumber: TwwDBEdit;
    cbSuffix: TwwCheckBox;
    edSuffix: TwwDBEdit;
    cbAmount: TwwCheckBox;
    edAmount: TwwDBEdit;
    cbClosed: TwwCheckBox;
    cbReal: TwwCheckBox;
    cbFake: TwwCheckBox;
    cbBlack: TwwCheckBox;
    cbWhite: TwwCheckBox;
    pnlText: TPanel;
    lblFilter: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ibdsFilterPersons: TIBDataSet;
    ibdsFilterPersonsID: TLargeintField;
    ibdsFilterPersonsNAME: TIBStringField;
    ibdsFilterTypes: TIBDataSet;
    ibdsFilterTypesID: TLargeintField;
    ibdsFilterTypesNAME: TIBStringField;
    ibdsFilterArticuls: TIBDataSet;
    ibdsFilterArticulsID: TLargeintField;
    ibdsFilterArticulsNAME: TIBStringField;
    cbContractorType: TwwCheckBox;
    edContractorType: TwwDBLookupCombo;
    ibdsFilterContractorTypes: TIBDataSet;
    ibdsFilterContractorTypesID: TLargeintField;
    ibdsFilterContractorTypesNAME: TIBStringField;
    dbgPrimaryTovarIncomeListIButton: TwwIButton;
    deCloseDate: TwwDBDateTimePicker;
    ibdsMainPrimaryTovarIncomeCLOSE_DATE: TDateField;
    ibdsMainPrimaryTovarIncomeBodyITEM_TYPE: TIntegerField;
    ibdsMainPrimaryTovarIncomeListDELETE_RIGHT: TIntegerField;
    ibdsMainPrimaryTovarIncomeUPDATE_RIGHT: TIntegerField;
    ibdsMainPrimaryTovarIncomeDELETE_RIGHT: TIntegerField;
    ibdsMainPrimaryTovarIncomeCLOSE_RIGHT: TIntegerField;
    N1: TMenuItem;
    ibdsPersonsVALID: TIntegerField;
    ibdsPrimary_SetupPRICE_FORMULA: TIBStringField;
    ibdsPrimary_SetupCREATE_RIGHT: TIntegerField;
    ibdsPrimary_SetupFAKE_RIGHT: TIntegerField;
    ibdsEnterprisesVALID: TIntegerField;
    ibdsEnterpriseStoresVALID: TIntegerField;
    ibdsCurrencyVALID: TIntegerField;
    N2: TMenuItem;
    miSerials: TMenuItem;
    ibdsPrimary_SetupMOVEMENT_TYPE: TIntegerField;
    ibdsMainPrimaryTovarIncomeBodySERIALS_COUNT: TIntegerField;
    ibdsSerials_InCome: TIBDataSet;
    ibdsSerials_InComeSERIAL_ID: TLargeintField;
    ibdsSerials_InComeSTROKE_CODE: TIBStringField;
    ibdsSerials_InComeLOCAL_STROKE_CODE: TIBStringField;
    ibdsSerials_Available: TIBDataSet;
    ibdsSerials_AvailableID: TLargeintField;
    ibdsSerials_AvailableSTROKE_CODE: TIBStringField;
    ibdsSerials_AvailableLOCAL_STROKE_CODE: TIBStringField;
    dsSerials_Available: TDataSource;
    dsSerials_InCome: TDataSource;
    pnlSerials: TPanel;
    Panel3: TPanel;
    sbSerialsClose: TSpeedButton;
    pnlSplitter: TPanel;
    sbToAvailable: TSpeedButton;
    sbToDoc: TSpeedButton;
    pnlDoc: TPanel;
    dbgDoc: TwwDBGrid;
    edSearchDoc: TwwDBEdit;
    pnlAvailable: TPanel;
    dbgAvailable: TwwDBGrid;
    edSearchAvailable: TwwDBEdit;
    ibdsSerials_InComePRIMARY_TOVAR_INCOME_BODY_ID: TLargeintField;
    pnlComments: TRzSizePanel;
    Label39: TLabel;
    dbmComments: TcxDBMemo;
    tvPrimaryTovarIncomeBody: TcxGridDBTableView;
    glPrimaryTovarIncomeBody: TcxGridLevel;
    dbgPrimaryTovarIncomeBody: TcxGrid;
    tvPrimaryTovarIncomeBodyARTICUL: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyPACKS_AMOUNT: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyPACK_VALUE: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyITEMS_AMOUNT: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyItogo: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyMAIN_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyADDITIONAL_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyPRICE: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyItogoMany: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyLABEL: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyDECLARATION_NUMBER: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyCOUNTRY_ID: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyARTICUL_ID: TcxGridDBColumn;
    dsCountries: TDataSource;
    ibdsMainPrimaryTovarIncomeBodyARTICUL_ID: TIntegerField;
    ibdsMainPrimaryTovarIncomeBodyCOUNTRY_ID: TIntegerField;
    cxGridPopupMenu1: TcxGridPopupMenu;
    ibdsPrimaryTovarIncomeBodySet: TIBDataSet;
    dsPrimaryTovarIncomeBodySet: TDataSource;
    ibdsPrimaryTovarIncomeBodySetID: TLargeintField;
    ibdsPrimaryTovarIncomeBodySetPRIMARI_TOVAR_INCOME_BODY_ID: TIntegerField;
    ibdsPrimaryTovarIncomeBodySetARTICUL_ID: TIntegerField;
    ibdsPrimaryTovarIncomeBodySetARTICUL: TIBStringField;
    ibdsPrimaryTovarIncomeBodySetARTICUL_NAME: TIBStringField;
    ibdsPrimaryTovarIncomeBodySetUNITS: TIBStringField;
    ibdsPrimaryTovarIncomeBodySetPACKS_AMOUNT: TIntegerField;
    ibdsPrimaryTovarIncomeBodySetPACK_VALUE: TFloatField;
    ibdsPrimaryTovarIncomeBodySetITEMS_AMOUNT: TFloatField;
    ibdsPrimaryTovarIncomeBodySetPRICE: TFloatField;
    ibdsPrimaryTovarIncomeBodySetLAST_BUY_PRICE: TFloatField;
    ibdsPrimaryTovarIncomeBodySetMAIN_LEAVINGS_TOTAL: TFloatField;
    ibdsPrimaryTovarIncomeBodySetADDITIONAL_LEAVINGS_TOTAL: TFloatField;
    ibdsPrimaryTovarIncomeBodySetCOMMENTS: TIBStringField;
    glSets: TcxGridLevel;
    tvSets: TcxGridDBTableView;
    tvSetsARTICUL_ID: TcxGridDBColumn;
    tvSetsARTICUL: TcxGridDBColumn;
    tvSetsPACKS_AMOUNT: TcxGridDBColumn;
    tvSetsPACK_VALUE: TcxGridDBColumn;
    tvSetsITEMS_AMOUNT: TcxGridDBColumn;
    tvSetsPRICE: TcxGridDBColumn;
    tvSetsMAIN_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvSetsADDITIONAL_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvSetsCOMMENTS: TcxGridDBColumn;
    tvPrimaryTovarIncomeBodyITEM_TYPE: TcxGridDBColumn;
    ibdsPrimaryTovarIncomeBodySetItogo: TFloatField;
    ibdsPrimaryTovarIncomeBodySetItogoMany: TFloatField;
    tvSetsItogo: TcxGridDBColumn;
    tvSetsItogoMany: TcxGridDBColumn;
    ibdsMainPrimaryTovarIncomeBodyCRC32_SET: TIntegerField;
    ibdsMainPrimaryTovarIncomePRIMARY_SETUP_NAME: TIBStringField;
    ibdsPrimary_SetupREASON_TYPE: TIntegerField;
    ibdsPrimary_SetupMOVEMENT_TYPE_NEW: TIntegerField;
    ibdsPrimary_SetupPAYMENT_TYPE: TIntegerField;
    ibdsPrimary_SetupNAME_WITH_SPECS: TStringField;
    ibdsFilterTypesREASON_TYPE: TIntegerField;
    ibdsFilterTypesMOVEMENT_TYPE_NEW: TIntegerField;
    ibdsFilterTypesPAYMENT_TYPE: TIntegerField;
    ibdsFilterTypesNAME_WITH_SPECS: TStringField;
    ibdsMainPrimaryTovarIncomeListREASON_TYPE: TIntegerField;
    ibdsMainPrimaryTovarIncomeListMOVEMENT_TYPE_NEW: TIntegerField;
    ibdsMainPrimaryTovarIncomeListPAYMENT_TYPE: TIntegerField;
    ibdsMainPrimaryTovarIncomeBodyCOMMENTS: TIBStringField;
    tvPrimaryTovarIncomeBodyCOMMENTS: TcxGridDBColumn;
    ibdsPersonsNAME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure fcContractMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure fcContractMouseEnter(Sender: TObject);
    procedure fcContractMouseLeave(Sender: TObject);
    procedure fcContractMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ibdsMainPrimaryTovarIncomeListAfterScroll(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarIncomeListUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure sbAddPrimaryTovarIncomeListClick(Sender: TObject);
    procedure sbDeletePrimaryTovarIncomeListClick(Sender: TObject);
    procedure sbApplyPrimaryTovarIncomeListClick(Sender: TObject);
    procedure sbCancelPrimaryTovarIncomeListClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarIncomeCalcFields(DataSet: TDataSet);
    procedure wwDBComboBox2DropDown(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure lcPrimaryTypeCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo18CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainPrimaryTovarIncomeAfterOpen(DataSet: TDataSet);
    procedure sbFirstPrimaryTovarIncomeListClick(Sender: TObject);
    procedure sbPriorPrimaryTovarIncomeListClick(Sender: TObject);
    procedure sbNextPrimaryTovarIncomeListClick(Sender: TObject);
    procedure sbLastPrimaryTovarIncomeListClick(Sender: TObject);
    procedure dsMainPrimaryTovarIncomeListStateChange(Sender: TObject);
    procedure dbgPrimaryTovarIncomeListCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgPrimaryTovarIncomeListCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure dbgPrimaryTovarIncomeListTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure sbDeletePrimaryTovarIncomeClick(Sender: TObject);
    procedure sbAddPrimaryTovarIncomeClick(Sender: TObject);
    procedure sbCancelPrimaryTovarIncomeClick(Sender: TObject);
    procedure sbApplyPrimaryTovarIncomeClick(Sender: TObject);
    procedure dsMainPrimaryTovarIncomeBodyStateChange(Sender: TObject);
    procedure ibdsMainPrimaryTovarIncomeUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainPrimaryTovarIncomeBodyUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainPrimaryTovarIncomeNewRecord(DataSet: TDataSet);
    procedure tsPrimaryTovarIncomeShow(Sender: TObject);
    procedure ibdsMainPrimaryTovarIncomeBodyNewRecord(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarIncomePARENT_IDChange(Sender: TField);
    procedure pmParentSelfClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarIncomeBodyARTICUL_IDChange(
      Sender: TField);
    procedure ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_IDChange(
      Sender: TField);
    procedure ibdsMainPrimaryTovarIncomeBodyAfterOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarIncomeBodyMADE_INChange(Sender: TField);
    procedure ibdsMainPrimaryTovarIncomeBodyCalcFields(DataSet: TDataSet);
    procedure dbgPrimaryTovarIncomeListCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ibdsMadeInBeforeOpen(DataSet: TDataSet);
    procedure ibdsCurrencyBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarIncomeBodyARTICULChange(Sender: TField);
    procedure pmParentInvoiceOutClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarIncomeBodyBeforeOpen(DataSet: TDataSet);
    procedure ibdsEnterpriseStoresBeforeOpen(DataSet: TDataSet);
    procedure ibdsPersonsBeforeOpen(DataSet: TDataSet);
    procedure ibdsPrimary_SetupBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarIncomeENTERPRISE_IDChange(
      Sender: TField);
    procedure ibdsMainPrimaryTovarIncomeBodyBeforePost(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarIncomeCURRENCY_RATEChange(
      Sender: TField);
    procedure dbgPrimaryTovarIncomeListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsMainPrimaryTovarIncomeListCalcFields(DataSet: TDataSet);
    procedure wwDBLookupCombo16KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N13Click(Sender: TObject);
    procedure wwDBLookupCombo16CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure sbFilterPrimaryTovarIncomeListClick(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cbMenegerClick(Sender: TObject);
    procedure cbOpenClick(Sender: TObject);
    procedure cbBlackClick(Sender: TObject);
    procedure cbFakeClick(Sender: TObject);
    procedure edPrefixChange(Sender: TObject);
    procedure edNumberChange(Sender: TObject);
    procedure edSuffixChange(Sender: TObject);
    procedure edAmountChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbRefreshPrimaryTovarIncomeListClick(Sender: TObject);
    procedure ibdsFilterPersonsAfterOpen(DataSet: TDataSet);
    procedure ibdsFilterPersonsBeforeClose(DataSet: TDataSet);
    procedure lcPrimaryTypeBeforeDropDown(Sender: TObject);
    procedure ibdsMainPrimaryTovarIncomeBLACKChange(Sender: TField);
    procedure dbgPrimaryTovarIncomeListCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure ibdsMainPrimaryTovarIncomeListAfterDelete(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarIncomeAfterDelete(DataSet: TDataSet);
    procedure dbgPrimaryTovarIncomeListUpdateFooter(Sender: TObject);
    procedure dbgPrimaryTovarIncomeListIButtonClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarIncomeListBeforeOpen(DataSet: TDataSet);
    procedure ibdsFilterTypesBeforeOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure wwDBLookupCombo13BeforeDropDown(Sender: TObject);
    procedure wwDBLookupCombo13CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsPersonsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsPrimary_SetupFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure wwDBLookupCombo11BeforeDropDown(Sender: TObject);
    procedure wwDBLookupCombo11CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsEnterprisesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsEnterpriseStoresFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure wwDBLookupCombo15BeforeDropDown(Sender: TObject);
    procedure wwDBLookupCombo15CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsCurrencyFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure wwDBLookupCombo18BeforeDropDown(Sender: TObject);
    procedure ibdsMainPrimaryTovarIncomeSECURITY_LEVELChange(
      Sender: TField);
    procedure miSerialsClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNTValidate(
      Sender: TField);
    procedure ibdsSerials_AvailableBeforeOpen(DataSet: TDataSet);
    procedure ibdsSerials_AvailableFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsSerials_InComeAfterDelete(DataSet: TDataSet);
    procedure ibdsSerials_InComeAfterInsert(DataSet: TDataSet);
    procedure ibdsSerials_InComeFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsSerials_InComeNewRecord(DataSet: TDataSet);
    procedure sbToAvailableClick(Sender: TObject);
    procedure sbToDocClick(Sender: TObject);
    procedure dbgDocKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgAvailableEnter(Sender: TObject);
    procedure pnlSplitterMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbSerialsCloseClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarIncomeBodyBeforeClose(DataSet: TDataSet);
    procedure edSearchAvailableKeyPress(Sender: TObject; var Key: Char);
    procedure edSearchDocKeyPress(Sender: TObject; var Key: Char);
    procedure ibdsMainPrimaryTovarIncomeBodyAfterScroll(DataSet: TDataSet);
    procedure dbgPrimaryTovarIncomeBodyEnter(Sender: TObject);
    procedure Panel5Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvPrimaryTovarIncomeBodyCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tvPrimaryTovarIncomeBodyCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure tvPrimaryTovarIncomeBodyEditing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure tvPrimaryTovarIncomeBodyFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvPrimaryTovarIncomeBodyKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsPrimaryTovarIncomeBodySetBeforeOpen(
      DataSet: TDataSet);
    procedure ibdsPrimaryTovarIncomeBodySetNewRecord(
      DataSet: TDataSet);
    procedure ibdsPrimaryTovarIncomeBodySetUpdateRecord(
      DataSet: TDataSet; UpdateKind: TUpdateKind;
      var UpdateAction: TIBUpdateAction);
    procedure ibdsMainPrimaryTovarIncomeBodyBeforeDelete(
      DataSet: TDataSet);
    procedure tvPrimaryTovarIncomeBodyDataControllerDetailHasChildren(
      Sender: TcxDBDataController; ARecordIndex, ARelationIndex: Integer;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var HasChildren: Boolean);
    procedure ibdsPrimaryTovarIncomeBodySetCalcFields(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarIncomeBeforeDelete(DataSet: TDataSet);
    procedure ibdsPrimaryTovarIncomeBodySetBeforeDelete(DataSet: TDataSet);
    procedure ibdsPrimary_SetupCalcFields(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarIncomeListSETUP_NAMEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure dbgPrimaryTovarIncomeBodyFocusedViewChanged(
      Sender: TcxCustomGrid; APrevFocusedView,
      AFocusedView: TcxCustomGridView);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereMainPrimaryTovarIncomeList: String;
    procedure GenerateSelectMainPrimaryTovarIncomeList;
    procedure GenerateSelectMainPrimaryTovarIncome;
    procedure GenerateSelectMainPrimaryTovarIncomeBody;
    procedure GenerateSelectPrimaryTovarIncomeSetup;
    procedure SetInvoiceID;
    procedure ArticulSetBodyArticulID;
    procedure ArticulInsertBodyArticulID;
    procedure TovarSetBodyArticulID;
    procedure TovarInsertBodyArticulID;
    procedure SetCurrencyFmt;
    procedure GetTotalMany;
    procedure SetContractor;
    procedure SetReadOnly;
    procedure SetSerialsPosition(Rect : TRect);
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
    PatternInsert : Boolean;
    Cloning : Boolean;
  end;

var
  frmNaklIn: TfrmNaklIn;

implementation

uses DM, Misk, Invoice, Articuls, Main, Tovar, KontrAgList,
  GoodInfo, LastBuyPrice, SerialNumbers;

{$R *.DFM}

var
  OrderByMainPrimaryTovarIncomeList  : String = ' 6 asc, 4 desc, 3 asc, 8 asc';
  WhereSqlMainPrimaryTovarIncomeList : String = '';

  OrderByMainPrimaryTovarIncomeBody  : String = '';

  NumberPrefix, NumberSuffix : String;
  TotalMany, NDS, NSP, OldCurrencyRate : Double;
  CurrencyRoundPower : Integer;

  Contractor, Meneger, IType, IContractorType, ArticulName : String;
  DateStart, DateStop : TDate;

  MainPrimaryTovarIncomeListBookMark, MainPrimaryTovarIncomeListPriorBookMark : String;

  GoodsExists : Boolean = False;

  Parent_Closed : Boolean = False;

  Saving : Boolean = False;

procedure TfrmNaklIn.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
     ActivePage: TTabSheet;
begin
 If (frmNaklIn<>nil) then
  Begin
   ActivePage := PageControl1.ActivePage;
   For k := 0 to Pred(frmNaklIn.ComponentCount) do
    Begin
     If (Components[k].Name='sbApply'+Suf) or
        (Components[k].Name='sbCancel'+Suf) then
      (Components[k] as TControl).Enabled := Enabled;
     If (Components[k] is TTabSheet) and
        (Components[k].Name<>'ts'+Suf) then
      (Components[k] as TTabSheet).TabVisible := NOT Enabled
    End;
   PageControl1.ActivePage := ActivePage
  End;
 miSerials.Enabled := Not(sbApplyPrimaryTovarIncome.Enabled) or (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger>=5)
end;

function TfrmNaklIn.GetWhereMainPrimaryTovarIncomeList: String;
begin
 Result := '';
 If (sbFilterPrimaryTovarIncomeList.Down) then
  Begin
   lblFilter.Caption := '';
   If (cbMeneger.Checked) then
    Begin
     Result := Result+'and (P.ID='+ibdsFilterPersonsID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Менеджер: '+edMeneger.Text+'; '
    End;
   If (cbContractor.Checked) then
    Begin
     Result := Result+'and (UPPER(CNTR.NAME collate PXW_CYRL) like '#39+AnsiUpperCase(edContractor.Text)+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Контрагент: '+edContractor.Text+'; '
    End;
   If (cbPaid.Checked) then
    Begin
     Result := Result+'and (PTIH.SALDO_MANY<-0.001) ';
     lblFilter.Caption := lblFilter.Caption+'Есть оплата; '
    End;
   If (cbType.Checked) then
    Begin
     Result := Result+'and (PS.ID='+ibdsFilterTypesID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Тип: '+edType.Text+'; '
    End;
   If (cbContractorType.Checked) then
    Begin
     Result := Result+'and (CNTR.ID in (select CTI.CONTRACTOR_ID from CONTRACTOR_TYPES_INCLUDE CTI where (CTI.TYPE_ID='+ibdsFilterContractorTypesID.AsString+'))) ';
     lblFilter.Caption := lblFilter.Caption+'Тип контрагентов: '+edContractorType.Text+'; '
    End;
   If (cbPeriod.Checked) and (deDateStart.Text<>'') and (deDateStop.Text<>'') then
    Begin
     Result := Result+'and (PTIH.PRIMARY_DATE>='#39+deDateStart.Text+#39') and (PTIH.PRIMARY_DATE<='#39+deDateStop.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'За период с '+deDateStart.Text+' по '+deDateStop.Text+'; '
    End;
   If (cbArticuls.Checked) then
    Begin
     Result := Result+'and (PTIB.PRIMARI_TOVAR_INCOME_HEADER_ID=PTIH.ID) and (PTIB.ARTICUL_ID='+ibdsFilterArticulsID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Включающие товар: '+edArticul.Text+'; '
    End;
   If (cbOpen.Checked) then
    Begin
     Result := Result+'and (PTIH.CLOSED=0) ';
     lblFilter.Caption := lblFilter.Caption+'Открытые; '
    End;
   If (cbClosed.Checked) then
    Begin
     Result := Result+'and (PTIH.CLOSED=1) ';
     lblFilter.Caption := lblFilter.Caption+'Закрытые; '
    End;
   If (Black) then
    Begin
     If (cbBlack.Checked) then
      Begin
       Result := Result+'and (PTIH.BLACK=1) ';
       lblFilter.Caption := lblFilter.Caption+'Н/О; '
      End;
     If (cbWhite.Checked) then
      Begin
       Result := Result+'and (PTIH.BLACK=0) ';
       lblFilter.Caption := lblFilter.Caption+'О; '
      End;
     If (cbFake.Checked) then
      Begin
       Result := Result+'and (PTIH.FAKE=1) ';
       lblFilter.Caption := lblFilter.Caption+'Не реальные; '
      End;
     If (cbReal.Checked) then
      Begin
       Result := Result+'and (PTIH.FAKE=0) ';
       lblFilter.Caption := lblFilter.Caption+'Реальные; '
      End
    End;
   If (cbPrefix.Checked) then
    Begin
     Result := Result+'and (PTIH.NUMBER_PREFIX like '#39+edPrefix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Префикс: '+edPrefix.Text+'; '
    End;
   If (cbNumber.Checked) then
    Begin
     Result := Result+'and (PTIH.NUMBER='+edNumber.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Номер накладной: '+edNumber.Text+'; '
    End;
   If (cbSuffix.Checked) then
    Begin
     Result := Result+'and (PTIH.NUMBER_SUFFIX like '#39+edSuffix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Суффикс: '+edSuffix.Text+'; '
    End;
   If (cbAmount.Checked) then
    Begin
     Result := Result+'and (Cast(PTIH.AMOUNT as NUMERIC(18,4))='+edAmount.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Сумма накладной: '+edAmount.Text+'; '
    End;
   lblFilter.Caption := Trim(lblFilter.Caption);
   pnlText.Visible := True;
   lblFilter.AutoSize := True
  End
end;

procedure TfrmNaklIn.GenerateSelectMainPrimaryTovarIncomeList;
 var k : Integer;
begin
 WhereSqlMainPrimaryTovarIncomeList := GetWhereMainPrimaryTovarIncomeList;
 If NOT (Black) then
  Begin
   ibdsMainPrimaryTovarIncomeList.SelectSQL[4] := '';
   ibdsMainPrimaryTovarIncomeList.SelectSQL[13] := '(UR.USER_ID=U.ID) and (UR.PRIMARY_SETUP_ID=PTIH.PRIMARY_SETUP_ID)'
  End;
 ibdsMainPrimaryTovarIncomeList.SelectSQL[7] := 'STORES S, CURRENCY C, PRIMARY_TOVAR_INCOME_HEADER PTIH, USERS U, USER_RIGHTS_FOR_PRIMARY UR';
 If (cbArticuls.Checked) and (sbFilterPrimaryTovarIncomeList.Down) then
  ibdsMainPrimaryTovarIncomeList.SelectSQL[7] :=  ibdsMainPrimaryTovarIncomeList.SelectSQL[7]+', PRIMARY_TOVAR_INCOME_BODY PTIB';
 For k := Pred(ibdsMainPrimaryTovarIncomeList.SelectSQL.Count) downto 14 do
  ibdsMainPrimaryTovarIncomeList.SelectSQL.Delete(k);
 ibdsMainPrimaryTovarIncomeList.SelectSQL.Add(WhereSqlMainPrimaryTovarIncomeList);
 ibdsMainPrimaryTovarIncomeList.SelectSQL.Add('order by'+OrderByMainPrimaryTovarIncomeList)
end;

procedure TfrmNaklIn.GenerateSelectMainPrimaryTovarIncome;
begin
 If NOT (Black) then
  Begin
   ibdsMainPrimaryTovarIncome.SelectSQL[8] := '';
   ibdsMainPrimaryTovarIncome.SelectSQL[14] := '';
   ibdsMainPrimaryTovarIncome.InsertSQL[4] := '';
   ibdsMainPrimaryTovarIncome.InsertSQL[10] := '';
   ibdsMainPrimaryTovarIncome.ModifySQL[20] := '';
   ibdsMainPrimaryTovarIncome.RefreshSQL[8] := ''
  End
end;

procedure TfrmNaklIn.GenerateSelectMainPrimaryTovarIncomeBody;
begin
 If (OrderByMainPrimaryTovarIncomeBody<>'') then
  ibdsMainPrimaryTovarIncomeBody.SelectSQL[13] := 'order by'+OrderByMainPrimaryTovarIncomeBody
 else
  ibdsMainPrimaryTovarIncomeBody.SelectSQL[13] := ''
end;

procedure TfrmNaklIn.GenerateSelectPrimaryTovarIncomeSetup;
begin
 If NOT (Black) then
  Begin
   ibdsPrimary_Setup.SelectSQL[2] := '';
   ibdsPrimary_Setup.SelectSQL[4] := ''
  End
end;

procedure TfrmNaklIn.FormCreate(Sender: TObject);
var ki : Integer;
begin
 FName := 'Приходная накладная';
 inherited;
 Cloning := False;
 If NOT (Black) then
  Begin
   For ki := Pred(ComponentCount) downto 0 do
    Begin
     If (Components[ki] is TIBDataSet) and
        ((Components[ki] as TIBDataSet).Database=frmDM.dbMain) then
      (Components[ki] as TIBDataSet).Database := frmDM.dbWhite;
     If (Components[ki] is TIBSQL) and
        ((Components[ki] as TIBSQL).Database=frmDM.dbMain) then
      (Components[ki] as TIBSQL).Database := frmDM.dbWhite;
     If (Components[ki].Tag=99) then
      Components[ki].Free
    End
  End;
 trMain.StartTransaction;
 If (Black) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select FILTER_NAME, FILTER_VALUE from FILTERS');
   ibsAux.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
   ibsAux.ExecQuery;
   sbFilterPrimaryTovarIncomeList.Down :=(ibsAux.RecordCount>0);
   While NOT (ibsAux.Eof) do
    Begin
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbMeneger.Name) then
      Begin
       cbMeneger.Checked := True;
       Meneger := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbContractor.Name) then
      Begin
       cbContractor.Checked := True;
       Contractor := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPaid.Name) then
      cbPaid.Checked := True;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbType.Name) then
      Begin
       cbType.Checked := True;
       IType := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbContractorType.Name) then
      Begin
       cbContractorType.Checked := True;
       IContractorType := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbContractorType.Name) then
      Begin
       cbContractorType.Checked := True;
       IContractorType := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Start') then
      Begin
       cbPeriod.Checked := True;
       try
        DateStart := ibsAux.FieldByName('FILTER_VALUE').AsDate
       except
        DateStart := Date
       end
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Stop') then
      Begin
       cbPeriod.Checked := True;
       try
        DateStop := ibsAux.FieldByName('FILTER_VALUE').AsDate
       except
        DateStop := Date
       end
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbArticuls.Name) then
      Begin
       cbArticuls.Checked := True;
       ArticulName := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbOpen.Name) then
      cbOpen.Checked := True;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbClosed.Name) then
      cbClosed.Checked := True;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPrefix.Name) then
      Begin
       cbPrefix.Checked := True;
       edPrefix.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbNumber.Name) then
      Begin
       cbNumber.Checked := True;
       edNumber.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbSuffix.Name) then
      Begin
       cbSuffix.Checked := True;
       edSuffix.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbAmount.Name) then
      Begin
       cbAmount.Checked := True;
       edAmount.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (Black) then
      Begin
       If (ibsAux.FieldByName('FILTER_NAME').AsString=cbBlack.Name) then
        cbBlack.Checked := True;
       If (ibsAux.FieldByName('FILTER_NAME').AsString=cbWhite.Name) then
        cbWhite.Checked := True;
       If (ibsAux.FieldByName('FILTER_NAME').AsString=cbFake.Name) then
        cbFake.Checked := True;
       If (ibsAux.FieldByName('FILTER_NAME').AsString=cbReal.Name) then
        cbReal.Checked := True
      End;
     ibsAux.Next
    End;
   ibsAux.Close
  End;
 ibdsFilterPersons.Active := sbFilterPrimaryTovarIncomeList.Down;
 ibdsFilterTypes.Active := sbFilterPrimaryTovarIncomeList.Down;
 ibdsFilterContractorTypes.Active := sbFilterPrimaryTovarIncomeList.Down;
 ibdsFilterArticuls.Active := sbFilterPrimaryTovarIncomeList.Down;
 GenerateSelectMainPrimaryTovarIncomeList;
 GenerateSelectMainPrimaryTovarIncome;
 GenerateSelectMainPrimaryTovarIncomeBody;
 GenerateSelectPrimaryTovarIncomeSetup;
 If (Nakl_In_ID=0) then
  Begin
   PageControl1.ActivePageIndex := 0;
   ibdsMainPrimaryTovarIncomeList.Open
  End
 else
  Begin
   ibdsMainPrimaryTovarIncome.ParamByName('ID').AsInt64 := Nakl_In_ID;
   PageControl1.ActivePageIndex := 1;
   Nakl_In_ID := 0
  End;
 PatternInsert := False  
end;

procedure TfrmNaklIn.SpeedButton21Click(Sender: TObject);
begin
 Close
end;

procedure TfrmNaklIn.SpeedButton35Click(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlComments.Show
 else
  pnlComments.Hide
end;

procedure TfrmNaklIn.fcContractMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsLowered
end;

procedure TfrmNaklIn.fcContractMouseEnter(Sender: TObject);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsRaised
end;

procedure TfrmNaklIn.fcContractMouseLeave(Sender: TObject);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsLowered
end;

procedure TfrmNaklIn.fcContractMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsRaised;
 pmParent.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y)
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeListAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,'PrimaryTovarIncomeList');
 sbDeletePrimaryTovarIncomeList.Enabled := (ibdsMainPrimaryTovarIncomeListDELETE_RIGHT.AsInteger=1) and (ibdsMainPrimaryTovarIncomeListCLOSED.AsInteger=0)
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeListUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarIncomeList.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainPrimaryTovarIncomeListID.OldValue);
   ibsWhite.ExecQuery
  End;
 UpdateAction := uaApply
end;

procedure TfrmNaklIn.sbAddPrimaryTovarIncomeListClick(Sender: TObject);
begin
 If NOT (sbApplyPrimaryTovarIncomeList.Enabled) then
  Begin
   tsPrimaryTovarIncome.Show;
   PageControl1Change(PageControl1);
   sbAddPrimaryTovarIncome.Click
  End 
end;

procedure TfrmNaklIn.sbDeletePrimaryTovarIncomeListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarIncomeList.Delete
end;

procedure TfrmNaklIn.sbApplyPrimaryTovarIncomeListClick(Sender: TObject);
begin
 try
  ibdsMainPrimaryTovarIncomeList.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('PrimaryTovarIncomeList', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
end;

procedure TfrmNaklIn.sbCancelPrimaryTovarIncomeListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarIncomeList.CancelUpdates;
 StteChange('PrimaryTovarIncomeList', False);
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeCalcFields(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarIncomeNUMBER_STR.Value := ibdsMainPrimaryTovarIncomeNUMBER_PREFIX.AsString;
 If (ibdsMainPrimaryTovarIncomeNUMBER.Value<>0) then
  ibdsMainPrimaryTovarIncomeNUMBER_STR.Value := ibdsMainPrimaryTovarIncomeNUMBER_STR.Value+
                                                ibdsMainPrimaryTovarIncomeNUMBER.AsString;
 ibdsMainPrimaryTovarIncomeNUMBER_STR.Value := ibdsMainPrimaryTovarIncomeNUMBER_STR.Value+
                                               ibdsMainPrimaryTovarIncomeNUMBER_SUFFIX.AsString
end;

procedure TfrmNaklIn.wwDBComboBox2DropDown(Sender: TObject);
begin
 pnlNumber.Parent := (Sender as TwwDBComboBox).Parent;
 pnlNumber.Top := (Sender as TwwDBComboBox).Top+(Sender as TwwDBComboBox).Height-1;
 pnlNumber.Left := (Sender as TwwDBComboBox).Left;
 pnlNumber.Show
end;

procedure TfrmNaklIn.SpeedButton22Click(Sender: TObject);
begin
 pnlNumber.Hide
end;

procedure TfrmNaklIn.lcPrimaryTypeCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   dbcbBlack.Enabled := (ibdsMainPrimaryTovarIncomePARENT_ID.IsNull) and (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=3);
   If Not (ibdsPrimary_SetupINVOICE_ID_DEFAULT.IsNull) and (ibdsMainPrimaryTovarIncomePARENT_ID.IsNull) then
    Begin
     ibdsMainPrimaryTovarIncomePARENT_TYPE.Value := 2; //Прих. счет
     ibdsMainPrimaryTovarIncomePARENT_ID.Value := ibdsPrimary_SetupINVOICE_ID_DEFAULT.Value
    End;
   NumberPrefix := ibdsPrimary_SetupNUMBER_PREFIX.AsString;
   ibdsMainPrimaryTovarIncomeNUMBER_FORMAT.Value := ibdsPrimary_SetupNUMBER_FORMAT.Value;
   NumberSuffix := ibdsPrimary_SetupNUMBER_SUFFIX.AsString;
   ibdsMainPrimaryTovarIncomeNUMBER_RESTART_PERIOD.Value := ibdsPrimary_SetupNUMBER_RESTART_PERIOD.Value;
   If (Black) then
    Begin
     If (ibdsMainPrimaryTovarIncomeBLACK.IsNull) then
      ibdsMainPrimaryTovarIncomeBLACK.Value := ibdsPrimary_SetupBLACK_DEFAULT.Value;
     If (ibdsPrimary_SetupBLACK.Value=1) then
      Begin
       If (ibdsMainPrimaryTovarIncomeBLACK.Value<>1) then
        ibdsMainPrimaryTovarIncomeBLACK.Value := 1;
       dbcbBlack.Enabled := False
      End
     else
      Begin
       If (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=1) then
        If (ibdsMainPrimaryTovarIncomeBLACK.Value<>0) then
          ibdsMainPrimaryTovarIncomeBLACK.Value := 0;
       If (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=2) then
        If (ibdsMainPrimaryTovarIncomeBLACK.Value<>1) then
         ibdsMainPrimaryTovarIncomeBLACK.Value := 1;
       If (ibdsPrimary_SetupCREATE_RIGHT.AsInteger<>3) then
        dbcbBlack.Enabled := False
      End
    End;
   If (ibdsMainPrimaryTovarIncomeCURRENCY_ID.AsString='') and (NOT(ibdsPrimary_SetupCURRENCY_ID_DEFAULT.IsNull)) then
    Begin
     ibdsMainPrimaryTovarIncomeCURRENCY_ID.Value := ibdsPrimary_SetupCURRENCY_ID_DEFAULT.Value;
     ibdsCurrency.Locate('ID', ibdsMainPrimaryTovarIncomeCURRENCY_ID.AsString,[]);
     wwDBLookupCombo18CloseUp(wwDBLookupCombo18, ibdsCurrency, ibdsMainPrimaryTovarIncome, true);
     ibdsMainPrimaryTovarIncomeCURRENCY_RATE.Value := ibdsCurrencyCURRENT_RATE.Value
    End;
   If (ibdsMainPrimaryTovarIncomeSECURITY_LEVEL.Value<ibdsPrimary_SetupSECURITY_LEVEL.Value) then
    ibdsMainPrimaryTovarIncomeSECURITY_LEVEL.Value := ibdsPrimary_SetupSECURITY_LEVEL.Value
  End;
 ibdsPrimary_Setup.Filtered := False
end;

procedure TfrmNaklIn.wwDBLookupCombo18CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainPrimaryTovarIncomeCURRENCY_RATE.Value := ibdsCurrencyCURRENT_RATE.Value;
   SetCurrencyFmt
  End;
 ibdsCurrency.Filtered := False
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeAfterOpen(
  DataSet: TDataSet);
begin
 If (ibdsMainPrimaryTovarIncome.RecordCount>0) then
  Begin
   SetReadOnly;
   ibdsMainPrimaryTovarIncomeENTERPRISE_IDChange(ibdsMainPrimaryTovarIncomeENTERPRISE_ID);
   ibdsEnterprises.Locate('ID', ibdsMainPrimaryTovarIncomeENTERPRISE_ID.AsString,[]);
   ibdsEnterpriseStores.Locate('ID', ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString,[]);
   ibdsPersons.Locate('ID', ibdsMainPrimaryTovarIncomeMASTER_ID.AsString,[]);
   ibdsPrimary_Setup.Close;
   GenerateSelectPrimaryTovarIncomeSetup;
   ibdsPrimary_Setup.Open;
   If NOT (ibdsPrimary_Setup.Locate('ID', ibdsMainPrimaryTovarIncomePRIMARY_SETUP_ID.AsString,[])) then
    Begin
     ibdsPrimary_Setup.First;
     While NOT (ibdsPrimary_Setup.Eof) do
      Begin
       If (ibdsPrimary_SetupID.Value=ibdsMainPrimaryTovarIncomePRIMARY_SETUP_ID.AsLargeInt) then
        Break;
       ibdsPrimary_Setup.Next
      End;
     lcPrimaryType.Text := ibdsPrimary_SetupNAME.AsString
    End;
   If (ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.AsLargeInt>0) then
    ibdsContractors.Locate('ID', ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.AsString,[])
   else
    Begin
     ibdsContractors.Locate('NAME', ibdsMainPrimaryTovarIncomeCONTRACTOR_NAME.AsString,[]);
     wwDBLookupCombo16.Text := ibdsContractorsNAME.AsString
    End;
   ibdsCurrency.Locate('ID', ibdsMainPrimaryTovarIncomeCURRENCY_ID.AsString,[]);
   OldCurrencyRate := ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsFloat
  End;
 ibdsMainPrimaryTovarIncomePARENT_IDChange(ibdsMainPrimaryTovarIncomePARENT_ID);
 OldCurrencyRate := ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsFloat
end;

procedure TfrmNaklIn.sbFirstPrimaryTovarIncomeListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarIncomeList.First
end;

procedure TfrmNaklIn.sbPriorPrimaryTovarIncomeListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarIncomeList.Prior
end;

procedure TfrmNaklIn.sbNextPrimaryTovarIncomeListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarIncomeList.Next
end;

procedure TfrmNaklIn.sbLastPrimaryTovarIncomeListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarIncomeList.Last
end;

procedure TfrmNaklIn.dsMainPrimaryTovarIncomeListStateChange(
  Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmNaklIn.dbgPrimaryTovarIncomeListCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: Begin
      If (Field=ibdsMainPrimaryTovarIncomeListAMOUNT_FMT) then
       Field := ibdsMainPrimaryTovarIncomeListAMOUNT;
      wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainPrimaryTovarIncomeList)
     End;
 end
end;

procedure TfrmNaklIn.dbgPrimaryTovarIncomeListCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmNaklIn.dbgPrimaryTovarIncomeListTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 Case (Sender as TComponent).Tag of
  1: Begin
      If (AFieldName='AMOUNT_FMT') then
       AFieldName := 'AMOUNT';
      wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainPrimaryTovarIncomeList, (GetKeyState(VK_CONTROL)<0),
                               sbApplyPrimaryTovarIncomeList, sbCancelPrimaryTovarIncomeList, GenerateSelectMainPrimaryTovarIncomeList)
     End;
 end
end;

procedure TfrmNaklIn.PageControl1Change(Sender: TObject);
 var Active : Boolean; 
begin
 Active := (PageControl1.ActivePage<>tsPrimaryTovarIncomeList);
 ibdsEnterprises.Active := Active;
 ibdsEnterpriseStores.Active := Active;
 ibdsPersons.Active := Active;
 ibdsPrimary_Setup.Active := Active;
 ibdsContractors.Active := Active;
 ibdsCurrency.Active := Active;
 ibdsCountries.Active := Active;
 ibdsMadeIn.Active := Active;
 ibdsMainPrimaryTovarIncome.Active := Active;
 ibdsMainPrimaryTovarIncomeBody.Active := Active;
 If Not(Active) and Not(ibdsMainPrimaryTovarIncomeList.Active) then
  Begin
   ibdsMainPrimaryTovarIncomeList.Active := True;
   try
    ibdsMainPrimaryTovarIncomeList.Bookmark := MainPrimaryTovarIncomeListBookMark
   except
   end;
   If (ibdsMainPrimaryTovarIncomeList.Eof) then
    try
     ibdsMainPrimaryTovarIncomeList.Bookmark := MainPrimaryTovarIncomeListPriorBookMark
    except
    end
  End
end;

procedure TfrmNaklIn.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 AllowChange := True;
 If (PageControl1.ActivePage=tsPrimaryTovarIncomeList) and (Nakl_In_ID=0) then
  ibdsMainPrimaryTovarIncome.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarIncomeListID.Value
end;

procedure TfrmNaklIn.sbDeletePrimaryTovarIncomeClick(Sender: TObject);
begin
 If (dbmComments.DataBinding.DataSource=dsMainPrimaryTovarIncomeBody) or
    (dbmComments.DataBinding.DataSource=dsPrimaryTovarIncomeBodySet) then
  Begin
   If (ibdsMainPrimaryTovarIncomeUPDATE_RIGHT.AsInteger=1) or
      (ibdsMainPrimaryTovarIncome.State in [dsInsert]) or
      (ibdsMainPrimaryTovarIncomeNUMBER_PREFIX.AsString='НОВАЯ') then
    (dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet.Delete
  End
 else
  Begin
   If (ibdsMainPrimaryTovarIncomeDELETE_RIGHT.AsInteger=1) or
      (ibdsMainPrimaryTovarIncome.State in [dsInsert]) or
      (ibdsMainPrimaryTovarIncomeNUMBER_PREFIX.AsString='НОВАЯ') then
    ibdsMainPrimaryTovarIncome.Delete
  End
end;

procedure TfrmNaklIn.sbAddPrimaryTovarIncomeClick(Sender: TObject);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_PRMR_TOVAR_INCOME_HEADER,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainPrimaryTovarIncome.Close;
 ibdsMainPrimaryTovarIncome.ParamByName('ID').AsInt64 := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibdsMainPrimaryTovarIncome.Open;
 ibsGen_ID.Close;
 ibdsMainPrimaryTovarIncome.Insert;
 ibdsMainPrimaryTovarIncomeBody.Close;
 ibdsMainPrimaryTovarIncomeBody.Open;
 StteChange('PrimaryTovarIncome', True)
end;

procedure TfrmNaklIn.sbCancelPrimaryTovarIncomeClick(Sender: TObject);
begin
 If (trLock.InTransaction) then
  trLock.Commit;
 ibdsMainPrimaryTovarIncomeBody.CancelUpdates;
 ibdsMainPrimaryTovarIncome.CancelUpdates;
 If (pnlSerials.Visible) then
  Begin
   pnlSerials.Hide;
   ibdsSerials_InCome.Close;
   ibdsSerials_Available.Close
  End;
 ibdsMainPrimaryTovarIncomePARENT_IDChange(ibdsMainPrimaryTovarIncomePARENT_ID);
 StteChange('PrimaryTovarIncome', False);
 If (ibdsMainPrimaryTovarIncome.RecordCount>0) then
  ibdsMainPrimaryTovarIncomeAfterOpen(ibdsMainPrimaryTovarIncome);
 If (ibdsMainPrimaryTovarIncomeBody.RecordCount>0) then
  ibdsMainPrimaryTovarIncomeBodyAfterOpen(ibdsMainPrimaryTovarIncomeBody);
 ibdsPrimary_Setup.Close;
 GenerateSelectPrimaryTovarIncomeSetup;
 ibdsPrimary_Setup.Open
end;

procedure TfrmNaklIn.sbApplyPrimaryTovarIncomeClick(Sender: TObject);
begin
 PostIfNeeded(ibdsMainPrimaryTovarIncome);
 PostIfNeeded(ibdsMainPrimaryTovarIncomeBody);
 PostIfNeeded(ibdsPrimaryTovarIncomeBodySet);
 CheckDataSet(ibdsMainPrimaryTovarIncomeBody);
 CheckDataSet(ibdsPrimaryTovarIncomeBodySet);
 GoodsExists := ibdsMainPrimaryTovarIncomeBody.Locate('ITEM_TYPE',1,[]) or ibdsMainPrimaryTovarIncomeBody.Locate('ITEM_TYPE',3,[]);
 SetCRC32_Set(ibdsMainPrimaryTovarIncomeBody,ibdsPrimaryTovarIncomeBodySet,'PRIMARI_TOVAR_INCOME_BODY_ID');
 try
  ibdsMainPrimaryTovarIncome.ApplyUpdates;
  ibdsMainPrimaryTovarIncomeBody.ApplyUpdates;
  ibdsPrimaryTovarIncomeBodySet.ApplyUpdates;
  Saving := True;
  If (ibdsSerials_InCome.Active) then
   Begin
    ibdsSerials_InCome.Last;
    ibdsSerials_InCome.First;
    ibdsSerials_InCome.ApplyUpdates
   End;
  Saving := False;
  trMain.CommitRetaining;
  ibdsMainPrimaryTovarIncomeBody.Close;
  ibdsMainPrimaryTovarIncomeBody.Open;
  ibdsMainPrimaryTovarIncome.Close;
  ibdsMainPrimaryTovarIncome.Open;
  If (ibdsMainPrimaryTovarIncomeList.Active) then
   Begin
    MainPrimaryTovarIncomeListBookMark := ibdsMainPrimaryTovarIncomeList.Bookmark;
    ibdsMainPrimaryTovarIncomeList.Prior;
    MainPrimaryTovarIncomeListPriorBookMark := ibdsMainPrimaryTovarIncomeList.Bookmark;
    ibdsMainPrimaryTovarIncomeList.Close
   End;
  StteChange('PrimaryTovarIncome', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 If (trLock.InTransaction) then
  trLock.Commit
end;

procedure TfrmNaklIn.dsMainPrimaryTovarIncomeBodyStateChange(
  Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('PrimaryTovarIncome', True)
  else
   StteChange('PrimaryTovarIncome', ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending or ibdsMainPrimaryTovarIncome.UpdatesPending)
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
 var MinNumber, MaxNumber, Number, BlackOld, BlackNew, Number_FormatOld, Number_FormatNew : Integer;
     SetupOld, SetupNew, StoreIDOld, StoreIDNew : String;
     Setted : Boolean;
begin
 If (Black) then
  Begin
   BlackOld := ibdsMainPrimaryTovarIncomeBLACK.OldValue;
   BlackNew := ibdsMainPrimaryTovarIncomeBLACK.NewValue
  End
 else
  Begin
   BlackOld := 0;
   BlackNew := 0
  End;
 Number_FormatOld := ibdsMainPrimaryTovarIncomeNUMBER_FORMAT.OldValue;
 Number_FormatNew := ibdsMainPrimaryTovarIncomeNUMBER_FORMAT.NewValue;
 If (UpdateKind=ukInsert) then
  SetupOld := '0'
 else
  SetupOld := IntToStr(ibdsMainPrimaryTovarIncomePRIMARY_SETUP_ID.OldValue);
 SetupNew := ibdsMainPrimaryTovarIncomePRIMARY_SETUP_ID.AsString;
 If (UpdateKind=ukInsert) then
  StoreIDOld := '0'
 else
  StoreIDOld := IntToStr(ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.OldValue);
 StoreIDNew := IntToStr(ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.NewValue);
 If (UpdateKind=ukInsert) or (BLACKOld<>BLACKNew) or (SetupOld<>SetupNew) or
    (StoreIDOld<>StoreIDNew) then
  Begin
   If (UpdateKind=ukInsert) or (BLACKOld<>BLACKNew) or (Number_FormatOld<>Number_FormatNew) or
      (ibdsMainPrimaryTovarIncomePRIMARY_DATE.OldValue<>ibdsMainPrimaryTovarIncomePRIMARY_DATE.NewValue) or
      (StoreIDOld<>StoreIDNew) then
    Begin
     pnlMessage.Show;
     Application.ProcessMessages;
     If NOT (trLock.InTransaction) then
      trLock.StartTransaction;
     pnlMessage.Hide;
     Application.ProcessMessages;
     If (ibdsMainPrimaryTovarIncomeNUMBER_RESTART_PERIOD.AsInteger<>1) then
      Begin
       ibsNumb.SQL.Clear;
       ibsNumb.SQL.Add('select max(PTIH.NUMBER) MinNumber');
       ibsNumb.SQL.Add('from PRIMARY_TOVAR_INCOME_HEADER PTIH, PRIMARY_SETUP PS');
       ibsNumb.SQL.Add('where (PTIH.PRIMARY_DATE>=:START_DATE) and (PTIH.PRIMARY_DATE<:PRIMARY_DATE)');
       If (Black) then
        ibsNumb.SQL.Add('and (PTIH.BLACK=:BLACK)');
       ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PTIH.PRIMARY_SETUP_ID=PS.ID)');
       ibsNumb.SQL.Add('and (PTIH.ENTERPRISE_STORE_ID='+ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString+')');
       ibsNumb.GenerateParamNames := True;
       ibsNumb.ParamByName('START_DATE').AsDate := GetStartDate(ibdsMainPrimaryTovarIncomeNUMBER_RESTART_PERIOD.AsInteger, ibdsMainPrimaryTovarIncomePRIMARY_DATE.AsDateTime);
       ibsNumb.ParamByName('PRIMARY_DATE').AsDate := ibdsMainPrimaryTovarIncomePRIMARY_DATE.AsDateTime;
       If (Black) then
        ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
       ibsNumb.ExecQuery;
       MinNumber := ibsNumb.FieldByName('MinNumber').AsInteger;
       ibsNumb.Close
      End
     else
      MinNumber := 0; //1 - нумерация начинается ежедневно
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select min(PTIH.NUMBER) MaxNumber');
     ibsNumb.SQL.Add('from PRIMARY_TOVAR_INCOME_HEADER PTIH, PRIMARY_SETUP PS');
     ibsNumb.SQL.Add('where (PTIH.PRIMARY_DATE>:PRIMARY_DATE) and (PTIH.PRIMARY_DATE<:STOP_DATE)');
     If (Black) then
      ibsNumb.SQL.Add('and (PTIH.BLACK=:BLACK)');
     ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PTIH.PRIMARY_SETUP_ID=PS.ID)');
     ibsNumb.SQL.Add('and (PTIH.ENTERPRISE_STORE_ID='+ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString+')');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('PRIMARY_DATE').AsDate := ibdsMainPrimaryTovarIncomePRIMARY_DATE.AsDateTime;
     ibsNumb.ParamByName('STOP_DATE').AsDate := GetStopDate(ibdsMainPrimaryTovarIncomeNUMBER_RESTART_PERIOD.AsInteger, ibdsMainPrimaryTovarIncomePRIMARY_DATE.AsDateTime);
     If (Black) then
      ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
     ibsNumb.ExecQuery;
     If (ibsNumb.FieldByName('MaxNumber').IsNull) then
      MaxNumber := High(MaxNumber)
     else
      MaxNumber := ibsNumb.FieldByName('MaxNumber').AsInteger;
     ibsNumb.Close;
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select PTIH.NUMBER');
     ibsNumb.SQL.Add('from PRIMARY_TOVAR_INCOME_HEADER PTIH, PRIMARY_SETUP PS');
     ibsNumb.SQL.Add('where (PTIH.PRIMARY_DATE=:PRIMARY_DATE)');
     If (Black) then
      ibsNumb.SQL.Add('and (PTIH.BLACK=:BLACK)');
     ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PTIH.PRIMARY_SETUP_ID=PS.ID)');
     ibsNumb.SQL.Add('and (PTIH.ENTERPRISE_STORE_ID='+ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString+')');
     ibsNumb.SQL.Add('order by 1');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('PRIMARY_DATE').AsDate := ibdsMainPrimaryTovarIncomePRIMARY_DATE.AsDateTime;
     If (Black) then
      ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
     ibsNumb.ExecQuery;
     ibdsMainPrimaryTovarIncome.Edit;
     If (ibsNumb.Eof) then
      ibdsMainPrimaryTovarIncomeNUMBER.Value := Succ(MinNumber)
     else
      Begin
       Setted := False;
       While Not (ibsNumb.Eof) do
        Begin
         Number := ibsNumb.FieldByName('NUMBER').AsInteger;
         ibsNumb.Next;
         If ((ibsNumb.FieldByName('NUMBER').AsInteger-Number)>1) and (Succ(Number)>MinNumber) then
          Begin
           ibdsMainPrimaryTovarIncomeNUMBER.Value := Succ(Number);
           Setted := True;
           Break
          End
        End;
       If NOT (Setted) then
        ibdsMainPrimaryTovarIncomeNUMBER.Value := Succ(ibsNumb.FieldByName('NUMBER').AsInteger);
      End;
     ibsNumb.Close;
     If (ibdsMainPrimaryTovarIncomeNUMBER.AsInteger>=MaxNumber) then
      FlashMsg('Внимание!','Такой номер уже существует в последующих днях. После сохранения измените префикс/суффикс.',2000);
    End;
   If (UpdateKind=ukInsert) or (SETUPOld<>SETUPNew) then
    Begin
     NumberPrefix := ReplaceDateStr(NumberPrefix,ibdsMainPrimaryTovarIncomePRIMARY_DATE.AsDateTime);
     NumberSuffix := ReplaceDateStr(NumberSuffix,ibdsMainPrimaryTovarIncomePRIMARY_DATE.AsDateTime);
     If NOT (ibdsMainPrimaryTovarIncome.State in [dsInsert, dsEdit]) then
      ibdsMainPrimaryTovarIncome.Edit;
     ibdsMainPrimaryTovarIncomeNUMBER_PREFIX.AsString := NumberPrefix;
     ibdsMainPrimaryTovarIncomeNUMBER_SUFFIX.AsString := NumberSuffix
    End
  End;
 If NOT (ibdsMainPrimaryTovarIncome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarIncome.Edit;
 If (ibdsMainPrimaryTovarIncomeCLOSED.AsInteger=0) or (GoodsExists) then
  ibdsMainPrimaryTovarIncomeCLOSE_DATE.AsVariant := NULL;
 ibdsMainPrimaryTovarIncome.Post;
 If (Black) and ((BLACKOld=0) or (BLACKNew=0)) then
  Begin
   ibsWhite.SQL.Clear;
   If (UpdateKind=ukInsert) or
      ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
    Begin
     ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarIncome.InsertSQL);
     ibsWhite.SQL.Strings[4] := '';
     ibsWhite.SQL.Strings[10] := ''
    End
   else
    If (UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0) then
     Begin
      ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarIncome.ModifySQL);
      ibsWhite.SQL.Strings[20] := ''
     End
    else
     If (UpdateKind=ukDelete) or ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=1)) then
      ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarIncome.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   If ((UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0))) or
      ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0)) then
    Begin
     ibsWhite.ParamByName('PARENT_TYPE').Value := ibdsMainPrimaryTovarIncomePARENT_TYPE.Value;
     If (ibdsMainPrimaryTovarIncomePARENT_ID.IsNull) then
      ibsWhite.ParamByName('PARENT_ID').Value := null
     else
      ibsWhite.ParamByName('PARENT_ID').AsInt64 := ibdsMainPrimaryTovarIncomePARENT_ID.Value;
     ibsWhite.ParamByName('PRIMARY_SETUP_ID').AsInt64 := ibdsMainPrimaryTovarIncomePRIMARY_SETUP_ID.Value;
     ibsWhite.ParamByName('MASTER_ID').AsInt64 := ibdsMainPrimaryTovarIncomeMASTER_ID.Value;
     ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsMainPrimaryTovarIncomeSECURITY_LEVEL.AsVariant;
     ibsWhite.ParamByName('NUMBER_PREFIX').Value := ibdsMainPrimaryTovarIncomeNUMBER_PREFIX.AsVariant;
     ibsWhite.ParamByName('NUMBER').Value := ibdsMainPrimaryTovarIncomeNUMBER.AsVariant;
     ibsWhite.ParamByName('NUMBER_SUFFIX').Value := ibdsMainPrimaryTovarIncomeNUMBER_SUFFIX.AsVariant;
     ibsWhite.ParamByName('PRIMARY_DATE').Value := ibdsMainPrimaryTovarIncomePRIMARY_DATE.AsVariant;
     ibsWhite.ParamByName('ARRIVAL_DATE').Value := ibdsMainPrimaryTovarIncomeARRIVAL_DATE.AsVariant;
     ibsWhite.ParamByName('DUE_DATE').Value := ibdsMainPrimaryTovarIncomeDUE_DATE.AsVariant;
     ibsWhite.ParamByName('PRIORITY').Value := ibdsMainPrimaryTovarIncomePRIORITY.AsVariant;
     ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarIncomeENTERPRISE_ID.Value;
     ibsWhite.ParamByName('ENTERPRISE_STORE_ID').AsInt64 := ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.Value;
     ibsWhite.ParamByName('CONTRACTOR_ID').AsInt64 := ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.Value;
     ibsWhite.ParamByName('CURRENCY_ID').AsInt64 := ibdsMainPrimaryTovarIncomeCURRENCY_ID.Value;
     ibsWhite.ParamByName('CURRENCY_RATE').Value := ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsVariant;
     ibsWhite.ParamByName('CLOSED').Value := ibdsMainPrimaryTovarIncomeCLOSED.AsVariant;
     ibsWhite.ParamByName('CLOSE_DATE').Value := ibdsMainPrimaryTovarIncomeCLOSE_DATE.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainPrimaryTovarIncomeCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarIncomeID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainPrimaryTovarIncomeID.Value;
   ibsWhite.ExecQuery;
   If (UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0) then
    Begin
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select * from PRIMARY_TOVAR_INCOME_BODY where (PRIMARI_TOVAR_INCOME_HEADER_ID=:ID)');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarIncomeID.Value;
     ibsWhite.SQL.Clear;
     ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarIncomeBody.InsertSQL);
     ibsWhite.GenerateParamNames := True;
     ibsNumb.ExecQuery;
     While NOT (ibsNumb.Eof) do
      Begin
       ibsWhite.ParamByName('PRIMARI_TOVAR_INCOME_HEADER_ID').AsInt64 := ibsNumb.FieldByName('PRIMARI_TOVAR_INCOME_HEADER_ID').AsInt64;
       ibsWhite.ParamByName('ARTICUL_ID').AsInt64 := ibsNumb.FieldByName('ARTICUL_ID').AsInt64;
       ibsWhite.ParamByName('MADE_IN').Value := ibsNumb.FieldByName('MADE_IN').AsVariant;
       ibsWhite.ParamByName('PACKS_AMOUNT').Value := ibsNumb.FieldByName('PACKS_AMOUNT').AsVariant;
       ibsWhite.ParamByName('PACK_VALUE').Value := ibsNumb.FieldByName('PACK_VALUE').AsVariant;
       ibsWhite.ParamByName('ITEMS_AMOUNT').Value := ibsNumb.FieldByName('ITEMS_AMOUNT').AsVariant;
       ibsWhite.ParamByName('PRICE').Value := ibsNumb.FieldByName('PRICE').AsVariant;
       ibsWhite.ParamByName('NDS').Value := ibsNumb.FieldByName('NDS').AsVariant;
       ibsWhite.ParamByName('NSP').Value := ibsNumb.FieldByName('NSP').AsVariant;
       ibsWhite.ParamByName('LABEL').Value := ibsNumb.FieldByName('LABEL').AsVariant;
       ibsWhite.ParamByName('ID').AsInt64 := ibsNumb.FieldByName('ID').AsInt64;
       If (ibsNumb.FieldByName('COUNTRY_ID').IsNull) then
        ibsWhite.ParamByName('COUNTRY_ID').Value := null
       else
        ibsWhite.ParamByName('COUNTRY_ID').AsInt64 := ibsNumb.FieldByName('COUNTRY_ID').AsInt64;
       ibsWhite.ParamByName('DECLARATION_NUMBER').Value := ibsNumb.FieldByName('DECLARATION_NUMBER').AsVariant;
       ibsWhite.ExecQuery;
       ibsNumb.Next
      End;
     ibsNumb.Close
    End
  End;
 UpdateAction := uaApply
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 If (ibdsMainPrimaryTovarIncomeBodyCOUNTRY_ID.AsInteger=0) then
  Begin
   ibdsMainPrimaryTovarIncomeBody.Edit;
   ibdsMainPrimaryTovarIncomeBodyCOUNTRY_ID.AsVariant := null
  End;
 If (Black) and (ibdsMainPrimaryTovarIncomeBLACK.Value=0) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarIncomeBody.InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarIncomeBody.ModifySQL);
    ukDelete: ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarIncomeBody.DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   If (UpdateKind in [ukInsert, ukModify]) then
    Begin
     If (UpdateKind=ukInsert) then
      ibsWhite.ParamByName('PRIMARI_TOVAR_INCOME_HEADER_ID').AsInt64 := ibdsMainPrimaryTovarIncomeBodyPRIMARI_TOVAR_INCOME_HEADER_ID.Value;
     ibsWhite.ParamByName('ARTICUL_ID').AsInt64 := ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.Value;
     ibsWhite.ParamByName('CRC32_SET').Value := ibdsMainPrimaryTovarIncomeBodyCRC32_SET.AsVariant;
     ibsWhite.ParamByName('MADE_IN').Value := ibdsMainPrimaryTovarIncomeBodyMADE_IN.AsVariant;
     ibsWhite.ParamByName('PACKS_AMOUNT').Value := ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.AsVariant;
     ibsWhite.ParamByName('PACK_VALUE').Value := ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.AsVariant;
     ibsWhite.ParamByName('ITEMS_AMOUNT').Value := ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.AsVariant;
     ibsWhite.ParamByName('PRICE').Value := ibdsMainPrimaryTovarIncomeBodyPRICE.AsVariant;
     ibsWhite.ParamByName('NDS').Value := ibdsMainPrimaryTovarIncomeBodyNDS.AsVariant;
     ibsWhite.ParamByName('NSP').Value := ibdsMainPrimaryTovarIncomeBodyNSP.AsVariant;
     ibsWhite.ParamByName('LABEL').Value := ibdsMainPrimaryTovarIncomeBodyLABEL.AsVariant;
     If (ibdsMainPrimaryTovarIncomeBodyCOUNTRY_ID.IsNull) then
      ibsWhite.ParamByName('COUNTRY_ID').Value := null
     else
      ibsWhite.ParamByName('COUNTRY_ID').AsInt64 := ibdsMainPrimaryTovarIncomeBodyCOUNTRY_ID.Value;
     ibsWhite.ParamByName('DECLARATION_NUMBER').Value := ibdsMainPrimaryTovarIncomeBodyDECLARATION_NUMBER.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainPrimaryTovarIncomeBodyCOMMENTS.AsVariant;
    End;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarIncomeBodyID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainPrimaryTovarIncomeBodyID.OldValue);
   ibsWhite.ExecQuery;
   ibsWhite.Close
  End;
 UpdateAction := uaApply
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeNewRecord(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarIncomeID.Value := ibdsMainPrimaryTovarIncome.ParamByName('ID').AsInt64;
 ibdsMainPrimaryTovarIncomePRIMARY_DATE.Value := Date;
 ibdsMainPrimaryTovarIncomeCLOSED.Value := 0;
 If (Black) then
  ibdsMainPrimaryTovarIncomeBLACK.Value := 0;
 ibdsMainPrimaryTovarIncomeMASTER_ID.Value := PersonID;
 ibdsMainPrimaryTovarIncomeSECURITY_LEVEL.Value := 1;
 ibdsMainPrimaryTovarIncomeNUMBER_PREFIX.Value := 'НОВАЯ';
 ibdsMainPrimaryTovarIncomeNUMBER_SUFFIX.Value := ' ';
 ibdsMainPrimaryTovarIncomeNUMBER.Value := 0;
 ibdsMainPrimaryTovarIncomeNUMBER_FORMAT.Value := 0;
 ibdsMainPrimaryTovarIncomePRIORITY.Value := 1;
 ibdsMainPrimaryTovarIncomePARENT_TYPE.Value := 0;
 ibdsMainPrimaryTovarIncomePARENT_ID.AsVariant := Null;
 ibdsMainPrimaryTovarIncomeFAKE.Value := 0;
 ibdsMainPrimaryTovarIncomeENTERPRISE_ID.Value := ibdsEnterprisesID.AsLargeInt;
 ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.Value := ibdsEnterpriseStoresID.AsLargeInt;
 ibdsMainPrimaryTovarIncomePRIMARY_SETUP_ID.Value := 0;
 SetReadOnly
end;

procedure TfrmNaklIn.tsPrimaryTovarIncomeShow(Sender: TObject);
begin
 PageControl1Change(PageControl1)
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyNewRecord(
  DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_PRIMARY_TOVAR_INCME_BODY,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainPrimaryTovarIncomeBodyID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainPrimaryTovarIncomeBodyPRIMARI_TOVAR_INCOME_HEADER_ID.Value := ibdsMainPrimaryTovarIncomeID.Value;
 ibdsMainPrimaryTovarIncomeBodyITOGOMANYOLD.Value := 0
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomePARENT_IDChange(
  Sender: TField);
begin
 If (ibdsMainPrimaryTovarInComePARENT_ID.IsNull) then
  Begin
   If (Black) then
    dbcbBlack.Enabled := (ibdsPrimary_SetupBLACK.AsInteger<>1) and
                         (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=3);
   fcContract.Caption := 'Самостоятельный документ';
   If (ibdsMainPrimaryTovarInCome.State in [dsEdit,dsInsert]) then
    Begin
     ibdsMainPrimaryTovarInComePARENT_TYPE.Value := 0;
     ibdsMainPrimaryTovarInComeFAKE.Value := 0
    End
  End
 else
  Begin
   ibsNumb.SQL.Clear;
   If (ibdsMainPrimaryTovarInComePARENT_TYPE.Value in [1,2,4]) then //счет
    Begin
     ibsNumb.SQL.Add('select NUMBER_PREFIX, NUMBER, NUMBER_SUFFIX, INVOICE_DATE DOC_DATE');
     If (Black) then
      ibsNumb.SQL.Add(', BLACK, DOUBLE_SOSTAV');
     ibsNumb.SQL.Add('from INVOICE_HEADER where (ID='+ibdsMainPrimaryTovarInComePARENT_ID.AsString+')');
     Case ibdsMainPrimaryTovarInComePARENT_TYPE.AsInteger of
      1: fcContract.Caption := 'Расходный cчет № ';
      2: fcContract.Caption := 'Приходный cчет № ';
      4: fcContract.Caption := 'Cчет на внутреннее перемещение № '
     end;
    End
   else
    Begin
     ibsNumb.SQL.Add('select NUMBER_PREFIX, NUMBER, NUMBER_SUFFIX, CONTRACT_DATE DOC_DATE');
     If (Black) then
      ibsNumb.SQL.Add(', BLACK');
     ibsNumb.SQL.Add('from CONTRACTS where (ID='+ibdsMainPrimaryTovarInComePARENT_ID.AsString+')');
     fcContract.Caption := 'Договор № '
    End;
   ibsNumb.ExecQuery;
   fcContract.Caption := fcContract.Caption+ibsNumb.FieldByName('NUMBER_PREFIX').AsString+
                                            ibsNumb.FieldByName('NUMBER').AsString+
                                            ibsNumb.FieldByName('NUMBER_SUFFIX').AsString+
                                            ' от '+FormatDateTime('dd.mm.yyyy',ibsNumb.FieldByName('DOC_DATE').AsDateTime);
   If (Black) then
    Begin
     If (ibdsMainPrimaryTovarInComePARENT_TYPE.Value in [1,2,4]) then //счет
      Begin
       If (ibdsMainPrimaryTovarInCome.State in [dsEdit,dsInsert]) then
        Begin
         ibdsMainPrimaryTovarInComeBLACK.Value := ibsNumb.FieldByName('BLACK').AsInteger;
         If (ibsNumb.FieldByName('DOUBLE_SOSTAV').AsInteger=1) and
            (ibsNumb.FieldByName('BLACK').AsInteger=0) then
          ibdsMainPrimaryTovarInComeFAKE.Value := 1
         else
          ibdsMainPrimaryTovarInComeFAKE.Value := 0
        End;
       dbcbBlack.Enabled := False;
      End
     else
      Begin
       If (ibdsMainPrimaryTovarInCome.State in [dsEdit,dsInsert]) then
        Begin
         ibdsMainPrimaryTovarInComeBLACK.Value := ibsNumb.FieldByName('BLACK').AsInteger;
         ibdsMainPrimaryTovarInComeFAKE.Value := 0
        End;
       dbcbBlack.Enabled := False
      End
    End;
   ibsNumb.Close
  End
end;

procedure TfrmNaklIn.SetInvoiceID;
 var frm : TfrmInvoice;
begin
 If (Parent_Closed) or (ibdsMainPrimaryTovarIncomeCLOSED.AsInteger=1) or
    (ibdsMainPrimaryTovarIncomeNUMBER.ReadOnly)  then
  Exit;
 If NOT (ibdsMainPrimaryTovarIncome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarIncome.Edit;
 Case ibdsMainPrimaryTovarIncomePARENT_TYPE.AsInteger of
  1: frm := frmInvoiceOut;
  2: frm := frmInvoiceIn
 End;
 If (frm.ibdsMainInvoice.Active) then
  ibdsMainPrimaryTovarIncomePARENT_ID.Value := frm.ibdsMainInvoiceID.Value
 else
  ibdsMainPrimaryTovarIncomePARENT_ID.Value := frm.ibdsMainInvoicesListID.Value;
 frm.LookUpProcedure := nil
end;

procedure TfrmNaklIn.pmParentSelfClick(Sender: TObject);
begin
 If NOT (ibdsMainPrimaryTovarIncome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarIncome.Edit;
 Begin
  ibdsMainPrimaryTovarIncomePARENT_ID.AsVariant := Null;
  ibdsMainPrimaryTovarIncomePARENT_TYPE.Value := 0
 End
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyARTICUL_IDChange(
  Sender: TField);
 var Articul, Articul_Name, Units : String;
     NDS, NSP : Double;
     ITEMTYPE : Integer;
     ibsLocalAux : TIBSQL;
     Last_Buy_Price, MainCurrencyRate : Double;
begin
 Articul := Sender.DataSet.FieldByName('ARTICUL').AsString;
 ibsLocalAux := TIBSQL.Create(Sender.DataSet.Owner);
 ibsLocalAux.Database := ibsAux.Database;
 ibsLocalAux.Transaction := ibsAux.Transaction;
 ibsLocalAux.SQL.Add('select ARTICUL, NAME, UNITS, NDS, NS, ITEM_TYPE from ARTICULS where (ID='+
                  Sender.AsString+')');
 ibsLocalAux.ExecQuery;
 If (Articul<>ibsLocalAux.FieldByName('ARTICUL').AsString) then
  Articul := ibsLocalAux.FieldByName('ARTICUL').AsString;
 Articul_Name := ibsLocalAux.FieldByName('NAME').AsString;
 Units := ibsLocalAux.FieldByName('UNITS').AsString;
 NDS := ibsLocalAux.FieldByName('NDS').AsDouble;
 NSP := ibsLocalAux.FieldByName('NS').AsDouble;
 ItemType := ibsLocalAux.FieldByName('ITEM_TYPE').AsInteger;
 ibsLocalAux.Close;
 Sender.DataSet.FieldByName('ARTICUL_NAME').Value := Articul_Name;
 Sender.DataSet.FieldByName('UNITS').Value := Units;
 If (Sender.DataSet.FindField('NDS')<>nil) then
  Sender.DataSet.FieldByName('NDS').Value := NDS;
 If (Sender.DataSet.FindField('NSP')<>nil) then
  Sender.DataSet.FieldByName('NSP').Value := NSP;
 If (Sender.DataSet.FindField('ITEM_TYPE')<>nil) then
  Sender.DataSet.FieldByName('ITEM_TYPE').Value := ItemType;
 With Sender.DataSet.FieldByName('ARTICUL') do
  Begin
   If (AsString<>Articul) then
    Begin
     OnChange := nil;
     Value := Articul;
     OnChange := ibdsMainPrimaryTovarIncomeBodyARTICULChange
    End
  End;   
 If (Sender.DataSet.FindField('MADE_IN')<>nil) then
  If (ibdsMadeInMADE_IN.AsVariant=null) then
   Sender.DataSet.FieldByName('MADE_IN').Value := '-'
  else
   Sender.DataSet.FieldByName('MADE_IN').AsVariant := ibdsMadeInMADE_IN.AsVariant;
 MainCurrencyRate := GetMainCurrencyRate(ibsAux,ibdsMainPrimaryTovarIncomeENTERPRISE_ID.AsString,ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString,ibdsMainPrimaryTovarIncomeCURRENCY_ID.AsInteger,ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsFloat);
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('select * from GET_GOODS_INFO(:STORE_ID, :ARTICUL_ID, :MADE_IN)');
 ibsLocalAux.GenerateParamNames := True;
 ibsLocalAux.ParamByName('STORE_ID').AsString := ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString;
 ibsLocalAux.ParamByName('ARTICUL_ID').AsString := Sender.AsString;
 ibsLocalAux.ParamByName('MADE_IN').AsString := '-';
 ibsLocalAux.ExecQuery;
 Last_Buy_Price := ibsLocalAux.FieldByName('LAST_BUY_PRICE').AsDouble*MainCurrencyRate;
 Sender.DataSet.FieldByName('MAIN_LEAVINGS_TOTAL').Value := ibsLocalAux.FieldByName('MAIN_LEAVINGS_TOTAL').AsDouble;
 Sender.DataSet.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').Value := ibsLocalAux.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').AsDouble;
 ibsLocalAux.Close;
 If (Sender=ibdsMainPrimaryTovarIncomeBodyARTICUL_ID) then
  Begin
   ibsLocalAux.SQL.Clear;
   ibsLocalAux.SQL.Add('select G.DECLARATION_NUMBER, G.COUNTRY_ID from GOODS G');
   ibsLocalAux.SQL.Add('where (G.STORE_ID='+ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString+')');
   ibsLocalAux.SQL.Add('and (G.ARTICUL_ID='+Sender.AsString+')');
   ibsLocalAux.ExecQuery;
   Sender.DataSet.FieldByName('DECLARATION_NUMBER').Value := ibsLocalAux.FieldByName('DECLARATION_NUMBER').AsString;
   If (ibsLocalAux.FieldByName('COUNTRY_ID').AsInt64<>0) then
    Begin
     Sender.DataSet.FieldByName('COUNTRY_ID').Value := ibsLocalAux.FieldByName('COUNTRY_ID').AsInt64;
     ibdsCountries.Locate('ID', Sender.DataSet.FieldByName('COUNTRY_ID').AsString,[]);
     Sender.DataSet.FieldByName('COUNTRY_NAME').Value := ibdsCountriesNAME.AsString
    End;
   ibsLocalAux.Close
  End;
 Sender.DataSet.FieldByName('PRICE').Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower;
 Sender.DataSet.FieldByName('LAST_BUY_PRICE').Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower;
 Sender.DataSet.Post;
 Sender.DataSet.Edit;
 If (Sender=ibdsMainPrimaryTovarIncomeBodyARTICUL_ID) and NOT Cloning then
  Begin
   If (ItemType<>1) then
// удаляем старый состав комплекта
    DeleteSet(ibdsPrimaryTovarIncomeBodySet,ibdsPrimaryTovarIncomeBodySetPRIMARI_TOVAR_INCOME_BODY_ID,ibdsMainPrimaryTovarIncomeBodyID.AsInteger)
   else
    Begin
     If (ibdsPrimaryTovarIncomeBodySet.Locate('PRIMARI_TOVAR_INCOME_BODY_ID',ibdsMainPrimaryTovarIncomeBodyID.AsString,[]) and
        (MessageDlg('Заменить старый состав комплекта новым?',mtConfirmation,[mbYes,mbNo],0)=mrYes)) then
      DeleteSet(ibdsPrimaryTovarIncomeBodySet,ibdsPrimaryTovarIncomeBodySetPRIMARI_TOVAR_INCOME_BODY_ID,ibdsMainPrimaryTovarIncomeBodyID.AsInteger);
      InsertSet(ibsAux.Database, ibsAux.Transaction, ibdsPrimaryTovarIncomeBodySet, ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.AsString, ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString);
    End
  End;
 ibsLocalAux.Free
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_IDChange(
  Sender: TField);
begin
 If (ibdsMadeIn.Active) then
  Begin
   ibdsMadeIn.Close;
   ibdsMadeIn.Open
  end;
 If (ibdsCurrency.Active) then
  Begin
   ibdsCurrency.Close;
   ibdsCurrency.Open
  End
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyAfterOpen(
  DataSet: TDataSet);
 var MainCurrencyRate : Double;
begin
 If (ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.Visible) and
    (ibdsMainPrimaryTovarIncomeENTERPRISE_ID.AsString<>'') and
    (ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString<>'') and
    (ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsFloat<>0) then
  MainCurrencyRate := GetMainCurrencyRate(ibsAux,ibdsMainPrimaryTovarIncomeENTERPRISE_ID.AsString,ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString,ibdsMainPrimaryTovarIncomeCURRENCY_ID.AsInteger,ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsFloat);
 If (DataSet=ibdsMainPrimaryTovarIncomeBody) then
  Begin
   SetCurrencyFmt;
   ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_IDChange(ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID);
   GetTotalMany
  End;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select LAST_BUY_PRICE, MAIN_LEAVINGS_TOTAL, ADDITIONAL_LEAVINGS_TOTAL from GET_GOODS_INFO(:STORE_ID, :ARTICUL_ID, :MADE_IN)');
 ibsAux.Prepare;
 ibsAux.GenerateParamNames := True;
 DataSet.DisableControls;
 While NOT (DataSet.Eof) do
  Begin
   ibsAux.ParamByName('STORE_ID').AsString := ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString;
   ibsAux.ParamByName('ARTICUL_ID').AsString := DataSet.FieldByName('ARTICUL_ID').AsString;
   ibsAux.ParamByName('MADE_IN').AsString := '-';
   ibsAux.ExecQuery;
   DataSet.Edit;
   DataSet.FieldByName('LAST_BUY_PRICE').Value := Round(ibsAux.FieldByName('LAST_BUY_PRICE').AsDouble*MainCurrencyRate*CurrencyRoundPower)/CurrencyRoundPower;;
   DataSet.FieldByName('MAIN_LEAVINGS_TOTAL').Value := ibsAux.FieldByName('MAIN_LEAVINGS_TOTAL').AsDouble;
   DataSet.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').Value := ibsAux.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').AsDouble;
   ibsAux.Close;
   DataSet.Next
  End;
 DataSet.First;
 DataSet.EnableControls;
 If (DataSet=ibdsMainPrimaryTovarIncomeBody) then
  Begin
   ibdsPrimaryTovarIncomeBodySet.Close;
   ibdsPrimaryTovarIncomeBodySet.Open;
   tvPrimaryTovarIncomeBody.ViewData.Collapse(True)
  End 
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyMADE_INChange(
  Sender: TField);
// var Last_Buy_Price, MainCurrencyRate : Double;
begin
{ MainCurrencyRate := GetMainCurrencyRate(ibsAux,ibdsMainPrimaryTovarIncomeENTERPRISE_ID.AsString,ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString,ibdsMainPrimaryTovarIncomeCURRENCY_ID.AsInteger,ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsFloat);
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select * from GET_GOODS_INFO(:STORE_ID, :ARTICUL_ID, :MADE_IN)');
 ibsAux.GenerateParamNames := True;
 ibsAux.ParamByName('STORE_ID').AsString := ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString;
 ibsAux.ParamByName('ARTICUL_ID').AsString := ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.AsString;
 ibsAux.ParamByName('MADE_IN').AsString := ibdsMainPrimaryTovarIncomeBodyMADE_IN.AsString;
 ibsAux.ExecQuery;
 Last_Buy_Price := ibsAux.FieldByName('LAST_BUY_PRICE').AsDouble*MainCurrencyRate;
 ibdsMainPrimaryTovarIncomeBodyMAIN_LEAVINGS_TOTAL.Value := ibsAux.FieldByName('MAIN_LEAVINGS_TOTAL').AsDouble;
 ibdsMainPrimaryTovarIncomeBodyADDITIONAL_LEAVINGS_TOTAL.Value := ibsAux.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').AsDouble;
 ibsAux.Close;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select G.DECLARATION_NUMBER, G.COUNTRY_ID from GOODS G');
 ibsAux.SQL.Add('where (G.STORE_ID='+ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsString+')');
 ibsAux.SQL.Add('and (G.ARTICUL_ID='+ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.AsString+')');
 ibsAux.SQL.Add('and (G.MADE_IN='#39+ibdsMainPrimaryTovarIncomeBodyMADE_IN.AsString+#39')');
 ibsAux.ExecQuery;
 ibdsMainPrimaryTovarIncomeBodyDECLARATION_NUMBER.Value := ibsAux.FieldByName('DECLARATION_NUMBER').AsString;
 If (ibsAux.FieldByName('COUNTRY_ID').AsInt64<>0) then
  Begin
   ibdsMainPrimaryTovarIncomeBodyCOUNTRY_ID.Value := ibsAux.FieldByName('COUNTRY_ID').AsInt64;
   ibdsCountries.Locate('ID', ibdsMainPrimaryTovarIncomeBodyCOUNTRY_ID.AsString,[]);
   ibdsMainPrimaryTovarIncomeBodyCOUNTRY_NAME.Value := ibdsCountriesNAME.AsString
  End;
 ibsAux.Close;
 ibdsMainPrimaryTovarIncomeBodyPRICE.Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower;
 ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower
}end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyCalcFields(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarIncomeBodyItogo.Value := ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value*ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.Value+ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value;
 ibdsMainPrimaryTovarIncomeBodyItogoMany.Value := ibdsMainPrimaryTovarIncomeBodyItogo.Value*ibdsMainPrimaryTovarIncomeBodyPRICE.Value
end;

procedure TfrmNaklIn.dbgPrimaryTovarIncomeListCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 wwDBGridCalcCellColors3(Sender, Field, State, Highlight, AFont, ABrush)
end;

procedure TfrmNaklIn.ArticulSetBodyArticulID;
begin
 If NOT(tvPrimaryTovarIncomeBody.OptionsData.Inserting) then
  Exit;
 If (frmArticuls.ibdsMainITEM_TYPE.Value in [1,2,3]) then
  With ((dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
   Begin
    If NOT (State in [dsEdit, dsInsert]) then
     Edit;
    FieldByName('ARTICUL_ID').AsInteger := frmArticuls.ibdsMainID.AsInteger
   End;
end;

procedure TfrmNaklIn.ArticulInsertBodyArticulID;
begin
 If NOT(tvPrimaryTovarIncomeBody.OptionsData.Inserting) then
  Exit;
 If (frmArticuls.ibdsMainITEM_TYPE.Value in [1,2,3]) then
  With ((dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
   Begin
    Append;
    FieldByName('ARTICUL_ID').AsInteger := frmArticuls.ibdsMainID.AsInteger
   End;
end;

procedure TfrmNaklIn.TovarSetBodyArticulID;
begin
 If NOT(tvPrimaryTovarIncomeBody.OptionsData.Inserting) then
  Exit;
 With ((dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
  Begin
   If NOT (State in [dsEdit, dsInsert]) then
    Edit;
   If (frmTovar.ibdsGoods.Active) then
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsARTICUL_ID.Value
   else
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsTotalsARTICUL_ID.Value
  End
end;

procedure TfrmNaklIn.TovarInsertBodyArticulID;
begin
 If NOT(tvPrimaryTovarIncomeBody.OptionsData.Inserting) then
  Exit;
 With ((dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
  Begin
   Append;
   If (frmTovar.ibdsGoods.Active) then
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsARTICUL_ID.Value
   else
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsTotalsARTICUL_ID.Value
  End
end;

procedure TfrmNaklIn.SetCurrencyFmt;
 var k : Integer;
     CurrencyFrmt : String;
begin
 k := ibdsCurrencyDECIMALS_IN.Value;
 CurrencyRoundPower := Trunc(Power(10,k));
 CurrencyFrmt := '#,##0.';
 While (k>0) do
  Begin
   CurrencyFrmt := CurrencyFrmt+'0';
   Dec(k)
  End;
 ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.DisplayFormat := CurrencyFrmt;
 ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.EditFormat := Copy(CurrencyFrmt,Pos('0.',CurrencyFrmt),Length(CurrencyFrmt)-Pos('0.',CurrencyFrmt)+1)+'###';
 ibdsMainPrimaryTovarIncomeBodyPRICE.DisplayFormat := CurrencyFrmt;
 ibdsMainPrimaryTovarIncomeBodyPRICE.EditFormat := Copy(CurrencyFrmt,Pos('0.',CurrencyFrmt),Length(CurrencyFrmt)-Pos('0.',CurrencyFrmt)+1)+'###';
 ibdsPrimaryTovarIncomeBodySetLAST_BUY_PRICE.DisplayFormat := ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.DisplayFormat;
 ibdsPrimaryTovarIncomeBodySetLAST_BUY_PRICE.EditFormat := ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.EditFormat;
 ibdsPrimaryTovarIncomeBodySetPRICE.DisplayFormat := ibdsMainPrimaryTovarIncomeBodyPRICE.DisplayFormat;
 ibdsPrimaryTovarIncomeBodySetPRICE.EditFormat := ibdsMainPrimaryTovarIncomeBodyPRICE.EditFormat;
 ibdsMainPrimaryTovarIncomeBodyItogoMany.DisplayFormat := CurrencyFrmt;
 ibdsMainPrimaryTovarIncomeBodyItogoMany.EditFormat := Copy(CurrencyFrmt,Pos('0.',CurrencyFrmt),Length(CurrencyFrmt)-Pos('0.',CurrencyFrmt)+1)
end;

procedure TfrmNaklIn.ibdsMadeInBeforeOpen(DataSet: TDataSet);
begin
 ibdsMadeIn.ParamByName('STORE_ID').AsInt64 := ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.Value
end;

procedure TfrmNaklIn.ibdsCurrencyBeforeOpen(DataSet: TDataSet);
begin
 ibdsCurrency.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarIncomeENTERPRISE_ID.Value;
 ibdsCurrency.ParamByName('STORE_ID').AsInt64 := ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.Value;
end;

procedure TfrmNaklIn.GetTotalMany;
 var BookMark : String;
     LocalNSP : Double;
begin
 TotalMany := 0;
 NSP := 0;
 NDS := 0;
 BookMark := ibdsMainPrimaryTovarIncomeBody.Bookmark;
 ibdsMainPrimaryTovarIncomeBody.DisableControls;
 ibdsMainPrimaryTovarIncomeBody.First;
 While NOT (ibdsMainPrimaryTovarIncomeBody.Eof) do
  Begin
   TotalMany := TotalMany+ibdsMainPrimaryTovarIncomeBodyItogoMany.AsFloat;
   LocalNSP := ibdsMainPrimaryTovarIncomeBodyItogo.Value*Round(ibdsMainPrimaryTovarIncomeBodyPRICE.Value*ibdsPrimary_SetupTAKE_NSP.Value*ibdsMainPrimaryTovarIncomeBodyNSP.Value/(100+ibdsPrimary_SetupTAKE_NSP.Value*ibdsMainPrimaryTovarIncomeBodyNSP.Value)*CurrencyRoundPower)/CurrencyRoundPower;
   NSP := NSP+LocalNSP;
   NDS := NDS+ibdsMainPrimaryTovarIncomeBodyItogo.Value*Round((ibdsMainPrimaryTovarIncomeBodyPRICE.Value-LocalNSP/ibdsMainPrimaryTovarIncomeBodyItogo.Value)*ibdsMainPrimaryTovarIncomeBodyNDS.Value/(100+ibdsMainPrimaryTovarIncomeBodyNDS.Value)*CurrencyRoundPower)/CurrencyRoundPower;
   ibdsMainPrimaryTovarIncomeBody.Next
  End;
 ibdsMainPrimaryTovarIncomeBody.Bookmark := BookMark;
 dbeItogo.Text :=FormatFloat(ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.DisplayFormat,TotalMany);
 dbeNDS.Text :=FormatFloat(ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.DisplayFormat,NDS);
 dbeNSP.Text :=FormatFloat(ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.DisplayFormat,NSP);
 dbeTovar.Text :=FormatFloat(ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.DisplayFormat,TotalMany-NDS-NSP);
 ibdsMainPrimaryTovarIncomeBody.EnableControls
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyARTICULChange(
  Sender: TField);
 var ID: Integer;
begin
 If (Sender.AsString<>'') then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select ID from ARTICULS where (ARTICUL='''+
                   Sender.AsString+''')');
   ibsAux.ExecQuery;
   If (ibsAux.FieldByName('ID').IsNull) then
    ID := 0
   else
    ID := ibsAux.FieldByName('ID').AsInteger;
   ibsAux.Close;
   If (Sender.DataSet.FieldByName('ARTICUL_ID').AsInteger<>ID) then
    Sender.DataSet.FieldByName('ARTICUL_ID').AsInteger := ID
  End
end;

procedure TfrmNaklIn.pmParentInvoiceOutClick(Sender: TObject);
begin
 If (ibdsMainPrimaryTovarIncome.RecordCount>0) or (ibdsMainPrimaryTovarIncome.State=dsInsert) then
  Case (Sender as TMenuItem).Tag of
   1 : Begin
        If (frmMain.FindComponent('frmInvoiceOut')=nil) then
         Begin
          TempIn_Out := 1;
          If NOT (ibdsMainPrimaryTovarIncomePARENT_ID.IsNull) and (ibdsMainPrimaryTovarIncomePARENT_TYPE.Value=1) then
           Invoice_ID := ibdsMainPrimaryTovarIncomePARENT_ID.Value;
          frmInvoiceOut := TfrmInvoice.Create(frmMain);
          frmInvoiceOut.Name := 'frmInvoiceOut'
         End
        else
         If NOT (ibdsMainPrimaryTovarIncomePARENT_ID.IsNull) and (ibdsMainPrimaryTovarIncomePARENT_TYPE.Value=(Sender as TMenuItem).Tag) then
          Begin
           If (frmInvoiceOut.PageControl1.ActivePageIndex<>1) then
            frmInvoiceOut.PageControl1.ActivePageIndex := 1;
           frmInvoiceOut.ibdsMainInvoice.Close;
           frmInvoiceOut.ibdsMainInvoice.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarIncomePARENT_ID.Value;
           frmInvoiceOut.ibdsMainInvoice.Open
          End;
        frmInvoiceOut.LookUpProcedure := SetInvoiceID;
        If (ibdsMainPrimaryTovarIncomePARENT_TYPE.Value<>1) then
         Begin
          If NOT (ibdsMainPrimaryTovarIncome.State in [dsEdit, dsInsert]) then
           ibdsMainPrimaryTovarIncome.Edit;
          ibdsMainPrimaryTovarIncomePARENT_TYPE.Value := 1
         End;
        frmInvoiceOut.Show
       End;
   2 : Begin
        If (frmMain.FindComponent('frmInvoiceIn')=nil) then
         Begin
          TempIn_Out := 2;
          If NOT (ibdsMainPrimaryTovarIncomePARENT_ID.IsNull) and (ibdsMainPrimaryTovarIncomePARENT_TYPE.Value=2) then
           Invoice_ID := ibdsMainPrimaryTovarIncomePARENT_ID.Value;
          frmInvoiceIn := TfrmInvoice.Create(frmMain);
          frmInvoiceIn.Name := 'frmInvoiceIn'
         End
        else
         If NOT (ibdsMainPrimaryTovarIncomePARENT_ID.IsNull) and (ibdsMainPrimaryTovarIncomePARENT_TYPE.Value=(Sender as TMenuItem).Tag) then
          Begin
           If (frmInvoiceIn.PageControl1.ActivePageIndex<>1) then
            frmInvoiceIn.PageControl1.ActivePageIndex := 1;
           frmInvoiceIn.ibdsMainInvoice.Close;
           frmInvoiceIn.ibdsMainInvoice.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarIncomePARENT_ID.Value;
           frmInvoiceIn.ibdsMainInvoice.Open
          End;
        frmInvoiceIn.LookUpProcedure := SetInvoiceID;
        If (ibdsMainPrimaryTovarIncomePARENT_TYPE.Value<>2) then
         Begin
          If NOT (ibdsMainPrimaryTovarIncome.State in [dsEdit, dsInsert]) then
           ibdsMainPrimaryTovarIncome.Edit;
          ibdsMainPrimaryTovarIncomePARENT_TYPE.Value := 2
         End;
        frmInvoiceIn.Show
       End
  End
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyBeforeOpen(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarIncomeBody.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarIncome.ParamByName('ID').AsInt64
end;

procedure TfrmNaklIn.ibdsEnterpriseStoresBeforeOpen(DataSet: TDataSet);
begin
 ibdsEnterpriseStores.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarIncomeENTERPRISE_ID.Value
end;

procedure TfrmNaklIn.ibdsPersonsBeforeOpen(DataSet: TDataSet);
begin
 ibdsPersons.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarIncomeENTERPRISE_ID.Value
end;

procedure TfrmNaklIn.ibdsPrimary_SetupBeforeOpen(DataSet: TDataSet);
begin
 ibdsPrimary_Setup.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarIncomeENTERPRISE_ID.AsLargeInt;
 ibdsPrimary_Setup.ParamByName('PERSON_ID').AsInt64 := PersonID
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeENTERPRISE_IDChange(
  Sender: TField);
begin
 If (ibdsEnterpriseStores.Active) then
  Begin
   ibdsEnterpriseStores.Close;
   ibdsEnterpriseStores.Open
  End;
 If (ibdsPersons.Active) then
  Begin
   ibdsPersons.Close;
   ibdsPersons.Open
  End;
 If (ibdsPrimary_Setup.Active) then
  Begin
   ibdsPrimary_Setup.Close;
   ibdsPrimary_Setup.Open
  End;
 If (ibdsCurrency.Active) then
  Begin
   ibdsCurrency.Close;
   ibdsCurrency.Open
  End
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyBeforePost(
  DataSet: TDataSet);
 var NSPOld, NSPNew, NDSOld, NDSNew : Double;
begin
 If (ibdsMainPrimaryTovarIncomeBodyItogoManyOld.AsFloat<>ibdsMainPrimaryTovarIncomeBodyItogoMany.AsFloat) then
  Begin
   NSPOld := Round(ibdsMainPrimaryTovarIncomeBodyItogoManyOld.Value*ibdsPrimary_SetupTAKE_NSP.Value*ibdsMainPrimaryTovarIncomeBodyNSP.Value/(100+ibdsPrimary_SetupTAKE_NSP.Value*ibdsMainPrimaryTovarIncomeBodyNSP.Value)*Power(10,ibdsCurrencyDECIMALS_IN.AsInteger))/Power(10,ibdsCurrencyDECIMALS_IN.AsInteger);
   NSPNew := Round(ibdsMainPrimaryTovarIncomeBodyItogoMany.Value*ibdsPrimary_SetupTAKE_NSP.Value*ibdsMainPrimaryTovarIncomeBodyNSP.Value/(100+ibdsPrimary_SetupTAKE_NSP.Value*ibdsMainPrimaryTovarIncomeBodyNSP.Value)*Power(10,ibdsCurrencyDECIMALS_IN.AsInteger))/Power(10,ibdsCurrencyDECIMALS_IN.AsInteger);
   NSP := NSP-NSPOld+NSPNew;
   NDSOld := Round((ibdsMainPrimaryTovarIncomeBodyItogoManyOld.Value-NSPOld)*ibdsMainPrimaryTovarIncomeBodyNDS.Value/(100+ibdsMainPrimaryTovarIncomeBodyNDS.Value)*Power(10,ibdsCurrencyDECIMALS_IN.AsInteger))/Power(10,ibdsCurrencyDECIMALS_IN.AsInteger);
   NDSNew := Round((ibdsMainPrimaryTovarIncomeBodyItogoMany.Value-NSPNew)*ibdsMainPrimaryTovarIncomeBodyNDS.Value/(100+ibdsMainPrimaryTovarIncomeBodyNDS.Value)*Power(10,ibdsCurrencyDECIMALS_IN.AsInteger))/Power(10,ibdsCurrencyDECIMALS_IN.AsInteger);
   NDS := NDS-NDSOld+NDSNew;
   TotalMany := TotalMany-ibdsMainPrimaryTovarIncomeBodyItogoManyOld.AsFloat+ibdsMainPrimaryTovarIncomeBodyItogoMany.AsFloat;
   ibdsMainPrimaryTovarIncomeBodyItogoManyOld.Value := ibdsMainPrimaryTovarIncomeBodyItogoMany.AsFloat;
   dbeItogo.Text :=FormatFloat(ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.DisplayFormat,TotalMany);
   dbeNDS.Text :=FormatFloat(ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.DisplayFormat,NDS);
   dbeNSP.Text :=FormatFloat(ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.DisplayFormat,NSP);
   dbeTovar.Text :=FormatFloat(ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.DisplayFormat,TotalMany-NDS-NSP)
  End
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeCURRENCY_RATEChange(
  Sender: TField);
 var BookMark : String;
begin
 If (ibdsMainPrimaryTovarIncomeBody.RecordCount>0) and (OldCurrencyRate<>ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsFloat) then
  Begin
   BookMark := ibdsMainPrimaryTovarIncomeBody.Bookmark;
   ibdsMainPrimaryTovarIncomeBody.DisableControls;
   ibdsMainPrimaryTovarIncomeBody.First;
   While NOT (ibdsMainPrimaryTovarIncomeBody.Eof) do
    Begin
     ibdsMainPrimaryTovarIncomeBody.Edit;
     ibdsMainPrimaryTovarIncomeBodyPRICE.Value := Round((ibdsMainPrimaryTovarIncomeBodyPRICE.Value*OldCurrencyRate/ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
     ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.Value := Round((ibdsMainPrimaryTovarIncomeBodyLAST_BUY_PRICE.Value*OldCurrencyRate/ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
     ibdsMainPrimaryTovarIncomeBody.Next
    End;
   ibdsMainPrimaryTovarIncomeBody.Bookmark := BookMark;
   ibdsMainPrimaryTovarIncomeBody.EnableControls
  End;
 OldCurrencyRate := ibdsMainPrimaryTovarIncomeCURRENCY_RATE.AsFloat
end;

procedure TfrmNaklIn.dbgPrimaryTovarIncomeListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeListCalcFields(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarIncomeListAMOUNT_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsMainPrimaryTovarIncomeListDECIMALS.AsInteger),ibdsMainPrimaryTovarIncomeListAMOUNT.AsFloat)
end;

procedure TfrmNaklIn.SetContractor;
begin
 If (Parent_Closed) or (ibdsMainPrimaryTovarIncomeCLOSED.AsInteger=1) or
    (ibdsMainPrimaryTovarIncomeNUMBER.ReadOnly)  then
  Exit;
 ibdsContractors.Close;
 ibdsContractors.Open;
 ibdsContractors.Locate('NAME',frmKontrAgList.ibdsMainContractorsNAME.AsString,[]);
 If NOT (ibdsMainPrimaryTovarIncome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarIncome.Edit;
 ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.Value := ibdsContractorsID.Value;
 wwDBLookupCombo16.Text := ibdsContractorsNAME.AsString;
 frmKontrAgList.LookUpProcedure := nil
end;

procedure TfrmNaklIn.wwDBLookupCombo16KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F6) then
  Begin
   If (frmMain.FindComponent('frmKontrAgList')=nil) then
    frmKontrAgList := TfrmKontrAgList.Create(frmMain);
   frmKontrAgList.LookUpProcedure := SetContractor;
   If NOT (ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.IsNull) then
    frmKontrAgList.ibdsMainContractors.Locate('ID',ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.AsString,[]);
   frmKontrAgList.Show
  End
end;

procedure TfrmNaklIn.N13Click(Sender: TObject);
begin
 If ((Sender as TMenuItem).Owner.FindComponent('frmGoodInfo')=nil) then
  frmGoodInfo := TfrmGoodInfo.Create((Sender as TMenuItem).Owner);
 frmGoodInfo.ibdsGoods.Close;
 frmGoodInfo.ibdsReservation.Close;
 frmGoodInfo.ibdsGoods.DataSource := (dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource;
 frmGoodInfo.ibdsReservation.DataSource := (dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource;
 frmGoodInfo.ibdsGoods.Open;
 frmGoodInfo.ibdsReservation.Open;
 frmGoodInfo.Show
end;

procedure TfrmNaklIn.wwDBLookupCombo16CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainPrimaryTovarIncomeCONTRACTOR_NAME.Value := ibdsContractorsNAME.AsString
end;

procedure TfrmNaklIn.sbFilterPrimaryTovarIncomeListClick(Sender: TObject);
 var BookMark : String;
begin
 ibdsFilterPersons.Active := sbFilterPrimaryTovarIncomeList.Down;
 ibdsFilterTypes.Active := sbFilterPrimaryTovarIncomeList.Down;
 ibdsFilterContractorTypes.Active := sbFilterPrimaryTovarIncomeList.Down;
 ibdsFilterArticuls.Active := sbFilterPrimaryTovarIncomeList.Down;
 pnlFilter.Visible := sbFilterPrimaryTovarIncomeList.Down;
 pnlText.Visible := sbFilterPrimaryTovarIncomeList.Down;
 BookMark := ibdsMainPrimaryTovarIncomeList.Bookmark;
 Cursor := crHourGlass;
 ibdsMainPrimaryTovarIncomeList.Close;
 GenerateSelectMainPrimaryTovarIncomeList;
 ibdsMainPrimaryTovarIncomeList.Open;
 try
  ibdsMainPrimaryTovarIncomeList.Bookmark := BookMark
 except
 end;
 Cursor := crDefault;
end;

procedure TfrmNaklIn.sbReFilterClick(Sender: TObject);
begin
 sbFilterPrimaryTovarIncomeList.Click;
 sbReFilter.Visible := False
end;

procedure TfrmNaklIn.SpeedButton5Click(Sender: TObject);
begin
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True;
 SpeedButton5.Visible := pnlFilter.Visible;
 SpeedButton3.Visible := Not pnlFilter.Visible
end;

procedure TfrmNaklIn.cbMenegerClick(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

procedure TfrmNaklIn.cbOpenClick(Sender: TObject);
begin
 sbReFilter.Visible := True;
 If (Sender as TwwCheckBox).Checked then
  If (Sender=cbOpen) then
   cbClosed.Checked := False
  else
   cbOpen.Checked := False
end;

procedure TfrmNaklIn.cbBlackClick(Sender: TObject);
begin
 sbReFilter.Visible := True;
 If (Sender as TwwCheckBox).Checked then
  If (Sender=cbBlack) then
   cbWhite.Checked := False
  else
   cbBlack.Checked := False;
 If (Black) then
  If (cbBlack.Checked) then
   Begin
    cbFake.Checked := False;
    cbFake.Enabled := False;
    cbReal.Checked := False;
    cbReal.Enabled := False
   End
  else
   Begin
    cbFake.Enabled := True;
    cbReal.Enabled := True
   End;
 pnlFilter.Refresh
end;

procedure TfrmNaklIn.cbFakeClick(Sender: TObject);
begin
 sbReFilter.Visible := True;
 If (Sender as TwwCheckBox).Checked then
  If (Sender=cbFake) then
   cbReal.Checked := False
  else
   cbFake.Checked := False;
 pnlFilter.Refresh
end;

procedure TfrmNaklIn.edPrefixChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbPrefix.Checked)
end;

procedure TfrmNaklIn.edNumberChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbNumber.Checked)
end;

procedure TfrmNaklIn.edSuffixChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbSuffix.Checked)
end;

procedure TfrmNaklIn.edAmountChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbAmount.Checked)
end;

procedure TfrmNaklIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  ibsAux.SQL.Clear;
  ibsAux.SQL.Add('delete from FILTERS where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
  ibsAux.ExecQuery;
  If (sbFilterPrimaryTovarIncomeList.Down) then
   Begin
    ibsAux.SQL.Clear;
    ibsAux.SQL.Add('insert into FILTERS (PERSON_ID, FORM_NAME, FILTER_NAME, CHEKED, FILTER_VALUE)');
    ibsAux.SQL.Add('values (:PERSON_ID, :FORM_NAME, :FILTER_NAME, 1, :FILTER_VALUE)');
    ibsAux.GenerateParamNames := True;
    ibsAux.ParamByName('PERSON_ID').Value := PersonID;
    ibsAux.ParamByName('FORM_NAME').Value := (Sender as TForm).Caption;
    If (cbMeneger.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbMeneger.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edMeneger.Text;
      ibsAux.ExecQuery
     End;
    If (cbContractor.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbContractor.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edContractor.Text;
      ibsAux.ExecQuery
     End;
    If (cbPaid.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbPaid.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := null;
      ibsAux.ExecQuery
     End;
    If (cbType.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbType.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edType.Text;
      ibsAux.ExecQuery
     End;
    If (cbContractorType.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbContractorType.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edContractorType.Text;
      ibsAux.ExecQuery
     End;
    If (cbPeriod.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbPeriod.Name+'/Start';
      ibsAux.ParamByName('FILTER_VALUE').Value := deDateStart.Text;
      ibsAux.ExecQuery;
      ibsAux.ParamByName('FILTER_NAME').Value := cbPeriod.Name+'/Stop';
      ibsAux.ParamByName('FILTER_VALUE').Value := deDateStop.Text;
      ibsAux.ExecQuery
     End;
    If (cbArticuls.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbArticuls.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edArticul.Text;
      ibsAux.ExecQuery
     End;
    If (cbOpen.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbOpen.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := null;
      ibsAux.ExecQuery
     End;
    If (cbClosed.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbClosed.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := null;
      ibsAux.ExecQuery
     End;
    If (cbPrefix.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbPrefix.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edPrefix.Text;
      ibsAux.ExecQuery
     End;
    If (cbNumber.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbNumber.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edNumber.Text;
      ibsAux.ExecQuery
     End;
    If (cbSuffix.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbSuffix.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edSuffix.Text;
      ibsAux.ExecQuery
     End;
    If (cbAmount.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbAmount.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edAmount.Text;
      ibsAux.ExecQuery
     End;
    If (Black) then
     Begin
      If (cbBlack.Checked) then
       Begin
        ibsAux.ParamByName('FILTER_NAME').Value := cbBlack.Name;
        ibsAux.ParamByName('FILTER_VALUE').Value := null;
        ibsAux.ExecQuery
       End;
      If (cbWhite.Checked) then
       Begin
        ibsAux.ParamByName('FILTER_NAME').Value := cbWhite.Name;
        ibsAux.ParamByName('FILTER_VALUE').Value := null;
        ibsAux.ExecQuery
       End;
      If (cbFake.Checked) then
       Begin
        ibsAux.ParamByName('FILTER_NAME').Value := cbFake.Name;
        ibsAux.ParamByName('FILTER_VALUE').Value := null;
        ibsAux.ExecQuery
       End;
      If (cbReal.Checked) then
       Begin
        ibsAux.ParamByName('FILTER_NAME').Value := cbReal.Name;
        ibsAux.ParamByName('FILTER_VALUE').Value := null;
        ibsAux.ExecQuery
       End
     End
   End
  except
  end;
 inherited;
 frmNaklIn := nil
end;

procedure TfrmNaklIn.sbRefreshPrimaryTovarIncomeListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPrimaryTovarIncomeList.Bookmark;
 ibdsMainPrimaryTovarIncomeList.Close;
 ibdsMainPrimaryTovarIncomeList.Open;
 try
  ibdsMainPrimaryTovarIncomeList.Bookmark := BookMark
 except
 end
end;

procedure TfrmNaklIn.ibdsFilterPersonsAfterOpen(DataSet: TDataSet);
begin
 If (DataSet=ibdsFilterPersons) and (Meneger<>'') then
  Begin
   edMeneger.Text := Meneger;
   ibdsFilterPersons.Locate('NAME',Meneger,[])
  End;
 If (DataSet=ibdsFilterTypes) and (IType<>'') then
  Begin
   edType.Text := IType;
   ibdsFilterTypes.Locate('NAME',IType,[])
  End;
 If (DataSet=ibdsFilterContractorTypes) and (IContractorType<>'') then
  Begin
   edContractorType.Text := IContractorType;
   ibdsFilterContractorTypes.Locate('NAME',IContractorType,[])
  End;
 If (DataSet=ibdsFilterArticuls) and (ArticulName<>'') then
  Begin
   edArticul.Text := ArticulName;
   ibdsFilterArticuls.Locate('NAME',ArticulName,[])
  End;
 edContractor.Text := Contractor;
 deDateStart.Date := DateStart;
 deDateStop.Date := DateStop;
 sbReFilter.Visible := False
end;

procedure TfrmNaklIn.ibdsFilterPersonsBeforeClose(DataSet: TDataSet);
begin
 IType := edType.Text;
 IContractorType := edContractorType.Text;
 Contractor := edContractor.Text;
 Meneger := edMeneger.Text;
 ArticulName := edArticul.Text;
 DateStart := deDateStart.Date;
 DateStop := deDateStop.Date
end;

procedure TfrmNaklIn.lcPrimaryTypeBeforeDropDown(Sender: TObject);
begin
 ibdsPrimary_Setup.Filtered := True
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBLACKChange(Sender: TField);
begin
 If (ibdsMainPrimaryTovarIncome.State in [dsEdit,dsInsert]) and
    (((ibdsPrimary_SetupBLACK.Value=1) and
      (ibdsMainPrimaryTovarIncomeBLACK.Value=0)) or
     ((ibdsPrimary_SetupCREATE_RIGHT.AsInteger<>3) and
      (ibdsPrimary_SetupCREATE_RIGHT.AsInteger<>Succ(ibdsMainPrimaryTovarIncomeBLACK.AsInteger)))) and
    NOT (ibdsMainPrimaryTovarIncomePRIMARY_SETUP_ID.IsNull) then
  Begin
   ibdsMainPrimaryTovarIncomePRIMARY_SETUP_ID.AsVariant := null;
   ibdsPrimary_Setup.Close;
   GenerateSelectPrimaryTovarIncomeSetup;
   ibdsPrimary_Setup.Open
  End
end;

procedure TfrmNaklIn.dbgPrimaryTovarIncomeListCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 Case (Sender as TComponent).Tag of
  1: If (AFieldName='AMOUNT_FMT') then
      wwDBGridCalcTitleAttributes(Sender, AFieldName, 'AMOUNT', AFont, ABrush, ATitleAlignment, OrderByMainPrimaryTovarIncomeList)
     else
      wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainPrimaryTovarIncomeList);
 end
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeListAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('PrimaryTovarIncomeList', True)
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('PrimaryTovarIncome', True)
end;

procedure TfrmNaklIn.dbgPrimaryTovarIncomeListUpdateFooter(
  Sender: TObject);
 var CurrencyFrmt : String;
begin
 If (dgShowFooter in dbgPrimaryTovarIncomeList.Options) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select SUM(PTIH.AMOUNT) AMOUNT, -SUM(PTIH.SALDO_MANY) SALDO_MANY, C.SYMBOL, C.DECIMALS_IN');
   ibsAux.SQL.Add(ibdsMainPrimaryTovarIncomeList.SelectSQL[6]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarIncomeList.SelectSQL[7]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarIncomeList.SelectSQL[8]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarIncomeList.SelectSQL[9]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarIncomeList.SelectSQL[10]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarIncomeList.SelectSQL[11]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarIncomeList.SelectSQL[12]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarIncomeList.SelectSQL[13]);
   ibsAux.SQL.Add(GetWhereMainPrimaryTovarIncomeList);
   ibsAux.SQL.Add('group by C.SYMBOL, C.DECIMALS_IN');
   ibsAux.GenerateParamNames := True;
   ibsAux.ParamByName('PERSON_ID').Value := PersonID;
   dbgPrimaryTovarIncomeList.ColumnByName('AMOUNT_FMT').FooterValue := '';
   dbgPrimaryTovarIncomeList.ColumnByName('SALDO_MANY').FooterValue := '';
   ibsAux.ExecQuery;
   While NOT (ibsAux.Eof) do
    Begin
     CurrencyFrmt := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_IN').AsInteger);
     CurrencyFrmt := CurrencyFrmt+ibsAux.FieldByName('SYMBOL').AsString;
     dbgPrimaryTovarIncomeList.ColumnByName('AMOUNT_FMT').FooterValue := dbgPrimaryTovarIncomeList.ColumnByName('AMOUNT_FMT').FooterValue+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('AMOUNT').AsDouble)+#13#10;
     dbgPrimaryTovarIncomeList.ColumnByName('SALDO_MANY').FooterValue := dbgPrimaryTovarIncomeList.ColumnByName('SALDO_MANY').FooterValue+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('SALDO_MANY').AsDouble)+#13#10;
     ibsAux.Next
    End;
   dbgPrimaryTovarIncomeList.ColumnByName('AMOUNT_FMT').FooterValue := Copy(dbgPrimaryTovarIncomeList.ColumnByName('AMOUNT_FMT').FooterValue,1,Length(dbgPrimaryTovarIncomeList.ColumnByName('AMOUNT_FMT').FooterValue)-2);
   dbgPrimaryTovarIncomeList.ColumnByName('SALDO_MANY').FooterValue := Copy(dbgPrimaryTovarIncomeList.ColumnByName('SALDO_MANY').FooterValue,1,Length(dbgPrimaryTovarIncomeList.ColumnByName('SALDO_MANY').FooterValue)-2);
   dbgPrimaryTovarIncomeList.OnUpdateFooter := Nil;
   dbgPrimaryTovarIncomeList.FooterHeight := 22*ibsAux.RecordCount;
   ibsAux.Close;
   dbgPrimaryTovarIncomeList.OnUpdateFooter := dbgPrimaryTovarIncomeListUpdateFooter
  End
end;

procedure TfrmNaklIn.dbgPrimaryTovarIncomeListIButtonClick(
  Sender: TObject);
begin
 If (dbgPrimaryTovarIncomeListIButton.Down) then
  Begin
   dbgPrimaryTovarIncomeList.Options := dbgPrimaryTovarIncomeList.Options+[dgShowFooter];
   dbgPrimaryTovarIncomeListUpdateFooter
   (dbgPrimaryTovarIncomeList)
  End
 else
  dbgPrimaryTovarIncomeList.Options := dbgPrimaryTovarIncomeList.Options-[dgShowFooter]
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeListBeforeOpen(
  DataSet: TDataSet);
begin
 (DataSet as TIBDataSet).ParamByName('PERSON_ID').AsInt64 := PersonID
end;

procedure TfrmNaklIn.SetReadOnly;
 var ki : Integer;
begin
 For ki := 0 to Pred(ibdsMainPrimaryTovarIncome.FieldCount) do
  ibdsMainPrimaryTovarIncome.Fields[ki].ReadOnly :=
                    NOT((ibdsMainPrimaryTovarIncome.State in [dsInsert]) or
                        (ibdsMainPrimaryTovarIncomeNUMBER_PREFIX.AsString='НОВАЯ')) and
                    (((ibdsMainPrimaryTovarIncome.Fields[ki]<>ibdsMainPrimaryTovarIncomeCLOSED) and
                      ((ibdsMainPrimaryTovarIncomeUPDATE_RIGHT.AsInteger=0) or
                       (ibdsMainPrimaryTovarIncomeCLOSED.AsInteger=1))) or
                     ((ibdsMainPrimaryTovarIncome.Fields[ki]=ibdsMainPrimaryTovarIncomeCLOSED) and
                      (ibdsMainPrimaryTovarIncomeCLOSE_RIGHT.AsInteger=0)));
 tvPrimaryTovarIncomeBody.OptionsData.Inserting := ((ibdsMainPrimaryTovarIncome.State in [dsInsert]) or
                                       (ibdsMainPrimaryTovarIncomeNUMBER_PREFIX.AsString='НОВЫЙ')) or
                                   NOT((ibdsMainPrimaryTovarIncomeUPDATE_RIGHT.AsInteger=0) or
                                       (ibdsMainPrimaryTovarIncomeCLOSED.AsInteger=1));
 tvPrimaryTovarIncomeBody.OptionsData.Appending := tvPrimaryTovarIncomeBody.OptionsData.Inserting;
 tvPrimaryTovarIncomeBody.OptionsData.Deleting := tvPrimaryTovarIncomeBody.OptionsData.Inserting;
 tvSets.OptionsData := tvPrimaryTovarIncomeBody.OptionsData;
 For ki := 0 to Pred(tvPrimaryTovarIncomeBody.ColumnCount) do
  tvPrimaryTovarIncomeBody.Columns[ki].Options.Editing := tvPrimaryTovarIncomeBody.OptionsData.Inserting;
 For ki := 0 to Pred(tvSets.ColumnCount) do
  tvSets.Columns[ki].Options.Editing := tvPrimaryTovarIncomeBody.OptionsData.Inserting;
 If (Black) then
  If (ibdsMainPrimaryTovarIncomeBLACK.AsInteger=1) and
     (ibdsMainPrimaryTovarIncomeUPDATE_RIGHT.AsInteger=1) and
     (ibdsMainPrimaryTovarIncomeCLOSED.AsInteger=1) then
   Begin
    tvPrimaryTovarIncomeBodyPRICE.Options.Editing := True;
    tvSetsPRICE.Options.Editing := True;
    ibdsMainPrimaryTovarIncomeCURRENCY_RATE.ReadOnly := False;
   End;
 pmParentSelf.Enabled := NOT ibdsMainPrimaryTovarIncomePARENT_TYPE.ReadOnly;
 If (ibdsMainPrimaryTovarIncomePARENT_TYPE.ReadOnly) then
  Begin
   pmParentInvoiceIn.Enabled := (ibdsMainPrimaryTovarIncomePARENT_TYPE.AsInteger=2);
   pmParentInvoiceOut.Enabled := (ibdsMainPrimaryTovarIncomePARENT_TYPE.AsInteger=1)
  End
 else
  Begin
   pmParentInvoiceIn.Enabled := True;
   pmParentInvoiceOut.Enabled := True
  End;
 sbApplyPrimaryTovarIncome.OnClick := sbApplyPrimaryTovarIncomeClick;
 If NOT (ibdsMainPrimaryTovarIncomeCLOSED.ReadOnly) and
    (ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.ReadOnly) and
    NOT (ibdsMainPrimaryTovarIncomePARENT_TYPE.AsInteger=0) then
  Begin
   ibsAux.SQL.Clear;
   If (ibdsMainPrimaryTovarIncomePARENT_TYPE.AsInteger=3) then
    ibsAux.SQL.Add('select C.CLOSED from CONTRACTS C where (C.ID='+ibdsMainPrimaryTovarIncomePARENT_ID.AsString+')')
   else
    ibsAux.SQL.Add('select IH.CLOSED from INVOICE_HEADER IH where (IH.ID='+ibdsMainPrimaryTovarIncomePARENT_ID.AsString+')');
   ibsAux.ExecQuery;
   Parent_Closed := (ibsAux.FieldByName('CLOSED').AsInteger=1);
   If (Parent_Closed) then
    Begin
     sbApplyPrimaryTovarIncome.OnClick := nil;
     ibdsMainPrimaryTovarIncomeCLOSED.ReadOnly := True;
     ibdsMainPrimaryTovarIncomeCURRENCY_RATE.ReadOnly := True;
     tvPrimaryTovarIncomeBodyPRICE.Options.Editing := False
    End; 
   ibsAux.Close
  End
end;

procedure TfrmNaklIn.ibdsFilterTypesBeforeOpen(DataSet: TDataSet);
begin
 ibdsFilterTypes.ParamByName('PERSON_ID').Value := PersonID
end;

procedure TfrmNaklIn.N1Click(Sender: TObject);
begin
 If (frmNaklIn.FindComponent('frmLastBuyPrice')=nil) then
  frmLastBuyPrice := TfrmLastBuyPrice.Create(frmNaklIn);
 frmLastBuyPrice.Top := Top;
 frmLastBuyPrice.Left := Screen.Width-frmLastBuyPrice.Width;
 frmLastBuyPrice.Run(trMain,(dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource,ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsLargeInt);
 frmLastBuyPrice.Show
end;

procedure TfrmNaklIn.wwDBLookupCombo13BeforeDropDown(Sender: TObject);
begin
 ibdsPersons.Filtered := True
end;

procedure TfrmNaklIn.wwDBLookupCombo13CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 ibdsPersons.Filtered := False
end;

procedure TfrmNaklIn.ibdsPersonsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsPersonsVALID.AsInteger=1)
end;

procedure TfrmNaklIn.ibdsPrimary_SetupFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 If NOT(Black) then
  exit;
 If (dbcbBlack.Enabled) then
  Accept := (ibdsPrimary_SetupFAKE_RIGHT.AsInteger in [3,Succ(ibdsMainPrimaryTovarIncomeFAKE.AsInteger),0])
 else
  Accept := (ibdsPrimary_SetupFAKE_RIGHT.AsInteger in [3,Succ(ibdsMainPrimaryTovarIncomeFAKE.AsInteger),0]) and
            (ibdsPrimary_SetupCREATE_RIGHT.AsInteger in [3,Succ(ibdsMainPrimaryTovarIncomeBLACK.AsInteger)])
end;

procedure TfrmNaklIn.wwDBLookupCombo11BeforeDropDown(Sender: TObject);
begin
 ibdsEnterprises.Filtered := True
end;

procedure TfrmNaklIn.wwDBLookupCombo11CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 ibdsEnterprises.Filtered := False
end;

procedure TfrmNaklIn.ibdsEnterprisesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsEnterprisesVALID.AsInteger=1)
end;

procedure TfrmNaklIn.ibdsEnterpriseStoresFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsEnterpriseStoresVALID.AsInteger=1)
end;

procedure TfrmNaklIn.wwDBLookupCombo15BeforeDropDown(Sender: TObject);
begin
 ibdsEnterpriseStores.Filtered := True
end;

procedure TfrmNaklIn.wwDBLookupCombo15CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 ibdsEnterpriseStores.Filtered := False
end;

procedure TfrmNaklIn.ibdsCurrencyFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsCurrencyVALID.AsInteger=1)
end;

procedure TfrmNaklIn.wwDBLookupCombo18BeforeDropDown(Sender: TObject);
begin
 ibdsCurrency.Filtered := True
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeSECURITY_LEVELChange(
  Sender: TField);
begin
 If (ibdsMainPrimaryTovarIncomeSECURITY_LEVEL.AsInteger<ibdsPrimary_SetupSECURITY_LEVEL.AsInteger) then
  ibdsMainPrimaryTovarIncomeSECURITY_LEVEL.Value := ibdsPrimary_SetupSECURITY_LEVEL.AsInteger;
 If (ibdsMainPrimaryTovarIncomeSECURITY_LEVEL.AsInteger>SecurityLevel) then
  ibdsMainPrimaryTovarIncomeSECURITY_LEVEL.Value := SecurityLevel
end;

procedure TfrmNaklIn.miSerialsClick(Sender: TObject);
begin
 If (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger<5) then
  Begin
   If (frmNaklIn.FindComponent('frmSerialNumbers')=nil) then
    frmSerialNumbers := TfrmSerialNumbers.Create(frmNaklIn);
   frmSerialNumbers.Top := frmNaklIn.Top;
   frmSerialNumbers.Left := Screen.Width-frmSerialNumbers.Width;
   frmSerialNumbers.ibdsSerialNumbers.Open;
   frmSerialNumbers.Show
  End
 else
  Begin
   ibdsSerials_InCome.Open;
   ibdsSerials_Available.Open;
   pnlSerials.Left := (pnlSerials.Parent.Width-pnlSerials.Width-pnlTools.Width) div 2;
   pnlSerials.Show;
   dbgAvailable.SetFocus
  End
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNTValidate(
  Sender: TField);
begin
 If (ibdsMainPrimaryTovarIncomeBodySERIALS_COUNT.AsInteger>0) and
    (ibdsMainPrimaryTovarIncomeBodySERIALS_COUNT.AsInteger>ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.AsFloat*ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.AsInteger+ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.AsInteger) then
  Begin
   MessageDlg('Уже введены серийные номера!',mtError,[mbOK],0);
   Abort
  End 
end;

procedure TfrmNaklIn.ibdsSerials_AvailableBeforeOpen(DataSet: TDataSet);
begin
 If (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=5) then
  Begin
   ibdsSerials_Available.ParamByName('LOCATION_TYPE').AsInteger := 0;
   ibdsSerials_Available.ParamByName('LOCATION_ID').AsInt64 := -ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.AsLargeInt
  End;
 If (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=6) then
  Begin
   ibdsSerials_Available.ParamByName('LOCATION_TYPE').AsInteger := 1;
   ibdsSerials_Available.ParamByName('LOCATION_ID').AsInt64 := ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.AsLargeInt
  End;
end;

procedure TfrmNaklIn.ibdsSerials_AvailableFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := True;
 ibdsSerials_InCome.First;
 While Not (ibdsSerials_InCome.Eof) do
  Begin
   If (ibdsSerials_InComeSERIAL_ID.AsLargeInt=ibdsSerials_AvailableID.AsLargeInt) then
    Begin
     Accept := False;
     Break
    End;
   ibdsSerials_InCome.Next
  End;
end;

procedure TfrmNaklIn.ibdsSerials_InComeAfterDelete(DataSet: TDataSet);
begin
 StteChange('PrimaryTovarIncome', True);
 If (ibdsSerials_InCome.RecordCount<ibdsMainPrimaryTovarIncomeBodyItogo.AsInteger) then
  Begin
   If NOT (ibdsMainPrimaryTovarIncomeBody.State in [dsEdit, dsInsert]) then
    ibdsMainPrimaryTovarIncomeBody.Edit;
   If (ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.AsInteger>1) or
      (ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.AsFloat<=1) then
    ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value := ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.AsFloat-1
   else
    Begin
     ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value := Pred(ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.AsInteger);
     ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value := ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.AsFloat-1
    End;
   ibdsMainPrimaryTovarIncomeBody.Post
  End
end;

procedure TfrmNaklIn.ibdsSerials_InComeAfterInsert(DataSet: TDataSet);
begin
 If (Succ(ibdsSerials_InCome.RecordCount)>ibdsMainPrimaryTovarIncomeBodyItogo.AsInteger) then
  Begin
   If NOT (ibdsMainPrimaryTovarIncomeBody.State in [dsEdit, dsInsert]) then
    ibdsMainPrimaryTovarIncomeBody.Edit;
   If (ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.AsFloat+1<ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.AsFloat) or
      (ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.AsFloat<=1) then
    ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value := ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.AsFloat+1
   else
    Begin
     ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value := Succ(ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.AsInteger);
     ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value := ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.AsFloat+1-ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.AsFloat
    End;
   ibdsMainPrimaryTovarIncomeBody.Post
  End
end;

procedure TfrmNaklIn.ibdsSerials_InComeFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (Saving) or
           (ibdsSerials_InComePRIMARY_TOVAR_INCOME_BODY_ID.AsLargeInt=ibdsMainPrimaryTovarIncomeBodyID.AsLargeInt);
end;

procedure TfrmNaklIn.ibdsSerials_InComeNewRecord(DataSet: TDataSet);
begin
 ibdsSerials_InComePRIMARY_TOVAR_INCOME_BODY_ID.Value := ibdsMainPrimaryTovarIncomeBodyID.AsLargeInt
end;

procedure TfrmNaklIn.sbToAvailableClick(Sender: TObject);
 var k : Integer;
     ID : Largeint;
     Stroke_Code, Local_Stroke_Code : String;
     Located : Boolean;
begin
 For k := 0 to Pred(dbgDoc.SelectedList.Count) do
  Begin
   ibdsSerials_InCome.GotoBookmark(dbgDoc.SelectedList.Items[k]);
   ID := ibdsSerials_InComeSERIAL_ID.Value;
   Stroke_Code := ibdsSerials_InComeSTROKE_CODE.AsString;
   Local_Stroke_Code := ibdsSerials_InComeLOCAL_STROKE_CODE.AsString;
   ibdsSerials_InCome.Delete;
   Located := False;
   ibdsSerials_Available.First;
   While Not (ibdsSerials_Available.Eof) do
    Begin
     If (ibdsSerials_AvailableID.AsLargeInt=ID) then
      Begin
       Located := True;
       Break
      End;
     ibdsSerials_Available.Next
    End;
   If NOT (Located) then
    Begin
     ibdsSerials_Available.Append;
     ibdsSerials_AvailableID.Value := ID;
     ibdsSerials_AvailableSTROKE_CODE.Value := Stroke_Code;
     ibdsSerials_AvailableLOCAL_STROKE_CODE.Value := Local_Stroke_Code;
     ibdsSerials_Available.Post
    End
  End;
 dbgDoc.SelectedList.Clear
end;

procedure TfrmNaklIn.sbToDocClick(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(dbgAvailable.SelectedList.Count) do
  Begin
   ibdsSerials_Available.GotoBookmark(dbgAvailable.SelectedList.Items[k]);
   ibdsSerials_InCome.Append;
   ibdsSerials_InComeSERIAL_ID.Value := ibdsSerials_AvailableID.AsInteger;
   ibdsSerials_InComeSTROKE_CODE.Value := ibdsSerials_AvailableSTROKE_CODE.AsString;
   ibdsSerials_InComeLOCAL_STROKE_CODE.Value := ibdsSerials_AvailableLOCAL_STROKE_CODE.AsString;
   ibdsSerials_InCome.Post;
   ibdsSerials_Available.Delete
  End;
 dbgAvailable.SelectedList.Clear
end;

procedure TfrmNaklIn.dbgDocKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_Escape) then
  sbSerialsClose.Click
end;

procedure TfrmNaklIn.dbgAvailableEnter(Sender: TObject);
begin
 sbToDoc.Enabled := (Sender=dbgAvailable);
 sbToAvailable.Enabled := (Sender=dbgDoc)
end;

procedure TfrmNaklIn.pnlSplitterMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 const SC_DRAGMOVE = $F012;
begin
 ReleaseCapture;
 pnlSerials.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TfrmNaklIn.sbSerialsCloseClick(Sender: TObject);
begin
 dbgPrimaryTovarIncomeBody.SetFocus;
 pnlSerials.Hide;
 ibdsSerials_Available.Close
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyBeforeClose(
  DataSet: TDataSet);
begin
 pnlSerials.Hide;
 ibdsSerials_Available.Close;
 ibdsSerials_InCome.Close
end;

procedure TfrmNaklIn.edSearchAvailableKeyPress(Sender: TObject;
  var Key: Char);
 var S: String;
begin
 S := edSearchAvailable.Text;
 If (Key<>#8) then
  S := edSearchAvailable.Text+Key;
 If (dbgAvailable.SelectedField=ibdsSerials_AvailableSTROKE_CODE) then
  Begin
   If ibdsSerials_Available.Locate('STROKE_CODE',S,[loCaseInsensitive, loPartialKey]) then
    Begin
     dbgAvailable.UnselectAll;
     dbgAvailable.SelectRecord
    End
  End
 else
  If ibdsSerials_Available.Locate('LOCAL_STROKE_CODE',S,[loCaseInsensitive, loPartialKey]) then
   Begin
    dbgAvailable.UnselectAll;
    dbgAvailable.SelectRecord
   End
end;

procedure TfrmNaklIn.edSearchDocKeyPress(Sender: TObject; var Key: Char);
 var S: String;
begin
 S := edSearchDoc.Text;
 If (Key<>#8) then
  S := edSearchDoc.Text+Key;
 If (dbgDoc.SelectedField=ibdsSerials_InComeSTROKE_CODE) then
  Begin
   If ibdsSerials_InCome.Locate('STROKE_CODE',S,[loCaseInsensitive, loPartialKey]) then
    Begin
     dbgDoc.UnselectAll;
     dbgDoc.SelectRecord
    End
  End
 else
  If ibdsSerials_InCome.Locate('LOCAL_STROKE_CODE',S,[loCaseInsensitive, loPartialKey]) then
   Begin
    dbgDoc.UnselectAll;
    dbgDoc.SelectRecord
   End
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyAfterScroll(
  DataSet: TDataSet);
begin
 If (ibdsSerials_InCome.Active) then
  ibdsSerials_InCome.First
end;

procedure TfrmNaklIn.dbgPrimaryTovarIncomeBodyEnter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := (dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource
end;

procedure TfrmNaklIn.Panel5Enter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := dsMainPrimaryTovarIncome
end;

procedure TfrmNaklIn.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (tvPrimaryTovarIncomeBody.Focused) then
  Key := MyUpCase(Key)
end;

procedure TfrmNaklIn.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmNaklIn.tvPrimaryTovarIncomeBodyCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If (Black) then
  GridDBTableViewCustomDrawCell(Sender,ACanvas,AViewInfo,(PaintBlackBody) and (ibdsMainPrimaryTovarIncomeBLACK.AsInteger=1))
 else
  GridDBTableViewCustomDrawCell(Sender,ACanvas,AViewInfo,False)
end;

procedure TfrmNaklIn.tvPrimaryTovarIncomeBodyCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmNaklIn.tvPrimaryTovarIncomeBodyEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 AAllow := (AItem.DataBinding as TcxGridItemDBDataBinding).Field.CanModify
end;

procedure TfrmNaklIn.tvPrimaryTovarIncomeBodyFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 If (AFocusedRecord<>nil) and (AFocusedRecord.ViewInfo<>nil) then
  SetSerialsPosition(AFocusedRecord.ViewInfo.FocusRectBounds)
end;

procedure TfrmNaklIn.SetSerialsPosition(Rect : TRect);
begin
 If (pnlSerials.Parent.Height>pnlSerials.Parent.ScreenToClient(dbgPrimaryTovarIncomeBody.ClientToScreen(Rect.BottomRight)).y+pnlSerials.Height) then
  pnlSerials.Top := pnlSerials.Parent.ScreenToClient(dbgPrimaryTovarIncomeBody.ClientToScreen(Rect.BottomRight)).y
 else
  pnlSerials.Top := pnlSerials.Parent.ScreenToClient(dbgPrimaryTovarIncomeBody.ClientToScreen(Rect.TopLeft)).y-pnlSerials.Height;
end;

procedure TfrmNaklIn.tvPrimaryTovarIncomeBodyKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
 var ClipBrd : TClipBoard;
begin
 If ((Key=Ord('C')) or (Key=Ord('С')) or (Key=Ord('c')) or (Key=Ord('c'))) and (Shift=[ssCtrl]) then
  Begin
   ClipBrd := ClipBoard;
   ClipBrd.SetTextBuf(PChar((dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DisplayTexts[tvPrimaryTovarIncomeBody.DataController.FocusedRecordIndex,tvPrimaryTovarIncomeBody.Controller.FocusedItem.Index]))
  End;
 Case Key of
  vk_F6 : Begin
           If (frmMain.FindComponent('frmArticuls')=nil) then
            frmArticuls := TfrmArticuls.Create(frmMain);
           If (tvPrimaryTovarIncomeBody.OptionsData.Inserting) then
            Begin
             frmArticuls.LookUpProcedureUpdate := ArticulSetBodyArticulID;
             frmArticuls.LookUpProcedureInsert := ArticulInsertBodyArticulID
            End;
           If NOT (ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.IsNull) then
            Begin
             frmArticuls.dbeFilter.Text := (dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet.FieldByName('ARTICUL_ID').AsString;
             frmArticuls.ibdsSearch.Close;
             frmArticuls.ibdsSearch.SelectSQL[2] := 'where (A.ID=:NAME)';
             frmArticuls.sbFilter.Click;
             frmArticuls.ibdsSearch.Close;
             frmArticuls.ibdsSearch.SelectSQL[2] := 'where (UPPER(A.NAME collate PXW_CYRL) like :NAME)';
             frmArticuls.dbeFilter.Text := ''
            End;
           frmArticuls.Show
          End;
  vk_F7 : Begin
           If (frmMain.FindComponent('frmTovar')=nil) then
            frmTovar := TfrmTovar.Create(frmMain);
           If (tvPrimaryTovarIncomeBody.OptionsData.Inserting) then
            Begin
             frmTovar.LookUpProcedureUpdate := TovarSetBodyArticulID;
             frmTovar.LookUpProcedureInsert := TovarInsertBodyArticulID
            End;
//!!           If NOT (ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID.IsNull) then
//!!            frmTovar.ibdsGoods.Locate('NAME',ibdsMainPrimaryTovarOutcomeBodyARTICUL_NAME.AsString,[]);
           frmTovar.Show
          End
 end
end;

procedure TfrmNaklIn.ibdsPrimaryTovarIncomeBodySetBeforeOpen(
  DataSet: TDataSet);
begin
 ibdsPrimaryTovarIncomeBodySet.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarIncomeID.Value
end;

procedure TfrmNaklIn.ibdsPrimaryTovarIncomeBodySetNewRecord(
  DataSet: TDataSet);
begin
 ibdsPrimaryTovarIncomeBodySetID.Value := GetNewID(ibsGen_ID,'GEN_TOVAR_INCOME_BODY_SETS_ID');
 ibdsPrimaryTovarIncomeBodySetPRIMARI_TOVAR_INCOME_BODY_ID.AsInteger := ibdsMainPrimaryTovarIncomeBodyID.AsInteger
end;

procedure TfrmNaklIn.ibdsPrimaryTovarIncomeBodySetUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 If (Black) and (ibdsMainPrimaryTovarIncomeBLACK.Value=0) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsPrimaryTovarIncomeBodySet.InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings(ibdsPrimaryTovarIncomeBodySet.ModifySQL);
    ukDelete: ibsWhite.SQL.AddStrings(ibdsPrimaryTovarIncomeBodySet.DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   If (UpdateKind in [ukInsert, ukModify]) then
    Begin
     If (UpdateKind=ukInsert) then
      ibsWhite.ParamByName('PRIMARI_TOVAR_INCOME_BODY_ID').AsInteger := ibdsPrimaryTovarIncomeBodySetPRIMARI_TOVAR_INCOME_BODY_ID.Value;
     ibsWhite.ParamByName('ARTICUL_ID').AsInt64 := ibdsPrimaryTovarIncomeBodySetARTICUL_ID.Value;
     ibsWhite.ParamByName('PACKS_AMOUNT').Value := ibdsPrimaryTovarIncomeBodySetPACKS_AMOUNT.AsVariant;
     ibsWhite.ParamByName('PACK_VALUE').Value := ibdsPrimaryTovarIncomeBodySetPACK_VALUE.AsVariant;
     ibsWhite.ParamByName('ITEMS_AMOUNT').Value := ibdsPrimaryTovarIncomeBodySetITEMS_AMOUNT.AsVariant;
     ibsWhite.ParamByName('PRICE').Value := ibdsPrimaryTovarIncomeBodySetPRICE.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsPrimaryTovarIncomeBodySetCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsPrimaryTovarIncomeBodySetID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsPrimaryTovarIncomeBodySetID.OldValue);
   ibsWhite.ExecQuery;
   ibsWhite.Close
  End;
 UpdateAction := uaApply
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBodyBeforeDelete(
  DataSet: TDataSet);
 var BookMark : String;
begin
 If (ibdsMainPrimaryTovarIncomeCLOSED.AsInteger=1)then
  Abort;
 If (ibdsMainPrimaryTovarIncomeBodyITEM_TYPE.AsInteger=1) then
  Begin
   BookMark := ibdsMainPrimaryTovarIncomeBody.Bookmark;
   DeleteSet(ibdsPrimaryTovarIncomeBodySet,ibdsPrimaryTovarIncomeBodySetPRIMARI_TOVAR_INCOME_BODY_ID,ibdsMainPrimaryTovarIncomeBodyID.AsInteger);
   ibdsMainPrimaryTovarIncomeBody.Bookmark := BookMark
  End
end;

procedure TfrmNaklIn.tvPrimaryTovarIncomeBodyDataControllerDetailHasChildren(
  Sender: TcxDBDataController; ARecordIndex, ARelationIndex: Integer;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var HasChildren: Boolean);
begin
 HasChildren := (Sender.Values[ARecordIndex,tvPrimaryTovarIncomeBodyITEM_TYPE.Index]=1)
end;

procedure TfrmNaklIn.ibdsPrimaryTovarIncomeBodySetCalcFields(
  DataSet: TDataSet);
begin
 ibdsPrimaryTovarIncomeBodySetItogo.Value := ibdsPrimaryTovarIncomeBodySetPACKS_AMOUNT.Value*ibdsPrimaryTovarIncomeBodySetPACK_VALUE.Value+ibdsPrimaryTovarIncomeBodySetITEMS_AMOUNT.Value;
 ibdsPrimaryTovarIncomeBodySetItogoMany.Value := ibdsPrimaryTovarIncomeBodySetItogo.Value*ibdsPrimaryTovarIncomeBodySetPRICE.Value
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeBeforeDelete(
  DataSet: TDataSet);
begin
 If (ibdsMainPrimaryTovarIncomeDELETE_RIGHT.AsInteger=0) or (ibdsMainPrimaryTovarIncomeCLOSED.AsInteger=1)then
  Abort
end;

procedure TfrmNaklIn.ibdsPrimaryTovarIncomeBodySetBeforeDelete(
  DataSet: TDataSet);
begin
 If (ibdsMainPrimaryTovarIncomeCLOSED.AsInteger=1)then
  Abort
end;

procedure TfrmNaklIn.ibdsPrimary_SetupCalcFields(DataSet: TDataSet);
begin
 CalcNameWithSpecs(DataSet)
end;

procedure TfrmNaklIn.ibdsMainPrimaryTovarIncomeListSETUP_NAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
 Text := Sender.AsString;
 If (Text<>'') then
  Begin
   Case Sender.DataSet.FieldByName('REASON_TYPE').AsInteger of
    0: Text := Text+' | Расчеты по товару';
    1: Text := Text+' | Расчеты по услугам';
    2: Text := Text+' | Внутреннее перемещение';
    3: Text := Text+' | Прочее'
   end;
   Case Sender.DataSet.FieldByName('MOVEMENT_TYPE_NEW').AsInteger of
    0: Text := Text+' | Движение товара';
    1: Text := Text+' | Оплата/расчеты'
   end;
   Case Sender.DataSet.FieldByName('PAYMENT_TYPE').AsInteger of
    1: Text := Text+' | Наличные';
    2: Text := Text+' | Безналичные';
    3: Text := Text+' | Бартер';
    4: Text := Text+' | Ценные бумаги';
    5: Text := Text+' | Зачеты'
   end
  End 
end;

procedure TfrmNaklIn.dbgPrimaryTovarIncomeBodyFocusedViewChanged(
  Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
begin
 dbmComments.DataBinding.DataSource := (dbgPrimaryTovarIncomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource
end;

end.
