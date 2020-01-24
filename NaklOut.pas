unit NaklOut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, StdCtrls, ComCtrls, wwriched, wwrichedspell,
  wwdbdatetimepicker, wwdblook, Mask, wwdbedit, DBCtrls, fcLabel, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, fcText, IBSQL, IBDatabase, Db, IBCustomDataSet,
  wwcheckbox, Wwdotdot, Wwdbcomb, wwclearbuttongroup, wwradiogroup, Menus,
  Wwdbspin, Math, FR_Class, Variants, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, RzPanel, RzSplit,
  cxGridDBDataDefinitions, cxGraphics, Clipbrd, cxDBData, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar;

type
 TObjProcedure = procedure of object;

type
  TfrmNaklOut = class(TfrmLike)
    PageControl1: TPageControl;
    tsPrimaryTovarOutcomeList: TTabSheet;
    Panel1: TPanel;
    dbgPrimaryTovarOutcomeList: TwwDBGrid;
    Panel4: TPanel;
    sbCancelPrimaryTovarOutcomeList: TSpeedButton;
    sbApplyPrimaryTovarOutcomeList: TSpeedButton;
    sbDeletePrimaryTovarOutcomeList: TSpeedButton;
    sbAddPrimaryTovarOutcomeList: TSpeedButton;
    sbLastPrimaryTovarOutcomeList: TSpeedButton;
    sbNextPrimaryTovarOutcomeList: TSpeedButton;
    sbPriorPrimaryTovarOutcomeList: TSpeedButton;
    sbFirstPrimaryTovarOutcomeList: TSpeedButton;
    sbFilterPrimaryTovarOutcomeList: TSpeedButton;
    sbClose: TSpeedButton;
    sbRefreshPrimaryTovarOutcomeList: TSpeedButton;
    sbPrintPrimaryTovarOutcomeList: TSpeedButton;
    tsPrimaryTovarOutcome: TTabSheet;
    pnlTools: TPanel;
    sbCancelPrimaryTovarOutcome: TSpeedButton;
    sbApplyPrimaryTovarOutcome: TSpeedButton;
    sbDeletePrimaryTovarOutcome: TSpeedButton;
    sbAddPrimaryTovarOutcome: TSpeedButton;
    SpeedButton21: TSpeedButton;
    sbRefreshPrimaryTovarOutcome: TSpeedButton;
    sbPrintPrimaryTovarOutcome: TSpeedButton;
    tsDoverennosty: TTabSheet;
    Panel12: TPanel;
    sbCancelDoverennosty: TSpeedButton;
    sbApplyDoverennosty: TSpeedButton;
    sbDeleteDoverennosty: TSpeedButton;
    sbAddDoverennosty: TSpeedButton;
    sbLastDoverennosty: TSpeedButton;
    sbNextDoverennosty: TSpeedButton;
    sbPriorDoverennosty: TSpeedButton;
    sbFirstDoverennosty: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton34: TSpeedButton;
    sbShowComments: TSpeedButton;
    Panel2: TPanel;
    Panel5: TPanel;
    Label16: TLabel;
    wwDBEdit3: TwwDBEdit;
    Panel6: TPanel;
    Label22: TLabel;
    SpeedButton36: TSpeedButton;
    Panel7: TPanel;
    dbgDoverennosty: TwwDBGrid;
    pnlCommentsDov: TPanel;
    Label29: TLabel;
    wwDBEdit18: TwwDBEdit;
    tsPayments: TTabSheet;
    trLock: TIBTransaction;
    ibdsMainPrimaryTovarOutcomeList: TIBDataSet;
    ibdsMainPrimaryTovarOutcomeListSETUP_NAME: TIBStringField;
    ibdsMainPrimaryTovarOutcomeListNUMBER_STR: TIBStringField;
    ibdsMainPrimaryTovarOutcomeListPRIMARY_DATE: TDateField;
    ibdsMainPrimaryTovarOutcomeListMASTER_NAME: TIBStringField;
    ibdsMainPrimaryTovarOutcomeListENTERPRISE_STORE: TIBStringField;
    ibdsMainPrimaryTovarOutcomeListCONTRACTOR_NAME: TIBStringField;
    ibdsMainPrimaryTovarOutcomeListCLOSED: TIntegerField;
    ibdsMainPrimaryTovarOutcomeListBLACK: TIntegerField;
    ibdsMainPrimaryTovarOutcomeListID: TLargeintField;
    ibdsMainPrimaryTovarOutcome: TIBDataSet;
    ibdsMainPrimaryTovarOutcomeID: TLargeintField;
    ibdsMainPrimaryTovarOutcomePARENT_TYPE: TIntegerField;
    ibdsMainPrimaryTovarOutcomePARENT_ID: TLargeintField;
    ibdsMainPrimaryTovarOutcomePRIMARY_SETUP_ID: TLargeintField;
    ibdsMainPrimaryTovarOutcomeNUMBER_FORMAT: TIntegerField;
    ibdsMainPrimaryTovarOutcomeNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsMainPrimaryTovarOutcomePRICE_FORMULA: TIBStringField;
    ibdsMainPrimaryTovarOutcomeMASTER_ID: TLargeintField;
    ibdsMainPrimaryTovarOutcomeSECURITY_LEVEL: TIntegerField;
    ibdsMainPrimaryTovarOutcomeNUMBER_PREFIX: TIBStringField;
    ibdsMainPrimaryTovarOutcomeNUMBER: TIntegerField;
    ibdsMainPrimaryTovarOutcomeNUMBER_SUFFIX: TIBStringField;
    ibdsMainPrimaryTovarOutcomePRIMARY_DATE: TDateField;
    ibdsMainPrimaryTovarOutcomeENTERPRISE_ID: TLargeintField;
    ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID: TLargeintField;
    ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID: TLargeintField;
    ibdsMainPrimaryTovarOutcomeCURRENCY_ID: TLargeintField;
    ibdsMainPrimaryTovarOutcomeCURRENCY_RATE: TFloatField;
    ibdsMainPrimaryTovarOutcomeCLOSED: TIntegerField;
    ibdsMainPrimaryTovarOutcomeBLACK: TIntegerField;
    ibdsMainPrimaryTovarOutcomeCOMMENTS: TIBStringField;
    ibdsMainPrimaryTovarOutcomeNumber_Str: TStringField;
    ibdsMainPrimaryTovarOutcomeFAKE: TIntegerField;
    ibdsMainPrimaryTovarOutcomeBody: TIBDataSet;
    ibdsMainPrimaryTovarOutcomeBodyARTICUL: TIBStringField;
    ibdsMainPrimaryTovarOutcomeBodyARTICUL_NAME: TIBStringField;
    ibdsMainPrimaryTovarOutcomeBodyMADE_IN: TIBStringField;
    ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT: TIntegerField;
    ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE: TFloatField;
    ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT: TFloatField;
    ibdsMainPrimaryTovarOutcomeBodyItogo: TFloatField;
    ibdsMainPrimaryTovarOutcomeBodyMAIN_LEAVINGS_TOTAL: TFloatField;
    ibdsMainPrimaryTovarOutcomeBodyADDITIONAL_LEAVINGS_TOTAL: TFloatField;
    ibdsMainPrimaryTovarOutcomeBodyPRICE: TFloatField;
    ibdsMainPrimaryTovarOutcomeBodyItogoMany: TFloatField;
    ibdsMainPrimaryTovarOutcomeBodyLABEL: TIBStringField;
    ibdsMainPrimaryTovarOutcomeBodyDECLARATION_NUMBER: TIBStringField;
    ibdsMainPrimaryTovarOutcomeBodyCOUNTRY_NAME: TIBStringField;
    ibdsMainPrimaryTovarOutcomeBodyID: TLargeintField;
    ibdsMainPrimaryTovarOutcomeBodyUNITS: TIBStringField;
    ibdsMainPrimaryTovarOutcomeBodyNDS: TFloatField;
    ibdsMainPrimaryTovarOutcomeBodyITOGOMANYOLD: TFloatField;
    dsMainPrimaryTovarOutcomeBody: TDataSource;
    dsMainPrimaryTovarOutcome: TDataSource;
    dsMainPrimaryTovarOutcomeList: TDataSource;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesNAME: TIBStringField;
    ibdsEnterprisesID: TLargeintField;
    dsEnterprises: TDataSource;
    ibdsEnterpriseStores: TIBDataSet;
    ibdsEnterpriseStoresNAME: TIBStringField;
    ibdsEnterpriseStoresID: TLargeintField;
    dsMadeIn: TDataSource;
    ibdsMadeIn: TIBDataSet;
    ibdsMadeInMADE_IN: TIBStringField;
    ibdsPersons: TIBDataSet;
    ibdsPersonsID: TLargeintField;
    ibdsPrimary_Setup: TIBDataSet;
    ibdsPrimary_SetupNAME: TIBStringField;
    ibdsPrimary_SetupID: TLargeintField;
    ibdsPrimary_SetupINVOICE_ID_DEFAULT: TLargeintField;
    ibdsPrimary_SetupNUMBER_PREFIX: TIBStringField;
    ibdsPrimary_SetupNUMBER_FORMAT: TIntegerField;
    ibdsPrimary_SetupNUMBER_SUFFIX: TIBStringField;
    ibdsPrimary_SetupNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsPrimary_SetupBLACK_DEFAULT: TIntegerField;
    ibdsPrimary_SetupSECURITY_LEVEL: TIntegerField;
    ibdsPrimary_SetupCURRENCY_ID_DEFAULT: TLargeintField;
    ibdsPrimary_SetupTAKE_NSP: TIntegerField;
    ibdsPrimary_SetupBLACK: TIntegerField;
    ibdsCountries: TIBDataSet;
    ibdsCountriesNAME: TIBStringField;
    ibdsContractors: TIBDataSet;
    ibdsContractorsNAME: TIBStringField;
    ibdsContractorsID: TLargeintField;
    ibdsCurrency: TIBDataSet;
    ibdsCurrencyNAME: TIBStringField;
    ibdsCurrencyID: TLargeintField;
    ibdsCurrencySYMBOL: TIBStringField;
    ibdsCurrencyDECIMALS_OUT: TSmallintField;
    ibdsCurrencyNAME1: TIBStringField;
    ibdsCurrencyNAME3: TIBStringField;
    ibdsCurrencyNAME5: TIBStringField;
    ibdsCurrencyNAME001: TIBStringField;
    ibdsCurrencyCURRENT_RATE: TFloatField;
    ibsWhite: TIBSQL;
    ibsNumb: TIBSQL;
    ibsAux: TIBSQL;
    ibdsMainPrimaryTovarOutcomeBodyPRIMARY_TOVAR_OUTCOME_HEADER_ID: TLargeintField;
    ibdsMainPrimaryTovarOutcomeBodyPRICE_REFERENCE: TFloatField;
    ibdsMainPrimaryTovarOutcomeBodyPERCENT: TFloatField;
    Label23: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    Label25: TLabel;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    Label26: TLabel;
    wwDBLookupCombo12: TwwDBLookupCombo;
    wwCheckBox3: TwwCheckBox;
    Label30: TLabel;
    wwDBLookupCombo13: TwwDBLookupCombo;
    Label31: TLabel;
    fcContract: TfcLabel;
    Label27: TLabel;
    wwDBEdit9: TwwDBEdit;
    dbcbBlack: TwwCheckBox;
    Label3: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label32: TLabel;
    wwDBLookupCombo15: TwwDBLookupCombo;
    Label34: TLabel;
    wwDBLookupCombo16: TwwDBLookupCombo;
    Label36: TLabel;
    wwDBLookupCombo18: TwwDBLookupCombo;
    Label37: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label4: TLabel;
    dbeTovar: TwwDBEdit;
    Label7: TLabel;
    dbeNDS: TwwDBEdit;
    Label10: TLabel;
    dbeItogo: TwwDBEdit;
    wwRadioGroup1: TwwRadioGroup;
    ibdsMainPrimaryTovarOutcomePERCENT: TFloatField;
    ibdsMainPrimaryTovarOutcomeDOVERENNOST_ID: TLargeintField;
    ibdsMainPrimaryTovarOutcomeIS_NAKL: TIntegerField;
    wwDBLookupCombo2: TwwDBLookupCombo;
    pmParent: TPopupMenu;
    pmParentInvoiceOut: TMenuItem;
    N4: TMenuItem;
    pmParentSelf: TMenuItem;
    pnlNumber: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBEdit11: TwwDBEdit;
    pnlMessage: TPanel;
    ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE: TFloatField;
    ibdsMainPrimaryTovarOutcomeTAKE_NSP: TIntegerField;
    fcReCalc: TfcLabel;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    ibdsDoverennosty: TIBDataSet;
    ibdsDoverennostyID: TLargeintField;
    ibdsDoverennostyENTERPRISE_ID: TLargeintField;
    ibdsDoverennostyCONTRACTOR_ID: TLargeintField;
    ibdsDoverennostyNUMBER: TIBStringField;
    ibdsDoverennostyDATE_START: TDateField;
    ibdsDoverennostyDATE_VALID: TDateField;
    ibdsDoverennostyDOCUMENT: TIBStringField;
    ibdsDoverennostyNAME: TIBStringField;
    ibdsDoverennostyCOMMENTS: TIBStringField;
    dsDoverennosty: TDataSource;
    PopupMenu4: TPopupMenu;
    N5: TMenuItem;
    ibdsPrimary_SetupPRICE_FORMULA: TIBStringField;
    pmParentInvoiceIn: TMenuItem;
    ibdsMainPrimaryTovarOutcomeListCONTRACTOR_ID: TLargeintField;
    ibdsMainPrimaryTovarOutcomeListAMOUNT: TFloatField;
    ibdsMainPrimaryTovarOutcomeListSYMBOL: TIBStringField;
    ibdsMainPrimaryTovarOutcomeListDECIMALS: TSmallintField;
    ibdsMainPrimaryTovarOutcomeListAMOUNT_FMT: TStringField;
    sbFactura: TSpeedButton;
    ibdsFactura: TIBDataSet;
    ibdsFacturaNUMBER_PREFIX: TIBStringField;
    ibdsFacturaNUMBER: TIntegerField;
    ibdsFacturaNUMBER_SUFFIX: TIBStringField;
    ibdsFacturaFACTURA_DATE: TDateField;
    ibdsFacturaID: TLargeintField;
    ibdsFacturaPARENT_TYPE: TIntegerField;
    ibdsFacturaPARENT_ID: TLargeintField;
    dsFactura: TDataSource;
    pnlFactura: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    sbApplyFactura: TSpeedButton;
    sbCancelFactura: TSpeedButton;
    Label13: TLabel;
    SpeedButton4: TSpeedButton;
    dbePefix: TwwDBEdit;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    ibdsReportHeader: TIBDataSet;
    ibdsReportHeaderAMOUNT: TFloatField;
    ibdsReportHeaderAMOUNT_PROP: TStringField;
    ibdsReportHeaderAMOUNT_FRAC_PROP: TStringField;
    ibdsReportBody: TIBDataSet;
    ibdsReportBodyNDS_AMOUNT: TFloatField;
    ibdsReportHeaderENTERPRISE_NAME: TIBStringField;
    ibdsReportHeaderADDRESS: TIBStringField;
    ibdsReportHeaderPHONE: TIBStringField;
    ibdsReportHeaderNUMBER_STR: TIBStringField;
    ibdsReportHeaderPRIMARY_DATE: TDateField;
    ibdsReportHeaderCONTRACTOR_NAME: TIBStringField;
    ibdsReportHeaderMASTER_NAME: TIBStringField;
    ibdsReportHeaderCURRENCY_NAME: TIBStringField;
    ibdsReportHeaderDECIMALS_IN: TSmallintField;
    ibdsReportHeaderDECIMALS_OUT: TSmallintField;
    ibdsReportHeaderSYMBOL: TIBStringField;
    ibdsReportHeaderNAME1: TIBStringField;
    ibdsReportHeaderNAME3: TIBStringField;
    ibdsReportHeaderNAME5: TIBStringField;
    ibdsReportHeaderNAME001: TIBStringField;
    ibdsReportHeaderCURRENCY_RATE: TFloatField;
    ibdsReportHeaderSETUP_NAME: TIBStringField;
    ibdsReportHeaderSTORE_NAME: TIBStringField;
    ibdsReportBodyARTICUL_NAME: TIBStringField;
    ibdsReportBodyMADE_IN: TIBStringField;
    ibdsReportBodyUNITS: TIBStringField;
    ibdsReportBodyAMOUNT: TFloatField;
    ibdsReportBodyPRICE: TFloatField;
    ibdsReportBodyNDS: TFloatField;
    ibdsReportHeaderTAKE_NSP: TIntegerField;
    ibdsReportBodyNSP_AMOUNT: TFloatField;
    ibdsContractorsPRIVATE: TIntegerField;
    ibdsReportHeaderPRIVATE: TIntegerField;
    ibdsReportHeaderDOVERENNOST_PERSON: TStringField;
    ibdsReportHeaderDOVERENNOST_NUMBER: TStringField;
    ibdsReportHeaderDOVERENNOST_ID: TLargeintField;
    ibdsReportBodyDECLARATION_NUMBER: TIBStringField;
    ibdsReportBodyCOUNTRY_ID: TLargeintField;
    ibdsReportBodyCOUNTRY_NAME: TStringField;
    ibdsReportBodyDECLARATION_NUMBER_FULL: TStringField;
    ibdsReportHeaderENTERPRISE_INN: TIBStringField;
    ibdsReportHeaderCONTRACTOR_ADDRESS: TIBStringField;
    ibdsReportHeaderCONTRACTOR_INN: TIBStringField;
    ibdsReportHeaderFACTURA_NUMBER: TStringField;
    ibdsReportHeaderFACTURA_DATE: TDateField;
    ibdsContractorsPRICE_PERCENT: TFloatField;
    Label14: TLabel;
    ibdsReportHeaderCONTRACTOR_UR_ADDRESS: TIBStringField;
    PopupMenu6: TPopupMenu;
    N13: TMenuItem;
    ibdsMainPrimaryTovarOutcomeCONTRACTOR_NAME: TIBStringField;
    pnlText: TPanel;
    lblFilter: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
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
    cbBlack: TwwCheckBox;
    cbWhite: TwwCheckBox;
    cbClosed: TwwCheckBox;
    ibdsFilterPersons: TIBDataSet;
    ibdsFilterPersonsID: TLargeintField;
    ibdsFilterPersonsNAME: TIBStringField;
    ibdsFilterTypes: TIBDataSet;
    ibdsFilterTypesID: TLargeintField;
    ibdsFilterTypesNAME: TIBStringField;
    ibdsFilterArticuls: TIBDataSet;
    ibdsFilterArticulsID: TLargeintField;
    ibdsFilterArticulsNAME: TIBStringField;
    cbReal: TwwCheckBox;
    cbFake: TwwCheckBox;
    N7: TMenuItem;
    N01: TMenuItem;
    cbContractorType: TwwCheckBox;
    edContractorType: TwwDBLookupCombo;
    ibdsFilterContractorTypes: TIBDataSet;
    ibdsFilterContractorTypesID: TLargeintField;
    ibdsFilterContractorTypesNAME: TIBStringField;
    dbgPrimaryTovarOutcomeListIButton: TwwIButton;
    ibdsMainPrimaryTovarOutcomeListDELETE_RIGHT: TIntegerField;
    ibdsMainPrimaryTovarOutcomeUPDATE_RIGHT: TIntegerField;
    ibdsMainPrimaryTovarOutcomeDELETE_RIGHT: TIntegerField;
    ibdsMainPrimaryTovarOutcomeCLOSE_RIGHT: TIntegerField;
    N1: TMenuItem;
    ibdsPersonsVALID: TIntegerField;
    ibdsPrimary_SetupCREATE_RIGHT: TIntegerField;
    ibdsPrimary_SetupFAKE_RIGHT: TIntegerField;
    ibdsPrimary_SetupMOVEMENT_TYPE: TIntegerField;
    ibdsEnterprisesVALID: TIntegerField;
    ibdsEnterpriseStoresVALID: TIntegerField;
    ibdsCurrencyVALID: TIntegerField;
    N2: TMenuItem;
    miSerials: TMenuItem;
    ibdsSerials_Available: TIBDataSet;
    dsSerials_Available: TDataSource;
    ibdsSerials_AvailableID: TLargeintField;
    ibdsSerials_AvailableSTROKE_CODE: TIBStringField;
    ibdsSerials_AvailableLOCAL_STROKE_CODE: TIBStringField;
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
    ibdsSerials_OutCome: TIBDataSet;
    dsSerials_OutCome: TDataSource;
    ibdsSerials_OutComeSERIAL_ID: TLargeintField;
    ibdsSerials_OutComePRIMARY_TOVAR_OUTCOME_BODY_ID: TLargeintField;
    ibdsSerials_OutComeSTROKE_CODE: TIBStringField;
    ibdsSerials_OutComeLOCAL_STROKE_CODE: TIBStringField;
    miSerialsCopy: TMenuItem;
    dbgPrimaryTovarOutcomeBody: TcxGrid;
    cxGridPopupMenu1: TcxGridPopupMenu;
    glPrimaryTovarOutcomeBody: TcxGridLevel;
    tvPrimaryTovarOutcomeBody: TcxGridDBTableView;
    tvPrimaryTovarOutcomeBodyARTICUL: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyPACKS_AMOUNT: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyPACK_VALUE: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyITEMS_AMOUNT: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyItogo: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyMAIN_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyADDITIONAL_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyPERCENT: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyLAST_BUY_PRICE: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyPRICE: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyItogoMany: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyLABEL: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyDECLARATION_NUMBER: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyCOUNTRY_ID: TcxGridDBColumn;
    tvPrimaryTovarOutcomeBodyARTICUL_ID: TcxGridDBColumn;
    pnlComments: TRzSizePanel;
    Label39: TLabel;
    dbmComments: TcxDBMemo;
    dsCountries: TDataSource;
    ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID: TIntegerField;
    ibdsMainPrimaryTovarOutcomeBodyCOUNTRY_ID: TIntegerField;
    ibdsCountriesID: TLargeintField;
    ibdsPrimaryTovarOutcomeBodySet: TIBDataSet;
    ibdsPrimaryTovarOutcomeBodySetID: TLargeintField;
    ibdsPrimaryTovarOutcomeBodySetARTICUL_ID: TIntegerField;
    ibdsPrimaryTovarOutcomeBodySetARTICUL: TIBStringField;
    ibdsPrimaryTovarOutcomeBodySetARTICUL_NAME: TIBStringField;
    ibdsPrimaryTovarOutcomeBodySetUNITS: TIBStringField;
    ibdsPrimaryTovarOutcomeBodySetPACKS_AMOUNT: TIntegerField;
    ibdsPrimaryTovarOutcomeBodySetPACK_VALUE: TFloatField;
    ibdsPrimaryTovarOutcomeBodySetITEMS_AMOUNT: TFloatField;
    ibdsPrimaryTovarOutcomeBodySetPRICE: TFloatField;
    ibdsPrimaryTovarOutcomeBodySetLAST_BUY_PRICE: TFloatField;
    ibdsPrimaryTovarOutcomeBodySetMAIN_LEAVINGS_TOTAL: TFloatField;
    ibdsPrimaryTovarOutcomeBodySetADDITIONAL_LEAVINGS_TOTAL: TFloatField;
    ibdsPrimaryTovarOutcomeBodySetCOMMENTS: TIBStringField;
    dsPrimaryTovarOutcomeBodySet: TDataSource;
    ibdsPrimaryTovarOutcomeBodySetPRIMARY_TOVAR_OUTCOME_BODY_ID: TIntegerField;
    ibdsPrimaryTovarOutcomeBodySetPRICE_REFERENCE: TFloatField;
    ibdsPrimaryTovarOutcomeBodySetCOUNTRY_ID: TLargeintField;
    ibdsPrimaryTovarOutcomeBodySetDECLARATION_NUMBER: TIBStringField;
    tvPrimaryTovarOutcomeBodyITEM_TYPE: TcxGridDBColumn;
    ibdsMainPrimaryTovarOutcomeBodyITEM_TYPE: TIntegerField;
    glSets: TcxGridLevel;
    tvSets: TcxGridDBTableView;
    tvSetsARTICUL_ID: TcxGridDBColumn;
    tvSetsARTICUL: TcxGridDBColumn;
    tvSetsPACKS_AMOUNT: TcxGridDBColumn;
    tvSetsPACK_VALUE: TcxGridDBColumn;
    tvSetsITEMS_AMOUNT: TcxGridDBColumn;
    tvSetsPRICE: TcxGridDBColumn;
    tvSetsLAST_BUY_PRICE: TcxGridDBColumn;
    tvSetsMAIN_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvSetsADDITIONAL_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvSetsCOMMENTS: TcxGridDBColumn;
    ibdsPrimaryTovarOutcomeBodySetItogo: TFloatField;
    ibdsPrimaryTovarOutcomeBodySetItogoMany: TFloatField;
    tvSetsItogo: TcxGridDBColumn;
    tvSetsItogoMany: TcxGridDBColumn;
    ibdsMainPrimaryTovarOutcomeBodyCRC32_SET: TIntegerField;
    ibdsReportHeaderBOSS_SURNAME: TIBStringField;
    ibdsReportHeaderBOSS_NAME: TIBStringField;
    ibdsReportHeaderBOSS_SECOND_NAME: TIBStringField;
    ibdsReportHeaderCHIEF_ACCOUNTANT_SURNAME: TIBStringField;
    ibdsReportHeaderCHIEF_ACCOUNTANT_NAME: TIBStringField;
    ibdsReportHeaderCHIEF_ACCOUNTANT_SECOND_NAME: TIBStringField;
    ibdsPrimary_SetupNAME_WITH_SPECS: TStringField;
    ibdsPrimary_SetupREASON_TYPE: TIntegerField;
    ibdsPrimary_SetupMOVEMENT_TYPE_NEW: TIntegerField;
    ibdsPrimary_SetupPAYMENT_TYPE: TIntegerField;
    ibdsMainPrimaryTovarOutcomeBodyCOMMENTS: TIBStringField;
    tvPrimaryTovarOutcomeBodyGUARANTEE_PERIOD_STR: TcxGridDBColumn;
    ibdsReportHeaderCLOSE_DATE: TDateField;
    ibdsReportBodyID: TLargeintField;
    ibdsFilterTypesREASON_TYPE: TIntegerField;
    ibdsFilterTypesMOVEMENT_TYPE_NEW: TIntegerField;
    ibdsFilterTypesPAYMENT_TYPE: TIntegerField;
    ibdsFilterTypesNAME_WITH_SPECS: TStringField;
    ibdsMainPrimaryTovarOutcomeListREASON_TYPE: TIntegerField;
    ibdsMainPrimaryTovarOutcomeListMOVEMENT_TYPE_NEW: TIntegerField;
    ibdsMainPrimaryTovarOutcomeListPAYMENT_TYPE: TIntegerField;
    ibdsMainPrimaryTovarOutcomeBodyGUARANTEE_PERIOD_STR: TIBStringField;
    ibdsReportBodyGUARANTEE_PERIOD_STR: TIBStringField;
    ibdsReportHeaderENTERPRISE_KPP: TIBStringField;
    ibdsReportHeaderCONTRACTOR_KPP: TIBStringField;
    tvPrimaryTovarOutcomeBodyCOMMENTS: TcxGridDBColumn;
    ibdsPersonsNAME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure fcLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure fcLabel1MouseEnter(Sender: TObject);
    procedure fcLabel1MouseLeave(Sender: TObject);
    procedure fcLabel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbShowCommentsClick(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure ibdsMainPrimaryTovarOutcomeListAfterScroll(
      DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeListUpdateRecord(
      DataSet: TDataSet; UpdateKind: TUpdateKind;
      var UpdateAction: TIBUpdateAction);
    procedure sbAddPrimaryTovarOutcomeListClick(Sender: TObject);
    procedure sbDeletePrimaryTovarOutcomeListClick(Sender: TObject);
    procedure sbApplyPrimaryTovarOutcomeListClick(Sender: TObject);
    procedure sbCancelPrimaryTovarOutcomeListClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarOutcomeCalcFields(DataSet: TDataSet);
    procedure wwDBComboBox2DropDown(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo18CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainPrimaryTovarOutcomeAfterOpen(DataSet: TDataSet);
    procedure sbFirstPrimaryTovarOutcomeListClick(Sender: TObject);
    procedure sbPriorPrimaryTovarOutcomeListClick(Sender: TObject);
    procedure sbNextPrimaryTovarOutcomeListClick(Sender: TObject);
    procedure sbLastPrimaryTovarOutcomeListClick(Sender: TObject);
    procedure dsMainPrimaryTovarOutcomeListStateChange(Sender: TObject);
    procedure dbgPrimaryTovarOutcomeListCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgPrimaryTovarOutcomeListCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure dbgPrimaryTovarOutcomeListTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure sbDeletePrimaryTovarOutcomeClick(Sender: TObject);
    procedure sbAddPrimaryTovarOutcomeClick(Sender: TObject);
    procedure sbCancelPrimaryTovarOutcomeClick(Sender: TObject);
    procedure sbApplyPrimaryTovarOutcomeClick(Sender: TObject);
    procedure dsMainPrimaryTovarOutcomeBodyStateChange(Sender: TObject);
    procedure ibdsMainPrimaryTovarOutcomeUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainPrimaryTovarOutcomeBodyUpdateRecord(
      DataSet: TDataSet; UpdateKind: TUpdateKind;
      var UpdateAction: TIBUpdateAction);
    procedure ibdsMainPrimaryTovarOutcomeNewRecord(DataSet: TDataSet);
    procedure tsPrimaryTovarOutcomeShow(Sender: TObject);
    procedure ibdsMainPrimaryTovarOutcomeBodyNewRecord(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomePARENT_IDChange(Sender: TField);
    procedure pmParentSelfClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarOutcomeBodyARTICUL_IDChange(
      Sender: TField);
    procedure ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_IDChange(
      Sender: TField);
    procedure ibdsMainPrimaryTovarOutcomeBodyAfterOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeBodyCalcFields(DataSet: TDataSet);
    procedure dbgPrimaryTovarOutcomeListCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ibdsMadeInBeforeOpen(DataSet: TDataSet);
    procedure ibdsCurrencyBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeBodyARTICULChange(Sender: TField);
    procedure pmParentInvoiceOutClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarOutcomeBodyBeforeOpen(DataSet: TDataSet);
    procedure ibdsEnterpriseStoresBeforeOpen(DataSet: TDataSet);
    procedure ibdsPersonsBeforeOpen(DataSet: TDataSet);
    procedure ibdsPrimary_SetupBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeENTERPRISE_IDChange(
      Sender: TField);
    procedure ibdsMainPrimaryTovarOutcomeBodyBeforePost(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeCURRENCY_RATEChange(
      Sender: TField);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure ibdsMainPrimaryTovarOutcomeBodyPRICEChange(Sender: TField);
    procedure sbFirstDoverennostyClick(Sender: TObject);
    procedure sbPriorDoverennostyClick(Sender: TObject);
    procedure sbNextDoverennostyClick(Sender: TObject);
    procedure sbLastDoverennostyClick(Sender: TObject);
    procedure sbAddDoverennostyClick(Sender: TObject);
    procedure sbDeleteDoverennostyClick(Sender: TObject);
    procedure sbApplyDoverennostyClick(Sender: TObject);
    procedure sbCancelDoverennostyClick(Sender: TObject);
    procedure dsDoverennostyStateChange(Sender: TObject);
    procedure ibdsDoverennostyNewRecord(DataSet: TDataSet);
    procedure ibdsDoverennostyUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsDoverennostyBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeIS_NAKLChange(Sender: TField);
    procedure ibdsMainPrimaryTovarOutcomeCONTRACTOR_IDChange(
      Sender: TField);
    procedure wwRadioGroup1Change(Sender: TObject);
    procedure ibdsDoverennostyAfterOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeDOVERENNOST_IDChange(
      Sender: TField);
    procedure N5Click(Sender: TObject);
    procedure dbgPrimaryTovarOutcomeListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsMainPrimaryTovarOutcomeListCalcFields(DataSet: TDataSet);
    procedure sbFacturaClick(Sender: TObject);
    procedure dsFacturaStateChange(Sender: TObject);
    procedure sbApplyFacturaClick(Sender: TObject);
    procedure ibdsFacturaUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure sbCancelFacturaClick(Sender: TObject);
    procedure ibdsReportHeaderCalcFields(DataSet: TDataSet);
    procedure sbPrintPrimaryTovarOutcomeClick(Sender: TObject);
    procedure ibdsReportBodyCalcFields(DataSet: TDataSet);
    procedure wwDBLookupCombo16KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N13Click(Sender: TObject);
    procedure wwDBLookupCombo16CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsFilterPersonsAfterOpen(DataSet: TDataSet);
    procedure ibdsFilterPersonsBeforeClose(DataSet: TDataSet);
    procedure sbFilterPrimaryTovarOutcomeListClick(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure cbContractorClick(Sender: TObject);
    procedure cbOpenClick(Sender: TObject);
    procedure cbBlackClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure edContractorChange(Sender: TObject);
    procedure edPrefixChange(Sender: TObject);
    procedure edNumberChange(Sender: TObject);
    procedure edSuffixChange(Sender: TObject);
    procedure edAmountChange(Sender: TObject);
    procedure sbRefreshPrimaryTovarOutcomeListClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbFakeClick(Sender: TObject);
    procedure wwDBLookupCombo1BeforeDropDown(Sender: TObject);
    procedure dbgPrimaryTovarOutcomeListCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure ibdsMainPrimaryTovarOutcomeListAfterDelete(
      DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeAfterDelete(DataSet: TDataSet);
    procedure ibdsDoverennostyAfterDelete(DataSet: TDataSet);
    procedure N7Click(Sender: TObject);
    procedure N01Click(Sender: TObject);
    procedure dbgPrimaryTovarOutcomeListUpdateFooter(Sender: TObject);
    procedure dbgPrimaryTovarOutcomeListIButtonClick(Sender: TObject);
    procedure ibdsMainPrimaryTovarOutcomeListBeforeOpen(DataSet: TDataSet);
    procedure ibdsFilterTypesBeforeOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure wwDBLookupCombo13BeforeDropDown(Sender: TObject);
    procedure wwDBLookupCombo13CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsPersonsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsPrimary_SetupFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure wwDBLookupCombo12BeforeDropDown(Sender: TObject);
    procedure wwDBLookupCombo12CloseUp(Sender: TObject; LookupTable,
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
    procedure ibdsMainPrimaryTovarOutcomeSECURITY_LEVELChange(
      Sender: TField);
    procedure miSerialsClick(Sender: TObject);
    procedure sbSerialsCloseClick(Sender: TObject);
    procedure ibdsSerials_AvailableBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeBodyBeforeClose(
      DataSet: TDataSet);
    procedure pnlSerialsResize(Sender: TObject);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgDocKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgAvailableEnter(Sender: TObject);
    procedure sbToAvailableClick(Sender: TObject);
    procedure sbToDocClick(Sender: TObject);
    procedure pnlSplitterMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edSearchAvailableKeyPress(Sender: TObject; var Key: Char);
    procedure ibdsSerials_AvailableFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsSerials_OutComeFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsSerials_OutComeNewRecord(DataSet: TDataSet);
    procedure edSearchDocKeyPress(Sender: TObject; var Key: Char);
    procedure ibdsMainPrimaryTovarOutcomeBodyAfterScroll(
      DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeBodyCOUNTRY_IDChange(
      Sender: TField);
    procedure tvPrimaryTovarOutcomeBodyCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tvPrimaryTovarOutcomeBodyCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure tvPrimaryTovarOutcomeBodyEditing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlCommentsHotSpotClick(Sender: TObject);
    procedure dbgPrimaryTovarOutcomeBodyEnter(Sender: TObject);
    procedure Panel5Enter(Sender: TObject);
    procedure tvPrimaryTovarOutcomeBodyFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvPrimaryTovarOutcomeBodyKeyUp(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure ibdsPrimaryTovarOutcomeBodySetBeforeOpen(DataSet: TDataSet);
    procedure ibdsPrimaryTovarOutcomeBodySetNewRecord(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeBodyBeforeDelete(
      DataSet: TDataSet);
    procedure tvPrimaryTovarOutcomeBodyDataControllerDetailHasChildren(
      Sender: TcxDBDataController; ARecordIndex, ARelationIndex: Integer;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var HasChildren: Boolean);
    procedure ibdsPrimaryTovarOutcomeBodySetCalcFields(DataSet: TDataSet);
    procedure ibdsMainPrimaryTovarOutcomeBeforeDelete(DataSet: TDataSet);
    procedure ibdsPrimaryTovarOutcomeBodySetBeforeDelete(
      DataSet: TDataSet);
    procedure ibdsPrimary_SetupCalcFields(DataSet: TDataSet);
    procedure dbgPrimaryTovarOutcomeBodyFocusedViewChanged(
      Sender: TcxCustomGrid; APrevFocusedView,
      AFocusedView: TcxCustomGridView);
    procedure ibdsMainPrimaryTovarOutcomeListSETUP_NAMEGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ibdsMainPrimaryTovarOutcomeBodyGUARANTEE_PERIOD_STRValidate(
      Sender: TField);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereMainPrimaryTovarOutcomeList: String;
    procedure GenerateSelectMainPrimaryTovarOutcomeList;
    procedure GenerateSelectMainPrimaryTovarOutcome;
    procedure GenerateSelectPrimaryTovarOutcomeSetup;
    procedure GenerateSelectDoverennosty;
    procedure SetInvoiceID;
    procedure ArticulSetBodyArticulID;
    procedure ArticulInsertBodyArticulID;
    procedure TovarSetBodyArticulID;
    procedure TovarInsertBodyArticulID;
    procedure SetCurrencyFmt;
    procedure GetTotalMany;
    procedure ShowDoverennosty(Is_Show : Boolean);
    procedure SetContractor;
    procedure SetReadOnly;
    function CountUpDocumentSerials(PrimaryTovarBodyID : Largeint): Integer;
    procedure SetSerialsPosition(Rect : TRect);
    procedure frReportGetValue(const ParName: String; var ParValue: Variant);
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
    Cloning : Boolean;
  end;

var
  frmNaklOut: TfrmNaklOut;

implementation

uses DM, Misk, Invoice, Articuls, Main, Tovar, KontrAgList,
  GoodInfo, LastBuyPrice;

{$R *.DFM}

var
  OrderByMainPrimaryTovarOutcomeList  : String = ' 5 asc, 4 desc, 3 asc, 7 asc';
  WhereSqlMainPrimaryTovarOutcomeList : String = '';

  OrderByDoverennosty  : String = ' 6 desc';

  NumberPrefix, NumberSuffix : String;
  TotalMany, NDS, OldCurrencyRate : Double;
  CurrencyRoundPower : Integer;

  Contractor, Meneger, IType, IContractorType, ArticulName : String;
  DateStart, DateStop : TDate;

  MainPrimaryTovarOutcomeListBookMark, MainPrimaryTovarOutcomeListPriorBookMark : String;

  Parent_Closed : Boolean = False;

  FilteredRecordCount : Integer;

  Saving : Boolean = False;

procedure TfrmNaklOut.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
     ActivePage: TTabSheet;
begin
 If (frmNaklOut<>nil) then
  Begin
   ActivePage := PageControl1.ActivePage;
   For k := 0 to Pred(frmNaklOut.ComponentCount) do
    Begin
     If (Components[k].Name='sbApply'+Suf) or
        (Components[k].Name='sbCancel'+Suf) then
      (Components[k] as TControl).Enabled := Enabled;
     If (Components[k].Name='sbPrint'+Suf) then
      (Components[k] as TControl).Enabled := NOT Enabled;
     If (Components[k] is TTabSheet) and
        (Components[k].Name<>'ts'+Suf) then
      (Components[k] as TTabSheet).TabVisible := NOT Enabled
    End;
   If (Suf='PrimaryTovarOutcome') then
    If (Black) then
     sbFactura.Visible := (NOT Enabled) and (ibdsMainPrimaryTovarOutcomeBLACK.AsInteger=0) and (ibdsMainPrimaryTovarOutcomeIS_NAKL.AsInteger=1)
    else
     sbFactura.Visible := (NOT Enabled) and (ibdsMainPrimaryTovarOutcomeIS_NAKL.AsInteger=1);
   PageControl1.ActivePage := ActivePage
  End
end;

function TfrmNaklOut.GetWhereMainPrimaryTovarOutcomeList: String;
begin
 Result := '';
 If (sbFilterPrimaryTovarOutcomeList.Down) then
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
     Result := Result+'and (PTOH.SALDO_MANY>0.001) ';
     lblFilter.Caption := lblFilter.Caption+'Есть оплата; '
    End;
   If (cbType.Checked) then
    Begin
     Result := Result+'and (PS.ID='+ibdsFilterTypesID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Тип: '+edType.Text+'; '
    End;
   If (cbContractorType.State in [cbChecked, cbGrayed]) then
    Begin
     If (cbContractorType.State=cbGrayed) then
      Begin
       Result := Result+'and NOT(CNTR.ID in (select CTI.CONTRACTOR_ID from CONTRACTOR_TYPES_INCLUDE CTI where (CTI.TYPE_ID='+ibdsFilterContractorTypesID.AsString+'))) ';
       lblFilter.Caption := lblFilter.Caption+'Тип контрагентов НЕ: '+edContractorType.Text+'; '
      End
     else
      Begin
       Result := Result+'and (CNTR.ID in (select CTI.CONTRACTOR_ID from CONTRACTOR_TYPES_INCLUDE CTI where (CTI.TYPE_ID='+ibdsFilterContractorTypesID.AsString+'))) ';
       lblFilter.Caption := lblFilter.Caption+'Тип контрагентов: '+edContractorType.Text+'; '
      End
    End;
   If (cbPeriod.Checked) and (deDateStart.Text<>'') and (deDateStop.Text<>'') then
    Begin
     Result := Result+'and (PTOH.PRIMARY_DATE>='#39+deDateStart.Text+#39') and (PTOH.PRIMARY_DATE<='#39+deDateStop.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'За период с '+deDateStart.Text+' по '+deDateStop.Text+'; '
    End;
   If (cbArticuls.Checked) then
    Begin
     Result := Result+'and (PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID=PTOH.ID) and (PTOB.ARTICUL_ID='+ibdsFilterArticulsID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Включающие товар: '+edArticul.Text+'; '
    End;
   If (cbOpen.Checked) then
    Begin
     Result := Result+'and (PTOH.CLOSED=0) ';
     lblFilter.Caption := lblFilter.Caption+'Открытые; '
    End;
   If (cbClosed.Checked) then
    Begin
     Result := Result+'and (PTOH.CLOSED=1) ';
     lblFilter.Caption := lblFilter.Caption+'Закрытые; '
    End;
   If (Black) then
    Begin
     If (cbBlack.Checked) then
      Begin
       Result := Result+'and (PTOH.BLACK=1) ';
       lblFilter.Caption := lblFilter.Caption+'Н/О; '
      End;
     If (cbWhite.Checked) then
      Begin
       Result := Result+'and (PTOH.BLACK=0) ';
       lblFilter.Caption := lblFilter.Caption+'О; '
      End;
     If (cbFake.Checked) then
      Begin
       Result := Result+'and (PTOH.FAKE=1) ';
       lblFilter.Caption := lblFilter.Caption+'Не реальные; '
      End;
     If (cbReal.Checked) then
      Begin
       Result := Result+'and (PTOH.FAKE=0) ';
       lblFilter.Caption := lblFilter.Caption+'Реальные; '
      End
    End;
   If (cbPrefix.Checked) then
    Begin
     Result := Result+'and (PTOH.NUMBER_PREFIX like '#39+edPrefix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Префикс: '+edPrefix.Text+'; '
    End;
   If (cbNumber.Checked) then
    Begin
     Result := Result+'and (PTOH.NUMBER='+edNumber.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Номер документа: '+edNumber.Text+'; '
    End;
   If (cbSuffix.Checked) then
    Begin
     Result := Result+'and (PTOH.NUMBER_SUFFIX like '#39+edSuffix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Суффикс: '+edSuffix.Text+'; '
    End;
   If (cbAmount.Checked) then
    Begin
     Result := Result+'and (Cast(PTOH.AMOUNT as NUMERIC(18,4))='+edAmount.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Сумма накладной: '+edAmount.Text+'; '
    End;
   lblFilter.Caption := Trim(lblFilter.Caption);
   pnlText.Visible := True;
   lblFilter.AutoSize := True
  End
end;

procedure TfrmNaklOut.GenerateSelectMainPrimaryTovarOutcomeList;
 var k : Integer;
begin
 WhereSqlMainPrimaryTovarOutcomeList := GetWhereMainPrimaryTovarOutcomeList;
 If NOT (Black) then
  Begin
   ibdsMainPrimaryTovarOutcomeList.SelectSQL[4] := '';
   ibdsMainPrimaryTovarOutcomeList.SelectSQL[13] := '(UR.PRIMARY_SETUP_ID=PTOH.PRIMARY_SETUP_ID)'
  End;
 ibdsMainPrimaryTovarOutcomeList.SelectSQL[7] := 'STORES S, CURRENCY C, PRIMARY_TOVAR_OUTCOME_HEADER PTOH, USERS U, USER_RIGHTS_FOR_PRIMARY UR';
 If (cbArticuls.Checked) and (sbFilterPrimaryTovarOutcomeList.Down) then
  ibdsMainPrimaryTovarOutcomeList.SelectSQL[7] :=  ibdsMainPrimaryTovarOutcomeList.SelectSQL[7]+', PRIMARY_TOVAR_OUTCOME_BODY PTOB';
 For k := Pred(ibdsMainPrimaryTovarOutcomeList.SelectSQL.Count) downto 14 do
  ibdsMainPrimaryTovarOutcomeList.SelectSQL.Delete(k);
 ibdsMainPrimaryTovarOutcomeList.SelectSQL.Add(WhereSqlMainPrimaryTovarOutcomeList);
 ibdsMainPrimaryTovarOutcomeList.SelectSQL.Add('order by'+OrderByMainPrimaryTovarOutcomeList)
end;

procedure TfrmNaklOut.GenerateSelectMainPrimaryTovarOutcome;
begin
 If NOT (Black) then
  Begin
   ibdsMainPrimaryTovarOutcome.SelectSQL[5] := '';
   ibdsMainPrimaryTovarOutcome.SelectSQL[11] := '';
   ibdsMainPrimaryTovarOutcome.InsertSQL[6] := '';
   ibdsMainPrimaryTovarOutcome.InsertSQL[14] := '';
   ibdsMainPrimaryTovarOutcome.ModifySQL[20] := '';
   ibdsMainPrimaryTovarOutcome.RefreshSQL[8] := ''
  End
end;

procedure TfrmNaklOut.GenerateSelectPrimaryTovarOutcomeSetup;
begin
 If NOT (Black) then
  Begin
   ibdsPrimary_Setup.SelectSQL[2] := '';
   ibdsPrimary_Setup.SelectSQL[4] := ''
  End
end;

procedure TfrmNaklOut.GenerateSelectDoverennosty;
begin
 ibdsDoverennosty.SelectSQL.Delete(Pred(ibdsDoverennosty.SelectSQL.Count));
 ibdsDoverennosty.SelectSQL.Add('order by'+OrderByDoverennosty)
end;

procedure TfrmNaklOut.FormCreate(Sender: TObject);
var ki : Integer;
begin
 CurrencyRoundPower := 2;
 FName := 'Расходная накладная';
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
 If (GetSetUpParam(ibdsMainPrimaryTovarOutcome.Database, ibdsMainPrimaryTovarOutcome.Transaction, '-1', '-1', 'USE_GUARANTEE_PERIOD')=0) then
  FreeAndNil(tvPrimaryTovarOutcomeBodyGUARANTEE_PERIOD_STR);
 If (Black) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select FILTER_NAME, FILTER_VALUE from FILTERS');
   ibsAux.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
   ibsAux.ExecQuery;
   sbFilterPrimaryTovarOutcomeList.Down :=(ibsAux.RecordCount>0);
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
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Start') then
      Begin
       cbPeriod.Checked := True;
       If (ibsAux.FieldByName('FILTER_VALUE').AsString<>'') then
        DateStart := ibsAux.FieldByName('FILTER_VALUE').AsDate
       else
        DateStart := Date
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Stop') then
      Begin
       cbPeriod.Checked := True;
       If (ibsAux.FieldByName('FILTER_VALUE').AsString<>'') then
        DateStop := ibsAux.FieldByName('FILTER_VALUE').AsDate
       else
        DateStop := Date
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
 ibdsFilterPersons.Active := sbFilterPrimaryTovarOutcomeList.Down;
 ibdsFilterTypes.Active := sbFilterPrimaryTovarOutcomeList.Down;
 ibdsFilterContractorTypes.Active := sbFilterPrimaryTovarOutcomeList.Down;
 ibdsFilterArticuls.Active := sbFilterPrimaryTovarOutcomeList.Down;
 GenerateSelectMainPrimaryTovarOutcomeList;
 GenerateSelectMainPrimaryTovarOutcome;
 GenerateSelectPrimaryTovarOutcomeSetup;
 If (Nakl_Out_ID=0) then
  Begin
   PageControl1.ActivePageIndex := 0;
   ibdsMainPrimaryTovarOutcomeList.Open
  End
 else
  Begin
   ibdsMainPrimaryTovarOutcome.ParamByName('ID').AsInt64 := Nakl_Out_ID;
   PageControl1.ActivePageIndex := 1;
   Nakl_Out_ID := 0
  End
end;

procedure TfrmNaklOut.SpeedButton21Click(Sender: TObject);
begin
 Close
end;

procedure TfrmNaklOut.fcLabel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsLowered
end;

procedure TfrmNaklOut.fcLabel1MouseEnter(Sender: TObject);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsRaised
end;

procedure TfrmNaklOut.fcLabel1MouseLeave(Sender: TObject);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsLowered
end;

procedure TfrmNaklOut.fcLabel1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsRaised;
 If (Sender=fcContract) then
  pmParent.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y)
 else
  If (Sender=fcReCalc) then
   PopupMenu2.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y)
end;

procedure TfrmNaklOut.sbShowCommentsClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlComments.RestoreHotSpot
 else
  pnlComments.CloseHotSpot
end;

procedure TfrmNaklOut.SpeedButton36Click(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlCommentsDov.Show
 else
  pnlCommentsDov.Hide
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeListAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,'PrimaryTovarOutcomeList');
 sbDeletePrimaryTovarOutcomeList.Enabled := (ibdsMainPrimaryTovarOutcomeListDELETE_RIGHT.AsInteger=1) and (ibdsMainPrimaryTovarOutcomeListCLOSED.AsInteger=0)
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeListUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarOutcomeList.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainPrimaryTovarOutcomeListID.OldValue);
   ibsWhite.ExecQuery
  End;
 UpdateAction := uaApply
end;

procedure TfrmNaklOut.sbAddPrimaryTovarOutcomeListClick(Sender: TObject);
begin
 If NOT (sbApplyPrimaryTovarOutcomeList.Enabled) then
  Begin
   tsPrimaryTovarOutcome.Show;
   PageControl1Change(PageControl1);
   sbAddPrimaryTovarOutcome.Click
  End
end;

procedure TfrmNaklOut.sbDeletePrimaryTovarOutcomeListClick(
  Sender: TObject);
begin
 ibdsMainPrimaryTovarOutcomeList.Delete
end;

procedure TfrmNaklOut.sbApplyPrimaryTovarOutcomeListClick(Sender: TObject);
begin
 try
  ibdsMainPrimaryTovarOutcomeList.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('PrimaryTovarOutcomeList', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
end;

procedure TfrmNaklOut.sbCancelPrimaryTovarOutcomeListClick(
  Sender: TObject);
begin
 ibdsMainPrimaryTovarOutcomeList.CancelUpdates;
 StteChange('PrimaryTovarOutcomeList', False);
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeCalcFields(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarOutcomeNUMBER_STR.Value := ibdsMainPrimaryTovarOutcomeNUMBER_PREFIX.AsString;
 If (ibdsMainPrimaryTovarOutcomeNUMBER.Value<>0) then
  ibdsMainPrimaryTovarOutcomeNUMBER_STR.Value := ibdsMainPrimaryTovarOutcomeNUMBER_STR.Value+
                                                 ibdsMainPrimaryTovarOutcomeNUMBER.AsString;
 ibdsMainPrimaryTovarOutcomeNUMBER_STR.Value := ibdsMainPrimaryTovarOutcomeNUMBER_STR.Value+
                                                ibdsMainPrimaryTovarOutcomeNUMBER_SUFFIX.AsString
end;

procedure TfrmNaklOut.wwDBComboBox2DropDown(Sender: TObject);
begin
 pnlNumber.Parent := (Sender as TwwDBComboBox).Parent;
 pnlNumber.Top := (Sender as TwwDBComboBox).Top+(Sender as TwwDBComboBox).Height-1;
 pnlNumber.Left := (Sender as TwwDBComboBox).Left;
 pnlNumber.Show
end;

procedure TfrmNaklOut.SpeedButton1Click(Sender: TObject);
begin
 (Sender as TSpeedButton).Parent.Hide
end;

procedure TfrmNaklOut.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   dbcbBlack.Enabled := (ibdsMainPrimaryTovarOutcomePARENT_ID.IsNull) and
                        (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=3);
   If Not (ibdsPrimary_SetupINVOICE_ID_DEFAULT.IsNull) then
    Begin
     ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value := 1; //Расх. счет
     ibdsMainPrimaryTovarOutcomePARENT_ID.Value := ibdsPrimary_SetupINVOICE_ID_DEFAULT.Value
    End;
   NumberPrefix := ibdsPrimary_SetupNUMBER_PREFIX.AsString;
   ibdsMainPrimaryTovarOutcomeNUMBER_FORMAT.Value := ibdsPrimary_SetupNUMBER_FORMAT.Value;
   NumberSuffix := ibdsPrimary_SetupNUMBER_SUFFIX.AsString;
   ibdsMainPrimaryTovarOutcomeNUMBER_RESTART_PERIOD.Value := ibdsPrimary_SetupNUMBER_RESTART_PERIOD.Value;
   If (Black) then
    Begin
     If (ibdsMainPrimaryTovarOutcomeBLACK.IsNull) then
      ibdsMainPrimaryTovarOutcomeBLACK.Value := ibdsPrimary_SetupBLACK_DEFAULT.Value;
     If (ibdsPrimary_SetupBLACK.Value=1) then
      Begin
       If (ibdsMainPrimaryTovarOutcomeBLACK.Value<>1) then
        ibdsMainPrimaryTovarOutcomeBLACK.Value := 1;
       dbcbBlack.Enabled := False
      End
     else
      Begin
       If (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=1) then
        If (ibdsMainPrimaryTovarOutcomeBLACK.Value<>0) then
          ibdsMainPrimaryTovarOutcomeBLACK.Value := 0;
       If (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=2) then
        If (ibdsMainPrimaryTovarOutcomeBLACK.Value<>1) then
         ibdsMainPrimaryTovarOutcomeBLACK.Value := 1;
       If (ibdsPrimary_SetupCREATE_RIGHT.AsInteger<>3) then
        dbcbBlack.Enabled := False
      End
    End;
   If (ibdsMainPrimaryTovarOutcomeCURRENCY_ID.AsString='') and (NOT(ibdsPrimary_SetupCURRENCY_ID_DEFAULT.IsNull)) then
    Begin
     ibdsMainPrimaryTovarOutcomeCURRENCY_ID.Value := ibdsPrimary_SetupCURRENCY_ID_DEFAULT.Value;
     ibdsCurrency.Locate('ID', ibdsMainPrimaryTovarOutcomeCURRENCY_ID.AsString,[]);
     wwDBLookupCombo18CloseUp(wwDBLookupCombo18, ibdsCurrency, ibdsMainPrimaryTovarOutcome, true);
     ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.Value := ibdsCurrencyCURRENT_RATE.Value
    End;
   If (ibdsMainPrimaryTovarOutcomeSECURITY_LEVEL.Value<ibdsPrimary_SetupSECURITY_LEVEL.Value) then
    ibdsMainPrimaryTovarOutcomeSECURITY_LEVEL.Value := ibdsPrimary_SetupSECURITY_LEVEL.AsInteger;
   ibdsMainPrimaryTovarOutcomePRICE_FORMULA.Value := ibdsPrimary_SetupPRICE_FORMULA.AsString
  End;
 ibdsPrimary_Setup.Filtered := False
end;

procedure TfrmNaklOut.wwDBLookupCombo18CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.Value := ibdsCurrencyCURRENT_RATE.Value;
   SetCurrencyFmt
  End;
 ibdsCurrency.Filtered := False
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeAfterOpen(
  DataSet: TDataSet);
begin
 If (ibdsMainPrimaryTovarOutcome.RecordCount>0) then
  Begin
   SetReadOnly;
   ibdsMainPrimaryTovarOutcomeENTERPRISE_IDChange(ibdsMainPrimaryTovarOutcomeENTERPRISE_ID);
   ibdsEnterprises.Locate('ID', ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.AsString,[]);
   ibdsEnterpriseStores.Locate('ID', ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString,[]);
   ibdsPersons.Locate('ID', ibdsMainPrimaryTovarOutcomeMASTER_ID.AsString,[]);
   ibdsPrimary_Setup.Close;
   GenerateSelectPrimaryTovarOutcomeSetup;
   ibdsPrimary_Setup.Open;
   ibdsPrimary_Setup.Locate('ID', ibdsMainPrimaryTovarOutcomePRIMARY_SETUP_ID.AsString,[]);
   If (ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID.AsLargeInt>0) then
    ibdsContractors.Locate('ID', ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID.AsString,[])
   else
    Begin
     ibdsContractors.Locate('NAME', ibdsMainPrimaryTovarOutcomeCONTRACTOR_NAME.AsString,[]);
     wwDBLookupCombo16.Text := ibdsContractorsNAME.AsString
    End;
   ibdsCurrency.Locate('ID', ibdsMainPrimaryTovarOutcomeCURRENCY_ID.AsString,[]);
   OldCurrencyRate := ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.AsFloat;
   If (Black) then
    sbFactura.Visible := (ibdsMainPrimaryTovarOutcomeBLACK.AsInteger=0) and (ibdsMainPrimaryTovarOutcomeIS_NAKL.AsInteger=1)
   else
    sbFactura.Visible := (ibdsMainPrimaryTovarOutcomeIS_NAKL.AsInteger=1)
  End;
 ibdsMainPrimaryTovarOutcomePARENT_IDChange(ibdsMainPrimaryTovarOutcomePARENT_ID);
 ibdsMainPrimaryTovarOutcomeIS_NAKLChange(ibdsMainPrimaryTovarOutcomeIS_NAKL);
 ibdsMainPrimaryTovarOutcomeDOVERENNOST_IDChange(ibdsMainPrimaryTovarOutcomeDOVERENNOST_ID)
end;

procedure TfrmNaklOut.sbFirstPrimaryTovarOutcomeListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarOutcomeList.First
end;

procedure TfrmNaklOut.sbPriorPrimaryTovarOutcomeListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarOutcomeList.Prior
end;

procedure TfrmNaklOut.sbNextPrimaryTovarOutcomeListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarOutcomeList.Next
end;

procedure TfrmNaklOut.sbLastPrimaryTovarOutcomeListClick(Sender: TObject);
begin
 ibdsMainPrimaryTovarOutcomeList.Last
end;

procedure TfrmNaklOut.dsMainPrimaryTovarOutcomeListStateChange(
  Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmNaklOut.dbgPrimaryTovarOutcomeListCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: Begin
      If (Field=ibdsMainPrimaryTovarOutcomeListAMOUNT_FMT) then
       Field := ibdsMainPrimaryTovarOutcomeListAMOUNT;
      wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainPrimaryTovarOutcomeList);
     End;
  3: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByDoverennosty);
 end
end;

procedure TfrmNaklOut.dbgPrimaryTovarOutcomeListCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmNaklOut.dbgPrimaryTovarOutcomeListTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 Case (Sender as TComponent).Tag of
  1: Begin
      If (AFieldName='AMOUNT_FMT') then
       AFieldName := 'AMOUNT';
      wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainPrimaryTovarOutcomeList, (GetKeyState(VK_CONTROL)<0),
                               sbApplyPrimaryTovarOutcomeList, sbCancelPrimaryTovarOutcomeList, GenerateSelectMainPrimaryTovarOutcomeList)
     End;
  3: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByDoverennosty, (GetKeyState(VK_CONTROL)<0),
                              sbApplyDoverennosty, sbCancelDoverennosty, GenerateSelectDoverennosty);
 end
end;

procedure TfrmNaklOut.PageControl1Change(Sender: TObject);
 var Active : Boolean;
begin
 Active := (PageControl1.ActivePage<>tsPrimaryTovarOutcomeList);
 ibdsEnterprises.Active := Active;
 ibdsEnterpriseStores.Active := Active;
 ibdsPersons.Active := Active;
 ibdsPrimary_Setup.Active := Active;
 ibdsCurrency.Active := Active;
 ibdsContractors.Active := Active;
 ibdsCountries.Active := Active;
 ibdsMadeIn.Active := Active;
 ibdsMainPrimaryTovarOutcome.Active := Active;
 ibdsMainPrimaryTovarOutcomeBody.Active := Active;
 ibdsFactura.Active := Active;
 If Not(Active) and Not(ibdsMainPrimaryTovarOutcomeList.Active) then
  Begin
   ibdsMainPrimaryTovarOutcomeList.Active := True;
   try
    ibdsMainPrimaryTovarOutcomeList.Bookmark := MainPrimaryTovarOutcomeListBookMark
   except
   end;
   If (ibdsMainPrimaryTovarOutcomeList.Eof) then
    try
     ibdsMainPrimaryTovarOutcomeList.Bookmark := MainPrimaryTovarOutcomeListPriorBookMark
    except
    end
  End
end;

procedure TfrmNaklOut.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 AllowChange := True;
 If (PageControl1.ActivePage=tsPrimaryTovarOutcomeList) and (Nakl_Out_ID=0) then
  ibdsMainPrimaryTovarOutcome.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarOutcomeListID.Value
end;

procedure TfrmNaklOut.sbDeletePrimaryTovarOutcomeClick(Sender: TObject);
begin
 If (dbmComments.DataBinding.DataSource=dsMainPrimaryTovarOutcomeBody) or
    (dbmComments.DataBinding.DataSource=dsPrimaryTovarOutcomeBodySet) then
  Begin
   If (ibdsMainPrimaryTovarOutcomeUPDATE_RIGHT.AsInteger=1) or
      (ibdsMainPrimaryTovarOutcome.State in [dsInsert]) or
      (ibdsMainPrimaryTovarOutcomeNUMBER_PREFIX.AsString='НОВАЯ') then
    (dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet.Delete
  End
 else
  Begin
   If (ibdsMainPrimaryTovarOutcomeDELETE_RIGHT.AsInteger=1) or
      (ibdsMainPrimaryTovarOutcome.State in [dsInsert]) or
      (ibdsMainPrimaryTovarOutcomeNUMBER_PREFIX.AsString='НОВАЯ') then
    ibdsMainPrimaryTovarOutcome.Delete
  End
end;

procedure TfrmNaklOut.sbAddPrimaryTovarOutcomeClick(Sender: TObject);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_PRMRY_TVR_OUTCOME_HEADER,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainPrimaryTovarOutcome.Close;
 ibdsMainPrimaryTovarOutcome.ParamByName('ID').AsInt64 := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibdsMainPrimaryTovarOutcome.Open;
 ibsGen_ID.Close;
 ibdsMainPrimaryTovarOutcome.Insert;
 ibdsMainPrimaryTovarOutcomeBody.Close;
 ibdsMainPrimaryTovarOutcomeBody.Open;
 StteChange('PrimaryTovarOutcome', True)
end;

procedure TfrmNaklOut.sbCancelPrimaryTovarOutcomeClick(Sender: TObject);
begin
 If (trLock.InTransaction) then
  trLock.Commit;
 ibdsMainPrimaryTovarOutcomeBody.CancelUpdates;
 ibdsMainPrimaryTovarOutcome.CancelUpdates;
 If (ibdsSerials_OutCome.Active) then
  Begin
   pnlSerials.Hide;
   ibdsSerials_OutCome.Close;
   ibdsSerials_Available.Close
  End;
 If (ibdsMainPrimaryTovarOutcome.RecordCount>0) then
  ibdsMainPrimaryTovarOutcomeAfterOpen(ibdsMainPrimaryTovarOutcome);
 If (ibdsMainPrimaryTovarOutcomeBody.RecordCount>0) then
  ibdsMainPrimaryTovarOutcomeBodyAfterOpen(ibdsMainPrimaryTovarOutcomeBody);
 ibdsPrimary_Setup.Close;
 GenerateSelectPrimaryTovarOutcomeSetup;
 ibdsPrimary_Setup.Open;
 StteChange('PrimaryTovarOutcome', False)
end;

procedure TfrmNaklOut.sbApplyPrimaryTovarOutcomeClick(Sender: TObject);
begin
 ibdsReportHeader.Close;
 ibdsReportBody.Close;
 PostIfNeeded(ibdsMainPrimaryTovarOutcome);
 PostIfNeeded(ibdsMainPrimaryTovarOutcomeBody);
 PostIfNeeded(ibdsPrimaryTovarOutcomeBodySet);
 CheckDataSet(ibdsMainPrimaryTovarOutcomeBody);
 CheckDataSet(ibdsPrimaryTovarOutcomeBodySet);
 SetCRC32_Set(ibdsMainPrimaryTovarOutcomeBody,ibdsPrimaryTovarOutcomeBodySet,'PRIMARY_TOVAR_OUTCOME_BODY_ID');
 try
  ibdsMainPrimaryTovarOutcome.ApplyUpdates;
  ibdsMainPrimaryTovarOutcomeBody.ApplyUpdates;
  ibdsPrimaryTovarOutcomeBodySet.ApplyUpdates;
  Saving := True;
  If (ibdsSerials_OutCome.Active) then
   Begin
    ibdsSerials_OutCome.Last;
    ibdsSerials_OutCome.First;
    ibdsSerials_OutCome.ApplyUpdates
   End;
  Saving := False;
  trMain.CommitRetaining;
  ibdsMainPrimaryTovarOutcomeBody.Close;
  ibdsMainPrimaryTovarOutcomeBody.Open;
  ibdsMainPrimaryTovarOutcome.Close;
  ibdsMainPrimaryTovarOutcome.Open;
  If (ibdsMainPrimaryTovarOutcomeList.Active) then
   Begin
    MainPrimaryTovarOutcomeListBookMark := ibdsMainPrimaryTovarOutcomeList.Bookmark;
    ibdsMainPrimaryTovarOutcomeList.Prior;
    MainPrimaryTovarOutcomeListPriorBookMark := ibdsMainPrimaryTovarOutcomeList.Bookmark;
    ibdsMainPrimaryTovarOutcomeList.Close
   End;
  StteChange('PrimaryTovarOutcome', False)
 except
  trMain.RollbackRetaining;
  Saving := False;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 If (trLock.InTransaction) then
  trLock.Commit
end;

procedure TfrmNaklOut.dsMainPrimaryTovarOutcomeBodyStateChange(
  Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('PrimaryTovarOutcome', True)
  else
   StteChange('PrimaryTovarOutcome', ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending or ibdsMainPrimaryTovarOutcome.UpdatesPending)
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
 var MinNumber, MaxNumber, Number, BlackOld, BlackNew, Number_FormatOld, Number_FormatNew : Integer;
     SetupOld, SetupNew, StoreIDOld, StoreIDNew : String;
     Setted : Boolean;
begin
 If (Black) then
  Begin
   BlackOld := ibdsMainPrimaryTovarOutcomeBLACK.OldValue;
   BlackNew := ibdsMainPrimaryTovarOutcomeBLACK.NewValue
  End
 else
  Begin
   BlackOld := 0;
   BlackNew := 0
  End;
 Number_FormatOld := ibdsMainPrimaryTovarOutcomeNUMBER_FORMAT.OldValue;
 Number_FormatNew := ibdsMainPrimaryTovarOutcomeNUMBER_FORMAT.NewValue;
 If (UpdateKind=ukInsert) then
  SetupOld := '0'
 else
  SetupOld := IntToStr(ibdsMainPrimaryTovarOutcomePRIMARY_SETUP_ID.OldValue);
 SetupNew := IntToStr(ibdsMainPrimaryTovarOutcomePRIMARY_SETUP_ID.NewValue);
 StoreIDOld := IntToStr(ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.OldValue);
 StoreIDNew := IntToStr(ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.NewValue);
 If (UpdateKind=ukInsert) or (BLACKOld<>BLACKNew) or (SetupOld<>SetupNew) or
    (StoreIDOld<>StoreIDNew) then
  Begin
   If (UpdateKind=ukInsert) or (BLACKOld<>BLACKNew) or (Number_FormatOld<>Number_FormatNew) or
      (ibdsMainPrimaryTovarOutcomePRIMARY_DATE.OldValue<>ibdsMainPrimaryTovarOutcomePRIMARY_DATE.NewValue) or
      (StoreIDOld<>StoreIDNew) then
    Begin
     pnlMessage.Show;
     Application.ProcessMessages;
     If NOT (trLock.InTransaction) then
      trLock.StartTransaction;
     pnlMessage.Hide;
     Application.ProcessMessages;
     If (ibdsMainPrimaryTovarOutcomeNUMBER_RESTART_PERIOD.AsInteger<>1) then
      Begin
       ibsNumb.SQL.Clear;
       ibsNumb.SQL.Add('select max(PTOH.NUMBER) MinNumber');
       ibsNumb.SQL.Add('from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_SETUP PS');
       ibsNumb.SQL.Add('where (PTOH.PRIMARY_DATE>=:START_DATE) and (PTOH.PRIMARY_DATE<:PRIMARY_DATE)');
       If (Black) then
        ibsNumb.SQL.Add('and (PTOH.BLACK=:BLACK)');
       ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PTOH.PRIMARY_SETUP_ID=PS.ID)');
       ibsNumb.SQL.Add('and (PTOH.ENTERPRISE_STORE_ID='+ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString+')');
       ibsNumb.GenerateParamNames := True;
       ibsNumb.ParamByName('START_DATE').AsDate := GetStartDate(ibdsMainPrimaryTovarOutcomeNUMBER_RESTART_PERIOD.AsInteger, ibdsMainPrimaryTovarOutcomePRIMARY_DATE.AsDateTime);
       ibsNumb.ParamByName('PRIMARY_DATE').AsDate := ibdsMainPrimaryTovarOutcomePRIMARY_DATE.AsDateTime;
       If (Black) then
        ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
       ibsNumb.ExecQuery;
       MinNumber := ibsNumb.FieldByName('MinNumber').AsInteger;
       ibsNumb.Close
      End
     else
      MinNumber := 0; //1 - нумерация начинается ежедневно
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select min(PTOH.NUMBER) MaxNumber');
     ibsNumb.SQL.Add('from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_SETUP PS');
     ibsNumb.SQL.Add('where (PTOH.PRIMARY_DATE>:PRIMARY_DATE) and (PTOH.PRIMARY_DATE<:STOP_DATE)');
     If (Black) then
      ibsNumb.SQL.Add('and (PTOH.BLACK=:BLACK)');
     ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PTOH.PRIMARY_SETUP_ID=PS.ID)');
     ibsNumb.SQL.Add('and (PTOH.ENTERPRISE_STORE_ID='+ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString+')');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('PRIMARY_DATE').AsDate := ibdsMainPrimaryTovarOutcomePRIMARY_DATE.AsDateTime;
     ibsNumb.ParamByName('STOP_DATE').AsDate := GetStopDate(ibdsMainPrimaryTovarOutcomeNUMBER_RESTART_PERIOD.AsInteger, ibdsMainPrimaryTovarOutcomePRIMARY_DATE.AsDateTime);
     If (Black) then
      ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
     ibsNumb.ExecQuery;
     If (ibsNumb.FieldByName('MaxNumber').IsNull) then
      MaxNumber := High(MaxNumber)
     else
      MaxNumber := ibsNumb.FieldByName('MaxNumber').AsInteger;
     ibsNumb.Close;
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select PTOH.NUMBER');
     ibsNumb.SQL.Add('from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_SETUP PS');
     ibsNumb.SQL.Add('where (PTOH.PRIMARY_DATE=:PRIMARY_DATE)');
     If (Black) then
      ibsNumb.SQL.Add('and (PTOH.BLACK=:BLACK)');
     ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PTOH.PRIMARY_SETUP_ID=PS.ID)');
     ibsNumb.SQL.Add('and (PTOH.ENTERPRISE_STORE_ID='+ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString+')');
     ibsNumb.SQL.Add('order by 1');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('PRIMARY_DATE').AsDate := ibdsMainPrimaryTovarOutcomePRIMARY_DATE.AsDateTime;
     If (Black) then
      ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
     ibsNumb.ExecQuery;
     ibdsMainPrimaryTovarOutcome.Edit;
     If (ibsNumb.Eof) then
      ibdsMainPrimaryTovarOutcomeNUMBER.Value := Succ(MinNumber)
     else
      Begin
       Setted := False;
       While Not (ibsNumb.Eof) do
        Begin
         Number := ibsNumb.FieldByName('NUMBER').AsInteger;
         ibsNumb.Next;
         If ((ibsNumb.FieldByName('NUMBER').AsInteger-Number)>1) and (Succ(Number)>MinNumber) then
          Begin
           ibdsMainPrimaryTovarOutcomeNUMBER.Value := Succ(Number);
           Setted := True;
           Break
          End
        End;
       If NOT (Setted) then
        ibdsMainPrimaryTovarOutcomeNUMBER.Value := Succ(ibsNumb.FieldByName('NUMBER').AsInteger);
      End;
     ibsNumb.Close;
     If (ibdsMainPrimaryTovarOutcomeNUMBER.AsInteger>=MaxNumber) then
      FlashMsg('Внимание!','Такой номер уже существует в последующих днях. После сохранения измените префикс/суффикс.',2000);
    End;
   If (UpdateKind=ukInsert) or (SETUPOld<>SETUPNew) then
    Begin
     NumberPrefix := ReplaceDateStr(NumberPrefix,ibdsMainPrimaryTovarOutcomePRIMARY_DATE.AsDateTime);
     NumberSuffix := ReplaceDateStr(NumberSuffix,ibdsMainPrimaryTovarOutcomePRIMARY_DATE.AsDateTime);
     If NOT (ibdsMainPrimaryTovarOutcome.State in [dsInsert, dsEdit]) then
      ibdsMainPrimaryTovarOutcome.Edit;
     ibdsMainPrimaryTovarOutcomeNUMBER_PREFIX.AsString := NumberPrefix;
     ibdsMainPrimaryTovarOutcomeNUMBER_SUFFIX.AsString := NumberSuffix
    End
  End;
 If (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarOutcome.Post;
 If (Black) and ((BLACKOld=0) or (BLACKNew=0)) then
  Begin
   ibsWhite.SQL.Clear;
   If (UpdateKind=ukInsert) or
      ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
    Begin
     ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarOutcome.InsertSQL);
     ibsWhite.SQL.Strings[6] := '';
     ibsWhite.SQL.Strings[14] := ''
    End
   else
    If (UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0) then
     Begin
      ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarOutcome.ModifySQL);
      ibsWhite.SQL.Strings[20] := ''
     End
    else
     If (UpdateKind=ukDelete) or ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=1)) then
      ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarOutcome.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   If ((UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0))) or
      ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0)) then
    Begin
     ibsWhite.ParamByName('PARENT_TYPE').Value := ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value;
     If (ibdsMainPrimaryTovarOutcomePARENT_ID.IsNull) then
      ibsWhite.ParamByName('PARENT_ID').Value := null
     else
      ibsWhite.ParamByName('PARENT_ID').AsInt64 := ibdsMainPrimaryTovarOutcomePARENT_ID.Value;
     ibsWhite.ParamByName('PRIMARY_SETUP_ID').AsInt64 := ibdsMainPrimaryTovarOutcomePRIMARY_SETUP_ID.Value;
     ibsWhite.ParamByName('MASTER_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeMASTER_ID.Value;
     ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsMainPrimaryTovarOutcomeSECURITY_LEVEL.AsVariant;
     ibsWhite.ParamByName('NUMBER_PREFIX').Value := ibdsMainPrimaryTovarOutcomeNUMBER_PREFIX.AsVariant;
     ibsWhite.ParamByName('NUMBER').Value := ibdsMainPrimaryTovarOutcomeNUMBER.AsVariant;
     ibsWhite.ParamByName('NUMBER_SUFFIX').Value := ibdsMainPrimaryTovarOutcomeNUMBER_SUFFIX.AsVariant;
     ibsWhite.ParamByName('PRIMARY_DATE').Value := ibdsMainPrimaryTovarOutcomePRIMARY_DATE.AsVariant;
     ibsWhite.ParamByName('PERCENT').Value := ibdsMainPrimaryTovarOutcomePERCENT.AsVariant;
     If (ibdsMainPrimaryTovarOutcomeDOVERENNOST_ID.IsNull) then
      ibsWhite.ParamByName('DOVERENNOST_ID').Value := null
     else
      ibsWhite.ParamByName('DOVERENNOST_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeDOVERENNOST_ID.Value;
     ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.Value;
     ibsWhite.ParamByName('ENTERPRISE_STORE_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.Value;
     ibsWhite.ParamByName('CONTRACTOR_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID.Value;
     ibsWhite.ParamByName('CURRENCY_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeCURRENCY_ID.Value;
     ibsWhite.ParamByName('CURRENCY_RATE').Value := ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.AsVariant;
     ibsWhite.ParamByName('IS_NAKL').Value := ibdsMainPrimaryTovarOutcomeIS_NAKL.AsVariant;
     ibsWhite.ParamByName('CLOSED').Value := ibdsMainPrimaryTovarOutcomeCLOSED.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainPrimaryTovarOutcomeCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarOutcomeID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeID.Value;
   ibsWhite.ExecQuery;
   If (UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0) then
    Begin
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select * from PRIMARY_TOVAR_OUTCOME_BODY where (PRIMARY_TOVAR_OUTCOME_HEADER_ID=:ID)');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarOutcomeID.Value;
     ibsWhite.SQL.Clear;
     ibsWhite.SQL.AddStrings(ibdsMainPrimaryTovarOutcomeBody.InsertSQL);
     ibsWhite.GenerateParamNames := True;
     ibsNumb.ExecQuery;
     While NOT (ibsNumb.Eof) do
      Begin
       ibsWhite.ParamByName('PRIMARY_TOVAR_OUTCOME_HEADER_ID').AsInt64 := ibsNumb.FieldByName('PRIMARY_TOVAR_OUTCOME_HEADER_ID').AsInt64;
       ibsWhite.ParamByName('ARTICUL_ID').AsInt64 := ibsNumb.FieldByName('ARTICUL_ID').AsInt64;
       ibsWhite.ParamByName('MADE_IN').Value := ibsNumb.FieldByName('MADE_IN').AsVariant;
       ibsWhite.ParamByName('PACKS_AMOUNT').Value := ibsNumb.FieldByName('PACKS_AMOUNT').AsVariant;
       ibsWhite.ParamByName('PACK_VALUE').Value := ibsNumb.FieldByName('PACK_VALUE').AsVariant;
       ibsWhite.ParamByName('ITEMS_AMOUNT').Value := ibsNumb.FieldByName('ITEMS_AMOUNT').AsVariant;
       ibsWhite.ParamByName('PRICE_REFERENCE').Value := ibsNumb.FieldByName('PRICE_REFERENCE').AsVariant;
       ibsWhite.ParamByName('PERCENT').Value := ibsNumb.FieldByName('PERCENT').AsVariant;
       ibsWhite.ParamByName('PRICE').Value := ibsNumb.FieldByName('PRICE').AsVariant;
       ibsWhite.ParamByName('NDS').Value := ibsNumb.FieldByName('NDS').AsVariant;
       ibsWhite.ParamByName('COMMENTS').Value := ibsNumb.FieldByName('COMMENTS').AsVariant;
       ibsWhite.ParamByName('GUARANTEE_PERIOD_STR').Value := ibsNumb.FieldByName('GUARANTEE_PERIOD_STR').AsVariant;
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

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 If (Black) and (ibdsMainPrimaryTovarOutcomeBLACK.Value=0) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings((DataSet as TIBDataSet).InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings((DataSet as TIBDataSet).ModifySQL);
    ukDelete: ibsWhite.SQL.AddStrings((DataSet as TIBDataSet).DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   If (UpdateKind in [ukInsert, ukModify]) then
    Begin
     ibsWhite.ParamByName('ARTICUL_ID').AsInt64 := DataSet.FieldByName('ARTICUL_ID').AsInteger;
     ibsWhite.ParamByName('PACKS_AMOUNT').Value := DataSet.FieldByName('PACKS_AMOUNT').AsVariant;
     ibsWhite.ParamByName('PACK_VALUE').Value := DataSet.FieldByName('PACK_VALUE').AsVariant;
     ibsWhite.ParamByName('ITEMS_AMOUNT').Value := DataSet.FieldByName('ITEMS_AMOUNT').AsVariant;
     ibsWhite.ParamByName('PRICE_REFERENCE').Value := DataSet.FieldByName('PRICE_REFERENCE').AsVariant;
     ibsWhite.ParamByName('PRICE').Value := DataSet.FieldByName('PRICE').AsVariant;
     If (DataSet=ibdsMainPrimaryTovarOutcomeBody) then
      Begin
       If (UpdateKind=ukInsert) then
        ibsWhite.ParamByName('PRIMARY_TOVAR_OUTCOME_HEADER_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeBodyPRIMARY_TOVAR_OUTCOME_HEADER_ID.Value;
       ibsWhite.ParamByName('CRC32_SET').Value := DataSet.FieldByName('CRC32_SET').AsVariant;
       ibsWhite.ParamByName('PERCENT').Value := ibdsMainPrimaryTovarOutcomeBodyPERCENT.AsVariant;
       ibsWhite.ParamByName('MADE_IN').Value := ibdsMainPrimaryTovarOutcomeBodyMADE_IN.AsVariant;
       ibsWhite.ParamByName('NDS').Value := ibdsMainPrimaryTovarOutcomeBodyNDS.AsVariant;
       ibsWhite.ParamByName('COMMENTS').Value := ibdsMainPrimaryTovarOutcomeBodyCOMMENTS.AsVariant;
       ibsWhite.ParamByName('GUARANTEE_PERIOD_STR').Value := ibdsMainPrimaryTovarOutcomeBodyGUARANTEE_PERIOD_STR.AsVariant;
       ibsWhite.ParamByName('LABEL').Value := ibdsMainPrimaryTovarOutcomeBodyLABEL.AsVariant
      End
     else
      Begin
       If (UpdateKind=ukInsert) then
        ibsWhite.ParamByName('PRIMARY_TOVAR_OUTCOME_BODY_ID').AsInteger := ibdsPrimaryTovarOutcomeBodySetPRIMARY_TOVAR_OUTCOME_BODY_ID.Value;
       ibsWhite.ParamByName('COMMENTS').Value := DataSet.FieldByName('COMMENTS').AsVariant
      End;
     If (DataSet.FieldByName('COUNTRY_ID').IsNull) then
      ibsWhite.ParamByName('COUNTRY_ID').Value := null
     else
      ibsWhite.ParamByName('COUNTRY_ID').AsInt64 := DataSet.FieldByName('COUNTRY_ID').AsInteger;
     ibsWhite.ParamByName('DECLARATION_NUMBER').Value := DataSet.FieldByName('DECLARATION_NUMBER').AsVariant
    End;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := DataSet.FieldByName('ID').Value
   else
    ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(DataSet.FieldByName('ID').OldValue);
   ibsWhite.ExecQuery;
   ibsWhite.Close
  End;
 If ((UpdateKind in [ukInsert, ukModify]) and (DataSet=ibdsMainPrimaryTovarOutcomeBody)) then
  Begin
   ibsAux.SQL.Clear;
   If (UpdateKind=ukInsert) then
    Begin
     ibsAux.SQL.AddStrings(ibdsMainPrimaryTovarOutcomeBody.InsertSQL);
     ibsAux.ParamByName('PRIMARY_TOVAR_OUTCOME_HEADER_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeBodyPRIMARY_TOVAR_OUTCOME_HEADER_ID.Value
    End
   else
    ibsAux.SQL.AddStrings(ibdsMainPrimaryTovarOutcomeBody.ModifySQL);
   ibsAux.ParamByName('ARTICUL_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID.AsInteger;
   ibsAux.ParamByName('CRC32_SET').Value := ibdsMainPrimaryTovarOutcomeBodyCRC32_SET.AsVariant;
   ibsAux.ParamByName('MADE_IN').Value := ibdsMainPrimaryTovarOutcomeBodyMADE_IN.AsVariant;
   ibsAux.ParamByName('PACKS_AMOUNT').Value := ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.AsVariant;
   ibsAux.ParamByName('PACK_VALUE').Value := ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.AsVariant;
   ibsAux.ParamByName('ITEMS_AMOUNT').Value := ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.AsVariant;
   ibsAux.ParamByName('PRICE_REFERENCE').Value := ibdsMainPrimaryTovarOutcomeBodyPRICE_REFERENCE.AsVariant;
   ibsAux.ParamByName('PERCENT').Value := ibdsMainPrimaryTovarOutcomeBodyPERCENT.AsVariant;
   ibsAux.ParamByName('PRICE').Value := ibdsMainPrimaryTovarOutcomeBodyPRICE.AsVariant;
   ibsAux.ParamByName('NDS').Value := ibdsMainPrimaryTovarOutcomeBodyNDS.AsVariant;
   ibsAux.ParamByName('COMMENTS').Value := ibdsMainPrimaryTovarOutcomeBodyCOMMENTS.AsVariant;
   ibsAux.ParamByName('GUARANTEE_PERIOD_STR').Value := ibdsMainPrimaryTovarOutcomeBodyGUARANTEE_PERIOD_STR.AsVariant;
   ibsAux.ParamByName('LABEL').Value := ibdsMainPrimaryTovarOutcomeBodyLABEL.AsVariant;
   If (ibdsMainPrimaryTovarOutcomeBodyCOUNTRY_ID.IsNull) then
    ibsAux.ParamByName('COUNTRY_ID').Value := null
   else
    ibsAux.ParamByName('COUNTRY_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeBodyCOUNTRY_ID.AsInteger;
   ibsAux.ParamByName('DECLARATION_NUMBER').Value := ibdsMainPrimaryTovarOutcomeBodyDECLARATION_NUMBER.AsVariant;
   If (UpdateKind=ukInsert) then
    ibsAux.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarOutcomeBodyID.AsLargeInt
   else
    ibsAux.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainPrimaryTovarOutcomeBodyID.OldValue);
   ibsAux.ExecQuery;
   UpdateAction := uaApplied
  End
 else
  UpdateAction := uaApply
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeNewRecord(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarOutcomeID.Value := ibdsMainPrimaryTovarOutcome.ParamByName('ID').AsInt64;
 ibdsMainPrimaryTovarOutcomePRIMARY_DATE.Value := Date;
 ibdsMainPrimaryTovarOutcomeCLOSED.Value := 0;
 If (Black) then
  ibdsMainPrimaryTovarOutcomeBLACK.Value := 0;
 ibdsMainPrimaryTovarOutcomeMASTER_ID.Value := PersonID;
 ibdsMainPrimaryTovarOutcomeSECURITY_LEVEL.Value := 1;
 ibdsMainPrimaryTovarOutcomeNUMBER_PREFIX.Value := 'НОВАЯ';
 ibdsMainPrimaryTovarOutcomeNUMBER_SUFFIX.Value := ' ';
 ibdsMainPrimaryTovarOutcomeNUMBER.Value := 0;
 ibdsMainPrimaryTovarOutcomeNUMBER_FORMAT.Value := 0;
 ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value := 0;
 ibdsMainPrimaryTovarOutcomeFAKE.Value := 0;
 ibdsMainPrimaryTovarOutcomePERCENT.Value := 0;
 ibdsMainPrimaryTovarOutcomePARENT_ID.AsVariant := Null;
 ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.Value := ibdsEnterprisesID.AsLargeInt;
 ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.Value := ibdsEnterpriseStoresID.AsLargeInt;
 ibdsMainPrimaryTovarOutcomePRIMARY_SETUP_ID.Value := 0;
 SetReadOnly
end;

procedure TfrmNaklOut.tsPrimaryTovarOutcomeShow(Sender: TObject);
begin
 PageControl1Change(PageControl1)
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyNewRecord(
  DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_PRMRY_TVR_OUTCOME_BODY,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainPrimaryTovarOutcomeBodyID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainPrimaryTovarOutcomeBodyPRIMARY_TOVAR_OUTCOME_HEADER_ID.Value := ibdsMainPrimaryTovarOutcomeID.Value;
 ibdsMainPrimaryTovarOutcomeBodyITOGOMANYOLD.Value := 0
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomePARENT_IDChange(
  Sender: TField);
begin
 If (ibdsMainPrimaryTovarOutcomePARENT_ID.IsNull) then
  Begin
   dbcbBlack.Enabled := (ibdsPrimary_SetupBLACK.AsInteger<>1) and
                        (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=3);
   fcContract.Caption := 'Самостоятельный документ';
   If (ibdsMainPrimaryTovarOutcome.State in [dsEdit,dsInsert]) then
    Begin
     ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value := 0;
     ibdsMainPrimaryTovarOutcomeFAKE.Value := 0
    End
  End
 else
  Begin
   ibsNumb.SQL.Clear;
   If (ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value in [1,2,4]) then //счет
    Begin
     ibsNumb.SQL.Add('select NUMBER_PREFIX, NUMBER, NUMBER_SUFFIX, INVOICE_DATE DOC_DATE');
     If (Black) then
      ibsNumb.SQL.Add(', BLACK, DOUBLE_SOSTAV');
     ibsNumb.SQL.Add('from INVOICE_HEADER where (ID='+ibdsMainPrimaryTovarOutcomePARENT_ID.AsString+')');
     Case ibdsMainPrimaryTovarOutcomePARENT_TYPE.AsInteger of
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
     ibsNumb.SQL.Add('from CONTRACTS where (ID='+ibdsMainPrimaryTovarOutcomePARENT_ID.AsString+')');
     fcContract.Caption := 'Договор № '
    End;
   ibsNumb.ExecQuery;
   fcContract.Caption := fcContract.Caption+ibsNumb.FieldByName('NUMBER_PREFIX').AsString+
                                            ibsNumb.FieldByName('NUMBER').AsString+
                                            ibsNumb.FieldByName('NUMBER_SUFFIX').AsString+
                                            ' от '+FormatDateTime('dd.mm.yyyy',ibsNumb.FieldByName('DOC_DATE').AsDateTime);
   If (Black) then
    Begin
     If (ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value in [1,2,4]) then //счет
      Begin
       If (ibdsMainPrimaryTovarOutcome.State in [dsEdit,dsInsert]) then
        Begin
         ibdsMainPrimaryTovarOutcomeBLACK.Value := ibsNumb.FieldByName('BLACK').AsInteger;
         If (ibsNumb.FieldByName('DOUBLE_SOSTAV').AsInteger=1) and
            (ibsNumb.FieldByName('BLACK').AsInteger=0) then
          ibdsMainPrimaryTovarOutcomeFAKE.Value := 1
         else
          ibdsMainPrimaryTovarOutcomeFAKE.Value := 0
        End;
       If (Black) then
        dbcbBlack.Enabled := False;
      End
     else
      Begin
       If (ibdsMainPrimaryTovarOutcome.State in [dsEdit,dsInsert]) then
        Begin
         ibdsMainPrimaryTovarOutcomeBLACK.Value := ibsNumb.FieldByName('BLACK').AsInteger;
         ibdsMainPrimaryTovarOutcomeFAKE.Value := 0
        End;
       dbcbBlack.Enabled := False
      End;
    End;
   ibsNumb.Close
  End
end;

procedure TfrmNaklOut.SetInvoiceID;
 var frm : TfrmInvoice;
begin
 If (Parent_Closed) or (ibdsMainPrimaryTovarOutcomeCLOSED.AsInteger=1) or
    (ibdsMainPrimaryTovarOutcomeNUMBER.ReadOnly)  then
  Exit;
 If NOT (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarOutcome.Edit;
 Case ibdsMainPrimaryTovarOutcomePARENT_TYPE.AsInteger of
  1: frm := frmInvoiceOut;
  2: frm := frmInvoiceIn
 End;
 If (frm.ibdsMainInvoice.Active) then
  ibdsMainPrimaryTovarOutcomePARENT_ID.Value := frm.ibdsMainInvoiceID.Value
 else
  ibdsMainPrimaryTovarOutcomePARENT_ID.Value := frm.ibdsMainInvoicesListID.Value;
 frm.LookUpProcedure := nil
end;

procedure TfrmNaklOut.pmParentSelfClick(Sender: TObject);
begin
 If NOT (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarOutcome.Edit;
 ibdsMainPrimaryTovarOutcomePARENT_ID.AsVariant := Null
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyARTICUL_IDChange(
  Sender: TField);
 var Articul, Articul_Name, Units, GuaranteePeriod: String;
     NDS : Double;
     ItemType : Integer;
     ibsLocalAux : TIBSQL;
     Last_Buy_Price, Price, MainCurrencyRate : Double;
begin
 Articul := Sender.DataSet.FieldByName('ARTICUL').AsString;
 ibsLocalAux := TIBSQL.Create(Sender.DataSet.Owner);
 ibsLocalAux.Database := ibsAux.Database;
 ibsLocalAux.Transaction := ibsAux.Transaction;
 ibsLocalAux.SQL.Add('select ARTICUL, NAME, UNITS, NDS, GUARANTEE_PERIOD_STR, ITEM_TYPE from ARTICULS where (ID='+
                  Sender.AsString+')');
 ibsLocalAux.ExecQuery;
 If (Articul<>ibsLocalAux.FieldByName('ARTICUL').AsString) then
  Articul := ibsLocalAux.FieldByName('ARTICUL').AsString;
 Articul_Name := ibsLocalAux.FieldByName('NAME').AsString;
 Units := ibsLocalAux.FieldByName('UNITS').AsString;
 NDS := ibsLocalAux.FieldByName('NDS').AsDouble;
 GuaranteePeriod := ibsLocalAux.FieldByName('GUARANTEE_PERIOD_STR').AsString;
 ItemType := ibsLocalAux.FieldByName('ITEM_TYPE').AsInteger;
 ibsLocalAux.Close;
 Sender.DataSet.FieldByName('ARTICUL_NAME').Value := Articul_Name;
 Sender.DataSet.FieldByName('UNITS').Value := Units;
 If (Sender.DataSet.FindField('NDS')<>nil) then
  Sender.DataSet.FieldByName('NDS').Value := NDS;
 If (Sender.DataSet.FindField('GUARANTEE_PERIOD_STR')<>nil) and (GuaranteePeriod<>'') then
  Sender.DataSet.FieldByName('GUARANTEE_PERIOD_STR').Value := GuaranteePeriod;
 If (Sender.DataSet.FindField('ITEM_TYPE')<>nil) then
  Sender.DataSet.FieldByName('ITEM_TYPE').Value := ItemType;
 With Sender.DataSet.FieldByName('ARTICUL') do
  Begin
   If (AsString<>Articul) then
    Begin
     OnChange := nil;
     Value := Articul;
     OnChange := ibdsMainPrimaryTovarOutcomeBodyARTICULChange
    End
  End;   
 If (Sender.DataSet.FindField('MADE_IN')<>nil) then
  If (ibdsMadeInMADE_IN.AsVariant=null) then
   Sender.DataSet.FieldByName('MADE_IN').Value := '-'
  else
   Sender.DataSet.FieldByName('MADE_IN').AsVariant := ibdsMadeInMADE_IN.AsVariant;
 MainCurrencyRate := GetMainCurrencyRate(ibsAux,ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.AsString,ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString,ibdsMainPrimaryTovarOutcomeCURRENCY_ID.AsInteger,ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.AsFloat);
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('select * from GET_GOODS_INFO(:STORE_ID, :ARTICUL_ID, :MADE_IN)');
 ibsLocalAux.GenerateParamNames := True;
 ibsLocalAux.ParamByName('STORE_ID').AsString := ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString;
 ibsLocalAux.ParamByName('ARTICUL_ID').AsString := Sender.AsString;
 ibsLocalAux.ParamByName('MADE_IN').AsString := '-';
 ibsLocalAux.ExecQuery;
 Last_Buy_Price := ibsLocalAux.FieldByName('LAST_BUY_PRICE').AsDouble*MainCurrencyRate;
 Price := ibsLocalAux.FieldByName('PRICE').AsDouble*MainCurrencyRate;
 Sender.DataSet.FieldByName('MAIN_LEAVINGS_TOTAL').Value := ibsLocalAux.FieldByName('MAIN_LEAVINGS_TOTAL').AsDouble;
 Sender.DataSet.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').Value := ibsLocalAux.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').AsDouble;
 ibsLocalAux.Close;
 If (Sender=ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID) then
  Begin
   ibdsMainPrimaryTovarOutcomeBodyPERCENT.Value := ibdsMainPrimaryTovarOutcomePERCENT.Value;
   If (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=5) then // внутреннее перемещение
    ibdsMainPrimaryTovarOutcomeBodyPRICE.Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower
   else
    ibdsMainPrimaryTovarOutcomeBodyPRICE.Value :=
        Round(GeneratePrice(Price, ibdsMainPrimaryTovarOutcomePRICE_FORMULA.Value,
                            ibdsMainPrimaryTovarOutcomeBodyPERCENT.Value,
                            0, 0)*CurrencyRoundPower)/CurrencyRoundPower
  End
 else
  Begin
   If (ibdsPrimary_SetupMOVEMENT_TYPE.AsInteger=5) then // внутреннее перемещение
    ibdsPrimaryTovarOutcomeBodySetPRICE.Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower
   else
    ibdsPrimaryTovarOutcomeBodySetPRICE.Value :=
        Round(GeneratePrice(Price, ibdsMainPrimaryTovarOutcomePRICE_FORMULA.Value,0,0,
                            0)*CurrencyRoundPower)/CurrencyRoundPower
  End;
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('select G.DECLARATION_NUMBER, G.COUNTRY_ID from GOODS G');
 ibsLocalAux.SQL.Add('where (G.STORE_ID='+ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString+')');
 ibsLocalAux.SQL.Add('and (G.ARTICUL_ID='+Sender.AsString+')');
 ibsLocalAux.ExecQuery;
 Sender.DataSet.FieldByName('DECLARATION_NUMBER').Value := ibsLocalAux.FieldByName('DECLARATION_NUMBER').AsString;
 If (ibsLocalAux.FieldByName('COUNTRY_ID').AsInt64<>0) then
  Begin
   Sender.DataSet.FieldByName('COUNTRY_ID').AsInteger := ibsLocalAux.FieldByName('COUNTRY_ID').AsInteger;
   If (Sender.DataSet.FindField('COUNTRY_NAME')<>nil) then
    Begin
     ibdsCountries.Locate('ID', Sender.DataSet.FieldByName('COUNTRY_ID').AsString,[]);
     Sender.DataSet.FieldByName('COUNTRY_NAME').Value := ibdsCountriesNAME.AsString
    End
  End;
 ibsLocalAux.Close;
 Sender.DataSet.FieldByName('LAST_BUY_PRICE').Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower;
 Sender.DataSet.FieldByName('PRICE_REFERENCE').Value := Round(Price*CurrencyRoundPower)/CurrencyRoundPower;
 Sender.DataSet.Post;
 Sender.DataSet.Edit;
 If (Sender=ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID) and NOT Cloning then
  Begin
   If (ItemType<>1) then
// удаляем старый состав комплекта
    DeleteSet(ibdsPrimaryTovarOutcomeBodySet,ibdsPrimaryTovarOutcomeBodySetPRIMARY_TOVAR_OUTCOME_BODY_ID,ibdsMainPrimaryTovarOutcomeBodyID.AsInteger)
   else
    Begin
     If (ibdsPrimaryTovarOutcomeBodySet.Locate('PRIMARY_TOVAR_OUTCOME_BODY_ID',ibdsMainPrimaryTovarOutcomeBodyID.AsString,[]) and
        (MessageDlg('Заменить старый состав комплекта новым?',mtConfirmation,[mbYes,mbNo],0)=mrYes)) then
      DeleteSet(ibdsPrimaryTovarOutcomeBodySet,ibdsPrimaryTovarOutcomeBodySetPRIMARY_TOVAR_OUTCOME_BODY_ID,ibdsMainPrimaryTovarOutcomeBodyID.AsInteger);
     InsertSet(ibsAux.Database, ibsAux.Transaction, ibdsPrimaryTovarOutcomeBodySet, ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID.AsString, ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString);
    End
  End;
 ibsLocalAux.Free
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_IDChange(
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
  end
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyAfterOpen(
  DataSet: TDataSet);
 var MainCurrencyRate : Double;
begin
 If (ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.Visible) and
    (ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.AsString<>'') and
    (ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString<>'') and
    (ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.AsFloat<>0) then
  MainCurrencyRate := GetMainCurrencyRate(ibsAux,ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.AsString,ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString,ibdsMainPrimaryTovarOutcomeCURRENCY_ID.AsInteger,ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.AsFloat);
 If (DataSet=ibdsMainPrimaryTovarOutcomeBody) then
  Begin
   SetCurrencyFmt;
   ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_IDChange(ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID);
   GetTotalMany
  End;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select LAST_BUY_PRICE, MAIN_LEAVINGS_TOTAL, ADDITIONAL_LEAVINGS_TOTAL from GET_GOODS_INFO(:STORE_ID, :ARTICUL_ID, :MADE_IN)');
 ibsAux.Prepare;
 ibsAux.GenerateParamNames := True;
 DataSet.DisableControls;
 While NOT (DataSet.Eof) do
  Begin
   ibsAux.ParamByName('STORE_ID').AsString := ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString;
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
 If (DataSet=ibdsMainPrimaryTovarOutcomeBody) then
  Begin
   ibdsPrimaryTovarOutcomeBodySet.Close;
   ibdsPrimaryTovarOutcomeBodySet.Open;
   tvPrimaryTovarOutcomeBody.ViewData.Collapse(True)
  End
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyCalcFields(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarOutcomeBodyItogo.Value := ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value*ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.Value+ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.Value;
 ibdsMainPrimaryTovarOutcomeBodyItogoMany.Value := ibdsMainPrimaryTovarOutcomeBodyItogo.Value*ibdsMainPrimaryTovarOutcomeBodyPRICE.Value
end;

procedure TfrmNaklOut.dbgPrimaryTovarOutcomeListCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 wwDBGridCalcCellColors3(Sender, Field, State, Highlight, AFont, ABrush)
end;

procedure TfrmNaklOut.ArticulSetBodyArticulID;
begin
 If NOT(tvPrimaryTovarOutcomeBody.OptionsData.Inserting) then
  Exit;
 If (frmArticuls.ibdsMainITEM_TYPE.Value in [1,2,3]) then
  With ((dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
   Begin
    If NOT (State in [dsEdit, dsInsert]) then
     Edit;
    FieldByName('ARTICUL_ID').AsInteger := frmArticuls.ibdsMainID.AsInteger
   End;
end;

procedure TfrmNaklOut.ArticulInsertBodyArticulID;
begin
 If NOT(tvPrimaryTovarOutcomeBody.OptionsData.Inserting) then
  Exit;
 If (frmArticuls.ibdsMainITEM_TYPE.Value in [1,2,3]) then
  With ((dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
   Begin
    Append;
    FieldByName('ARTICUL_ID').AsInteger := frmArticuls.ibdsMainID.AsInteger
   End;
end;

procedure TfrmNaklOut.TovarSetBodyArticulID;
begin
 If NOT(tvPrimaryTovarOutcomeBody.OptionsData.Inserting) then
  Exit;
 With ((dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
  Begin
   If NOT (State in [dsEdit, dsInsert]) then
    Edit;
   If (frmTovar.ibdsGoods.Active) then
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsARTICUL_ID.Value
   else
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsTotalsARTICUL_ID.Value
  End
end;

procedure TfrmNaklOut.TovarInsertBodyArticulID;
begin
 If NOT(tvPrimaryTovarOutcomeBody.OptionsData.Inserting) then
  Exit;
 With ((dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
  Begin
   Append;
   If (frmTovar.ibdsGoods.Active) then
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsARTICUL_ID.Value
   else
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsTotalsARTICUL_ID.Value
  End
end;

procedure TfrmNaklOut.SetCurrencyFmt;
 var k : Integer;
     CurrencyFrmt : String;
begin
 k := ibdsCurrencyDECIMALS_OUT.Value;
 CurrencyRoundPower := Trunc(Power(10,k));
 CurrencyFrmt := '#,##0.';
 While (k>0) do
  Begin
   CurrencyFrmt := CurrencyFrmt+'0';
   Dec(k)
  End;
 ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.DisplayFormat := CurrencyFrmt;
 ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.EditFormat := Copy(CurrencyFrmt,Pos('0.',CurrencyFrmt),Length(CurrencyFrmt)-Pos('0.',CurrencyFrmt)+1)+'###';
 ibdsMainPrimaryTovarOutcomeBodyPRICE.DisplayFormat := CurrencyFrmt;
 ibdsMainPrimaryTovarOutcomeBodyPRICE.EditFormat := Copy(CurrencyFrmt,Pos('0.',CurrencyFrmt),Length(CurrencyFrmt)-Pos('0.',CurrencyFrmt)+1)+'###';
 ibdsPrimaryTovarOutcomeBodySetLAST_BUY_PRICE.DisplayFormat := ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.DisplayFormat;
 ibdsPrimaryTovarOutcomeBodySetLAST_BUY_PRICE.EditFormat := ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.EditFormat;
 ibdsPrimaryTovarOutcomeBodySetPRICE.DisplayFormat := ibdsMainPrimaryTovarOutcomeBodyPRICE.DisplayFormat;
 ibdsPrimaryTovarOutcomeBodySetPRICE.EditFormat := ibdsMainPrimaryTovarOutcomeBodyPRICE.EditFormat;
 ibdsMainPrimaryTovarOutcomeBodyItogoMany.DisplayFormat := CurrencyFrmt;
 ibdsMainPrimaryTovarOutcomeBodyItogoMany.EditFormat := Copy(CurrencyFrmt,Pos('0.',CurrencyFrmt),Length(CurrencyFrmt)-Pos('0.',CurrencyFrmt)+1)
end;

procedure TfrmNaklOut.ibdsMadeInBeforeOpen(DataSet: TDataSet);
begin
 ibdsMadeIn.ParamByName('STORE_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.Value
end;

procedure TfrmNaklOut.ibdsCurrencyBeforeOpen(DataSet: TDataSet);
begin
 ibdsCurrency.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.Value;
 ibdsCurrency.ParamByName('STORE_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.Value;
end;

procedure TfrmNaklOut.GetTotalMany;
 var BookMark : String;
begin
 TotalMany := 0;
 NDS := 0;
 BookMark := ibdsMainPrimaryTovarOutcomeBody.Bookmark;
 ibdsMainPrimaryTovarOutcomeBody.DisableControls;
 ibdsMainPrimaryTovarOutcomeBody.First;
 While NOT (ibdsMainPrimaryTovarOutcomeBody.Eof) do
  Begin
   TotalMany := TotalMany+ibdsMainPrimaryTovarOutcomeBodyItogoMany.AsFloat;
   try
    NDS := NDS+ibdsMainPrimaryTovarOutcomeBodyItogo.Value*Round((ibdsMainPrimaryTovarOutcomeBodyPRICE.Value/ibdsMainPrimaryTovarOutcomeBodyItogo.Value)*ibdsMainPrimaryTovarOutcomeBodyNDS.Value/(100+ibdsMainPrimaryTovarOutcomeBodyNDS.Value)*CurrencyRoundPower)/CurrencyRoundPower
   except
    NDS := 0
   end;
   ibdsMainPrimaryTovarOutcomeBody.Next
  End;
 ibdsMainPrimaryTovarOutcomeBody.Bookmark := BookMark;
 dbeItogo.Text :=FormatFloat(ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.DisplayFormat,TotalMany);
 dbeNDS.Text :=FormatFloat(ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.DisplayFormat,NDS);
 dbeTovar.Text :=FormatFloat(ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.DisplayFormat,TotalMany-NDS);
 ibdsMainPrimaryTovarOutcomeBody.EnableControls
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyARTICULChange(
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

procedure TfrmNaklOut.pmParentInvoiceOutClick(Sender: TObject);
begin
 If (ibdsMainPrimaryTovarOutcome.RecordCount>0) or (ibdsMainPrimaryTovarOutcome.State=dsInsert) then
  Case (Sender as TMenuItem).Tag of
   1 : Begin
        If (frmMain.FindComponent('frmInvoiceOut')=nil) then
         Begin
          TempIn_Out := 1;
          If NOT (ibdsMainPrimaryTovarOutcomePARENT_ID.IsNull) and (ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value=1) then
           Invoice_ID := ibdsMainPrimaryTovarOutcomePARENT_ID.Value;
          frmInvoiceOut := TfrmInvoice.Create(frmMain);
          frmInvoiceOut.Name := 'frmInvoiceOut'
         End
        else
         If NOT (ibdsMainPrimaryTovarOutcomePARENT_ID.IsNull) and (ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value=(Sender as TMenuItem).Tag) then
          Begin
           If (frmInvoiceOut.PageControl1.ActivePageIndex<>1) then
            frmInvoiceOut.PageControl1.ActivePageIndex := 1;
           frmInvoiceOut.ibdsMainInvoice.Close;
           frmInvoiceOut.ibdsMainInvoice.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarOutcomePARENT_ID.Value;
           frmInvoiceOut.ibdsMainInvoice.Open
          End;
        frmInvoiceOut.LookUpProcedure := SetInvoiceID;
        If (ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value<>1) then
         Begin
          If NOT (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
           ibdsMainPrimaryTovarOutcome.Edit;
          ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value := 1
         End;
        frmInvoiceOut.Show
       End;
   2 : Begin
        If (frmMain.FindComponent('frmInvoiceIn')=nil) then
         Begin
          TempIn_Out := 2;
          If NOT (ibdsMainPrimaryTovarOutcomePARENT_ID.IsNull) and (ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value=2) then
           Invoice_ID := ibdsMainPrimaryTovarOutcomePARENT_ID.Value;
          frmInvoiceIn := TfrmInvoice.Create(frmMain);
          frmInvoiceIn.Name := 'frmInvoiceIn'
         End
        else
         If NOT (ibdsMainPrimaryTovarOutcomePARENT_ID.IsNull) and (ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value=(Sender as TMenuItem).Tag) then
          Begin
           If (frmInvoiceIn.PageControl1.ActivePageIndex<>1) then
            frmInvoiceIn.PageControl1.ActivePageIndex := 1;
           frmInvoiceIn.ibdsMainInvoice.Close;
           frmInvoiceIn.ibdsMainInvoice.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarOutcomePARENT_ID.Value;
           frmInvoiceIn.ibdsMainInvoice.Open
          End;
        frmInvoiceIn.LookUpProcedure := SetInvoiceID;
        If (ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value<>2) then
         Begin
          If NOT (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
           ibdsMainPrimaryTovarOutcome.Edit;
          ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value := 2
         End;
        frmInvoiceIn.Show
       End
  End
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyBeforeOpen(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarOutcomeBody.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarOutcome.ParamByName('ID').AsInt64
end;

procedure TfrmNaklOut.ibdsEnterpriseStoresBeforeOpen(DataSet: TDataSet);
begin
 ibdsEnterpriseStores.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.Value
end;

procedure TfrmNaklOut.ibdsPersonsBeforeOpen(DataSet: TDataSet);
begin
 ibdsPersons.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.Value
end;

procedure TfrmNaklOut.ibdsPrimary_SetupBeforeOpen(DataSet: TDataSet);
begin
 ibdsPrimary_Setup.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.Value;
 ibdsPrimary_Setup.ParamByName('PERSON_ID').AsInt64 := PersonID
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeENTERPRISE_IDChange(
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
 If (ibdsDoverennosty.Active) then
  Begin
   ibdsDoverennosty.Close;
   ibdsDoverennosty.Open
  End;
 If (ibdsCurrency.Active) then
  Begin
   ibdsCurrency.Close;
   ibdsCurrency.Open
  End
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyBeforePost(
  DataSet: TDataSet);
 var NDSOld, NDSNew : Double;
begin
 If (ibdsMainPrimaryTovarOutcomeBodyItogoManyOld.AsFloat<>ibdsMainPrimaryTovarOutcomeBodyItogoMany.AsFloat) then
  Begin
   NDSOld := Round((ibdsMainPrimaryTovarOutcomeBodyItogoManyOld.Value)*ibdsMainPrimaryTovarOutcomeBodyNDS.Value/(100+ibdsMainPrimaryTovarOutcomeBodyNDS.Value)*CurrencyRoundPower)/CurrencyRoundPower;
   NDSNew := Round((ibdsMainPrimaryTovarOutcomeBodyItogoMany.Value)*ibdsMainPrimaryTovarOutcomeBodyNDS.Value/(100+ibdsMainPrimaryTovarOutcomeBodyNDS.Value)*CurrencyRoundPower)/CurrencyRoundPower;
   NDS := NDS-NDSOld+NDSNew;
   TotalMany := TotalMany-ibdsMainPrimaryTovarOutcomeBodyItogoManyOld.AsFloat+ibdsMainPrimaryTovarOutcomeBodyItogoMany.AsFloat;
   ibdsMainPrimaryTovarOutcomeBodyItogoManyOld.Value := ibdsMainPrimaryTovarOutcomeBodyItogoMany.AsFloat;
   dbeItogo.Text :=FormatFloat(ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.DisplayFormat,TotalMany);
   dbeNDS.Text :=FormatFloat(ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.DisplayFormat,NDS);
   dbeTovar.Text :=FormatFloat(ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.DisplayFormat,TotalMany-NDS)
  End
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeCURRENCY_RATEChange(
  Sender: TField);
 var BookMark : String;
begin
 If (ibdsMainPrimaryTovarOutcomeBody.RecordCount>0) and (OldCurrencyRate<>ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.AsFloat) then
  Begin
   BookMark := ibdsMainPrimaryTovarOutcomeBody.Bookmark;
   ibdsMainPrimaryTovarOutcomeBody.DisableControls;
   ibdsMainPrimaryTovarOutcomeBody.First;
   While NOT (ibdsMainPrimaryTovarOutcomeBody.Eof) do
    Begin
     ibdsMainPrimaryTovarOutcomeBody.Edit;
     ibdsMainPrimaryTovarOutcomeBodyPRICE.Value := Round((ibdsMainPrimaryTovarOutcomeBodyPRICE.Value*OldCurrencyRate/ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
     ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.Value := Round((ibdsMainPrimaryTovarOutcomeBodyLAST_BUY_PRICE.Value*OldCurrencyRate/ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
     ibdsMainPrimaryTovarOutcomeBodyPRICE_REFERENCE.Value := Round((ibdsMainPrimaryTovarOutcomeBodyPRICE_REFERENCE.Value*OldCurrencyRate/ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
     ibdsMainPrimaryTovarOutcomeBody.Next
    End;
   ibdsMainPrimaryTovarOutcomeBody.Bookmark := BookMark;
   ibdsMainPrimaryTovarOutcomeBody.EnableControls
  End;
 OldCurrencyRate := ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.AsFloat
end;

procedure TfrmNaklOut.MenuItem2Click(Sender: TObject);
 var BookMark : String;
begin
 If (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarOutcome.Post;
 BookMark := ibdsMainPrimaryTovarOutcomeBody.Bookmark;
 ibdsMainPrimaryTovarOutcomeBody.DisableControls;
 ibdsMainPrimaryTovarOutcomeBody.First;
 While NOT (ibdsMainPrimaryTovarOutcomeBody.Eof) do
  Begin
   ibdsMainPrimaryTovarOutcomeBody.Edit;
   ibdsMainPrimaryTovarOutcomeBodyPERCENT.Value := ibdsMainPrimaryTovarOutcomePERCENT.AsFloat;
   ibdsMainPrimaryTovarOutcomeBody.Next
  End;
 ibdsMainPrimaryTovarOutcomeBody.Bookmark := BookMark;
 ibdsMainPrimaryTovarOutcomeBody.EnableControls;
 StteChange('PrimaryTovarOutcome', True)
end;

procedure TfrmNaklOut.MenuItem1Click(Sender: TObject);
 var BookMark : String;
begin
 If (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarOutcome.Post;
 BookMark := ibdsMainPrimaryTovarOutcomeBody.Bookmark;
 ibdsMainPrimaryTovarOutcomeBody.DisableControls;
 ibdsMainPrimaryTovarOutcomeBody.First;
 While NOT (ibdsMainPrimaryTovarOutcomeBody.Eof) do
  Begin
   If (ibdsMainPrimaryTovarOutcomeBodyPRICE_REFERENCE.AsFloat<>0) then
    Begin
     ibdsMainPrimaryTovarOutcomeBody.Edit;
     ibdsMainPrimaryTovarOutcomeBodyPRICE.Value := Round(GeneratePrice(ibdsMainPrimaryTovarOutcomeBodyPRICE_REFERENCE.AsFloat,
                                                                       ibdsMainPrimaryTovarOutcomePRICE_FORMULA.AsString,
                                                                       ibdsMainPrimaryTovarOutcomeBodyPERCENT.AsFloat,
                                                                       0,0)*CurrencyRoundPower)/CurrencyRoundPower
    End;                                                                   
   ibdsMainPrimaryTovarOutcomeBody.Next
  End;
 ibdsMainPrimaryTovarOutcomeBody.Bookmark := BookMark;
 ibdsMainPrimaryTovarOutcomeBody.EnableControls;
 StteChange('PrimaryTovarOutcome', True)
end;

procedure TfrmNaklOut.MenuItem3Click(Sender: TObject);
 var BookMark : String;
begin
 If (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarOutcome.Post;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select G.PRICE');
 ibsAux.SQL.Add('from GOODS G');
 ibsAux.SQL.Add('where (G.ARTICUL_ID=:ARTICUL_ID) and (G.MADE_IN=:MADE_IN) and');
 ibsAux.SQL.Add('(G.STORE_ID='+ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsString+')');
 ibsAux.Prepare;
 ibsAux.GenerateParamNames := True;
 BookMark := ibdsMainPrimaryTovarOutcomeBody.Bookmark;
 ibdsMainPrimaryTovarOutcomeBody.DisableControls;
 ibdsMainPrimaryTovarOutcomeBody.First;
 While NOT (ibdsMainPrimaryTovarOutcomeBody.Eof) do
  Begin
   ibsAux.ParamByName('ARTICUL_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID.AsInteger;
   ibsAux.ParamByName('MADE_IN').AsString := ibdsMainPrimaryTovarOutcomeBodyMADE_IN.AsString;
   ibsAux.ExecQuery;
   If (ibsAux.FieldbyName('PRICE').AsDouble<>0) then
    Begin
     ibdsMainPrimaryTovarOutcomeBody.Edit;
     ibdsMainPrimaryTovarOutcomeBodyPRICE.Value := Round(GeneratePrice(ibsAux.FieldbyName('PRICE').AsDouble,
                                                         ibdsMainPrimaryTovarOutcomePRICE_FORMULA.AsString,
                                                         ibdsMainPrimaryTovarOutcomeBodyPERCENT.AsFloat,
                                                         0,0)*CurrencyRoundPower)/CurrencyRoundPower
    End;
   ibsAux.Close;
   ibdsMainPrimaryTovarOutcomeBody.Next
  End;
 ibdsMainPrimaryTovarOutcomeBody.Bookmark := BookMark;
 ibdsMainPrimaryTovarOutcomeBody.EnableControls;
 StteChange('PrimaryTovarOutcome', True)
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPRICEChange(
  Sender: TField);
begin
 If (ibdsMainPrimaryTovarOutcomeBodyPRICE_REFERENCE.AsFloat=0) and (ibdsMainPrimaryTovarOutcomeBodyPRICE.AsFloat<>0) then
  ibdsMainPrimaryTovarOutcomeBodyPRICE_REFERENCE.Value := ibdsMainPrimaryTovarOutcomeBodyPRICE.AsFloat
end;

procedure TfrmNaklOut.sbFirstDoverennostyClick(Sender: TObject);
begin
 ibdsDoverennosty.First
end;

procedure TfrmNaklOut.sbPriorDoverennostyClick(Sender: TObject);
begin
 ibdsDoverennosty.Prior
end;

procedure TfrmNaklOut.sbNextDoverennostyClick(Sender: TObject);
begin
 ibdsDoverennosty.Next
end;

procedure TfrmNaklOut.sbLastDoverennostyClick(Sender: TObject);
begin
 ibdsDoverennosty.Last
end;

procedure TfrmNaklOut.sbAddDoverennostyClick(Sender: TObject);
begin
 ibdsDoverennosty.Insert
end;

procedure TfrmNaklOut.sbDeleteDoverennostyClick(Sender: TObject);
begin
 ibdsDoverennosty.Delete;
 sbDeleteDoverennosty.Enabled := (ibdsDoverennosty.RecordCount>0)
end;

procedure TfrmNaklOut.sbApplyDoverennostyClick(Sender: TObject);
begin
 try
  ibdsDoverennosty.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Doverennosty', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 sbDeleteDoverennosty.Enabled := (ibdsDoverennosty.RecordCount>0)
end;

procedure TfrmNaklOut.sbCancelDoverennostyClick(Sender: TObject);
begin
 ibdsDoverennosty.CancelUpdates;
 StteChange('Doverennosty', False);
 sbDeleteDoverennosty.Enabled := (ibdsDoverennosty.RecordCount>0)
end;

procedure TfrmNaklOut.dsDoverennostyStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('Doverennosty', True)
  else
   StteChange('Doverennosty', ibdsDoverennosty.UpdatesPending)
end;

procedure TfrmNaklOut.ibdsDoverennostyNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_DOVERENNOSTY,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsDoverennostyID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsDoverennostyENTERPRISE_ID.Value := ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.AsLargeInt;
 ibdsDoverennostyCONTRACTOR_ID.Value := ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID.AsLargeInt;
 If (ibdsDoverennosty.RecordCount>0) then
  dbgDoverennosty.SelectedIndex := 0
end;

procedure TfrmNaklOut.ibdsDoverennostyUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsDoverennosty.InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings(ibdsDoverennosty.ModifySQL);
    ukDelete: ibsWhite.SQL.AddStrings(ibdsDoverennosty.DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   If (UpdateKind=ukInsert) then
    Begin
     ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsDoverennostyENTERPRISE_ID.AsLargeInt;
     ibsWhite.ParamByName('CONTRACTOR_ID').AsInt64 := ibdsDoverennostyCONTRACTOR_ID.AsLargeInt
    End;
   If (UpdateKind in [ukInsert, ukModify]) then
    Begin
     ibsWhite.ParamByName('NUMBER').Value := ibdsDoverennostyNUMBER.AsVariant;
     ibsWhite.ParamByName('DATE_START').Value := ibdsDoverennostyDATE_START.AsVariant;
     ibsWhite.ParamByName('DATE_VALID').Value := ibdsDoverennostyDATE_VALID.AsVariant;
     ibsWhite.ParamByName('DOCUMENT').Value := ibdsDoverennostyDOCUMENT.AsVariant;
     ibsWhite.ParamByName('NAME').Value := ibdsDoverennostyNAME.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsDoverennostyCOMMENTS.AsVariant;
    End;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsDoverennostyID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsDoverennostyID.OldValue);
   ibsWhite.ExecQuery;
   ibsWhite.Close
  End;
 UpdateAction := uaApply
end;

procedure TfrmNaklOut.ibdsDoverennostyBeforeOpen(DataSet: TDataSet);
begin
 ibdsDoverennosty.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.AsLargeInt;
 ibdsDoverennosty.ParamByName('CONTRACTOR_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID.AsLargeInt;
 ibdsDoverennosty.ParamByName('DATE_VALID').AsDate := ibdsMainPrimaryTovarOutcomePRIMARY_DATE.AsDateTime
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeIS_NAKLChange(
  Sender: TField);
begin
 If (ibdsMainPrimaryTovarOutcome.State in [dsEdit,dsInsert]) and
    (((ibdsPrimary_SetupBLACK.Value=1) and
      (ibdsMainPrimaryTovarOutcomeBLACK.Value=0)) or
     ((ibdsPrimary_SetupCREATE_RIGHT.AsInteger<>3) and
      (ibdsPrimary_SetupCREATE_RIGHT.AsInteger<>Succ(ibdsMainPrimaryTovarOutcomeBLACK.AsInteger)))) and
    NOT (ibdsMainPrimaryTovarOutcomePRIMARY_SETUP_ID.IsNull) then
  Begin
   ibdsMainPrimaryTovarOutcomePRIMARY_SETUP_ID.AsVariant := null;
   ibdsPrimary_Setup.Close;
   GenerateSelectPrimaryTovarOutcomeSetup;
   ibdsPrimary_Setup.Open
  End;
 If (ibdsMainPrimaryTovarOutcome.State in [dsEdit,dsInsert]) and
    (ibdsPrimary_SetupBLACK.Value=1) and
    (ibdsMainPrimaryTovarOutcomeBLACK.Value=0) and
    NOT (ibdsMainPrimaryTovarOutcomePRIMARY_SETUP_ID.IsNull) then
  ibdsMainPrimaryTovarOutcomePRIMARY_SETUP_ID.AsVariant := null;
 If (Black) then
  ShowDoverennosty((ibdsMainPrimaryTovarOutcomeIS_NAKL.AsInteger=1) and (ibdsMainPrimaryTovarOutcomeBLACK.AsInteger=0))
 else
  ShowDoverennosty((ibdsMainPrimaryTovarOutcomeIS_NAKL.AsInteger=1));
 StteChange('PrimaryTovarOutcome', True)
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeCONTRACTOR_IDChange(
  Sender: TField);
begin
 If (ibdsDoverennosty.Active) then
  Begin
   ibdsDoverennosty.Close;
   ibdsDoverennosty.Open
  End
end;

procedure TfrmNaklOut.wwRadioGroup1Change(Sender: TObject);
begin
 Label22.Visible := wwRadioGroup1.ItemIndex=0;
 wwDBLookupCombo2.Visible := wwRadioGroup1.ItemIndex=0
end;

procedure TfrmNaklOut.ibdsDoverennostyAfterOpen(DataSet: TDataSet);
begin
 sbDeleteDoverennosty.Enabled := (ibdsDoverennosty.RecordCount>0)
end;

procedure TfrmNaklOut.ShowDoverennosty(Is_Show : Boolean);
begin
 ibdsDoverennosty.Active := Is_Show;
 Label22.Visible := Is_Show;
 wwDBLookupCombo2.Visible := Is_Show;
 If NOT (Is_Show) then
  Begin
   If (ibdsMainPrimaryTovarOutcome.State in [dsEdit,dsInsert]) then
    ibdsMainPrimaryTovarOutcomeDOVERENNOST_ID.AsVariant := NULL
  End
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeDOVERENNOST_IDChange(
  Sender: TField);
begin
 If (ibdsMainPrimaryTovarOutcomeDOVERENNOST_ID.IsNull) then
  wwDBLookupCombo2.Text := ''
 else
  wwDBLookupCombo2.Text := '№ '+ibdsDoverennostyNUMBER.AsString+' от '+
                           ibdsDoverennostyDATE_START.AsString 
end;

procedure TfrmNaklOut.N5Click(Sender: TObject);
begin
 If NOT (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarOutcome.Edit;
 ibdsMainPrimaryTovarOutcomeDOVERENNOST_ID.AsVariant := Null
end;

procedure TfrmNaklOut.dbgPrimaryTovarOutcomeListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeListCalcFields(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryTovarOutcomeListAMOUNT_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsMainPrimaryTovarOutcomeListDECIMALS.AsInteger),ibdsMainPrimaryTovarOutcomeListAMOUNT.AsFloat)
end;

procedure TfrmNaklOut.sbFacturaClick(Sender: TObject);
 var Year, Month: Word;
begin
 If (ibdsFactura.RecordCount=0) then
  Begin
   If (MessageDlg('Создать счет-фактуру?',mtConfirmation,[mbOk,mbCancel],0)=mrOK) then
    Begin
     ibdsFactura.Append;
     ibdsFacturaNUMBER_PREFIX.Value := '';
     ibdsFacturaNUMBER_SUFFIX.Value := '/'+FormatDateTime('yyyy',Date);
     ibdsFacturaFACTURA_DATE.Value := Date;
     ibdsFacturaPARENT_TYPE.Value := 1;
     ibdsFacturaPARENT_ID.AsLargeInt := ibdsMainPrimaryTovarOutcomeID.AsLargeInt;
     ibsGen_ID.SQL.Clear;
     ibsGen_ID.SQL.Add('select gen_id(GEN_ID_FACTURA,1) from rdb$database');
     ibsGen_ID.ExecQuery;
     ibdsFacturaID.AsLargeInt := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
     ibsGen_ID.Close;
     If (trLock.InTransaction) then
      trLock.Commit;
     pnlMessage.Show;
     Application.ProcessMessages;
     trLock.Params[1] := 'lock_write=FACTURA_LOCK';
     trLock.StartTransaction;
     pnlMessage.Hide;
     Application.ProcessMessages;
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select MAX(F.NUMBER)');
     ibsNumb.SQL.Add('from FACTURA F');
     ibsNumb.SQL.Add('where (F.FACTURA_DATE>=:START_DATE) and (F.FACTURA_DATE<=:STOP_DATE)');
     ibsNumb.GenerateParamNames := True;
     DecodeDate(Date,Year,Month,Month);
     ibsNumb.ParamByName('START_DATE').AsDate := EncodeDate(Year,1,1);
     ibsNumb.ParamByName('STOP_DATE').AsDate := EncodeDate(Year,12,31);
     ibsNumb.ExecQuery;
     ibdsFacturaNUMBER.Value := Succ(ibsNumb.FieldByName('MAX').AsInteger);
     ibsNumb.Close;
     sbApplyFacturaClick(sbApplyFactura);
     trLock.Params[1] := 'lock_write=PRIMARY_TOVAR_OUTCOME_LOCK'
    End
  End
 else
  pnlFactura.Show
end;

procedure TfrmNaklOut.dsFacturaStateChange(Sender: TObject);
begin
 sbApplyFactura.Enabled := (dsFactura.State in [dsEdit,dsInsert]);
 sbCancelFactura.Enabled := sbApplyFactura.Enabled
end;

procedure TfrmNaklOut.sbApplyFacturaClick(Sender: TObject);
begin
 try
  ibdsFactura.ApplyUpdates;
  trMain.CommitRetaining;
  pnlFactura.Show;
  If (trLock.InTransaction) then
   trLock.Commit
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка генерации счета-фактуры.', mtError, [mbOK],0)
 end
end;

procedure TfrmNaklOut.ibdsFacturaUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsFactura.InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings(ibdsFactura.ModifySQL)
   end;
   ibsWhite.GenerateParamNames := True;
   ibsWhite.ParamByName('PARENT_TYPE').Value := ibdsFacturaPARENT_TYPE.AsVariant;
   ibsWhite.ParamByName('PARENT_ID').AsInt64 := ibdsFacturaPARENT_ID.AsLargeInt;
   ibsWhite.ParamByName('NUMBER_PREFIX').Value := ibdsFacturaNUMBER_PREFIX.AsVariant;
   ibsWhite.ParamByName('NUMBER').Value := ibdsFacturaNUMBER.AsVariant;
   ibsWhite.ParamByName('NUMBER_SUFFIX').Value := ibdsFacturaNUMBER_SUFFIX.AsVariant;
   ibsWhite.ParamByName('FACTURA_DATE').Value := ibdsFacturaFACTURA_DATE.AsVariant;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsFacturaID.AsLargeInt
   else
    ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsFacturaID.AsLargeInt;
   ibsWhite.ExecQuery;
   ibsWhite.Close
  End;
 UpdateAction := uaApply
end;

procedure TfrmNaklOut.sbCancelFacturaClick(Sender: TObject);
begin
 ibdsFactura.CancelUpdates
end;

procedure TfrmNaklOut.ibdsReportHeaderCalcFields(DataSet: TDataSet);
 var BookMark : String;
begin
 ibdsReportBody.DisableControls;
 BookMark := ibdsReportBody.Bookmark;
 ibdsReportBody.First;
 ibdsReportHeaderAMOUNT.Value := 0;
 While NOT (ibdsReportBody.Eof) do
  Begin
   ibdsReportHeaderAMOUNT.Value := ibdsReportHeaderAMOUNT.Value+ibdsReportBodyPRICE.AsFloat*ibdsReportBodyAMOUNT.AsFloat;
   ibdsReportBody.Next;
  End;
 ibdsReportBody.Bookmark := BookMark;
 ibdsReportBody.EnableControls;
 ibdsReportHeaderAMOUNT_PROP.Value := CurrencyToStr(Trunc(StrToFloat(ibdsReportHeaderAMOUNT.AsString)),
                                                    AnsiLowerCase(ibdsReportHeaderNAME1.AsString),
                                                    AnsiLowerCase(ibdsReportHeaderNAME3.AsString),
                                                    AnsiLowerCase(ibdsReportHeaderNAME5.AsString),
                                                    1);
 ibdsReportHeaderAMOUNT_FRAC_PROP.Value := IntToStr(Round(Frac(StrToFloat(ibdsReportHeaderAMOUNT.AsString))*CurrencyRoundPower));
 If (Length(ibdsReportHeaderAMOUNT_FRAC_PROP.AsString)<2) then
  ibdsReportHeaderAMOUNT_FRAC_PROP.Value := '0'+ibdsReportHeaderAMOUNT_FRAC_PROP.Value;
 ibdsReportHeaderAMOUNT_FRAC_PROP.Value := ibdsReportHeaderAMOUNT_FRAC_PROP.Value+' '+AnsiLowerCase(ibdsReportHeaderNAME001.AsString);
 If NOT (ibdsReportHeaderDOVERENNOST_ID.IsNull) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select D.NAME, D.NUMBER from DOVERENNOSTY D where (D.ID='+ibdsReportHeaderDOVERENNOST_ID.AsString+')');
   ibsAux.ExecQuery;
   ibdsReportHeaderDOVERENNOST_PERSON.Value := ibsAux.FieldByName('NAME').AsString;
   ibdsReportHeaderDOVERENNOST_NUMBER.Value := ibsAux.FieldByName('NUMBER').AsString;
   ibsAux.Close
  End;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select F.NUMBER_PREFIX||cast(F.NUMBER as varchar(30))||F.NUMBER_SUFFIX NUMBER_STR, F.FACTURA_DATE');
 ibsAux.SQL.Add('from FACTURA F where (F.PARENT_TYPE=1) and (F.PARENT_ID='+ibdsReportHeader.ParamByName('ID').AsString+')');
 ibsAux.ExecQuery;
 ibdsReportHeaderFACTURA_NUMBER.Value := ibsAux.FieldByName('NUMBER_STR').AsString;
 ibdsReportHeaderFACTURA_DATE.Value := ibsAux.FieldByName('FACTURA_DATE').AsDate;
 ibsAux.Close
end;

procedure TfrmNaklOut.sbPrintPrimaryTovarOutcomeClick(Sender: TObject);
begin
 ibdsReportBody.Close;
 ibdsReportHeader.Close;
 ibdsReportBody.DataSource := dsMainPrimaryTovarOutcome;
 ibdsReportHeader.DataSource := dsMainPrimaryTovarOutcome;
 ibdsReportBody.Open;
 ibdsReportHeader.Open;
 If (tvPrimaryTovarOutcomeBodyGUARANTEE_PERIOD_STR<>nil) then
  frmDM.frReport1.OnGetValue := frReportGetValue; 
 sbPrintPrimaryTovarOutcome.Tag := ibdsMainPrimaryTovarOutcomeIS_NAKL.AsInteger;
 frVariables.Clear;
 frVariables['DisplayFormat'] := ibdsMainPrimaryTovarOutcomeBodyPRICE.DisplayFormat;
 frVariables['CurrencyRoundPower'] := CurrencyRoundPower;
 frVariables['MomDoc'] := fcContract.Caption;
 sbPrintClick((Sender as TSpeedButton), ibsAux, ibdsReportBody);
end;

procedure TfrmNaklOut.ibdsReportBodyCalcFields(DataSet: TDataSet);
begin
 ibdsReportBodyNDS_AMOUNT.Value := Round(ibdsReportBodyPRICE.AsFloat*ibdsReportBodyNDS.AsFloat/(100+ibdsReportBodyNDS.Value)*CurrencyRoundPower)/CurrencyRoundPower;
 If (ibdsReportBodyCOUNTRY_ID.IsNull) then
  Begin
   ibdsReportBodyDECLARATION_NUMBER_FULL.Value := 'б/н';
   ibdsReportBodyCOUNTRY_NAME.Value := 'РОССИЯ'
  End
 else
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select C.NAME from COUNTRIES C where (C.ID='+ibdsReportBodyCOUNTRY_ID.AsString+')');
   ibsAux.ExecQuery;
   ibdsReportBodyCOUNTRY_NAME.Value := ibsAux.FieldByName('NAME').AsString;
   ibdsReportBodyDECLARATION_NUMBER_FULL.Value := ibdsReportBodyDECLARATION_NUMBER.AsString;
   ibsAux.Close
  End
end;

procedure TfrmNaklOut.SetContractor;
begin
 If (Parent_Closed) or (ibdsMainPrimaryTovarOutcomeCLOSED.AsInteger=1) or
    (ibdsMainPrimaryTovarOutcomeNUMBER.ReadOnly)  then
  Exit;
 ibdsContractors.Close;
 ibdsContractors.Open;
 ibdsContractors.Locate('NAME',frmKontrAgList.ibdsMainContractorsNAME.AsString,[]);
 If NOT (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarOutcome.Edit;
 ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID.Value := ibdsContractorsID.Value;
 If (ibdsMainPrimaryTovarOutcomePERCENT.IsNull) then
  ibdsMainPrimaryTovarOutcomePERCENT.Value := ibdsContractorsPRICE_PERCENT.Value;
 wwDBLookupCombo16.Text := ibdsContractorsNAME.AsString;
 frmKontrAgList.LookUpProcedure := nil
end;

procedure TfrmNaklOut.wwDBLookupCombo16KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If (Key=vk_F6) then
  Begin
   If (frmMain.FindComponent('frmKontrAgList')=nil) then
    frmKontrAgList := TfrmKontrAgList.Create(frmMain);
   frmKontrAgList.LookUpProcedure := SetContractor;
   If NOT (ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID.IsNull) then
    frmKontrAgList.ibdsMainContractors.Locate('ID',ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID.AsString,[]);
   frmKontrAgList.Show
  End
end;

procedure TfrmNaklOut.N13Click(Sender: TObject);
begin
 If ((Sender as TMenuItem).Owner.FindComponent('frmGoodInfo')=nil) then
  frmGoodInfo := TfrmGoodInfo.Create((Sender as TMenuItem).Owner);
 frmGoodInfo.ibdsGoods.Close;
 frmGoodInfo.ibdsReservation.Close;
 frmGoodInfo.ibdsGoods.DataSource := (dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource;
 frmGoodInfo.ibdsReservation.DataSource := (dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource;
 frmGoodInfo.ibdsGoods.Open;
 frmGoodInfo.ibdsReservation.Open;
 frmGoodInfo.Show
end;

procedure TfrmNaklOut.wwDBLookupCombo16CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainPrimaryTovarOutcomeCONTRACTOR_NAME.Value := ibdsContractorsNAME.AsString
end;

procedure TfrmNaklOut.ibdsFilterPersonsAfterOpen(DataSet: TDataSet);
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

procedure TfrmNaklOut.ibdsFilterPersonsBeforeClose(DataSet: TDataSet);
begin
 IType := edType.Text;
 IContractorType := edContractorType.Text;
 Contractor := edContractor.Text;
 Meneger := edMeneger.Text;
 ArticulName := edArticul.Text;
 DateStart := deDateStart.Date;
 DateStop := deDateStop.Date
end;

procedure TfrmNaklOut.sbFilterPrimaryTovarOutcomeListClick(
  Sender: TObject);
 var BookMark : String;
begin
 ibdsFilterPersons.Active := sbFilterPrimaryTovarOutcomeList.Down;
 ibdsFilterTypes.Active := sbFilterPrimaryTovarOutcomeList.Down;
 ibdsFilterContractorTypes.Active := sbFilterPrimaryTovarOutcomeList.Down;
 ibdsFilterArticuls.Active := sbFilterPrimaryTovarOutcomeList.Down;
 pnlFilter.Visible := sbFilterPrimaryTovarOutcomeList.Down;
 pnlText.Visible := sbFilterPrimaryTovarOutcomeList.Down;
 BookMark := ibdsMainPrimaryTovarOutcomeList.Bookmark;
 Cursor := crHourGlass;
 ibdsMainPrimaryTovarOutcomeList.Close;
 GenerateSelectMainPrimaryTovarOutcomeList;
 ibdsMainPrimaryTovarOutcomeList.Open;
 try
  ibdsMainPrimaryTovarOutcomeList.Bookmark := BookMark
 except
 end;
 Cursor := crDefault;
end;

procedure TfrmNaklOut.sbReFilterClick(Sender: TObject);
begin
 sbFilterPrimaryTovarOutcomeList.Click;
 sbReFilter.Visible := False
end;

procedure TfrmNaklOut.cbContractorClick(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

procedure TfrmNaklOut.cbOpenClick(Sender: TObject);
begin
 sbReFilter.Visible := True;
 If (Sender as TwwCheckBox).Checked then
  If (Sender=cbOpen) then
   cbClosed.Checked := False
  else
   cbOpen.Checked := False
end;

procedure TfrmNaklOut.cbBlackClick(Sender: TObject);
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

procedure TfrmNaklOut.SpeedButton5Click(Sender: TObject);
begin
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True;
 SpeedButton5.Visible := pnlFilter.Visible;
 SpeedButton3.Visible := Not pnlFilter.Visible
end;

procedure TfrmNaklOut.edContractorChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbContractor.Checked)
end;

procedure TfrmNaklOut.edPrefixChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbPrefix.Checked)
end;

procedure TfrmNaklOut.edNumberChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbNumber.Checked)
end;

procedure TfrmNaklOut.edSuffixChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbSuffix.Checked)
end;

procedure TfrmNaklOut.edAmountChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbAmount.Checked)
end;

procedure TfrmNaklOut.sbRefreshPrimaryTovarOutcomeListClick(
  Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPrimaryTovarOutcomeList.Bookmark;
 ibdsMainPrimaryTovarOutcomeList.Close;
 ibdsMainPrimaryTovarOutcomeList.Open;
 try
  ibdsMainPrimaryTovarOutcomeList.Bookmark := BookMark
 except
 end
end;

procedure TfrmNaklOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  ibsAux.SQL.Clear;
  ibsAux.SQL.Add('delete from FILTERS where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
  ibsAux.ExecQuery;
  If (sbFilterPrimaryTovarOutcomeList.Down) then
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
 frmNaklOut := nil
end;

procedure TfrmNaklOut.cbFakeClick(Sender: TObject);
begin
 sbReFilter.Visible := True;
 If (Sender as TwwCheckBox).Checked then
  If (Sender=cbFake) then
   cbReal.Checked := False
  else
   cbFake.Checked := False;
 pnlFilter.Refresh
end;

procedure TfrmNaklOut.wwDBLookupCombo1BeforeDropDown(Sender: TObject);
begin
 ibdsPrimary_Setup.Filtered := True
end;

procedure TfrmNaklOut.dbgPrimaryTovarOutcomeListCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 Case (Sender as TComponent).Tag of
  1: If (AFieldName='AMOUNT_FMT') then
      wwDBGridCalcTitleAttributes(Sender, AFieldName, 'AMOUNT', AFont, ABrush, ATitleAlignment, OrderByMainPrimaryTovarOutcomeList)
     else
      wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainPrimaryTovarOutcomeList);
  3: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByDoverennosty);
 end
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeListAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('PrimaryTovarOutcomeList', True)
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('PrimaryTovarOutcome', True)
end;

procedure TfrmNaklOut.ibdsDoverennostyAfterDelete(DataSet: TDataSet);
begin
 StteChange('Doverennosty', True)
end;

procedure TfrmNaklOut.N7Click(Sender: TObject);
 var BookMark : String;
begin
 If (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarOutcome.Post;
 BookMark := ibdsMainPrimaryTovarOutcomeBody.Bookmark;
 ibdsMainPrimaryTovarOutcomeBody.DisableControls;
 ibdsMainPrimaryTovarOutcomeBody.First;
 While NOT (ibdsMainPrimaryTovarOutcomeBody.Eof) do
  Begin
   ibdsMainPrimaryTovarOutcomeBody.Edit;
   ibdsMainPrimaryTovarOutcomeBodyPRICE.Value :=
       Round(ibdsMainPrimaryTovarOutcomeBodyPRICE.Value*(1+ibdsMainPrimaryTovarOutcomeBodyPERCENT.AsFloat/100)*CurrencyRoundPower)/CurrencyRoundPower;
   ibdsMainPrimaryTovarOutcomeBody.Next
  End;
 ibdsMainPrimaryTovarOutcomeBody.Bookmark := BookMark;
 ibdsMainPrimaryTovarOutcomeBody.EnableControls;
 StteChange('PrimaryTovarOutcome', True);
 GetTotalMany
end;

procedure TfrmNaklOut.N01Click(Sender: TObject);
 var BookMark : String;
begin
 If NOT (ibdsMainPrimaryTovarOutcome.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryTovarOutcome.Edit;
 ibdsMainPrimaryTovarOutcomePERCENT.Value := 0;
 ibdsMainPrimaryTovarOutcome.Post;
 BookMark := ibdsMainPrimaryTovarOutcomeBody.Bookmark;
 ibdsMainPrimaryTovarOutcomeBody.DisableControls;
 ibdsMainPrimaryTovarOutcomeBody.First;
 While NOT (ibdsMainPrimaryTovarOutcomeBody.Eof) do
  Begin
   ibdsMainPrimaryTovarOutcomeBody.Edit;
   ibdsMainPrimaryTovarOutcomeBodyPRICE.Value :=
       Round(ibdsMainPrimaryTovarOutcomeBodyPRICE.Value/(1+ibdsMainPrimaryTovarOutcomeBodyPERCENT.AsFloat/100)*CurrencyRoundPower)/CurrencyRoundPower;
   ibdsMainPrimaryTovarOutcomeBodyPERCENT.Value := 0;    
   ibdsMainPrimaryTovarOutcomeBody.Next
  End;
 ibdsMainPrimaryTovarOutcomeBody.Bookmark := BookMark;
 ibdsMainPrimaryTovarOutcomeBody.EnableControls;
 StteChange('PrimaryTovarOutcome', True);
 GetTotalMany
end;

procedure TfrmNaklOut.dbgPrimaryTovarOutcomeListUpdateFooter(Sender: TObject);
 var CurrencyFrmt : String;
begin
 If (dgShowFooter in dbgPrimaryTovarOutcomeList.Options) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select SUM(PTOH.AMOUNT) AMOUNT, SUM(PTOH.SALDO_MANY) SALDO_MANY, C.SYMBOL, C.DECIMALS_OUT');
   ibsAux.SQL.Add(ibdsMainPrimaryTovarOutcomeList.SelectSQL[6]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarOutcomeList.SelectSQL[7]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarOutcomeList.SelectSQL[8]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarOutcomeList.SelectSQL[9]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarOutcomeList.SelectSQL[10]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarOutcomeList.SelectSQL[11]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarOutcomeList.SelectSQL[12]);
   ibsAux.SQL.Add(ibdsMainPrimaryTovarOutcomeList.SelectSQL[13]);
   ibsAux.SQL.Add(GetWhereMainPrimaryTovarOutcomeList);
   ibsAux.SQL.Add('group by C.SYMBOL, C.DECIMALS_OUT');
   ibsAux.GenerateParamNames := True;
   ibsAux.ParamByName('PERSON_ID').Value := PersonID;
   dbgPrimaryTovarOutcomeList.ColumnByName('AMOUNT_FMT').FooterValue := '';
   dbgPrimaryTovarOutcomeList.ColumnByName('SALDO_MANY').FooterValue := '';
   ibsAux.ExecQuery;
   While NOT (ibsAux.Eof) do
    Begin
     CurrencyFrmt := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_OUT').AsInteger);
     CurrencyFrmt := CurrencyFrmt+ibsAux.FieldByName('SYMBOL').AsString;
     dbgPrimaryTovarOutcomeList.ColumnByName('AMOUNT_FMT').FooterValue := dbgPrimaryTovarOutcomeList.ColumnByName('AMOUNT_FMT').FooterValue+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('AMOUNT').AsDouble)+#13#10;
     dbgPrimaryTovarOutcomeList.ColumnByName('SALDO_MANY').FooterValue := dbgPrimaryTovarOutcomeList.ColumnByName('SALDO_MANY').FooterValue+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('SALDO_MANY').AsDouble)+#13#10;
     ibsAux.Next
    End;
   dbgPrimaryTovarOutcomeList.ColumnByName('AMOUNT_FMT').FooterValue := Copy(dbgPrimaryTovarOutcomeList.ColumnByName('AMOUNT_FMT').FooterValue,1,Length(dbgPrimaryTovarOutcomeList.ColumnByName('AMOUNT_FMT').FooterValue)-2);
   dbgPrimaryTovarOutcomeList.ColumnByName('SALDO_MANY').FooterValue := Copy(dbgPrimaryTovarOutcomeList.ColumnByName('SALDO_MANY').FooterValue,1,Length(dbgPrimaryTovarOutcomeList.ColumnByName('SALDO_MANY').FooterValue)-2);
   dbgPrimaryTovarOutcomeList.OnUpdateFooter := Nil;
   dbgPrimaryTovarOutcomeList.FooterHeight := 22*ibsAux.RecordCount;
   ibsAux.Close;
   dbgPrimaryTovarOutcomeList.OnUpdateFooter := dbgPrimaryTovarOutcomeListUpdateFooter
  End
end;

procedure TfrmNaklOut.dbgPrimaryTovarOutcomeListIButtonClick(Sender: TObject);
begin
 If (dbgPrimaryTovarOutcomeListIButton.Down) then
  Begin
   dbgPrimaryTovarOutcomeList.Options := dbgPrimaryTovarOutcomeList.Options+[dgShowFooter];
   dbgPrimaryTovarOutcomeListUpdateFooter(dbgPrimaryTovarOutcomeList)
  End
 else
  dbgPrimaryTovarOutcomeList.Options := dbgPrimaryTovarOutcomeList.Options-[dgShowFooter]
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeListBeforeOpen(
  DataSet: TDataSet);
begin
 (DataSet as TIBDataSet).ParamByName('PERSON_ID').AsInt64 := PersonID
end;

procedure TfrmNaklOut.SetReadOnly;
 var ki : Integer;
begin
 For ki := 0 to Pred(ibdsMainPrimaryTovarOutcome.FieldCount) do
  ibdsMainPrimaryTovarOutcome.Fields[ki].ReadOnly :=
                    NOT((ibdsMainPrimaryTovarOutcome.State in [dsInsert]) or
                        (ibdsMainPrimaryTovarOutcomeNUMBER_PREFIX.AsString='НОВАЯ')) and
                    (((ibdsMainPrimaryTovarOutcome.Fields[ki]<>ibdsMainPrimaryTovarOutcomeCLOSED) and
                      ((ibdsMainPrimaryTovarOutcomeUPDATE_RIGHT.AsInteger=0) or
                       (ibdsMainPrimaryTovarOutcomeCLOSED.AsInteger=1))) or
                     ((ibdsMainPrimaryTovarOutcome.Fields[ki]=ibdsMainPrimaryTovarOutcomeCLOSED) and
                      (ibdsMainPrimaryTovarOutcomeCLOSE_RIGHT.AsInteger=0)));
 tvPrimaryTovarOutcomeBody.OptionsData.Inserting := ((ibdsMainPrimaryTovarOutcome.State in [dsInsert]) or
                                       (ibdsMainPrimaryTovarOutcomeNUMBER_PREFIX.AsString='НОВЫЙ')) or
                                   NOT((ibdsMainPrimaryTovarOutcomeUPDATE_RIGHT.AsInteger=0) or
                                       (ibdsMainPrimaryTovarOutcomeCLOSED.AsInteger=1));
 tvPrimaryTovarOutcomeBody.OptionsData.Appending := tvPrimaryTovarOutcomeBody.OptionsData.Inserting;
 tvPrimaryTovarOutcomeBody.OptionsData.Deleting := tvPrimaryTovarOutcomeBody.OptionsData.Inserting;
 tvSets.OptionsData := tvPrimaryTovarOutcomeBody.OptionsData;
 For ki := 0 to Pred(tvPrimaryTovarOutcomeBody.ColumnCount) do
  tvPrimaryTovarOutcomeBody.Columns[ki].Options.Editing := tvPrimaryTovarOutcomeBody.OptionsData.Inserting;
 For ki := 0 to Pred(tvSets.ColumnCount) do
  tvSets.Columns[ki].Options.Editing := tvPrimaryTovarOutcomeBody.OptionsData.Inserting;
 If (Black) then
  If (ibdsMainPrimaryTovarOutcomeBLACK.AsInteger=1) and
     (ibdsMainPrimaryTovarOutcomeUPDATE_RIGHT.AsInteger=1) and
     (ibdsMainPrimaryTovarOutcomeCLOSED.AsInteger=1) then
   Begin
    tvPrimaryTovarOutcomeBodyPRICE.Options.Editing := True;
    tvSetsPRICE.Options.Editing := True;
    ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.ReadOnly := False
   End;
 pmParentSelf.Enabled := NOT ibdsMainPrimaryTovarOutcomePARENT_TYPE.ReadOnly;
 If (ibdsMainPrimaryTovarOutcomePARENT_TYPE.ReadOnly) then
  Begin
   pmParentInvoiceIn.Enabled := (ibdsMainPrimaryTovarOutcomePARENT_TYPE.AsInteger=2);
   pmParentInvoiceOut.Enabled := (ibdsMainPrimaryTovarOutcomePARENT_TYPE.AsInteger=1)
  End
 else
  Begin
   pmParentInvoiceIn.Enabled := True;
   pmParentInvoiceOut.Enabled := True
  End;
 sbApplyPrimaryTovarOutcome.OnClick := sbApplyPrimaryTovarOutcomeClick;
 If NOT (ibdsMainPrimaryTovarOutcomeCLOSED.ReadOnly) and
    (ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.ReadOnly) and
    NOT (ibdsMainPrimaryTovarOutcomePARENT_TYPE.AsInteger=0) then
  Begin
   ibsAux.SQL.Clear;
   If (ibdsMainPrimaryTovarOutcomePARENT_TYPE.AsInteger=3) then
    ibsAux.SQL.Add('select C.CLOSED from CONTRACTS C where (C.ID='+ibdsMainPrimaryTovarOutcomePARENT_ID.AsString+')')
   else
    ibsAux.SQL.Add('select IH.CLOSED from INVOICE_HEADER IH where (IH.ID='+ibdsMainPrimaryTovarOutcomePARENT_ID.AsString+')');
   ibsAux.ExecQuery;
   Parent_Closed := (ibsAux.FieldByName('CLOSED').AsInteger=1);
   If (Parent_Closed) then
    Begin
     sbApplyPrimaryTovarOutcome.OnClick := nil;
     ibdsMainPrimaryTovarOutcomeCLOSED.ReadOnly := True;
     ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.ReadOnly := True;
     tvPrimaryTovarOutcomeBodyPRICE.Options.Editing := False
    End;
   ibsAux.Close
  End
end;

procedure TfrmNaklOut.ibdsFilterTypesBeforeOpen(DataSet: TDataSet);
begin
 ibdsFilterTypes.ParamByName('PERSON_ID').Value := PersonID
end;

procedure TfrmNaklOut.N1Click(Sender: TObject);
begin
 If (frmNaklOut.FindComponent('frmLastBuyPrice')=nil) then
  frmLastBuyPrice := TfrmLastBuyPrice.Create(frmNaklOut);
 frmLastBuyPrice.Top := Top;
 frmLastBuyPrice.Left := Screen.Width-frmLastBuyPrice.Width;
 frmLastBuyPrice.Run(trMain,(dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource,ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsLargeInt);
 frmLastBuyPrice.Show
end;

procedure TfrmNaklOut.wwDBLookupCombo13BeforeDropDown(Sender: TObject);
begin
 ibdsPersons.Filtered := True
end;

procedure TfrmNaklOut.wwDBLookupCombo13CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 ibdsPersons.Filtered := False
end;

procedure TfrmNaklOut.ibdsPersonsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsPersonsVALID.AsInteger=1)
end;

procedure TfrmNaklOut.ibdsPrimary_SetupFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 If NOT(Black) then
  exit;
 If (dbcbBlack.Enabled) then
  Accept := (ibdsPrimary_SetupFAKE_RIGHT.AsInteger in [3,Succ(ibdsMainPrimaryTovarOutcomeFAKE.AsInteger),0])
 else
  Accept := (ibdsPrimary_SetupFAKE_RIGHT.AsInteger in [3,Succ(ibdsMainPrimaryTovarOutcomeFAKE.AsInteger),0]) and
            (ibdsPrimary_SetupCREATE_RIGHT.AsInteger in [3,Succ(ibdsMainPrimaryTovarOutcomeBLACK.AsInteger)])
end;

procedure TfrmNaklOut.wwDBLookupCombo12BeforeDropDown(Sender: TObject);
begin
 ibdsEnterprises.Filtered := True
end;

procedure TfrmNaklOut.wwDBLookupCombo12CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 ibdsEnterprises.Filtered := False
end;

procedure TfrmNaklOut.ibdsEnterprisesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsEnterprisesVALID.AsInteger=1)
end;

procedure TfrmNaklOut.ibdsEnterpriseStoresFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsEnterpriseStoresVALID.AsInteger=1)
end;

procedure TfrmNaklOut.wwDBLookupCombo15BeforeDropDown(Sender: TObject);
begin
 ibdsEnterpriseStores.Filtered := True
end;

procedure TfrmNaklOut.wwDBLookupCombo15CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 ibdsEnterpriseStores.Filtered := False
end;

procedure TfrmNaklOut.ibdsCurrencyFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsCurrencyVALID.AsInteger=1)
end;

procedure TfrmNaklOut.wwDBLookupCombo18BeforeDropDown(Sender: TObject);
begin
 ibdsCurrency.Filtered := True
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeSECURITY_LEVELChange(
  Sender: TField);
begin
 If (ibdsMainPrimaryTovarOutcomeSECURITY_LEVEL.AsInteger<ibdsPrimary_SetupSECURITY_LEVEL.AsInteger) then
  ibdsMainPrimaryTovarOutcomeSECURITY_LEVEL.Value := ibdsPrimary_SetupSECURITY_LEVEL.AsInteger;
 If (ibdsMainPrimaryTovarOutcomeSECURITY_LEVEL.AsInteger>SecurityLevel) then
  ibdsMainPrimaryTovarOutcomeSECURITY_LEVEL.Value := SecurityLevel
end;

procedure TfrmNaklOut.miSerialsClick(Sender: TObject);
begin
 ibdsSerials_OutCome.Open;
 ibdsSerials_Available.Open;
 pnlSerials.Left := (pnlSerials.Parent.Width-pnlSerials.Width-pnlTools.Width) div 2;
 pnlSerials.Show;
 dbgAvailable.SetFocus
end;

procedure TfrmNaklOut.sbSerialsCloseClick(Sender: TObject);
begin
 dbgPrimaryTovarOutcomeBody.SetFocus;
 pnlSerials.Hide;
 ibdsSerials_Available.Close
end;

procedure TfrmNaklOut.ibdsSerials_AvailableBeforeOpen(DataSet: TDataSet);
begin
 ibdsSerials_Available.ParamByName('LOCATION_TYPE').AsInteger := 0;
 ibdsSerials_Available.ParamByName('LOCATION_ID').AsInt64 := ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.AsLargeInt
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyBeforeClose(
  DataSet: TDataSet);
begin
 pnlSerials.Hide;
 ibdsSerials_Available.Close;
 ibdsSerials_OutCome.Close
end;

procedure TfrmNaklOut.pnlSerialsResize(Sender: TObject);
begin
 pnlDoc.Width := (pnlSerials.Width-pnlSplitter.Width) div 2
end;

procedure TfrmNaklOut.Panel3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
 const SC_DRAGRESIZE = $F008;
begin
 If (ssLeft in Shift) then
  Begin
   ReleaseCapture;
   pnlSerials.Perform(WM_SYSCOMMAND, SC_DRAGRESIZE, 0)
  End
end;

procedure TfrmNaklOut.dbgDocKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_Escape) then
  sbSerialsClose.Click
end;

procedure TfrmNaklOut.dbgAvailableEnter(Sender: TObject);
begin
 sbToDoc.Enabled := (Sender=dbgAvailable);
 sbToAvailable.Enabled := (Sender=dbgDoc)
end;

procedure TfrmNaklOut.sbToAvailableClick(Sender: TObject);
 var k : Integer;
     ID : Largeint;
     Stroke_Code, Local_Stroke_Code : String;
     Located : Boolean;
begin
 For k := 0 to Pred(dbgDoc.SelectedList.Count) do
  Begin
   ibdsSerials_OutCome.GotoBookmark(dbgDoc.SelectedList.Items[k]);
   ID := ibdsSerials_OutComeSERIAL_ID.Value;
   Stroke_Code := ibdsSerials_OutComeSTROKE_CODE.AsString;
   Local_Stroke_Code := ibdsSerials_OutComeLOCAL_STROKE_CODE.AsString;
   ibdsSerials_OutCome.Delete;
   StteChange('PrimaryTovarOutcome', True);
   FilteredRecordCount := CountUpDocumentSerials(ibdsMainPrimaryTovarOutcomeBodyID.AsLargeInt);
   If (FilteredRecordCount<ibdsMainPrimaryTovarOutcomeBodyItogo.AsInteger) then
    Begin
     If NOT (ibdsMainPrimaryTovarOutcomeBody.State in [dsEdit, dsInsert]) then
      ibdsMainPrimaryTovarOutcomeBody.Edit;
     If (ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.AsInteger>1) or
        (ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.AsFloat<=1) then
      ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.Value := ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.AsFloat-1
     else
      Begin
       ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value := Pred(ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.AsInteger);
       ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.Value := ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.AsFloat-1
      End;
     ibdsMainPrimaryTovarOutcomeBody.Post
    End;
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

procedure TfrmNaklOut.sbToDocClick(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(dbgAvailable.SelectedList.Count) do
  Begin
   ibdsSerials_Available.GotoBookmark(dbgAvailable.SelectedList.Items[k]);
   ibdsSerials_OutCome.Append;
   ibdsSerials_OutComeSERIAL_ID.Value := ibdsSerials_AvailableID.AsInteger;
   ibdsSerials_OutComeSTROKE_CODE.Value := ibdsSerials_AvailableSTROKE_CODE.AsString;
   ibdsSerials_OutComeLOCAL_STROKE_CODE.Value := ibdsSerials_AvailableLOCAL_STROKE_CODE.AsString;
   ibdsSerials_OutCome.Post;
   ibdsSerials_Available.Delete
  End;
 dbgAvailable.SelectedList.Clear;
 FilteredRecordCount := CountUpDocumentSerials(ibdsMainPrimaryTovarOutcomeBodyID.AsLargeInt);
 If (FilteredRecordCount>ibdsMainPrimaryTovarOutcomeBodyItogo.AsInteger) then
  Begin
   If NOT (ibdsMainPrimaryTovarOutcomeBody.State in [dsEdit, dsInsert]) then
    ibdsMainPrimaryTovarOutcomeBody.Edit;
   If (ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.AsFloat+1<ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.AsFloat) or
      (ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.AsFloat<=1) then
    ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.Value := ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.AsFloat+1
   else
    Begin
     ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value := Succ(ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.AsInteger);
     ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.Value := ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.AsFloat+1-ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.AsFloat
    End;
   ibdsMainPrimaryTovarOutcomeBody.Post
  End
end;

procedure TfrmNaklOut.pnlSplitterMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 const SC_DRAGMOVE = $F012;
begin
 ReleaseCapture;
 pnlSerials.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TfrmNaklOut.edSearchAvailableKeyPress(Sender: TObject;
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

procedure TfrmNaklOut.ibdsSerials_AvailableFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := True;
 ibdsSerials_OutCome.First;
 While Not (ibdsSerials_OutCome.Eof) do
  Begin
   If (ibdsSerials_OutComeSERIAL_ID.AsLargeInt=ibdsSerials_AvailableID.AsLargeInt) then
    Begin
     Accept := False;
     Break
    End;
   ibdsSerials_OutCome.Next
  End
end;

procedure TfrmNaklOut.ibdsSerials_OutComeFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (Saving) or
           (ibdsSerials_OutComePRIMARY_TOVAR_OUTCOME_BODY_ID.AsLargeInt=ibdsMainPrimaryTovarOutcomeBodyID.AsLargeInt)
end;

procedure TfrmNaklOut.ibdsSerials_OutComeNewRecord(DataSet: TDataSet);
begin
 ibdsSerials_OutComePRIMARY_TOVAR_OUTCOME_BODY_ID.Value := ibdsMainPrimaryTovarOutcomeBodyID.AsLargeInt
end;

procedure TfrmNaklOut.edSearchDocKeyPress(Sender: TObject; var Key: Char);
 var S: String;
begin
 S := edSearchDoc.Text;
 If (Key<>#8) then
  S := edSearchDoc.Text+Key;
 If (dbgDoc.SelectedField=ibdsSerials_OutComeSTROKE_CODE) then
  Begin
   If ibdsSerials_OutCome.Locate('STROKE_CODE',S,[loCaseInsensitive, loPartialKey]) then
    Begin
     dbgDoc.UnselectAll;
     dbgDoc.SelectRecord
    End
  End
 else
  If ibdsSerials_OutCome.Locate('LOCAL_STROKE_CODE',S,[loCaseInsensitive, loPartialKey]) then
   Begin
    dbgDoc.UnselectAll;
    dbgDoc.SelectRecord
   End
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyAfterScroll(
  DataSet: TDataSet);
begin
 If (ibdsSerials_OutCome.Active) then
  FilteredRecordCount := CountUpDocumentSerials(ibdsMainPrimaryTovarOutcomeBodyID.AsLargeInt)
end;

function TfrmNaklOut.CountUpDocumentSerials(PrimaryTovarBodyID : Largeint): Integer;
var
 LBookmark: String;
begin
 Result := 0;
 With ibdsSerials_OutCome do
  Begin
   DisableControls;
   LBookmark := Bookmark;
   First;
   While NOT Eof do
    Begin
     If (ibdsSerials_OutComePRIMARY_TOVAR_OUTCOME_BODY_ID.AsLargeInt=PrimaryTovarBodyID) then
      Inc(Result);
     Next
    End;
   try
    Bookmark := LBookmark;
   except
   end;
   EnableControls
  End;
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyCOUNTRY_IDChange(
  Sender: TField);
begin
 ibdsCountries.Locate('ID', ibdsMainPrimaryTovarOutcomeBodyCOUNTRY_ID.AsString,[]);
 ibdsMainPrimaryTovarOutcomeBodyCOUNTRY_NAME.Value := ibdsCountriesNAME.AsString;
 If (ibdsCountriesNAME.AsString='РОССИЯ') then
  ibdsMainPrimaryTovarOutcomeBodyDECLARATION_NUMBER.Value := 'без номера'
end;

procedure TfrmNaklOut.tvPrimaryTovarOutcomeBodyCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If (Black) then
  GridDBTableViewCustomDrawCell(Sender,ACanvas,AViewInfo,(PaintBlackBody) and (ibdsMainPrimaryTovarOutcomeBLACK.AsInteger=1))
 else
  GridDBTableViewCustomDrawCell(Sender,ACanvas,AViewInfo,False)
end;

procedure TfrmNaklOut.tvPrimaryTovarOutcomeBodyCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmNaklOut.tvPrimaryTovarOutcomeBodyEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 AAllow := (AItem.DataBinding as TcxGridItemDBDataBinding).Field.CanModify
end;

procedure TfrmNaklOut.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (tvPrimaryTovarOutcomeBody.Focused) then
  Key := MyUpCase(Key)
end;

procedure TfrmNaklOut.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmNaklOut.pnlCommentsHotSpotClick(Sender: TObject);
begin
 sbShowComments.Down := NOT pnlComments.HotSpotClosed
end;

procedure TfrmNaklOut.dbgPrimaryTovarOutcomeBodyEnter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := (dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource
end;

procedure TfrmNaklOut.Panel5Enter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := dsMainPrimaryTovarOutcome
end;

procedure TfrmNaklOut.tvPrimaryTovarOutcomeBodyFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 If (AFocusedRecord<>nil) and (AFocusedRecord.ViewInfo<>nil) then
  SetSerialsPosition(AFocusedRecord.ViewInfo.FocusRectBounds)
end;

procedure TfrmNaklOut.SetSerialsPosition(Rect : TRect);
begin
 If (pnlSerials.Parent.Height>pnlSerials.Parent.ScreenToClient(dbgPrimaryTovarOutcomeBody.ClientToScreen(Rect.BottomRight)).y+pnlSerials.Height) then
  pnlSerials.Top := pnlSerials.Parent.ScreenToClient(dbgPrimaryTovarOutcomeBody.ClientToScreen(Rect.BottomRight)).y
 else
  pnlSerials.Top := pnlSerials.Parent.ScreenToClient(dbgPrimaryTovarOutcomeBody.ClientToScreen(Rect.TopLeft)).y-pnlSerials.Height;
end;

procedure TfrmNaklOut.tvPrimaryTovarOutcomeBodyKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
 var ClipBrd : TClipBoard;                                 
begin
 If ((Key=Ord('C')) or (Key=Ord('С')) or (Key=Ord('c')) or (Key=Ord('c'))) and (Shift=[ssCtrl]) then
  Begin
   ClipBrd := ClipBoard;
   ClipBrd.SetTextBuf(PChar((dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DisplayTexts[(dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.FocusedRecordIndex,(dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).Controller.FocusedItem.Index]))
  End;
 Case Key of
  vk_F6 : Begin
           If (frmMain.FindComponent('frmArticuls')=nil) then
            frmArticuls := TfrmArticuls.Create(frmMain);
           If (tvPrimaryTovarOutcomeBody.OptionsData.Inserting) then
            Begin
             frmArticuls.LookUpProcedureUpdate := ArticulSetBodyArticulID;
             frmArticuls.LookUpProcedureInsert := ArticulInsertBodyArticulID
            End;
           If NOT (ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID.IsNull) then
            Begin
             frmArticuls.dbeFilter.Text := (dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet.FieldByName('ARTICUL_ID').AsString;
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
           If (tvPrimaryTovarOutcomeBody.OptionsData.Inserting) then
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

procedure TfrmNaklOut.ibdsPrimaryTovarOutcomeBodySetBeforeOpen(
  DataSet: TDataSet);
begin
 ibdsPrimaryTovarOutcomeBodySet.ParamByName('ID').AsInt64 := ibdsMainPrimaryTovarOutcomeID.Value
end;

procedure TfrmNaklOut.ibdsPrimaryTovarOutcomeBodySetNewRecord(
  DataSet: TDataSet);
begin
 ibdsPrimaryTovarOutcomeBodySetID.Value := GetNewID(ibsGen_ID,'GEN_TOVAR_OUTCOME_BODY_SETS_ID');
 ibdsPrimaryTovarOutcomeBodySetPRIMARY_TOVAR_OUTCOME_BODY_ID.AsInteger := ibdsMainPrimaryTovarOutcomeBodyID.AsInteger
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyBeforeDelete(
  DataSet: TDataSet);
 var BookMark : String;
begin
 If (ibdsMainPrimaryTovarOutcomeCLOSED.AsInteger=1)then
  Abort;
 If (ibdsMainPrimaryTovarOutcomeBodyITEM_TYPE.AsInteger=1) then
  Begin
   BookMark := ibdsMainPrimaryTovarOutcomeBody.Bookmark;
   DeleteSet(ibdsPrimaryTovarOutcomeBodySet,ibdsPrimaryTovarOutcomeBodySetPRIMARY_TOVAR_OUTCOME_BODY_ID,ibdsMainPrimaryTovarOutcomeBodyID.AsInteger);
   ibdsMainPrimaryTovarOutcomeBody.Bookmark := BookMark
  End
end;

procedure TfrmNaklOut.tvPrimaryTovarOutcomeBodyDataControllerDetailHasChildren(
  Sender: TcxDBDataController; ARecordIndex, ARelationIndex: Integer;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var HasChildren: Boolean);
begin
 HasChildren := (Sender.Values[ARecordIndex,tvPrimaryTovarOutcomeBodyITEM_TYPE.Index]=1)
end;

procedure TfrmNaklOut.ibdsPrimaryTovarOutcomeBodySetCalcFields(
  DataSet: TDataSet);
begin
 ibdsPrimaryTovarOutcomeBodySetItogo.Value := ibdsPrimaryTovarOutcomeBodySetPACKS_AMOUNT.Value*ibdsPrimaryTovarOutcomeBodySetPACK_VALUE.Value+ibdsPrimaryTovarOutcomeBodySetITEMS_AMOUNT.Value;
 ibdsPrimaryTovarOutcomeBodySetItogoMany.Value := ibdsPrimaryTovarOutcomeBodySetItogo.Value*ibdsPrimaryTovarOutcomeBodySetPRICE.Value
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBeforeDelete(
  DataSet: TDataSet);
begin
 If (ibdsMainPrimaryTovarOutcomeDELETE_RIGHT.AsInteger=0) or (ibdsMainPrimaryTovarOutcomeCLOSED.AsInteger=1)then
  Abort
end;

procedure TfrmNaklOut.ibdsPrimaryTovarOutcomeBodySetBeforeDelete(
  DataSet: TDataSet);
begin
 If (ibdsMainPrimaryTovarOutcomeCLOSED.AsInteger=1)then
  Abort
end;

procedure TfrmNaklOut.ibdsPrimary_SetupCalcFields(DataSet: TDataSet);
begin
 CalcNameWithSpecs(DataSet)
end;

procedure TfrmNaklOut.dbgPrimaryTovarOutcomeBodyFocusedViewChanged(
  Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
begin
 dbmComments.DataBinding.DataSource := (dbgPrimaryTovarOutcomeBody.FocusedView as TcxGridDBTableView).DataController.DataSource
end;

procedure TfrmNaklOut.frReportGetValue(const ParName: String;
  var ParValue: Variant);
 var BookMrk : String;
begin
 If (ParName='Серийный номер') then
  Begin
   BookMrk := '';
   ParValue := '';
   If (ibdsSerials_OutCome.Active) then
    BookMrk := ibdsSerials_OutCome.Bookmark
   else
    ibdsSerials_OutCome.Open;
   ibdsSerials_OutCome.DisableControls;
   ibdsSerials_OutCome.Filtered := False;
   ibdsSerials_OutCome.Last;
   ibdsSerials_OutCome.First;
   While NOT (ibdsSerials_OutCome.Eof) do
    Begin
     If (ibdsSerials_OutComePRIMARY_TOVAR_OUTCOME_BODY_ID.Value=ibdsReportBodyID.Value) then
      ParValue := ParValue+ibdsSerials_OutComeSTROKE_CODE.AsString+#13#10;
     ibdsSerials_OutCome.Next
    End;
   If (Length(ParValue)>0) then
    ParValue := Copy(ParValue,0,Length(ParValue)-2);
   ibdsSerials_OutCome.Filtered := True;
   If (BookMrk<>'') then
    ibdsSerials_OutCome.Bookmark := BookMrk;
   ibdsSerials_OutCome.EnableControls
  End
end;

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeListSETUP_NAMEGetText(
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

procedure TfrmNaklOut.ibdsMainPrimaryTovarOutcomeBodyGUARANTEE_PERIOD_STRValidate(
  Sender: TField);
begin
 If (Sender.AsString<>'') then
  Begin
   While (Sender.AsString[1]='0') do
    Sender.AsString := Copy(Sender.AsString,2,Length(Sender.AsString)-1);
   If NOT(Sender.AsString[Length(Sender.AsString)] in ['д','н','м','г']) then
    Sender.AsString := Sender.AsString+'д'
  End
end;

end.
