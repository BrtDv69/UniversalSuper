unit Invoice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, StdCtrls, ComCtrls, wwriched, wwrichedspell,
  wwdbdatetimepicker, wwdblook, Mask, wwdbedit, DBCtrls, fcLabel, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, fcText, IBSQL, IBDatabase, Db, IBCustomDataSet,
  Wwdotdot, Wwdbcomb, Wwdbspin, Menus, wwcheckbox, Math, Variants,
  wwclearbuttongroup, wwradiogroup, FR_DSet, FR_DBSet, FR_Desgn, FR_Class,
  FR_IBXDB, FR_DCtrl, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBLookupComboBox, cxGraphics,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, cxGridDBDataDefinitions,
  RzSplit, RzPanel, clipbrd, cxDBData, cxCalendar, cxCustomData, cxStyles,
  cxFilter, cxData, cxDataStorage, cxMaskEdit, cxCheckBox, DateUtils;

type
 TObjProcedure = procedure of object;
 TObjFrmProcedure = procedure(Sender: TForm) of object;

type
  TfrmInvoice = class(TfrmLike)
    PageControl1: TPageControl;
    tsInvoicesList: TTabSheet;
    Panel1: TPanel;
    Panel4: TPanel;
    sbCancelInvoicesList: TSpeedButton;
    sbApplyInvoicesList: TSpeedButton;
    sbDeleteInvoicesList: TSpeedButton;
    sbAddInvoicesList: TSpeedButton;
    sbLastInvoicesList: TSpeedButton;
    sbNextInvoicesList: TSpeedButton;
    sbPriorInvoicesList: TSpeedButton;
    sbFirstInvoicesList: TSpeedButton;
    sbFilterInvoicesList: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton8: TSpeedButton;
    sbPrintInvoicesList: TSpeedButton;
    tsInvoice: TTabSheet;
    Panel10: TPanel;
    sbCancelInvoice: TSpeedButton;
    sbApplyInvoice: TSpeedButton;
    sbDeleteInvoice: TSpeedButton;
    sbAddInvoice: TSpeedButton;
    SpeedButton21: TSpeedButton;
    sbPrintInvoice: TSpeedButton;
    tsDocs: TTabSheet;
    Panel7: TPanel;
    Splitter1: TSplitter;
    dbgIncomeDocs: TwwDBGrid;
    dbgOutcomeDocs: TwwDBGrid;
    Panel12: TPanel;
    sbCancelDocs: TSpeedButton;
    sbApplyDocs: TSpeedButton;
    sbDeleteDocs: TSpeedButton;
    sbAddDocs: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton34: TSpeedButton;
    Panel2: TPanel;
    Panel5: TPanel;
    Label18: TLabel;
    Label17: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    fcInvoice: TfcLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    lcInvoiceSetup: TwwDBLookupCombo;
    wwDBEdit10: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBLookupCombo9: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBLookupCombo3: TwwDBLookupCombo;
    ibdsMainInvoicesList: TIBDataSet;
    dsMainInvoicesList: TDataSource;
    trLock: TIBTransaction;
    ibdsMainInvoicesListID: TLargeintField;
    ibdsMainInvoicesListMASTER_NAME: TIBStringField;
    ibdsMainInvoicesListNUMBER_STR: TIBStringField;
    ibdsMainInvoicesListINVOICE_DATE: TDateField;
    ibdsMainInvoicesListENTERPRISE_NAME: TIBStringField;
    ibdsMainInvoicesListCONTRACTOR_NAME: TIBStringField;
    ibdsMainInvoicesListCLOSED: TIntegerField;
    ibdsMainInvoicesListBLACK: TIntegerField;
    wwDBComboBox1: TwwDBComboBox;
    ibdsMainInvoice: TIBDataSet;
    dsMainInvoice: TDataSource;
    ibdsMainInvoiceID: TLargeintField;
    ibdsMainInvoiceINVOICE_SETUP_ID: TLargeintField;
    ibdsMainInvoiceCONTRACT_ID: TLargeintField;
    ibdsMainInvoiceDOUBLE_SOSTAV: TIntegerField;
    ibdsMainInvoiceOPPOSITE_SOSTAV_ID: TLargeintField;
    ibdsMainInvoiceMASTER_ID: TLargeintField;
    ibdsMainInvoiceSECURITY_LEVEL: TIntegerField;
    ibdsMainInvoiceNUMBER_PREFIX: TIBStringField;
    ibdsMainInvoiceNUMBER: TIntegerField;
    ibdsMainInvoiceNUMBER_SUFFIX: TIBStringField;
    ibdsMainInvoiceINVOICE_DATE: TDateField;
    ibdsMainInvoiceENTERPRISE_ID: TLargeintField;
    ibdsMainInvoiceENTERPRISE_ACCOUNT_ID: TLargeintField;
    ibdsMainInvoiceENTERPRISE_STORE_ID: TLargeintField;
    ibdsMainInvoiceCONTRACTOR_ID: TLargeintField;
    ibdsMainInvoiceCONTRACTOR_ACCOUNT_ID: TLargeintField;
    ibdsMainInvoiceCURRENCY_ID: TLargeintField;
    ibdsMainInvoiceCURRENCY_RATE: TFloatField;
    ibdsMainInvoicePERCENT: TFloatField;
    ibdsMainInvoiceCLOSED: TIntegerField;
    ibdsMainInvoiceVALID_DATE: TDateField;
    ibdsMainInvoiceBLACK: TIntegerField;
    ibdsMainInvoiceCOMMENTS: TIBStringField;
    ibdsMainInvoiceBody: TIBDataSet;
    dsMainInvoiceBody: TDataSource;
    ibdsMainInvoiceBodyID: TLargeintField;
    ibdsMainInvoiceBodyINVOICE_ID: TLargeintField;
    ibdsMainInvoiceBodyMADE_IN: TIBStringField;
    ibdsMainInvoiceBodyPACKS_AMOUNT: TIntegerField;
    ibdsMainInvoiceBodyPACK_VALUE: TFloatField;
    ibdsMainInvoiceBodyITEMS_AMOUNT: TFloatField;
    ibdsMainInvoiceBodyPRICE_REFERENCE: TFloatField;
    ibdsMainInvoiceBodyPERCENT: TFloatField;
    ibdsMainInvoiceBodyPRICE: TFloatField;
    ibdsMainInvoiceBodyNDS: TFloatField;
    ibdsMainInvoiceBodyNSP: TFloatField;
    ibdsMainInvoiceBodyCOMMENTS: TIBStringField;
    ibdsMainInvoiceNUMBER_STR: TStringField;
    ibdsMainInvoiceNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesNAME: TIBStringField;
    ibdsEnterprisesID: TLargeintField;
    dsEnterprises: TDataSource;
    ibdsPersons: TIBDataSet;
    ibdsPersonsID: TLargeintField;
    ibdsInvoice_Setup: TIBDataSet;
    ibdsContractors: TIBDataSet;
    ibdsContractorsID: TLargeintField;
    ibdsContractorsNAME: TIBStringField;
    ibdsCurrency: TIBDataSet;
    ibdsCurrencyID: TLargeintField;
    ibdsCurrencyNAME: TIBStringField;
    ibsWhite: TIBSQL;
    ibsNumb: TIBSQL;
    pnlMessage: TPanel;
    pnlNumber: TPanel;
    SpeedButton4: TSpeedButton;
    Label10: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBEdit11: TwwDBEdit;
    ibdsInvoice_SetupID: TLargeintField;
    ibdsInvoice_SetupCONTRACT_ID_DEFAULT: TLargeintField;
    ibdsInvoice_SetupNAME: TIBStringField;
    ibdsInvoice_SetupVALID_PERIOD: TSmallintField;
    ibdsInvoice_SetupNUMBER_PREFIX: TIBStringField;
    ibdsInvoice_SetupNUMBER_FORMAT: TIntegerField;
    ibdsInvoice_SetupNUMBER_SUFFIX: TIBStringField;
    ibdsInvoice_SetupNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsInvoice_SetupBLACK_DEFAULT: TIntegerField;
    ibdsInvoice_SetupCURRENCY_ID_DEFAULT: TLargeintField;
    ibdsInvoice_SetupSECURITY_LEVEL: TIntegerField;
    ibdsInvoice_SetupPRICE_FORMULA: TIBStringField;
    ibdsInvoice_SetupBLACK: TIntegerField;
    ibdsEnterprisesDEFAULT_ID_ACCOUNT: TLargeintField;
    dsContractors: TDataSource;
    ibdsEnterpriseStores: TIBDataSet;
    ibdsEnterpriseStoresID: TLargeintField;
    ibdsEnterpriseStoresNAME: TIBStringField;
    ibdsMainInvoiceBodyARTICUL_NAME: TIBStringField;
    ibdsMainInvoiceSETUP_NAME: TIBStringField;
    ibdsMainInvoiceNUMBER_FORMAT: TIntegerField;
    ibdsMainInvoicePRICE_FORMULA: TIBStringField;
    ibdsMainInvoiceMASTER_NAME: TIBStringField;
    ibdsMainInvoiceENTERPRISE_NAME: TIBStringField;
    ibdsMainInvoiceCONTRACTOR_NAME: TIBStringField;
    ibdsMainInvoiceCURRENCY_NAME: TIBStringField;
    ibdsEnterprisesENTERPRISE_BANK_NAME: TIBStringField;
    ibdsEnterprisesENTERPRISE_ACCOUNT: TIBStringField;
    ibdsMainInvoiceBodyUNITS: TIBStringField;
    ibdsMainInvoicesListSETUP_NAME: TIBStringField;
    ibdsContractorsAccounts: TIBDataSet;
    ibdsContractorsAccountsBANK_NAME: TIBStringField;
    ibdsContractorsAccountsCURRENCY_NAME: TIBStringField;
    ibdsContractorsAccountsACCOUNT: TIBStringField;
    ibdsContractorsAccountsID: TLargeintField;
    ibdsContractorsAccountsFullAccountName: TStringField;
    ibdsEnterpriseAccounts: TIBDataSet;
    ibdsEnterpriseAccountsBANK_NAME: TIBStringField;
    ibdsEnterpriseAccountsCURRENCY_NAME: TIBStringField;
    ibdsEnterpriseAccountsACCOUNT: TIBStringField;
    ibdsEnterpriseAccountsID: TLargeintField;
    ibdsEnterpriseAccountsFullAccountName: TStringField;
    ibdsInvoice_SetupCONTRACT_BLACK: TIntegerField;
    ibdsMadeIn: TIBDataSet;
    ibdsMadeInMADE_IN: TIBStringField;
    dsMadeIn: TDataSource;
    ibdsMainInvoiceBodyLAST_BUY_PRICE: TFloatField;
    ibdsMainInvoiceBodyItogo: TFloatField;
    ibdsMainInvoiceBodyItogoMany: TFloatField;
    ibdsMainInvoiceBodyMAIN_LEAVINGS_TOTAL: TFloatField;
    ibdsMainInvoiceBodyADDITIONAL_LEAVINGS_TOTAL: TFloatField;
    ibdsMainInvoiceBodyARTICUL: TIBStringField;
    ibdsMainInvoicesListDOUBLE_SOSTAV: TIntegerField;
    ibsAux: TIBSQL;
    ibdsContractorsPRICE_PERCENT: TFloatField;
    dbcbBlack: TwwCheckBox;
    dbcbDouble: TwwCheckBox;
    wwCheckBox3: TwwCheckBox;
    ibdsCurrencySYMBOL: TIBStringField;
    ibdsCurrencyDECIMALS_IN: TSmallintField;
    ibdsCurrencyDECIMALS_OUT: TSmallintField;
    ibdsCurrencyNAME1: TIBStringField;
    ibdsCurrencyNAME3: TIBStringField;
    ibdsCurrencyNAME5: TIBStringField;
    ibdsCurrencyNAME001: TIBStringField;
    ibdsCurrencyCURRENT_RATE: TFloatField;
    ibdsMainInvoiceDECIMALS_IN: TSmallintField;
    ibdsMainInvoiceDECIMALS_OUT: TSmallintField;
    ibdsMainInvoiceBodyITOGOMANYOLD: TFloatField;
    dsEnterpriseStores: TDataSource;
    fcReCalc: TfcLabel;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    ibdsMainInvoicesListCONTRACTOR_ID: TLargeintField;
    ibdsMainInvoicesListAMOUNT: TFloatField;
    ibdsMainInvoicesListSYMBOL: TIBStringField;
    ibdsMainInvoicesListDECIMALS: TSmallintField;
    ibdsMainInvoicesListAMOUNT_FMT: TStringField;
    PopupMenu4: TPopupMenu;
    N4: TMenuItem;
    ibsDetail: TIBSQL;
    ibdsMainInvoicesListOPPOSITE_SOSTAV_ID: TLargeintField;
    ibdsIncomeDocs: TIBDataSet;
    dsIncomeDocs: TDataSource;
    ibdsOutcomeDocs: TIBDataSet;
    dsOutcomeDocs: TDataSource;
    ibdsIncomeDocsNAME: TIBStringField;
    ibdsIncomeDocsPS_NAME: TIBStringField;
    ibdsIncomeDocsNUMBER_STR: TIBStringField;
    ibdsIncomeDocsPRIMARY_DATE: TDateField;
    ibdsIncomeDocsCURRENCY_ID: TLargeintField;
    ibdsIncomeDocsCURRENCY_RATE: TFloatField;
    ibdsIncomeDocsAMOUNT: TFloatField;
    ibdsIncomeDocsSYMBOL: TIBStringField;
    ibdsIncomeDocsDECIMALS: TSmallintField;
    ibdsIncomeDocsAMOUNT_FMT: TStringField;
    ibdsOutcomeDocsNAME: TIBStringField;
    ibdsOutcomeDocsPS_NAME: TIBStringField;
    ibdsOutcomeDocsNUMBER_STR: TIBStringField;
    ibdsOutcomeDocsPRIMARY_DATE: TDateField;
    ibdsOutcomeDocsCURRENCY_ID: TLargeintField;
    ibdsOutcomeDocsCURRENCY_RATE: TFloatField;
    ibdsOutcomeDocsAMOUNT: TFloatField;
    ibdsOutcomeDocsSYMBOL: TIBStringField;
    ibdsOutcomeDocsDECIMALS: TSmallintField;
    ibdsOutcomeDocsAMOUNT_FMT: TStringField;
    ibdsOutcomeDocsID: TLargeintField;
    ibdsIncomeDocsID: TLargeintField;
    ibdsOutcomeDocsNAL: TLargeintField;
    ibdsIncomeDocsNAL: TLargeintField;
    PopupMenu5: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    ibdsIncomeDocsCLOSED: TIntegerField;
    ibdsOutcomeDocsCLOSED: TIntegerField;
    pnlDetails: TPanel;
    SpeedButton2: TSpeedButton;
    gbWhite: TGroupBox;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    lbl1Invoice: TLabel;
    lbl1TovarOut: TLabel;
    lbl1TovarIn: TLabel;
    lbl1ManyOut: TLabel;
    lbl1ManyIn: TLabel;
    lbl1TovarBal: TLabel;
    lbl1ManyBal: TLabel;
    lbl1Bal: TLabel;
    Label36: TLabel;
    gbBlack: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    lbl2Invoice: TLabel;
    lbl2TovarOut: TLabel;
    lbl2TovarIn: TLabel;
    lbl2TovarBal: TLabel;
    lbl2ManyOut: TLabel;
    lbl2ManyIn: TLabel;
    lbl2ManyBal: TLabel;
    lbl2Bal: TLabel;
    Label37: TLabel;
    pnlText: TPanel;
    lblFilter: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    pnlFilter: TPanel;
    edMeneger: TwwDBLookupCombo;
    rgSostav: TwwRadioGroup;
    cbPaid: TwwCheckBox;
    edContractor: TwwDBEdit;
    edType: TwwDBLookupCombo;
    Label42: TLabel;
    deDateStart: TwwDBDateTimePicker;
    deDateStop: TwwDBDateTimePicker;
    edArticul: TwwDBLookupCombo;
    cbArticuls: TwwCheckBox;
    cbType: TwwCheckBox;
    cbMeneger: TwwCheckBox;
    cbContractor: TwwCheckBox;
    cbPeriod: TwwCheckBox;
    cbOpen: TwwCheckBox;
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
    sbReFilter: TSpeedButton;
    ibdsEnterprisesINN: TIBStringField;
    ibdsEnterprisesADDRESS: TIBStringField;
    ibdsEnterprisesPHONE: TIBStringField;
    ibdsEnterprisesACCOUNT: TIBStringField;
    ibdsReportHeader: TIBDataSet;
    ibdsReportHeaderENTERPRISE_NAME: TIBStringField;
    ibdsReportHeaderINN: TIBStringField;
    ibdsReportHeaderADDRESS: TIBStringField;
    ibdsReportHeaderPHONE: TIBStringField;
    ibdsReportHeaderENTERPRISE_ACCOUNT: TIBStringField;
    ibdsReportHeaderENTERPRISE_BANK_NAME: TIBStringField;
    ibdsReportHeaderBIK: TIntegerField;
    ibdsReportHeaderKOR_ACCOUNT: TIBStringField;
    ibdsReportHeaderNUMBER_STR: TIBStringField;
    ibdsReportHeaderINVOICE_DATE: TDateField;
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
    ibdsReportHeaderVALID_DATE: TDateField;
    ibdsReportHeaderAMOUNT: TFloatField;
    ibdsReportHeaderAMOUNT_PROP: TStringField;
    ibdsReportHeaderAMOUNT_FRAC_PROP: TStringField;
    ibdsReportBody: TIBDataSet;
    ibdsReportBodyARTICUL_NAME: TIBStringField;
    ibdsReportBodyMADE_IN: TIBStringField;
    ibdsReportBodyUNITS: TIBStringField;
    ibdsReportBodyAMOUNT: TFloatField;
    ibdsReportBodyPRICE: TFloatField;
    ibdsReportBodyNDS: TFloatField;
    ibdsReportBodyNDS_AMOUNT: TFloatField;
    ibdsReportBodyPRICE_WO_NDS: TFloatField;
    Panel8: TPanel;
    dbgInvoicesList: TwwDBGrid;
    ibdsMainInvoiceBodyCOMMENTS_RESERVATION: TIBStringField;
    ibdsMainInvoiceBodyRESERV_AMOUNT: TFloatField;
    ibdsMainInvoiceBodyMAX_BUY_PRICE: TFloatField;
    ibdsMainInvoiceBodyLATEST_DATE: TDateField;
    ibdsMainInvoiceBodyTOTAL_RESERV: TFloatField;
    PopupMenu6: TPopupMenu;
    N13: TMenuItem;
    ibdsMainInvoiceINCLUDE_NSP: TIntegerField;
    ibdsReportHeaderINCLUDE_NSP: TIntegerField;
    ibdsReportBodyNSP_AMOUNT: TFloatField;
    ibdsReportBodyNSP: TFloatField;
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
    cbDoubleSostav: TwwCheckBox;
    PopupMenu7: TPopupMenu;
    N14: TMenuItem;
    N15: TMenuItem;
    ibdsMainInvoicesListSALDO_MANY: TFloatField;
    ibdsMainInvoicesListSALDO_GOODS: TFloatField;
    N01: TMenuItem;
    sbCopyInvoicesList: TSpeedButton;
    PopupMenu8: TPopupMenu;
    N16: TMenuItem;
    cbDispatched: TwwCheckBox;
    cbPaidDispatched: TwwCheckBox;
    ibdsFilterContractorTypes: TIBDataSet;
    ibdsFilterContractorTypesID: TLargeintField;
    ibdsFilterContractorTypesNAME: TIBStringField;
    cbContractorType: TwwCheckBox;
    edContractorType: TwwDBLookupCombo;
    dbgInvoicesListIButton: TwwIButton;
    Panel9: TPanel;
    fcLabel1: TfcLabel;
    cbComments: TwwCheckBox;
    edComments: TwwDBEdit;
    dbeCloseDate: TwwDBEdit;
    ibdsMainInvoiceCLOSE_DATE: TDateField;
    ibdsMainInvoicesListDELETE_RIGHT: TIntegerField;
    ibdsMainInvoiceUPDATE_RIGHT: TIntegerField;
    ibdsMainInvoiceDELETE_RIGHT: TIntegerField;
    ibdsMainInvoiceCLOSE_RIGHT: TIntegerField;
    ibdsMainInvoicesListCLOSE_RIGHT: TIntegerField;
    sbDeleteInvoicesListDouble: TSpeedButton;
    ibdsIncomeDocsDELETE_RIGHT: TIntegerField;
    ibdsOutcomeDocsDELETE_RIGHT: TIntegerField;
    ibdsMainInvoicesListCREATE_RIGHT: TIntegerField;
    cbbPaidDispatchedSign: TwwDBComboBox;
    ibdsInvoice_SetupCREATE_RIGHT: TIntegerField;
    N18: TMenuItem;
    cbPaidPeriod: TwwCheckBox;
    deDateStartPaidPeriod: TwwDBDateTimePicker;
    Label38: TLabel;
    deDateStopPaidPeriod: TwwDBDateTimePicker;
    ibdsMainInvoiceBodyPAYING_PERSENT: TFloatField;
    ibdsMainInvoiceBodyPAYING_DATE: TDateField;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dbgAccountBody: TcxGrid;
    tvAccountBody: TcxGridDBTableView;
    tvAccountBodyARTICUL: TcxGridDBColumn;
    tvAccountBodyARTICUL_ID: TcxGridDBColumn;
    tvAccountBodyPACKS_AMOUNT: TcxGridDBColumn;
    tvAccountBodyPACK_VALUE: TcxGridDBColumn;
    tvAccountBodyITEMS_AMOUNT: TcxGridDBColumn;
    tvAccountBodyItogo: TcxGridDBColumn;
    tvAccountBodyMAIN_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvAccountBodyADDITIONAL_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvAccountBodyLAST_BUY_PRICE: TcxGridDBColumn;
    tvAccountBodyPERCENT: TcxGridDBColumn;
    tvAccountBodyPRICE: TcxGridDBColumn;
    tvAccountBodyItogoMany: TcxGridDBColumn;
    tvAccountBodyTOTAL_RESERV: TcxGridDBColumn;
    tvAccountBodyRESERV_AMOUNT: TcxGridDBColumn;
    tvAccountBodyMAX_BUY_PRICE: TcxGridDBColumn;
    tvAccountBodyLATEST_DATE: TcxGridDBColumn;
    tvAccountBodyPAYING_PERSENT: TcxGridDBColumn;
    tvAccountBodyPAYING_DATE: TcxGridDBColumn;
    tvAccountBodyCOMMENTS_RESERVATION: TcxGridDBColumn;
    tvAccountBodyTOTAL_COMMENTS: TcxGridDBColumn;
    glAccountBody: TcxGridLevel;
    pnlComments: TRzSizePanel;
    Label39: TLabel;
    dbmComments: TcxDBMemo;
    ibdsMainInvoiceBodyARTICUL_ID: TIntegerField;
    ibdsMainInvoiceBodyTOTAL_COMMENTS: TStringField;
    sbShowComments: TSpeedButton;
    ibdsInvoiceBodySet: TIBDataSet;
    dsInvoiceBodySet: TDataSource;
    ibdsInvoiceBodySetID: TLargeintField;
    ibdsInvoiceBodySetINVOICE_BODY_ID: TIntegerField;
    ibdsInvoiceBodySetARTICUL_ID: TIntegerField;
    ibdsInvoiceBodySetPACKS_AMOUNT: TIntegerField;
    ibdsInvoiceBodySetPACK_VALUE: TFloatField;
    ibdsInvoiceBodySetITEMS_AMOUNT: TFloatField;
    ibdsInvoiceBodySetPRICE_REFERENCE: TFloatField;
    ibdsInvoiceBodySetPRICE: TFloatField;
    ibdsInvoiceBodySetRESERV_AMOUNT: TFloatField;
    ibdsInvoiceBodySetPAYING_PERSENT: TFloatField;
    ibdsInvoiceBodySetPAYING_DATE: TDateField;
    ibdsInvoiceBodySetMAX_BUY_PRICE: TFloatField;
    ibdsInvoiceBodySetLATEST_DATE: TDateField;
    ibdsInvoiceBodySetCOMMENTS: TIBStringField;
    ibdsInvoiceBodySetCOMMENTS_RESERVATION: TIBStringField;
    ibdsInvoiceBodySetARTICUL: TIBStringField;
    ibdsInvoiceBodySetARTICUL_NAME: TIBStringField;
    ibdsInvoiceBodySetUNITS: TIBStringField;
    ibdsInvoiceBodySetMAIN_LEAVINGS_TOTAL: TFloatField;
    ibdsInvoiceBodySetADDITIONAL_LEAVINGS_TOTAL: TFloatField;
    ibdsInvoiceBodySetTOTAL_RESERV: TFloatField;
    ibdsInvoiceBodySetLAST_BUY_PRICE: TFloatField;
    ibdsMainInvoiceBodyITEM_TYPE: TIntegerField;
    tvAccountBodyITEM_TYPE: TcxGridDBColumn;
    ibdsInvoiceBodySetTOTAL_COMMENTS: TStringField;
    glSets: TcxGridLevel;
    tvSets: TcxGridDBTableView;
    tvSetsARTICUL: TcxGridDBColumn;
    tvSetsARTICUL_ID: TcxGridDBColumn;
    tvSetsPACKS_AMOUNT: TcxGridDBColumn;
    tvSetsPACK_VALUE: TcxGridDBColumn;
    tvSetsITEMS_AMOUNT: TcxGridDBColumn;
    tvSetsMAIN_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvSetsADDITIONAL_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvSetsLAST_BUY_PRICE: TcxGridDBColumn;
    tvSetsPRICE: TcxGridDBColumn;
    tvSetsTOTAL_RESERV: TcxGridDBColumn;
    tvSetsRESERV_AMOUNT: TcxGridDBColumn;
    tvSetsMAX_BUY_PRICE: TcxGridDBColumn;
    tvSetsLATEST_DATE: TcxGridDBColumn;
    tvSetsPAYING_PERSENT: TcxGridDBColumn;
    tvSetsPAYING_DATE: TcxGridDBColumn;
    tvSetsCOMMENTS_RESERVATION: TcxGridDBColumn;
    tvSetsTOTAL_COMMENTS: TcxGridDBColumn;
    ibdsInvoiceBodySetItogo: TFloatField;
    ibdsInvoiceBodySetItogoMany: TFloatField;
    tvSetsItogo: TcxGridDBColumn;
    tvSetsItogoMany: TcxGridDBColumn;
    ibdsMainInvoiceBodyCRC32_SET: TIntegerField;
    ibdsReportHeaderBOSS_SURNAME: TIBStringField;
    ibdsReportHeaderBOSS_NAME: TIBStringField;
    ibdsReportHeaderBOSS_SECOND_NAME: TIBStringField;
    ibdsReportHeaderCHIEF_ACCOUNTANT_SURNAME: TIBStringField;
    ibdsReportHeaderCHIEF_ACCOUNTANT_NAME: TIBStringField;
    ibdsReportHeaderCHIEF_ACCOUNTANT_SECOND_NAME: TIBStringField;
    miCreateRequest: TMenuItem;
    miShowRequest: TMenuItem;
    ibdsReportHeaderKPP: TIBStringField;
    ibdsPersonsNAME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure fcContractMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure fcContractMouseEnter(Sender: TObject);
    procedure fcContractMouseLeave(Sender: TObject);
    procedure fcContractMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ibdsMainInvoicesListAfterScroll(DataSet: TDataSet);
    procedure ibdsMainInvoicesListUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure sbAddInvoicesListClick(Sender: TObject);
    procedure sbDeleteInvoicesListClick(Sender: TObject);
    procedure sbApplyInvoicesListClick(Sender: TObject);
    procedure sbCancelInvoicesListClick(Sender: TObject);
    procedure ibdsMainInvoiceCalcFields(DataSet: TDataSet);
    procedure wwDBComboBox1DropDown(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure lcInvoiceSetupCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsEnterpriseAccountsCalcFields(DataSet: TDataSet);
    procedure ibdsContractorsAccountsCalcFields(DataSet: TDataSet);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo7CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo6CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo5CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo9CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainInvoiceAfterOpen(DataSet: TDataSet);
    procedure sbFirstInvoicesListClick(Sender: TObject);
    procedure sbPriorInvoicesListClick(Sender: TObject);
    procedure sbNextInvoicesListClick(Sender: TObject);
    procedure sbLastInvoicesListClick(Sender: TObject);
    procedure dsMainInvoicesListStateChange(Sender: TObject);
    procedure dbgInvoicesListCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgInvoicesListCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure dbgInvoicesListTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure sbDeleteInvoiceClick(Sender: TObject);
    procedure sbAddInvoiceClick(Sender: TObject);
    procedure sbCancelInvoiceClick(Sender: TObject);
    procedure sbApplyInvoiceClick(Sender: TObject);
    procedure dsMainInvoiceBodyStateChange(Sender: TObject);
    procedure ibdsMainInvoiceUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainInvoiceBodyUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainInvoiceNewRecord(DataSet: TDataSet);
    procedure tsInvoiceShow(Sender: TObject);
    procedure ibdsMainInvoiceBodyNewRecord(DataSet: TDataSet);
    procedure fcInvoiceClick(Sender: TObject);
    procedure ibdsMainInvoiceBodyARTICUL_IDChange(Sender: TField);
    procedure ibdsMainInvoiceENTERPRISE_STORE_IDChange(Sender: TField);
    procedure ibdsMainInvoiceBodyAfterOpen(DataSet: TDataSet);
    procedure ibdsMainInvoiceBodyCalcFields(DataSet: TDataSet);
    procedure dbgAccountBodyCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgInvoicesListCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgAccountBodyEnter(Sender: TObject);
    procedure Panel5Enter(Sender: TObject);
    procedure ibdsMadeInBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainInvoiceBodyARTICULChange(Sender: TField);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsMainInvoiceBodyBeforePost(DataSet: TDataSet);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure wwDBEdit3DblClick(Sender: TObject);
    procedure ibdsMainInvoiceCURRENCY_RATEChange(Sender: TField);
    procedure ibdsMainInvoiceBodyPRICEChange(Sender: TField);
    procedure ibdsMainInvoiceDOUBLE_SOSTAVChange(Sender: TField);
    procedure ibdsMainInvoicesListCalcFields(DataSet: TDataSet);
    procedure N4Click(Sender: TObject);
    procedure ibdsIncomeDocsCalcFields(DataSet: TDataSet);
    procedure ibdsOutcomeDocsCalcFields(DataSet: TDataSet);
    procedure dsIncomeDocsStateChange(Sender: TObject);
    procedure ibdsIncomeDocsAfterOpen(DataSet: TDataSet);
    procedure ibdsOutcomeDocsAfterOpen(DataSet: TDataSet);
    procedure dbgIncomeDocsDblClick(Sender: TObject);
    procedure dbgOutcomeDocsDblClick(Sender: TObject);
    procedure sbDeleteDocsClick(Sender: TObject);
    procedure ibdsIncomeDocsUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure sbCancelDocsClick(Sender: TObject);
    procedure sbApplyDocsClick(Sender: TObject);
    procedure ibdsOutcomeDocsUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure sbAddDocsClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure sbFilterInvoicesListClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure ibdsFilterTypesBeforeOpen(DataSet: TDataSet);
    procedure cbMenegerClick(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure ibdsFilterPersonsAfterOpen(DataSet: TDataSet);
    procedure ibdsFilterPersonsBeforeClose(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbPrintInvoiceClick(Sender: TObject);
    procedure ibdsReportBodyCalcFields(DataSet: TDataSet);
    procedure ibdsReportHeaderCalcFields(DataSet: TDataSet);
    procedure ibdsMainInvoiceBLACKChange(Sender: TField);
    procedure wwDBLookupCombo6KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N13Click(Sender: TObject);
    procedure edContractorChange(Sender: TObject);
    procedure cbBlackClick(Sender: TObject);
    procedure cbOpenClick(Sender: TObject);
    procedure ibdsMainInvoiceINCLUDE_NSPChange(Sender: TField);
    procedure edPrefixChange(Sender: TObject);
    procedure edNumberChange(Sender: TObject);
    procedure edSuffixChange(Sender: TObject);
    procedure edAmountChange(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure dbgInvoicesListCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure ibdsMainInvoiceAfterDelete(DataSet: TDataSet);
    procedure ibdsMainInvoicesListAfterDelete(DataSet: TDataSet);
    procedure ibdsIncomeDocsAfterDelete(DataSet: TDataSet);
    procedure N01Click(Sender: TObject);
    procedure pnlDetailsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbCopyInvoicesListClick(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure dbgInvoicesListUpdateFooter(Sender: TObject);
    procedure dbgInvoicesListIButtonClick(Sender: TObject);
    procedure fcLabel1Click(Sender: TObject);
    procedure edCommentsChange(Sender: TObject);
    procedure ibdsMainInvoiceBeforeDelete(DataSet: TDataSet);
    procedure ibdsIncomeDocsBeforeOpen(DataSet: TDataSet);
    procedure sbPrintInvoicesListClick(Sender: TObject);
    procedure sbDeleteInvoicesListDoubleClick(Sender: TObject);
    procedure ibdsIncomeDocsAfterScroll(DataSet: TDataSet);
    procedure dbgIncomeDocsEnter(Sender: TObject);
    procedure cbbPaidDispatchedSignChange(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure lcInvoiceSetupBeforeDropDown(Sender: TObject);
    procedure ibdsInvoice_SetupFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsMainInvoiceSECURITY_LEVELChange(Sender: TField);
    procedure ibdsCurrencyAfterOpen(DataSet: TDataSet);
    procedure tvAccountBodyCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure tvAccountBodyCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvAccountBodyEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbShowCommentsClick(Sender: TObject);
    procedure pnlCommentsHotSpotClick(Sender: TObject);
    procedure tvAccountBodyKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsInvoiceBodySetBeforeOpen(DataSet: TDataSet);
    procedure ibdsInvoiceBodySetNewRecord(DataSet: TDataSet);
    procedure tvAccountBodyDataControllerDetailHasChildren(
      Sender: TcxDBDataController; ARecordIndex, ARelationIndex: Integer;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var HasChildren: Boolean);
    procedure ibdsInvoiceBodySetCalcFields(DataSet: TDataSet);
    procedure ibdsMainInvoiceBodyBeforeDelete(DataSet: TDataSet);
    procedure dbgAccountBodyFocusedViewChanged(Sender: TcxCustomGrid;
      APrevFocusedView, AFocusedView: TcxCustomGridView);
    procedure tvSetsDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure ibdsInvoiceBodySetBeforeDelete(DataSet: TDataSet);
    procedure PopupMenu6Popup(Sender: TObject);
    procedure miCreateRequestClick(Sender: TObject);
    procedure miShowRequestClick(Sender: TObject);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereMainInvoicesList: String;
    procedure GenerateSelectMainInvoicesList;
    procedure GenerateSelectMainInvoice;
    procedure GenerateSelectMainInvoiceBody;
    procedure GenerateSelectIncomeDocs;
    procedure GenerateSelectOutcomeDocs;
    function GetWhereInvoiceSetup: String;
    procedure GenerateSelectInvoiceSetup;
    procedure ArticulSetBodyArticulID;
    procedure ArticulInsertBodyArticulID;
    procedure TovarSetBodyArticulID;
    procedure TovarInsertBodyArticulID;
    procedure SetContractor;
    procedure SetCurrencyFmt;
    procedure GetTotalMany;
    procedure Fill_Labels(lblTovarOut, lblTovarIn, lblManyOut, lblManyIn,
                                      lblTovarBal, lblManyBal, lblBal : TLabel;
                                      Symbol : String; Decimals : Integer; var Bal : Double);
    procedure TuneUpReservAmount;
    procedure SetReadOnly;
  public
    { Public declarations }
    In_Out : Integer;
    LookUpProcedure : TObjProcedure;
    LookUpProcedureUpdate : TObjFrmProcedure;
    LookUpProcedureInsert : TObjFrmProcedure;
  end;

var
  frmInvoiceIn: TfrmInvoice;
  frmInvoiceOut: TfrmInvoice;

implementation

uses Misk, DM, ChoiseCopy, Main, Articuls, Tovar, NaklIn, Plat,
  NaklOut, Factura, KontrAgList, GoodInfo, Sostav, LastBuyPrice, Requests,
  GetStore;

{$R *.DFM}

var
  OrderByMainInvoicesList  : String = ' 5 asc, 4 desc, 3 asc, 7 asc';
  WhereSqlMainInvoicesList : String = '';

  OrderByMainInvoiceBody  : String = '';

  WhereSqlInvoiceSetup : String = '';

  OrderByIncomeDocs  : String = ' 4 asc, 3 asc';
  OrderByOutcomeDocs  : String = ' 4 asc, 3 asc';

  NumberPrefix, NumberSuffix : String;
  TotalMany, OldCurrencyRate : Double;
  CurrencyRoundPower : Integer;

  Contractor, Meneger, IType, IContractorType, ArticulName : String;
  DateStart, DateStop, DateStartPaidPeriod, DateStopPaidPeriod : TDate;

  MainInvoicesListBookMark, MainInvoicesListPriorBookMark : String;

  BalWhite, BalBlack : Double;
  Saving : Boolean = False;
  Cloning : Boolean = False;

procedure TfrmInvoice.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
     ActivePage: TTabSheet;
begin
 If (dsMainInvoicesList.Owner<>nil) then
  Begin
   ActivePage := PageControl1.ActivePage;
   For k := 0 to Pred((dsMainInvoicesList.Owner).ComponentCount) do
    Begin
     If (Components[k].Name='sbApply'+Suf) or
        (Components[k].Name='sbCancel'+Suf) then
      (Components[k] as TControl).Enabled := Enabled;
     If (Components[k].Name='sbPrint'+Suf) then
      (Components[k] as TControl).Enabled := NOT Enabled;
     If (Black) and (Components[k].Name='fc'+Suf) then
      If (ibdsMainInvoiceDOUBLE_SOSTAV.Value=1) and (NOT Enabled) then
       Begin
        If (ibdsMainInvoiceBLACK.Value=1) then
         If (ibdsMainInvoiceOPPOSITE_SOSTAV_ID.IsNull) then
          fcInvoice.Caption := 'Создать первый состав'
         else
           fcInvoice.Caption := 'Показать первый состав'
        else
         If (ibdsMainInvoiceOPPOSITE_SOSTAV_ID.IsNull) then
          fcInvoice.Caption := 'Создать второй состав'
         else
          fcInvoice.Caption := 'Показать второй состав';
        (Components[k] as TControl).Visible := True
       End
      else
       (Components[k] as TControl).Visible := False;
     If (Components[k] is TTabSheet) and
        (Components[k].Name<>'ts'+Suf) then
      (Components[k] as TTabSheet).TabVisible := NOT Enabled
    End;
   PageControl1.ActivePage := ActivePage
  End
end;

function TfrmInvoice.GetWhereMainInvoicesList: String;
begin
 Result := '';
 If (sbFilterInvoicesList.Down) then
  Begin
   lblFilter.Caption := '';
   If (cbMeneger.Checked) then
    Begin
     Result := Result+'and (P.ID='+ibdsFilterPersonsID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Менеджер: '+edMeneger.Text+'; '
    End;
   If (cbContractor.Checked) then
    Begin
     If (edContractor.Text='') then
      edContractor.Text := ' ';
     Result := Result+'and (UPPER(CNTR.NAME collate PXW_CYRL) like '#39+AnsiUpperCase(edContractor.Text)+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Контрагент: '+edContractor.Text+'; '
    End;
   If (cbPaid.Checked) then
    Begin
     If (In_Out=2) then
      Result := Result+'and (IH.SALDO_MANY<-0.001) '
     else
      Result := Result+'and (IH.SALDO_MANY>0.001) ';
     lblFilter.Caption := lblFilter.Caption+'Есть оплата; '
    End;
   If (cbDispatched.Checked) then
    Begin
     If (In_Out=2) then
      Result := Result+'and (IH.SALDO_GOODS>0.001) '
     else
      Result := Result+'and (IH.SALDO_GOODS<-0.001) ';
     lblFilter.Caption := lblFilter.Caption+'Есть отгрузка; '
    End;
   If (cbPaidDispatched.Checked) then
    Case cbbPaidDispatchedSign.ItemIndex of
     0 : Begin
          If (In_Out=2) then
           Result := Result+'and (IH.SALDO_MANY+IH.SALDO_GOODS>0.001) '
          else
           Result := Result+'and (IH.SALDO_MANY+IH.SALDO_GOODS<-0.001) ';
          lblFilter.Caption := lblFilter.Caption+'Оплата<Отгрузки; '
         End;
     1 : Begin
          If (In_Out=2) then
           Result := Result+'and (IH.SALDO_MANY+IH.SALDO_GOODS!<-0.001) '
          else
           Result := Result+'and (IH.SALDO_MANY+IH.SALDO_GOODS!>0.001) ';
          lblFilter.Caption := lblFilter.Caption+'Оплата<=Отгрузке; '
         End;
     2 : Begin
          Result := Result+'and ((IH.SALDO_MANY+IH.SALDO_GOODS>-0.001) and (IH.SALDO_MANY+IH.SALDO_GOODS<0.001))';
          lblFilter.Caption := lblFilter.Caption+'Оплата=Отгрузке; '
         End;
     3 : Begin
          If (In_Out=2) then
           Result := Result+'and (IH.SALDO_MANY+IH.SALDO_GOODS<0.001) '
          else
           Result := Result+'and (IH.SALDO_MANY+IH.SALDO_GOODS>-0.001) ';
          lblFilter.Caption := lblFilter.Caption+'Оплата>=Отгрузке; '
         End;
     4 : Begin
          If (In_Out=2) then
           Result := Result+'and (IH.SALDO_MANY+IH.SALDO_GOODS<-0.001) '
          else
           Result := Result+'and (IH.SALDO_MANY+IH.SALDO_GOODS>0.001) ';
          lblFilter.Caption := lblFilter.Caption+'Оплата>Отгрузки; '
         End;
     5 : Begin
          Result := Result+' and NOT((IH.SALDO_MANY+IH.SALDO_GOODS>-0.001) and (IH.SALDO_MANY+IH.SALDO_GOODS<0.001))';
          lblFilter.Caption := lblFilter.Caption+'Оплата<>Отгрузке; '
         End
    end;
   If (cbType.Checked) then
    Begin
     Result := Result+'and (InvS.ID='+ibdsFilterTypesID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Тип: '+edType.Text+'; '
    End;
   If (cbContractorType.Checked) then
    Begin
     Result := Result+'and (CNTR.ID in (select CTI.CONTRACTOR_ID from CONTRACTOR_TYPES_INCLUDE CTI where (CTI.TYPE_ID='+ibdsFilterContractorTypesID.AsString+'))) ';
     lblFilter.Caption := lblFilter.Caption+'Тип контрагентов: '+edContractorType.Text+'; '
    End;
   If (cbPeriod.Checked) and (deDateStart.Text<>'') and (deDateStop.Text<>'') then
    Begin
     If (deDateStart.Text='') then
      deDateStart.Date := Date; 
     If (deDateStop.Text='') then
      deDateStop.Date := Date;
     Result := Result+'and (IH.INVOICE_DATE>='#39+deDateStart.Text+#39') and (IH.INVOICE_DATE<='#39+deDateStop.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'За период с '+deDateStart.Text+' по '+deDateStop.Text+'; '
    End;
   If (cbPaidPeriod.Checked) and (deDateStartPaidPeriod.Text<>'') and (deDateStopPaidPeriod.Text<>'') then
    Begin
     If (deDateStartPaidPeriod.Text='') then
      deDateStartPaidPeriod.Date := Date;
     If (deDateStopPaidPeriod.Text='') then
      deDateStopPaidPeriod.Date := Date;
     If (In_Out=1) then
      Result := Result+'and exists(select * from PRIMARY_PAYMENTS PP, PRIMARY_SETUP PS where (PP.PAYMENT_DATE>='#39+deDateStartPaidPeriod.Text+#39') and (PP.PAYMENT_DATE<='#39+deDateStopPaidPeriod.Text+#39') and (PS.IN_OUT=2) and (PS.ID=PP.PRIMARY_SETUP_ID) and (PP.PARENT_TYPE=4) and (PP.PARENT_ID=IH.ID)) '
     else
      Result := Result+'and exists(select * from PRIMARY_PAYMENTS PP, PRIMARY_SETUP PS where (PP.PAYMENT_DATE>='#39+deDateStartPaidPeriod.Text+#39') and (PP.PAYMENT_DATE<='#39+deDateStopPaidPeriod.Text+#39') and (PS.IN_OUT=1) and (PS.ID=PP.PRIMARY_SETUP_ID) and (PP.PARENT_TYPE=3) and (PP.PARENT_ID=IH.ID)) ';
     lblFilter.Caption := lblFilter.Caption+'Имеется оплата за период с '+deDateStartPaidPeriod.Text+' по '+deDateStopPaidPeriod.Text+'; '
    End;
   If (cbArticuls.Checked) then
    Begin
     Result := Result+'and (IB.INVOICE_ID=IH.ID) and (IB.ARTICUL_ID='+ibdsFilterArticulsID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Включающие товар: '+edArticul.Text+'; '
    End;
   If (cbOpen.Checked) then
    Begin
     Result := Result+'and (IH.CLOSED=0) ';
     lblFilter.Caption := lblFilter.Caption+'Открытые; '
    End;
   If (cbClosed.Checked) then
    Begin
     Result := Result+'and (IH.CLOSED=1) ';
     lblFilter.Caption := lblFilter.Caption+'Закрытые; '
    End;
   If (Black) then
    Begin
     If (rgSostav.Enabled) then
      If (rgSostav.ItemIndex=1) then
       Begin
        Result := Result+'and ((IH.DOUBLE_SOSTAV=0) or ((IH.DOUBLE_SOSTAV=1) and (IH.BLACK=1))) ';
        lblFilter.Caption := lblFilter.Caption+'Второй состав; '
       End
      else
       Begin
        Result := Result+'and ((IH.DOUBLE_SOSTAV=0) or ((IH.DOUBLE_SOSTAV=1) and (IH.BLACK=0))) ';
        lblFilter.Caption := lblFilter.Caption+'Первый состав; '
       End;
     If (cbBlack.Checked) then
      Begin
       Result := Result+'and (IH.BLACK=1) ';
       lblFilter.Caption := lblFilter.Caption+'Н/О; '
      End;
     If (cbWhite.Checked) then
      Begin
       Result := Result+'and (IH.BLACK=0) ';
       lblFilter.Caption := lblFilter.Caption+'О; '
      End;
     If (cbDoubleSostav.Enabled) then
      If NOT (cbDoubleSostav.Checked) then
       Begin
        Result := Result+'and (IH.DOUBLE_SOSTAV=0) ';
        lblFilter.Caption := lblFilter.Caption+'Односоставные; '
       End;
    End;
   If (cbPrefix.Checked) then
    Begin
     If (edPrefix.Text='') then
      edPrefix.Text := ' ';
     Result := Result+'and (IH.NUMBER_PREFIX like '#39+edPrefix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Префикс: '+edPrefix.Text+'; '
    End;
   If (cbNumber.Checked) then
    Begin
     If (edNumber.Text='') then
      edNumber.Text := ' ';
     Result := Result+'and (IH.NUMBER='+edNumber.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Номер счета: '+edNumber.Text+'; '
    End;
   If (cbSuffix.Checked) then
    Begin
     If (edSuffix.Text='') then
      edSuffix.Text := ' ';
     Result := Result+'and (IH.NUMBER_SUFFIX like '#39+edSuffix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Суффикс: '+edSuffix.Text+'; '
    End;
   If (cbAmount.Checked) then
    Begin
     If (edAmount.Text='') then
      edAmount.Text := '0';
     Result := Result+'and (Cast(IH.AMOUNT as NUMERIC(18,4))='+edAmount.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Сумма счета: '+edAmount.Text+'; '
    End;
   If (cbComments.Checked) then
    Begin
     If (edComments.Text='') then
      edComments.Text := ' ';
     Result := Result+'and (UPPER(IH.COMMENTS collate pxw_cyrl) like '#39+AnsiUpperCase(edComments.Text)+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Комментарии: '+edComments.Text+'; '
    End;
   lblFilter.Caption := Trim(lblFilter.Caption);
   pnlText.Visible := True;
   lblFilter.AutoSize := True;
   If (lblFilter.Caption='') then
    sbFilterInvoicesList.Down := False;
  End
end;

function TfrmInvoice.GetWhereInvoiceSetup: String;
begin
 Result := '';
 If (Black) then
  If (ibdsMainInvoiceDOUBLE_SOSTAV.Value=1) then
   Result := 'and (GIS.CREATE_RIGHT_BLACK_WHITE in ('+IntToStr(Succ(ibdsMainInvoiceBLACK.AsInteger))+',3))'
end;

procedure TfrmInvoice.GenerateSelectMainInvoicesList;
 var k : Integer;
begin
 WhereSqlMainInvoicesList := GetWhereMainInvoicesList;
 If (In_Out=2) then
  ibdsMainInvoicesList.SelectSQL[4] := 'C.DECIMALS_IN DECIMALS, -IH.SALDO_MANY SALDO_MANY, IH.SALDO_GOODS,'
 else
  ibdsMainInvoicesList.SelectSQL[4] := 'C.DECIMALS_OUT DECIMALS, IH.SALDO_MANY, -IH.SALDO_GOODS SALDO_GOODS,';
 If (Black) then
  ibdsMainInvoicesList.SelectSQL[4] := ibdsMainInvoicesList.SelectSQL[4]+' IH.BLACK, IH.DOUBLE_SOSTAV, IH.OPPOSITE_SOSTAV_ID,';
 ibdsMainInvoicesList.SelectSQL[7] := 'INVOICE_SETUP InvS, CURRENCY C, INVOICE_HEADER IH, USERS U, USER_RIGHTS_FOR_INVOICE UR';
 If (cbArticuls.Checked) and (sbFilterInvoicesList.Down) then
  ibdsMainInvoicesList.SelectSQL[7] :=  ibdsMainInvoicesList.SelectSQL[7]+', INVOICE_BODY IB';
 If NOT(Black) then
  ibdsMainInvoicesList.SelectSQL[10] := '(InvS.IN_OUT=:In_Out) and (C.ID=IH.CURRENCY_ID) and (U.PERSON_ID=:PERSON_ID) and (UR.USER_ID=U.ID) and '+'(UR.INVOICE_SETUP_ID=IH.INVOICE_SETUP_ID) and (((UR.SEE_IN_LIST=1) and (UR.OWN_ONLY=0)) or ((UR.SEE_IN_LIST=1) and (UR.OWN_ONLY=1) and (IH.MASTER_ID=:PERSON_ID))) and (U.SECURITY_LEVEL!<IH.SECURITY_LEVEL)';
 For k := Pred(ibdsMainInvoicesList.SelectSQL.Count) downto 11 do
  ibdsMainInvoicesList.SelectSQL.Delete(k);
 ibdsMainInvoicesList.SelectSQL.Add(WhereSqlMainInvoicesList);
 ibdsMainInvoicesList.SelectSQL.Add('order by'+OrderByMainInvoicesList);
 ibdsMainInvoicesList.ParamByName('IN_OUT').Value := In_Out;
 ibdsMainInvoicesList.ParamByName('PERSON_ID').Value := PersonID
end;

procedure TfrmInvoice.GenerateSelectMainInvoice;
begin
 ibdsMainInvoice.SelectSQL.Clear;
 ibdsMainInvoice.SelectSQL.Add('select IH.ID, IH.INVOICE_SETUP_ID, InvS.NAME SETUP_NAME,');
 ibdsMainInvoice.SelectSQL.Add('InvS.NUMBER_FORMAT, InvS.NUMBER_RESTART_PERIOD,');
 ibdsMainInvoice.SelectSQL.Add('InvS.PRICE_FORMULA, IH.CONTRACT_ID,');
 If (Black) then
  ibdsMainInvoice.SelectSQL.Add('IH.DOUBLE_SOSTAV, IH.OPPOSITE_SOSTAV_ID,');
 ibdsMainInvoice.SelectSQL.Add('IH.MASTER_ID, P.SURNAME||'' ''||P.NAME||'' ''||P.SECOND_NAME MASTER_NAME,');
 ibdsMainInvoice.SelectSQL.Add('IH.SECURITY_LEVEL, IH.NUMBER_PREFIX, IH.NUMBER,');
 ibdsMainInvoice.SelectSQL.Add('IH.NUMBER_SUFFIX, IH.INVOICE_DATE, IH.ENTERPRISE_ID,');
 ibdsMainInvoice.SelectSQL.Add('E.NAME ENTERPRISE_NAME, IH.ENTERPRISE_ACCOUNT_ID,');
 ibdsMainInvoice.SelectSQL.Add('IH.ENTERPRISE_STORE_ID, IH.CONTRACTOR_ID,');
 ibdsMainInvoice.SelectSQL.Add('C.NAME CONTRACTOR_NAME, IH.CONTRACTOR_ACCOUNT_ID,');
 ibdsMainInvoice.SelectSQL.Add('IH.CURRENCY_ID, CUR.NAME CURRENCY_NAME, CUR.DECIMALS_IN,');
 ibdsMainInvoice.SelectSQL.Add('CUR.DECIMALS_OUT, IH.CURRENCY_RATE,');
 ibdsMainInvoice.SelectSQL.Add('IH.PERCENT, IH.CLOSED, IH.CLOSE_DATE,');
 ibdsMainInvoice.SelectSQL.Add('IH.VALID_DATE,');
 If (Black) then
  ibdsMainInvoice.SelectSQL.Add('IH.BLACK,');
 ibdsMainInvoice.SelectSQL.Add('IH.COMMENTS, IH.INCLUDE_NSP, UR.UPDATE_RIGHT, UR.DELETE_RIGHT, UR.CLOSE_RIGHT');
 ibdsMainInvoice.SelectSQL.Add('from INVOICE_SETUP InvS, PERSONS P, ENTERPRISES E, CONTRACTORS C,');
 ibdsMainInvoice.SelectSQL.Add('CURRENCY CUR, INVOICE_HEADER IH, USERS U, USER_RIGHTS_FOR_INVOICE UR');
 ibdsMainInvoice.SelectSQL.Add('where (IH.ID=:ID) and (IH.INVOICE_SETUP_ID=InvS.ID) and');
 ibdsMainInvoice.SelectSQL.Add('(IH.MASTER_ID=P.ID) and (IH.ENTERPRISE_ID=E.ID) and');
 If (Black) then
  ibdsMainInvoice.SelectSQL.Add('(IH.CONTRACTOR_ID=C.ID) and (U.PERSON_ID=:PERSON_ID) and (UR.USER_ID=U.ID) and (UR.INVOICE_SETUP_ID=IH.INVOICE_SETUP_ID) and (UR.BLACK=IH.BLACK) and (((UR.SEE_IN_LIST=1) and (UR.OWN_ONLY=0)) or'+' ((UR.SEE_IN_LIST=1) and (UR.OWN_ONLY=1) and (IH.MASTER_ID=:PERSON_ID))) and (U.SECURITY_LEVEL!<IH.SECURITY_LEVEL) and')
 else
  ibdsMainInvoice.SelectSQL.Add('(IH.CONTRACTOR_ID=C.ID) and (U.PERSON_ID=:PERSON_ID) and (UR.USER_ID=U.ID) and (UR.INVOICE_SETUP_ID=IH.INVOICE_SETUP_ID) and (((UR.SEE_IN_LIST=1) and (UR.OWN_ONLY=0)) or ((UR.SEE_IN_LIST=1) and (UR.OWN_ONLY=1) and (IH.MASTER_ID=:PERSON_ID)))'+' and (U.SECURITY_LEVEL!<IH.SECURITY_LEVEL) and');
 ibdsMainInvoice.SelectSQL.Add('(IH.CURRENCY_ID=CUR.ID)');
 If NOT (Black) then
  Begin
   ibdsMainInvoice.InsertSQL.Strings[2] := '';
   ibdsMainInvoice.InsertSQL.Strings[9] := '';
   ibdsMainInvoice.InsertSQL.Strings[13] := '';
   ibdsMainInvoice.InsertSQL.Strings[20] := '';
   ibdsMainInvoice.ModifySQL.Strings[4] := '';
   ibdsMainInvoice.ModifySQL.Strings[5] := '';
   ibdsMainInvoice.ModifySQL.Strings[22] := '';
   ibdsMainInvoice.RefreshSQL.Strings[3] := '';
   ibdsMainInvoice.RefreshSQL.Strings[14] := ''
  End;
 ibdsMainInvoice.ParamByName('PERSON_ID').Value := PersonID
end;

procedure TfrmInvoice.GenerateSelectMainInvoiceBody;
begin
 ibdsMainInvoiceBody.SelectSQL.Clear;
 ibdsMainInvoiceBody.SelectSQL.Add('select IB.ID, IB.INVOICE_ID, cast(IB.ARTICUL_ID as INTEGER) ARTICUL_ID, A.ARTICUL, A.NAME ARTICUL_NAME, A.UNITS, A.ITEM_TYPE,');
 ibdsMainInvoiceBody.SelectSQL.Add('IB.MADE_IN, IB.PACKS_AMOUNT, IB.PACK_VALUE, IB.ITEMS_AMOUNT,');
 If (In_Out<>2) then
  ibdsMainInvoiceBody.SelectSQL.Add('IB.PRICE_REFERENCE, IB.PERCENT,');
 ibdsMainInvoiceBody.SelectSQL.Add('IB.PRICE, IB.CRC32_SET, ((IB.PACKS_AMOUNT*IB.PACK_VALUE+IB.ITEMS_AMOUNT)*IB.PRICE) ItogoManyOld, IB.NDS, IB.NSP,');
 ibdsMainInvoiceBody.SelectSQL.Add('CAST (1 as DOUBLE PRECISION) MAIN_LEAVINGS_TOTAL, CAST (1 as DOUBLE PRECISION) ADDITIONAL_LEAVINGS_TOTAL, IB.COMMENTS, CAST(1 as DOUBLE PRECISION) LAST_BUY_PRICE');
 If (In_Out=1) then
  Begin
   ibdsMainInvoiceBody.SelectSQL.Add(',IB.RESERV_AMOUNT, IB.MAX_BUY_PRICE, IB.LATEST_DATE, IB.PAYING_PERSENT, IB.PAYING_DATE, IB.COMMENTS_RESERVATION');
   ibdsMainInvoiceBody.SelectSQL.Add(', CAST(1 as DOUBLE PRECISION) TOTAL_RESERV');
   ibdsMainInvoiceBody.SelectSQL.Add('from ARTICULS A, INVOICE_BODY IB')
  End
 else
  ibdsMainInvoiceBody.SelectSQL.Add('from ARTICULS A, INVOICE_BODY IB');
 ibdsMainInvoiceBody.SelectSQL.Add('where (IB.INVOICE_ID=:ID) and (IB.ARTICUL_ID=A.ID)');
 If (OrderByMainInvoiceBody<>'') then
  ibdsMainInvoiceBody.SelectSQL.Add('order by'+OrderByMainInvoiceBody);
 If (In_Out=2) then
  Begin
   ibdsMainInvoiceBody.InsertSQL[4] := '';
   ibdsMainInvoiceBody.InsertSQL[5] := '';
   ibdsMainInvoiceBody.InsertSQL[11] := '';
   ibdsMainInvoiceBody.InsertSQL[12] := '';
   ibdsMainInvoiceBody.ModifySQL[13] := '';
   ibdsMainInvoiceBody.ModifySQL[14] := '';
   ibdsMainInvoiceBody.ModifySQL[15] := '';
   ibdsMainInvoiceBody.ModifySQL[16] := '';
   ibdsMainInvoiceBody.RefreshSQL[2] := '';
   ibdsMainInvoiceBody.RefreshSQL[8] := '';
   ibdsInvoiceBodySet.InsertSQL[4] := '';
   ibdsInvoiceBodySet.InsertSQL[5] := '';
   ibdsInvoiceBodySet.InsertSQL[11] := '';
   ibdsInvoiceBodySet.InsertSQL[12] := '';
   ibdsInvoiceBodySet.ModifySQL[8] := '';
   ibdsInvoiceBodySet.ModifySQL[9] := '';
   ibdsInvoiceBodySet.ModifySQL[10] := '';
   ibdsInvoiceBodySet.ModifySQL[11] := '';
   ibdsInvoiceBodySet.ModifySQL[12] := '';
   ibdsInvoiceBodySet.ModifySQL[13] := '';
   ibdsInvoiceBodySet.ModifySQL[14] := ''
  End;
 ibdsMainInvoiceBody.ParamByName('ID').AsInt64 := ibdsMainInvoice.ParamByName('ID').AsInt64
end;

procedure TfrmInvoice.GenerateSelectInvoiceSetup;
begin
 WhereSqlInvoiceSetup := GetWhereInvoiceSetup;
 ibdsInvoice_Setup.SelectSQL.Clear;
 ibdsInvoice_Setup.SelectSQL.Add('select InvS.ID, InvS.CONTRACT_ID_DEFAULT, InvS.NAME, InvS.VALID_PERIOD, InvS.NUMBER_PREFIX,');
 ibdsInvoice_Setup.SelectSQL.Add('InvS.NUMBER_FORMAT, InvS.NUMBER_SUFFIX, InvS.NUMBER_RESTART_PERIOD,');
 If (Black) then
  ibdsInvoice_Setup.SelectSQL.Add('InvS.BLACK_DEFAULT,');
 ibdsInvoice_Setup.SelectSQL.Add('InvS.CURRENCY_ID_DEFAULT, InvS.SECURITY_LEVEL, InvS.PRICE_FORMULA');
 If (Black) then
  ibdsInvoice_Setup.SelectSQL.Add(', InvS.BLACK, C.BLACK CONTRACT_BLACK, GIS.CREATE_RIGHT_BLACK_WHITE CREATE_RIGHT')
 else
  ibdsInvoice_Setup.SelectSQL.Add(', GIS.CREATE_RIGHT');
 ibdsInvoice_Setup.SelectSQL.Add('from INVOICE_SETUP InvS join GET_INVOICE_SETUP(:ENTERPRISE_ID,:IN_OUT,:PERSON_ID) GIS on');
 ibdsInvoice_Setup.SelectSQL.Add('((InvS.ENTERPRISE_ID=:ENTERPRISE_ID) or (InvS.ENTERPRISE_ID=-1)) and');
 ibdsInvoice_Setup.SelectSQL.Add('(InvS.IN_OUT=:IN_OUT) and (InvS.ID=GIS.ID)');
 ibdsInvoice_Setup.SelectSQL.Add(WhereSqlInvoiceSetup);
 If (Black) then
  ibdsInvoice_Setup.SelectSQL.Add('left outer join CONTRACTS C on (InvS.CONTRACT_ID_DEFAULT=C.ID)');
 ibdsInvoice_Setup.SelectSQL.Add('order by 3');
 ibdsInvoice_Setup.ParamByName('IN_OUT').Value := In_Out;
 ibdsInvoice_Setup.ParamByName('PERSON_ID').Value := PersonID;
 ibdsInvoice_Setup.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainInvoiceENTERPRISE_ID.AsLargeInt
end;

procedure TfrmInvoice.GenerateSelectIncomeDocs;
 var k : Integer;
begin
 For k := Pred(ibdsIncomeDocs.SelectSQL.Count) downto 20 do
  ibdsIncomeDocs.SelectSQL.Delete(k);
 ibdsIncomeDocs.SelectSQL.Add('order by'+OrderByIncomeDocs);
end;

procedure TfrmInvoice.GenerateSelectOutcomeDocs;
 var k : Integer;
begin
 For k := Pred(ibdsOutcomeDocs.SelectSQL.Count) downto 20 do
  ibdsOutcomeDocs.SelectSQL.Delete(k);
 ibdsOutcomeDocs.SelectSQL.Add('order by'+OrderByOutcomeDocs);
end;

procedure TfrmInvoice.FormCreate(Sender: TObject);
var ki : Integer;
begin
 pnlDetails.Parent := panel8;
 pnlDetails.Top := panel8.Height-pnlDetails.Height;
 In_Out := TempIn_Out;
 Case In_Out of
  1 : Begin
       FName := 'Счет на поставку';
       Caption := 'Счет на поставку товара/услуг';
       Name := 'frmInvoiceOut'
      End;
  2 : Begin
       FName := 'Счет на покупку';
       Caption := 'Счет на покупку товара/услуг';
       Name := 'frmInvoiceIn';
       tvAccountBody.BeginUpdate;
       tvAccountBodyRESERV_AMOUNT.Free;
       ibdsMainInvoiceBodyRESERV_AMOUNT.Free;
       tvAccountBodyMAX_BUY_PRICE.Free;
       ibdsMainInvoiceBodyMAX_BUY_PRICE.Free;
       tvAccountBodyLATEST_DATE.Free;
       ibdsMainInvoiceBodyLATEST_DATE.Free;
       tvAccountBodyPAYING_DATE.Free;
       ibdsMainInvoiceBodyPAYING_DATE.Free;
       tvAccountBodyPAYING_PERSENT.Free;
       ibdsMainInvoiceBodyPAYING_PERSENT.Free;
       tvAccountBodyCOMMENTS_RESERVATION.Free;
       ibdsMainInvoiceBodyCOMMENTS_RESERVATION.Free;
       tvAccountBodyTOTAL_RESERV.Free;
       ibdsMainInvoiceBodyTOTAL_RESERV.Free;
       tvAccountBody.EndUpdate;
       tvSets.BeginUpdate;
       tvSetsRESERV_AMOUNT.Free;
       ibdsInvoiceBodySetRESERV_AMOUNT.Free;
       tvSetsMAX_BUY_PRICE.Free;
       ibdsInvoiceBodySetMAX_BUY_PRICE.Free;
       tvSetsLATEST_DATE.Free;
       ibdsInvoiceBodySetLATEST_DATE.Free;
       tvSetsPAYING_DATE.Free;
       ibdsInvoiceBodySetPAYING_DATE.Free;
       tvSetsPAYING_PERSENT.Free;
       ibdsInvoiceBodySetPAYING_PERSENT.Free;
       tvSetsCOMMENTS_RESERVATION.Free;
       ibdsInvoiceBodySetCOMMENTS_RESERVATION.Free;
       tvSetsTOTAL_RESERV.Free;
       ibdsInvoiceBodySetTOTAL_RESERV.Free;
       tvSets.EndUpdate
      End
 end;
 inherited;
 If NOT (Black) then
  Begin
   For ki := Pred(ComponentCount) downto 0 do
    If (Components[ki] is TIBDataSet) and ((Components[ki] as TIBDataSet).Database=frmDM.dbMain) then
     (Components[ki] as TIBDataSet).Database := frmDM.dbWhite
    else
     If (Components[ki] is TIBSQL) and ((Components[ki] as TIBSQL).Database=frmDM.dbMain) then
      (Components[ki] as TIBSQL).Database := frmDM.dbWhite;
   For ki := Pred(ComponentCount) downto 0 do
    If (Components[ki].Tag=99) then
     Components[ki].Free;
   pnlDetails.Width := pnlDetails.Width-187;
   ibdsIncomeDocs.SelectSQL[8] := '(UR.PRIMARY_SETUP_ID=PTIH.PRIMARY_SETUP_ID) and';
   ibdsIncomeDocs.SelectSQL[18] := '(UR.USER_ID=U.ID) and (UR.PRIMARY_SETUP_ID=PP.PRIMARY_SETUP_ID) and';
   ibdsOutcomeDocs.SelectSQL[8] := '(UR.PRIMARY_SETUP_ID=PTOH.PRIMARY_SETUP_ID) and';
   ibdsOutcomeDocs.SelectSQL[18] := '(UR.USER_ID=U.ID) and (UR.PRIMARY_SETUP_ID=PP.PRIMARY_SETUP_ID) and'
  End;
 If (In_Out=2) then
  Begin
   ibdsMainInvoiceBodyPRICE_REFERENCE.Free;
   ibdsMainInvoiceBodyPERCENT.Free;
   tvAccountBodyPERCENT.Free;
   ibdsInvoiceBodySetPRICE_REFERENCE.Free;
   ibdsMainInvoiceBodyLAST_BUY_PRICE.Visible := False;
   Label16.Visible := False;
   wwDBEdit3.Visible := False;
   fcReCalc.Visible := False
  End
 else
  Begin
   wwDBLookupCombo5.Visible := False;
   Label8.Visible := False
  End;
 trMain.StartTransaction;
 If (Black) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select FILTER_NAME, FILTER_VALUE from FILTERS');
   ibsAux.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
   ibsAux.ExecQuery;
   sbFilterInvoicesList.Down :=(ibsAux.RecordCount>0);
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
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbDispatched.Name) then
      cbDispatched.Checked := True;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPaidDispatched.Name) then
      Begin
       cbPaidDispatched.Checked := True;
       cbbPaidDispatchedSign.ItemIndex := ibsAux.FieldByName('FILTER_VALUE').AsInteger
      End;
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
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPaidPeriod.Name+'/Start') then
      Begin
       cbPaidPeriod.Checked := True;
       If (ibsAux.FieldByName('FILTER_VALUE').AsString<>'') then
        DateStartPaidPeriod := ibsAux.FieldByName('FILTER_VALUE').AsDate
       else
        DateStartPaidPeriod := Date
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPaidPeriod.Name+'/Stop') then
      Begin
       cbPaidPeriod.Checked := True;
       If (ibsAux.FieldByName('FILTER_VALUE').AsString<>'') then
        DateStopPaidPeriod := ibsAux.FieldByName('FILTER_VALUE').AsDate
       else
        DateStopPaidPeriod := Date
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
     If (ibsAux.FieldByName('FILTER_NAME').AsString=rgSostav.Name) then
      rgSostav.ItemIndex := ibsAux.FieldByName('FILTER_VALUE').AsInteger;
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
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbBlack.Name) then
      cbBlack.Checked := True;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbWhite.Name) then
      cbWhite.Checked := True;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbDoubleSostav.Name) then
      cbDoubleSostav.Checked := True;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbComments.Name) then
      Begin
       cbComments.Checked := True;
       edComments.Text := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     cbDoubleSostav.Enabled := cbBlack.Checked or cbWhite.Checked;
     rgSostav.Enabled := NOT cbDoubleSostav.Enabled;
     ibsAux.Next
    End;
   ibsAux.Close;
  End;
 ibdsFilterPersons.Active := sbFilterInvoicesList.Down;
 ibdsFilterTypes.Active := sbFilterInvoicesList.Down;
 ibdsFilterContractorTypes.Active := sbFilterInvoicesList.Down;
 ibdsFilterArticuls.Active := sbFilterInvoicesList.Down;
 GenerateSelectMainInvoicesList;
 GenerateSelectMainInvoice;
 GenerateSelectMainInvoiceBody;
 ibsGridsSetup.SQL.Clear;
 ibsGridsSetup.SQL.Add('select UR.DELETE_RIGHT, UR.CLOSE_RIGHT');
 ibsGridsSetup.SQL.Add('from USERS U join USER_RIGHTS_FOR_INVOICE UR on (U.PERSON_ID=:PERSON_ID) and');
 ibsGridsSetup.SQL.Add('(UR.USER_ID=U.ID) join INVOICE_HEADER IH on (IH.ID=:OPPOSITE_SOSTAV_ID) and (UR.INVOICE_SETUP_ID=IH.INVOICE_SETUP_ID) and');
 If (Black) then
  ibsGridsSetup.SQL.Add('(UR.BLACK=IH.BLACK) and');
 ibsGridsSetup.SQL.Add('(U.SECURITY_LEVEL!<IH.SECURITY_LEVEL)');
 ibsGridsSetup.GenerateParamNames := True;
 If (Invoice_ID=0) then
  Begin
   PageControl1.ActivePageIndex := 0;
   ibdsMainInvoicesList.Open
  End
 else
  Begin
   ibdsMainInvoice.ParamByName('ID').AsInt64 := Invoice_ID;
   PageControl1.ActivePageIndex := 1;
   Invoice_ID := 0
  End
end;

procedure TfrmInvoice.SpeedButton21Click(Sender: TObject);
begin
 Close
end;

procedure TfrmInvoice.fcContractMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsLowered
end;

procedure TfrmInvoice.fcContractMouseEnter(Sender: TObject);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsRaised
end;

procedure TfrmInvoice.fcContractMouseLeave(Sender: TObject);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsLowered
end;

procedure TfrmInvoice.fcContractMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsRaised;
 If (Sender=fcReCalc) then
  PopupMenu2.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y)
end;

procedure TfrmInvoice.Fill_Labels(lblTovarOut, lblTovarIn, lblManyOut, lblManyIn,
                                  lblTovarBal, lblManyBal, lblBal : TLabel;
                                  Symbol : String; Decimals : Integer; var Bal : Double);
 var Amount : Double;
     CRP : Integer;
begin
 CRP := Trunc(Power(10,Decimals));
 lblTovarOut.Caption := FormatFloat('#,##0.'+StringOfChar('0',Decimals)+Symbol,ibsDetail.FieldByName('TOVAR_OUT').AsDouble);
 lblTovarIn.Caption := FormatFloat('#,##0.'+StringOfChar('0',Decimals)+Symbol,ibsDetail.FieldByName('TOVAR_IN').AsDouble);
 lblManyOut.Caption := FormatFloat('#,##0.'+StringOfChar('0',Decimals)+Symbol,ibsDetail.FieldByName('MANY_OUT').AsDouble);
 lblManyIn.Caption := FormatFloat('#,##0.'+StringOfChar('0',Decimals)+Symbol,ibsDetail.FieldByName('MANY_IN').AsDouble);
 If (In_Out=1) then
  Begin
   Amount := Round((ibsDetail.FieldByName('TOVAR_OUT').AsDouble-ibsDetail.FieldByName('TOVAR_IN').AsDouble)*CRP)/CRP;
   lblTovarBal.Caption := FormatFloat('#,##0.'+StringOfChar('0',Decimals)+Symbol,Amount);
   Amount := Round((ibsDetail.FieldByName('MANY_IN').AsDouble-ibsDetail.FieldByName('MANY_OUT').AsDouble)*CRP)/CRP;
   lblManyBal.Caption := FormatFloat('#,##0.'+StringOfChar('0',Decimals)+Symbol,Amount);
   Amount := Round((-ibsDetail.FieldByName('TOVAR_OUT').AsDouble+ibsDetail.FieldByName('TOVAR_IN').AsDouble+ibsDetail.FieldByName('MANY_IN').AsDouble-ibsDetail.FieldByName('MANY_OUT').AsDouble)*CRP)/CRP;
   lblBal.Caption := FormatFloat('#,##0.'+StringOfChar('0',Decimals)+Symbol,Amount);
  End
 else
  Begin
   Amount := Round((ibsDetail.FieldByName('TOVAR_IN').AsDouble-ibsDetail.FieldByName('TOVAR_OUT').AsDouble)*CRP)/CRP;
   lblTovarBal.Caption := FormatFloat('#,##0.'+StringOfChar('0',Decimals)+Symbol,Amount);
   Amount := Round((ibsDetail.FieldByName('MANY_OUT').AsDouble-ibsDetail.FieldByName('MANY_IN').AsDouble)*CRP)/CRP;
   lblManyBal.Caption := FormatFloat('#,##0.'+StringOfChar('0',Decimals)+Symbol,Amount);
   Amount := Round((-ibsDetail.FieldByName('TOVAR_IN').AsDouble+ibsDetail.FieldByName('TOVAR_OUT').AsDouble+ibsDetail.FieldByName('MANY_OUT').AsDouble-ibsDetail.FieldByName('MANY_IN').AsDouble)*CRP)/CRP;
   lblBal.Caption := FormatFloat('#,##0.'+StringOfChar('0',Decimals)+Symbol,Amount)
  End;
 Bal := Amount;
 ibsDetail.Close
end;

procedure TfrmInvoice.ibdsMainInvoicesListAfterScroll(DataSet: TDataSet);
begin
 BalBlack := 0;
 BalWhite := 0;
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,'InvoicesList');
 sbDeleteInvoicesList.Enabled := (ibdsMainInvoicesListDELETE_RIGHT.AsInteger=1) and (ibdsMainInvoicesListCLOSED.AsInteger=0);
 sbCopyInvoicesList.Enabled := (ibdsMainInvoicesListCREATE_RIGHT.AsInteger=1);
 If (Black) then
  Begin
   sbDeleteInvoicesListDouble.Enabled := False;
   If (sbDeleteInvoicesList.Enabled) then
    If (ibdsMainInvoicesListDOUBLE_SOSTAV.AsInteger=1) and
       NOT (ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.IsNull) then
     Begin
      ibsGridsSetup.ParamByName('PERSON_ID').AsInteger := PersonID;
      ibsGridsSetup.ParamByName('OPPOSITE_SOSTAV_ID').AsInt64 := ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.AsLargeInt;
      ibsGridsSetup.ExecQuery;
      sbDeleteInvoicesListDouble.Enabled := (ibsGridsSetup.FieldByName('DELETE_RIGHT').AsInteger=1)
     End
    else
     sbDeleteInvoicesListDouble.Enabled := True
  End;
 If (pnlDetails.Visible) and (PageControl1.ActivePage=tsInvoicesList) and NOT (ibdsMainInvoicesList.ControlsDisabled) then
  Begin
   If (ibdsMainInvoicesListCLOSED.AsInteger=1) then
    fcLabel1.Enabled := False
   else
    If (ibdsMainInvoicesListCLOSE_RIGHT.AsInteger=1) then
     If (ibdsMainInvoicesListDOUBLE_SOSTAV.AsInteger=1) then
      Begin
       If NOT (ibsGridsSetup.Open) then
        Begin
         ibsGridsSetup.ParamByName('PERSON_ID').AsInteger := PersonID;
         ibsGridsSetup.ParamByName('OPPOSITE_SOSTAV_ID').AsInt64 := ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.AsLargeInt;
         ibsGridsSetup.ExecQuery;
        End;
       fcLabel1.Enabled := (ibsGridsSetup.FieldByName('CLOSE_RIGHT').AsInteger=1)
      End
     else
      fcLabel1.Enabled := True;
   ibsDetail.ParamByName('ID').AsInt64 := ibdsMainInvoicesListID.Value;
   ibsDetail.ExecQuery;
   If (Black) then
    Begin
     If (ibdsMainInvoicesListBLACK.AsInteger=1) then
      Begin
       gbBlack.Show;
       lbl2Invoice.Caption := ibdsMainInvoicesListAMOUNT_FMT.AsString+ibdsMainInvoicesListSYMBOL.AsString;
       Fill_Labels(lbl2TovarOut, lbl2TovarIn, lbl2ManyOut, lbl2ManyIn, lbl2TovarBal,
                   lbl2ManyBal, lbl2Bal, ibdsMainInvoicesListSYMBOL.AsString,
                   ibdsMainInvoicesListDECIMALS.AsInteger, BalBlack)
      End
     else
      Begin
       gbWhite.Show;
       lbl1Invoice.Caption := ibdsMainInvoicesListAMOUNT_FMT.AsString+ibdsMainInvoicesListSYMBOL.AsString;
       Fill_Labels(lbl1TovarOut, lbl1TovarIn, lbl1ManyOut, lbl1ManyIn, lbl1TovarBal,
                   lbl1ManyBal, lbl1Bal, ibdsMainInvoicesListSYMBOL.AsString,
                   ibdsMainInvoicesListDECIMALS.AsInteger, BalWhite)
      End;
     If (ibdsMainInvoicesListDOUBLE_SOSTAV.AsInteger=1) and
        (ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.AsString<>'') then
      Begin
       ibsDetail.Close;
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select C.SYMBOL, SUM((IB.PACK_VALUE*IB.PACKS_AMOUNT+IB.ITEMS_AMOUNT)*IB.PRICE) AMOUNT,');
       If (In_Out=1) then
        ibsAux.SQL.Add('C.DECIMALS_OUT DECIMALS')
       else
        ibsAux.SQL.Add('C.DECIMALS_IN DECIMALS');
       ibsAux.SQL.Add('from INVOICE_HEADER IH, CURRENCY C, INVOICE_BODY IB');
       ibsAux.SQL.Add('where (IH.ID='+ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.AsString+') and (IH.CURRENCY_ID=C.ID)');
       ibsAux.SQL.Add(' and (IB.INVOICE_ID=IH.ID) group by C.SYMBOL,');
       If (In_Out=1) then
        ibsAux.SQL.Add('C.DECIMALS_OUT')
       else
        ibsAux.SQL.Add('C.DECIMALS_IN');
       ibsAux.ExecQuery;
       ibsDetail.Close;
       ibsDetail.ParamByName('ID').AsInt64 := ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.Value;
       ibsDetail.ExecQuery;
       If (ibdsMainInvoicesListBLACK.AsInteger=0) then
        Begin
         gbBlack.Show;
         lbl2Invoice.Caption := FormatFloat('#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS').AsInteger),ibsAux.FieldByName('AMOUNT').AsDouble)+ibsAux.FieldByName('SYMBOL').AsString;
         Fill_Labels(lbl2TovarOut, lbl2TovarIn, lbl2ManyOut, lbl2ManyIn, lbl2TovarBal,
                     lbl2ManyBal, lbl2Bal, ibsAux.FieldByName('SYMBOL').AsString,
                     ibsAux.FieldByName('DECIMALS').AsInteger, BalWhite)
        End
       else
        Begin
         gbWhite.Show;
         lbl1Invoice.Caption := FormatFloat('#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS').AsInteger),ibsAux.FieldByName('AMOUNT').AsDouble)+ibsAux.FieldByName('SYMBOL').AsString;
         Fill_Labels(lbl1TovarOut, lbl1TovarIn, lbl1ManyOut, lbl1ManyIn, lbl1TovarBal,
                     lbl1ManyBal, lbl1Bal, ibsAux.FieldByName('SYMBOL').AsString,
                     ibsAux.FieldByName('DECIMALS').AsInteger, BalBlack)
        End;
       ibsAux.Close
      End
     else
      If (ibdsMainInvoicesListBLACK.AsInteger=1) then
       gbWhite.Hide
      else
       gbBlack.Hide
    End
   else
    Begin
     gbWhite.Show;
     lbl1Invoice.Caption := ibdsMainInvoicesListAMOUNT_FMT.AsString+ibdsMainInvoicesListSYMBOL.AsString;
     Fill_Labels(lbl1TovarOut, lbl1TovarIn, lbl1ManyOut, lbl1ManyIn, lbl1TovarBal,
                 lbl1ManyBal, lbl1Bal, ibdsMainInvoicesListSYMBOL.AsString,
                 ibdsMainInvoicesListDECIMALS.AsInteger, BalWhite)
    End;
   ibsDetail.Close;
  End;
 If (ibsGridsSetup.Open) then
  ibsGridsSetup.Close
end;

procedure TfrmInvoice.ibdsMainInvoicesListUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   ibsWhite.SQL.AddStrings(ibdsMainInvoicesList.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainInvoicesListID.OldValue);
   ibsWhite.ExecQuery
  End
end;

procedure TfrmInvoice.sbAddInvoicesListClick(Sender: TObject);
begin
 If NOT (sbApplyInvoicesList.Enabled) then
  Begin
   tsInvoice.Show;
   PageControl1Change(PageControl1);
   sbAddInvoice.Click
  End 
end;

procedure TfrmInvoice.sbDeleteInvoicesListClick(Sender: TObject);
begin
 ibdsMainInvoicesList.Delete
end;

procedure TfrmInvoice.sbApplyInvoicesListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainInvoicesList.Bookmark;
 try
  ibdsMainInvoicesList.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('InvoicesList', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainInvoicesList.Bookmark := BookMark
 except
 end
end;

procedure TfrmInvoice.sbCancelInvoicesListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainInvoicesList.Bookmark;
 ibdsMainInvoicesList.CancelUpdates;
 StteChange('InvoicesList', False);
 try
  trMain.RollbackRetaining
 except
 end;
 try
  ibdsMainInvoicesList.Bookmark := BookMark
 except
 end
end;

procedure TfrmInvoice.ibdsMainInvoiceCalcFields(DataSet: TDataSet);
begin
 ibdsMainInvoiceNUMBER_STR.Value := ibdsMainInvoiceNUMBER_PREFIX.AsString;
 If (ibdsMainInvoiceNUMBER.Value<>0) then
  ibdsMainInvoiceNUMBER_STR.Value := ibdsMainInvoiceNUMBER_STR.Value+
                                     ibdsMainInvoiceNUMBER.AsString;
 ibdsMainInvoiceNUMBER_STR.Value := ibdsMainInvoiceNUMBER_STR.Value+
                                    ibdsMainInvoiceNUMBER_SUFFIX.AsString
end;

procedure TfrmInvoice.wwDBComboBox1DropDown(Sender: TObject);
begin
 pnlNumber.Parent := (Sender as TwwDBComboBox).Parent;
 pnlNumber.Top := (Sender as TwwDBComboBox).Top+(Sender as TwwDBComboBox).Height-1;
 pnlNumber.Left := (Sender as TwwDBComboBox).Left;
 pnlNumber.Show
end;

procedure TfrmInvoice.SpeedButton4Click(Sender: TObject);
begin
 If (Sender is TSpeedButton) then
  (Sender as TControl).Parent.Hide
 else
  (Sender as TControl).Hide
end;

procedure TfrmInvoice.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainInvoiceENTERPRISE_ID.Value := ibdsEnterprisesID.Value;
   If NOT (ibdsEnterprisesDEFAULT_ID_ACCOUNT.IsNull) then
    ibdsMainInvoiceENTERPRISE_ACCOUNT_ID.Value := ibdsEnterprisesDEFAULT_ID_ACCOUNT.Value;
  End
end;

procedure TfrmInvoice.lcInvoiceSetupCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  If (ibdsInvoice_SetupCREATE_RIGHT.AsInteger=0) then
   Begin
    If (ibdsMainInvoiceINVOICE_SETUP_ID.IsNull) then
     Begin
      lcInvoiceSetup.Text := '';
      ibdsMainInvoiceSETUP_NAME.AsString := ''
     End
    else
     Begin
      ibdsInvoice_Setup.Locate('ID',ibdsMainInvoiceINVOICE_SETUP_ID.AsString,[]);
      lcInvoiceSetup.Text := ibdsInvoice_SetupNAME.AsString;
      ibdsMainInvoiceSETUP_NAME.AsString := ibdsInvoice_SetupNAME.AsString
     End
   End
  else
   Begin
    ibdsMainInvoiceINVOICE_SETUP_ID.Value := ibdsInvoice_SetupID.Value;
    If Not (ibdsInvoice_SetupCONTRACT_ID_DEFAULT.IsNull) then
     ibdsMainInvoiceCONTRACT_ID.Value := ibdsInvoice_SetupCONTRACT_ID_DEFAULT.Value;
    ibdsMainInvoiceVALID_DATE.Value := ibdsMainInvoiceINVOICE_DATE.Value+
                                       ibdsInvoice_SetupVALID_PERIOD.Value;
    NumberPrefix := ibdsInvoice_SetupNUMBER_PREFIX.AsString;
    ibdsMainInvoiceNUMBER_FORMAT.Value := ibdsInvoice_SetupNUMBER_FORMAT.Value;
    NumberSuffix := ibdsInvoice_SetupNUMBER_SUFFIX.AsString;
    ibdsMainInvoiceNUMBER_RESTART_PERIOD.Value := ibdsInvoice_SetupNUMBER_RESTART_PERIOD.Value;
    ibdsMainInvoicePRICE_FORMULA.Value := ibdsInvoice_SetupPRICE_FORMULA.Value;
    If (Black) then
     Begin
      dbcbBlack.Enabled := (ibdsMainInvoiceDOUBLE_SOSTAV.AsInteger=0);
      If (ibdsMainInvoiceBLACK.IsNull) then
       ibdsMainInvoiceBLACK.Value := ibdsInvoice_SetupBLACK_DEFAULT.Value;
      If (ibdsInvoice_SetupBLACK.AsInteger=1) then
       Begin
        If (ibdsMainInvoiceBLACK.Value<>1) then
         ibdsMainInvoiceBLACK.Value := 1;
        dbcbBlack.Enabled := False
       End
      else
       Begin
        If (ibdsInvoice_SetupCREATE_RIGHT.AsInteger=1) then
         If (ibdsMainInvoiceBLACK.Value<>0) then
           ibdsMainInvoiceBLACK.Value := 0;
        If (ibdsInvoice_SetupCREATE_RIGHT.AsInteger=2) then
         If (ibdsMainInvoiceBLACK.Value<>1) then
          ibdsMainInvoiceBLACK.Value := 1;
        If (ibdsInvoice_SetupCREATE_RIGHT.AsInteger<>3) then
         dbcbBlack.Enabled := False
       End
     End;
    If (ibdsMainInvoiceCURRENCY_ID.AsLargeInt=0) and NOT (ibdsInvoice_SetupCURRENCY_ID_DEFAULT.IsNull) then
     Begin
      ibdsMainInvoiceCURRENCY_ID.Value := ibdsInvoice_SetupCURRENCY_ID_DEFAULT.Value;
      ibdsCurrency.Locate('ID',ibdsInvoice_SetupCURRENCY_ID_DEFAULT.AsString,[]);
      wwDBLookupCombo9CloseUp(wwDBLookupCombo9, ibdsCurrency, ibdsMainInvoice, true);
      ibdsMainInvoiceCURRENCY_NAME.Value := ibdsCurrencyNAME.AsString
     End;
    If (ibdsMainInvoiceSECURITY_LEVEL.Value<ibdsInvoice_SetupSECURITY_LEVEL.Value) then
     ibdsMainInvoiceSECURITY_LEVEL.Value := ibdsInvoice_SetupSECURITY_LEVEL.Value
   End;
 ibdsInvoice_Setup.Filtered := False
end;

procedure TfrmInvoice.ibdsEnterpriseAccountsCalcFields(DataSet: TDataSet);
begin
 ibdsEnterpriseAccountsFullAccountName.Value := 'Банк '+
                                    ibdsEnterpriseAccountsBANK_NAME.Value+', '+
                                    ibdsEnterpriseAccountsACCOUNT.Value
end;

procedure TfrmInvoice.ibdsContractorsAccountsCalcFields(DataSet: TDataSet);
begin
 ibdsContractorsAccountsFullAccountName.Value := 'Банк '+
                                    ibdsContractorsAccountsBANK_NAME.Value+', '+
                                    ibdsContractorsAccountsACCOUNT.Value
end;

procedure TfrmInvoice.wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainInvoiceMASTER_ID.Value := ibdsPersonsID.Value
end;

procedure TfrmInvoice.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainInvoiceENTERPRISE_ACCOUNT_ID.Value := ibdsEnterpriseAccountsID.Value
end;

procedure TfrmInvoice.wwDBLookupCombo7CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainInvoiceENTERPRISE_STORE_ID.Value := ibdsEnterpriseStoresID.Value
end;

procedure TfrmInvoice.wwDBLookupCombo6CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainInvoiceCONTRACTOR_ID.Value := ibdsContractorsID.Value;
   If (ibdsMainInvoicePERCENT.IsNull) then
    ibdsMainInvoicePERCENT.Value := ibdsContractorsPRICE_PERCENT.Value
  End
end;

procedure TfrmInvoice.wwDBLookupCombo5CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainInvoiceCONTRACTOR_ACCOUNT_ID.Value := ibdsContractorsAccountsID.Value
end;

procedure TfrmInvoice.wwDBLookupCombo9CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainInvoiceCURRENCY_ID.Value := ibdsCurrencyID.Value;
   ibdsMainInvoiceDECIMALS_IN.Value := ibdsCurrencyDECIMALS_IN.Value;
   ibdsMainInvoiceDECIMALS_OUT.Value := ibdsCurrencyDECIMALS_OUT.Value;
   ibdsMainInvoiceCURRENCY_RATE.Value := ibdsCurrencyCURRENT_RATE.Value;
   SetCurrencyFmt
  End
end;

procedure TfrmInvoice.ibdsMainInvoiceAfterOpen(DataSet: TDataSet);
begin
 ibdsMainInvoiceBody.Close;
 ibdsMainInvoiceBody.ParamByName('ID').AsInt64 := ibdsMainInvoice.ParamByName('ID').AsInt64;
 ibdsMainInvoiceBody.Open;
 If (ibdsMainInvoiceBody.RecordCount>0) and (ibdsMainInvoice.RecordCount=0) then
  ibdsMainInvoiceBody.Close;
 ibdsInvoice_Setup.Close;
 GenerateSelectInvoiceSetup;
 ibdsInvoice_Setup.Open;
 ibdsInvoice_Setup.Locate('ID',ibdsMainInvoiceINVOICE_SETUP_ID.AsString,[]);
 If (Black) then
  Begin
   dbcbBlack.Enabled := ibdsMainInvoiceOPPOSITE_SOSTAV_ID.IsNull;
   dbcbDouble.Enabled := ibdsMainInvoiceOPPOSITE_SOSTAV_ID.IsNull
  End;
 SetReadOnly;
 If (ibdsMainInvoice.RecordCount>0) then
  Begin
   If (Black) then
    dbcbBlack.Enabled := (dbcbBlack.Enabled) and (ibdsInvoice_SetupCREATE_RIGHT.AsInteger=3);
  End;
 OldCurrencyRate := ibdsMainInvoiceCURRENCY_RATE.AsFloat;
 If (Black) and (In_Out=1) then
  TuneUpReservAmount;
 dbeCloseDate.Visible := NOT (ibdsMainInvoiceCLOSE_DATE.IsNull)
end;

procedure TfrmInvoice.sbFirstInvoicesListClick(Sender: TObject);
begin
 ibdsMainInvoicesList.First
end;

procedure TfrmInvoice.sbPriorInvoicesListClick(Sender: TObject);
begin
 ibdsMainInvoicesList.Prior
end;

procedure TfrmInvoice.sbNextInvoicesListClick(Sender: TObject);
begin
 ibdsMainInvoicesList.Next
end;

procedure TfrmInvoice.sbLastInvoicesListClick(Sender: TObject);
begin
 ibdsMainInvoicesList.Last
end;

procedure TfrmInvoice.dsMainInvoicesListStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmInvoice.dbgInvoicesListCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: Begin
      If (Field=ibdsMainInvoicesListAMOUNT_FMT) then
       Field := ibdsMainInvoicesListAMOUNT;
      wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainInvoicesList)
     End;
  2: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainInvoiceBody);
  3: Begin
      If (Field=ibdsIncomeDocsAMOUNT_FMT) then
       Field := ibdsIncomeDocsAMOUNT;
      wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByIncomeDocs)
     End;
  4: Begin
      If (Field=ibdsOutcomeDocsAMOUNT_FMT) then
       Field := ibdsOutcomeDocsAMOUNT;
      wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByOutcomeDocs)
     End;
 end
end;

procedure TfrmInvoice.dbgInvoicesListCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmInvoice.dbgInvoicesListTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 Case (Sender as TComponent).Tag of
  1: Begin
      If (AFieldName='AMOUNT_FMT') then
       AFieldName := 'AMOUNT';
      wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainInvoicesList, (GetKeyState(VK_CONTROL)<0),
                               sbApplyInvoicesList, sbCancelInvoicesList, GenerateSelectMainInvoicesList)
     End;
  2: If (AFieldName<>'LAST_BUY_PRICE') then
      wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainInvoiceBody, (GetKeyState(VK_CONTROL)<0),
                               sbApplyInvoice, sbCancelInvoice, GenerateSelectMainInvoiceBody);
  3: Begin
      If (AFieldName='AMOUNT_FMT') then
       AFieldName := 'AMOUNT';
      wwDBGridTitleButtonClick(Sender, AFieldName, OrderByIncomeDocs, (GetKeyState(VK_CONTROL)<0),
                               sbApplyDocs, sbCancelDocs, GenerateSelectIncomeDocs)
     End;
  4: Begin
      If (AFieldName='AMOUNT_FMT') then
       AFieldName := 'AMOUNT';
      wwDBGridTitleButtonClick(Sender, AFieldName, OrderByOutcomeDocs, (GetKeyState(VK_CONTROL)<0),
                               sbApplyDocs, sbCancelDocs, GenerateSelectOutcomeDocs)
     End;
 end
end;

procedure TfrmInvoice.PageControl1Change(Sender: TObject);
 var Active : Boolean;
begin
 Active := NOT (PageControl1.ActivePage=tsInvoicesList);
 ibdsMainInvoice.Active := Active;
 ibdsEnterprises.Active := Active;
 ibdsEnterpriseAccounts.Active := Active;
 ibdsEnterpriseStores.Active := Active;
 ibdsPersons.Active := Active;
 ibdsInvoice_Setup.Active := Active;
 ibdsContractors.Active := Active;
 ibdsContractorsAccounts.Active := Active;
 ibdsCurrency.Active := Active;
 ibdsMadeIn.Active := Active;
 ibdsIncomeDocs.Active := (PageControl1.ActivePage=tsDocs);
 ibdsOutcomeDocs.Active := ibdsIncomeDocs.Active;
 If (ibdsIncomeDocs.Active) then
  If (dbgIncomeDocs.HasFocus) then
   ibdsIncomeDocsAfterScroll(ibdsIncomeDocs)
  else
   ibdsIncomeDocsAfterScroll(ibdsOutcomeDocs);
 If Not(Active) and Not(ibdsMainInvoicesList.Active) then
  Begin
   ibdsMainInvoicesList.Active := True;
   try
    ibdsMainInvoicesList.Bookmark := MainInvoicesListBookMark
   except
   end;
   If (ibdsMainInvoicesList.Eof) then
    try
     ibdsMainInvoicesList.Bookmark := MainInvoicesListPriorBookMark
    except
    end
  End
end;

procedure TfrmInvoice.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 AllowChange := True;
 If (PageControl1.ActivePage=tsInvoicesList) and (Invoice_ID=0) then
  ibdsMainInvoice.ParamByName('ID').AsInt64 := ibdsMainInvoicesListID.Value
end;

procedure TfrmInvoice.sbDeleteInvoiceClick(Sender: TObject);
begin
 If (dbmComments.DataBinding.DataSource=dsMainInvoiceBody) or
    (dbmComments.DataBinding.DataSource=dsInvoiceBodySet) then
  Begin
   If (ibdsMainInvoiceUPDATE_RIGHT.AsInteger=1) or
      (ibdsMainInvoice.State in [dsInsert]) or
      (ibdsMainInvoiceNUMBER_PREFIX.AsString='НОВЫЙ') then
    (dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet.Delete
  End
 else
  Begin
   If (ibdsMainInvoiceDELETE_RIGHT.AsInteger=1) or
      (ibdsMainInvoice.State in [dsInsert]) or
      (ibdsMainInvoiceNUMBER_PREFIX.AsString='НОВЫЙ') then
    ibdsMainInvoice.Delete
  End  
end;

procedure TfrmInvoice.sbAddInvoiceClick(Sender: TObject);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_INVOICE_HEADER,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainInvoice.Close;
 ibdsMainInvoice.ParamByName('ID').AsInt64 := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibdsMainInvoice.Open;
 ibsGen_ID.Close;
 ibdsMainInvoice.Insert
end;

procedure TfrmInvoice.sbCancelInvoiceClick(Sender: TObject);
begin
 If (trLock.InTransaction) then
  trLock.Commit;
 ibdsMainInvoiceBody.CancelUpdates;
 ibdsMainInvoice.CancelUpdates;
 StteChange('Invoice', False);
 ibdsMainInvoiceBody.Close;
 ibdsMainInvoiceBody.Open;
 ibdsInvoice_Setup.Close;
 GenerateSelectInvoiceSetup;
 ibdsInvoice_Setup.Open
end;

procedure TfrmInvoice.sbApplyInvoiceClick(Sender: TObject);
begin
 ibdsReportHeader.Close;
 ibdsReportBody.Close;
 If (Black) and (In_Out=1) then
  TuneUpReservAmount;
 PostIfNeeded(ibdsMainInvoice);
 PostIfNeeded(ibdsMainInvoiceBody);
 PostIfNeeded(ibdsInvoiceBodySet);
 CheckDataSet(ibdsMainInvoiceBody);
 CheckDataSet(ibdsInvoiceBodySet);
 SetCRC32_Set(ibdsMainInvoiceBody,ibdsInvoiceBodySet,'INVOICE_BODY_ID');
 try
  ibdsMainInvoice.ApplyUpdates;
  ibdsMainInvoiceBody.ApplyUpdates;
  ibdsInvoiceBodySet.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Invoice', False);
  ibdsMainInvoice.Close;
  If (Invoice_ID<>0) then
   ibdsMainInvoice.ParamByName('ID').AsInt64 := Invoice_ID;
  ibdsMainInvoice.Open;
  Invoice_ID := 0;
  dbeCloseDate.Visible := NOT (ibdsMainInvoiceCLOSE_DATE.IsNull);
  If (ibdsMainInvoicesList.Active) then
   Begin
    MainInvoicesListBookMark := ibdsMainInvoicesList.Bookmark;
    ibdsMainInvoicesList.Prior;
    MainInvoicesListPriorBookMark := ibdsMainInvoicesList.Bookmark;
    ibdsMainInvoicesList.Close
   End;
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 If (trLock.InTransaction) then
  trLock.Commit;
end;

procedure TfrmInvoice.dsMainInvoiceBodyStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('Invoice', True)
  else
   StteChange('Invoice', ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmInvoice.ibdsMainInvoiceUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
 var {MinNumber, MaxNumber, }Number, Number_FormatOld, Number_FormatNew, BlackOld, BlackNew : Integer;
     SetupOld, SetupNew : String;
     Setted : Boolean;
begin
 If (Black) then
  Begin
   BlackOld := ibdsMainInvoiceBLACK.OldValue;
   BlackNew := ibdsMainInvoiceBLACK.NewValue
  End
 else
  Begin
   BlackOld := 0;
   BlackNew := 0
  End;
 Number_FormatOld := ibdsMainInvoiceNUMBER_FORMAT.OldValue;
 Number_FormatNew := ibdsMainInvoiceNUMBER_FORMAT.NewValue;
 SetupOld := ibdsMainInvoiceSETUP_NAME.OldValue;
 SetupNew := ibdsMainInvoiceSETUP_NAME.NewValue;
 If (UpdateKind=ukInsert) then
  Invoice_ID := ibdsMainInvoiceID.AsLargeInt;
 If (UpdateKind=ukInsert) or (BLACKOld<>BLACKNew) or (SetupOld<>SetupNew) then
  Begin
   If (UpdateKind=ukInsert) or (BLACKOld<>BLACKNew) or (Number_FormatOld<>Number_FormatNew) or
      (ibdsMainInvoiceINVOICE_DATE.OldValue<>ibdsMainInvoiceINVOICE_DATE.NewValue) then
    Begin
     pnlMessage.Show;
     Application.ProcessMessages;
     If NOT (trLock.InTransaction) then
      trLock.StartTransaction;
     pnlMessage.Hide;
     Application.ProcessMessages;
{     If (ibdsMainInvoiceNUMBER_RESTART_PERIOD.Value<>1) then
      Begin
       ibsNumb.SQL.Clear;
       ibsNumb.SQL.Add('select max(IH.NUMBER) MinNumber');
       ibsNumb.SQL.Add('from INVOICE_HEADER IH, INVOICE_SETUP InvS');
       ibsNumb.SQL.Add('where (IH.INVOICE_DATE>=:START_DATE) and (IH.INVOICE_DATE<:INVOICE_DATE)');
       If (Black) then
        ibsNumb.SQL.Add('and (IH.BLACK=:BLACK)');
       ibsNumb.SQL.Add('and (InvS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (IH.INVOICE_SETUP_ID=InvS.ID)');
       ibsNumb.GenerateParamNames := True;
       ibsNumb.ParamByName('START_DATE').AsDate := GetStartDate(ibdsMainInvoiceNUMBER_RESTART_PERIOD.Value, ibdsMainInvoiceINVOICE_DATE.Value);
       ibsNumb.ParamByName('INVOICE_DATE').AsDate := ibdsMainInvoiceINVOICE_DATE.Value;
       If (Black) then
        ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
       ibsNumb.ExecQuery;
       MinNumber := ibsNumb.FieldByName('MinNumber').AsInteger;
       ibsNumb.Close
      End
     else
      MinNumber := 0; //1 - нумерация начинается ежедневно
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select min(IH.NUMBER) MaxNumber');
     ibsNumb.SQL.Add('from INVOICE_HEADER IH, INVOICE_SETUP InvS');
     ibsNumb.SQL.Add('where (IH.INVOICE_DATE>:INVOICE_DATE) and (IH.INVOICE_DATE<:STOP_DATE)');
     If (Black) then
      ibsNumb.SQL.Add('and (IH.BLACK=:BLACK)');
     ibsNumb.SQL.Add('and (InvS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (IH.INVOICE_SETUP_ID=InvS.ID)');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('INVOICE_DATE').AsDate := ibdsMainInvoiceINVOICE_DATE.Value;
     ibsNumb.ParamByName('STOP_DATE').AsDate := GetStopDate(ibdsMainInvoiceNUMBER_RESTART_PERIOD.Value, ibdsMainInvoiceINVOICE_DATE.Value);
     If (Black) then
      ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
     ibsNumb.ExecQuery;
     If (ibsNumb.FieldByName('MaxNumber').IsNull) then
      MaxNumber := High(MaxNumber)
     else
      MaxNumber := ibsNumb.FieldByName('MaxNumber').AsInteger;
     ibsNumb.Close;
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select IH.NUMBER');
     ibsNumb.SQL.Add('from INVOICE_HEADER IH, INVOICE_SETUP InvS');
     ibsNumb.SQL.Add('where (IH.INVOICE_DATE=:INVOICE_DATE)');
     If (Black) then
      ibsNumb.SQL.Add('and (IH.BLACK=:BLACK)');
     ibsNumb.SQL.Add('and (InvS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (IH.INVOICE_SETUP_ID=InvS.ID)');
     ibsNumb.SQL.Add('order by 1');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('INVOICE_DATE').AsDate := ibdsMainInvoiceINVOICE_DATE.Value;
     If (Black) then
      ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
     ibsNumb.ExecQuery;
     ibdsMainInvoice.Edit;
     If (ibsNumb.Eof) then
      ibdsMainInvoiceNUMBER.Value := Succ(MinNumber)
     else
      Begin
       Setted := False;
       While Not (ibsNumb.Eof) do
        Begin
         Number := ibsNumb.FieldByName('NUMBER').AsInteger;
         ibsNumb.Next;
         If ((ibsNumb.FieldByName('NUMBER').AsInteger-Number)>1) and (Succ(Number)>MinNumber) then
          Begin
           ibdsMainInvoiceNUMBER.Value := Succ(Number);
           Setted := True;
           Break
          End
        End;
       If NOT (Setted) then
        ibdsMainInvoiceNUMBER.Value := Succ(ibsNumb.FieldByName('NUMBER').AsInteger);
      End;
     ibsNumb.Close;
     If (ibdsMainInvoiceNUMBER.Value>=MaxNumber) then
      FlashMsg('Внимание!','Такой номер уже существует в последующих днях. После сохранения измените префикс/суффикс.',4000);}
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select IH.NUMBER');
     ibsNumb.SQL.Add('from INVOICE_HEADER IH, INVOICE_SETUP InvS');
     ibsNumb.SQL.Add('where (IH.INVOICE_DATE>=:START_DATE) and (IH.INVOICE_DATE<:STOP_DATE)');
     If (Black) then
      ibsNumb.SQL.Add('and (IH.BLACK=:BLACK)');
     ibsNumb.SQL.Add('and (InvS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (IH.INVOICE_SETUP_ID=InvS.ID)');
     ibsNumb.SQL.Add('and (IH.ENTERPRISE_ID='+ibdsMainInvoiceENTERPRISE_ID.AsString+')');
     ibsNumb.SQL.Add('order by 1');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('START_DATE').AsDate := GetStartDate(ibdsMainInvoiceNUMBER_RESTART_PERIOD.Value, ibdsMainInvoiceINVOICE_DATE.Value);
     ibsNumb.ParamByName('STOP_DATE').AsDate := GetStopDate(ibdsMainInvoiceNUMBER_RESTART_PERIOD.Value, ibdsMainInvoiceINVOICE_DATE.Value);
     If (Black) then
      ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
     ibsNumb.ExecQuery;
     ibdsMainInvoice.Edit;
     If (ibsNumb.Eof) then
      ibdsMainInvoiceNUMBER.Value := 1
     else
      Begin
       Setted := False;
       While Not (ibsNumb.Eof) do
        Begin
         Number := ibsNumb.FieldByName('NUMBER').AsInteger;
         ibsNumb.Next;
         If ((ibsNumb.FieldByName('NUMBER').AsInteger-Number)>1) then
          Begin
           ibdsMainInvoiceNUMBER.Value := Succ(Number);
           Setted := True;
           Break
          End
        End;
       If NOT (Setted) then
        ibdsMainInvoiceNUMBER.Value := Succ(ibsNumb.FieldByName('NUMBER').AsInteger)
      End;
     ibsNumb.Close
    End;
   If (UpdateKind=ukInsert) or (SETUPOld<>SETUPNew) then
    Begin
     NumberPrefix := ReplaceDateStr(NumberPrefix,ibdsMainInvoiceINVOICE_DATE.Value);
     NumberSuffix := ReplaceDateStr(NumberSuffix,ibdsMainInvoiceINVOICE_DATE.Value);
     If NOT (ibdsMainInvoice.State in [dsEdit,dsInsert]) then
      ibdsMainInvoice.Edit;
     ibdsMainInvoiceNUMBER_PREFIX.AsString := NumberPrefix;
     ibdsMainInvoiceNUMBER_SUFFIX.AsString := NumberSuffix
    End
  End;
 If (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
  ibdsMainInvoice.Post;
 If (Black) and (((UpdateKind=ukModify) and ((BLACKOld=0) or (BLACKNew=0))) or
                 ((UpdateKind=ukDelete) and (BLACKOld=0)) or
                 ((UpdateKind=ukInsert) and (BLACKNew=0))) then
  Begin
   ibsWhite.SQL.Clear;
   If (UpdateKind=ukInsert) or
      ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
    Begin
     ibsWhite.SQL.AddStrings(ibdsMainInvoice.InsertSQL);
     ibsWhite.SQL.Strings[2] := '';
     ibsWhite.SQL.Strings[9] := '';
     ibsWhite.SQL.Strings[13] := '';
     ibsWhite.SQL.Strings[20] := ''
    End
   else
    If (UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0) then
     Begin
      ibsWhite.SQL.AddStrings(ibdsMainInvoice.ModifySQL);
      ibsWhite.SQL.Strings[4] := '';
      ibsWhite.SQL.Strings[5] := '';
      ibsWhite.SQL.Strings[22] := ''
     End
    else
     If (UpdateKind=ukDelete) or ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=1)) then
      ibsWhite.SQL.AddStrings(ibdsMainInvoice.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   If ((UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0))) or
      ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0)) then
    Begin
     ibsWhite.ParamByName('INVOICE_SETUP_ID').AsInt64 := ibdsMainInvoiceINVOICE_SETUP_ID.Value;
     If (ibdsMainInvoiceCONTRACT_ID.IsNull) then
      ibsWhite.ParamByName('CONTRACT_ID').Value := null
     else
      ibsWhite.ParamByName('CONTRACT_ID').AsInt64 := ibdsMainInvoiceCONTRACT_ID.Value;
     ibsWhite.ParamByName('MASTER_ID').AsInt64 := ibdsMainInvoiceMASTER_ID.Value;
     ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsMainInvoiceSECURITY_LEVEL.AsVariant;
     ibsWhite.ParamByName('NUMBER_PREFIX').Value := ibdsMainInvoiceNUMBER_PREFIX.AsVariant;
     ibsWhite.ParamByName('NUMBER').Value := ibdsMainInvoiceNUMBER.AsVariant;
     ibsWhite.ParamByName('NUMBER_SUFFIX').Value := ibdsMainInvoiceNUMBER_SUFFIX.AsVariant;
     ibsWhite.ParamByName('INVOICE_DATE').Value := ibdsMainInvoiceINVOICE_DATE.AsVariant;
     ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainInvoiceENTERPRISE_ID.Value;
     If (ibdsMainInvoiceENTERPRISE_ACCOUNT_ID.IsNull) then
      ibsWhite.ParamByName('ENTERPRISE_ACCOUNT_ID').Value := null
     else
      ibsWhite.ParamByName('ENTERPRISE_ACCOUNT_ID').AsInt64 := ibdsMainInvoiceENTERPRISE_ACCOUNT_ID.Value;
     If (ibdsMainInvoiceENTERPRISE_STORE_ID.IsNull) then
      ibsWhite.ParamByName('ENTERPRISE_STORE_ID').Value := null
     else
      ibsWhite.ParamByName('ENTERPRISE_STORE_ID').AsInt64 := ibdsMainInvoiceENTERPRISE_STORE_ID.Value;
     ibsWhite.ParamByName('CONTRACTOR_ID').AsInt64 := ibdsMainInvoiceCONTRACTOR_ID.Value;
     If (ibdsMainInvoiceCONTRACTOR_ACCOUNT_ID.IsNull) then
      ibsWhite.ParamByName('CONTRACTOR_ACCOUNT_ID').Value := null
     else
      ibsWhite.ParamByName('CONTRACTOR_ACCOUNT_ID').AsInt64 := ibdsMainInvoiceCONTRACTOR_ACCOUNT_ID.Value;
     ibsWhite.ParamByName('CURRENCY_ID').AsInt64 := ibdsMainInvoiceCURRENCY_ID.Value;
     ibsWhite.ParamByName('CURRENCY_RATE').Value := ibdsMainInvoiceCURRENCY_RATE.AsVariant;
     ibsWhite.ParamByName('PERCENT').Value := ibdsMainInvoicePERCENT.AsVariant;
     ibsWhite.ParamByName('CLOSED').Value := ibdsMainInvoiceCLOSED.AsVariant;
     ibsWhite.ParamByName('VALID_DATE').Value := ibdsMainInvoiceVALID_DATE.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainInvoiceCOMMENTS.AsVariant;
     ibsWhite.ParamByName('INCLUDE_NSP').Value := ibdsMainInvoiceINCLUDE_NSP.AsVariant
    End;
   If (UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainInvoiceID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainInvoiceID.Value;
   ibsWhite.ExecQuery;
   If (UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0) then
    Begin
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select * from INVOICE_BODY where (INVOICE_ID=:ID)');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('ID').AsInt64 := ibdsMainInvoiceID.Value;
     ibsWhite.SQL.Clear;
     ibsWhite.SQL.AddStrings(ibdsMainInvoiceBody.InsertSQL);
     ibsWhite.GenerateParamNames := True;
     ibsNumb.ExecQuery;
     While NOT (ibsNumb.Eof) do
      Begin
       ibsWhite.ParamByName('INVOICE_ID').AsInt64 := ibsNumb.FieldByName('INVOICE_ID').AsInt64;
       ibsWhite.ParamByName('ARTICUL_ID').AsInt64 := ibsNumb.FieldByName('ARTICUL_ID').AsInt64;
       ibsWhite.ParamByName('MADE_IN').Value := ibsNumb.FieldByName('MADE_IN').AsVariant;
       ibsWhite.ParamByName('PACKS_AMOUNT').Value := ibsNumb.FieldByName('PACKS_AMOUNT').AsVariant;
       ibsWhite.ParamByName('PACK_VALUE').Value := ibsNumb.FieldByName('PACK_VALUE').AsVariant;
       ibsWhite.ParamByName('ITEMS_AMOUNT').Value := ibsNumb.FieldByName('ITEMS_AMOUNT').AsVariant;
       ibsWhite.ParamByName('PRICE_REFERENCE').Value := ibsNumb.FieldByName('PRICE_REFERENCE').AsVariant;
       ibsWhite.ParamByName('PERCENT').Value := ibsNumb.FieldByName('PERCENT').AsVariant;
       ibsWhite.ParamByName('PRICE').Value := ibsNumb.FieldByName('PRICE').AsVariant;
       ibsWhite.ParamByName('NDS').Value := ibsNumb.FieldByName('NDS').AsVariant;
       ibsWhite.ParamByName('NSP').Value := ibsNumb.FieldByName('NSP').AsVariant;
       ibsWhite.ParamByName('COMMENTS').Value := ibsNumb.FieldByName('COMMENTS').AsVariant;
       ibsWhite.ParamByName('ID').AsInt64 := ibsNumb.FieldByName('ID').AsInt64;
       ibsWhite.ExecQuery;
       ibsNumb.Next
      End;
     ibsNumb.Close
    End
  End;
 UpdateAction := uaApply
end;

procedure TfrmInvoice.ibdsMainInvoiceBodyUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 If (Black) and (ibdsMainInvoiceBLACK.Value=0) then
  Begin
   ibsWhite.Close;
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
     If (In_Out=1) then
      Begin
       ibsWhite.ParamByName('PRICE_REFERENCE').Value := DataSet.FieldByName('PRICE_REFERENCE').AsVariant;
       ibsWhite.ParamByName('RESERV_AMOUNT').Value := DataSet.FieldByName('RESERV_AMOUNT').AsVariant;
       ibsWhite.ParamByName('MAX_BUY_PRICE').Value := DataSet.FieldByName('MAX_BUY_PRICE').AsVariant;
       ibsWhite.ParamByName('LATEST_DATE').Value := DataSet.FieldByName('LATEST_DATE').AsVariant;
       ibsWhite.ParamByName('PAYING_PERSENT').Value := DataSet.FieldByName('PAYING_PERSENT').AsVariant;
       ibsWhite.ParamByName('PAYING_DATE').Value := DataSet.FieldByName('PAYING_DATE').AsVariant;
       ibsWhite.ParamByName('COMMENTS_RESERVATION').Value := DataSet.FieldByName('COMMENTS_RESERVATION').AsVariant
      End;
     ibsWhite.ParamByName('PRICE').Value := DataSet.FieldByName('PRICE').AsVariant;
     If (DataSet=ibdsMainInvoiceBody) then
      Begin
       If (UpdateKind=ukInsert) then
        ibsWhite.ParamByName('INVOICE_ID').AsInt64 := ibdsMainInvoiceBodyINVOICE_ID.AsLargeInt;
       ibsWhite.ParamByName('CRC32_SET').Value := DataSet.FieldByName('CRC32_SET').AsVariant;
       ibsWhite.ParamByName('NDS').Value := ibdsMainInvoiceBodyNDS.AsVariant;
       ibsWhite.ParamByName('NSP').Value := ibdsMainInvoiceBodyNSP.AsVariant;
       ibsWhite.ParamByName('MADE_IN').Value := ibdsMainInvoiceBodyMADE_IN.AsVariant;
       If (In_Out=1) then
        ibsWhite.ParamByName('PERCENT').Value := ibdsMainInvoiceBodyPERCENT.AsVariant;
      End
     else
      If (UpdateKind=ukInsert) then
       ibsWhite.ParamByName('INVOICE_BODY_ID').AsInteger := ibdsInvoiceBodySetINVOICE_BODY_ID.Value;
     ibsWhite.ParamByName('COMMENTS').Value := DataSet.FieldByName('COMMENTS').AsVariant
    End;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := DataSet.FieldByName('ID').Value
   else
    ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(DataSet.FieldByName('ID').OldValue);
   ibsWhite.ExecQuery
  End;
 UpdateAction := uaApply
end;

procedure TfrmInvoice.ibdsMainInvoiceNewRecord(DataSet: TDataSet);
begin
 ibdsMainInvoiceID.Value := ibdsMainInvoice.ParamByName('ID').AsInt64;
 ibdsMainInvoiceINVOICE_DATE.Value := Date;
 ibdsMainInvoiceCLOSED.Value := 0;
 If (Black) then
  Begin
   ibdsMainInvoiceBLACK.Value := 0;
   ibdsMainInvoiceDOUBLE_SOSTAV.Value := 0
  End;
 ibdsPersons.Locate('ID',IntToStr(PersonID),[]);
 ibdsMainInvoiceMASTER_NAME.Value := ibdsPersonsNAME.Value;
 ibdsMainInvoiceSECURITY_LEVEL.Value := 1;
 ibdsMainInvoiceNUMBER_PREFIX.Value := 'НОВЫЙ';
 ibdsMainInvoiceNUMBER_SUFFIX.Value := ' ';
 ibdsMainInvoiceNUMBER.Value := 0;
 ibdsMainInvoicePERCENT.Value := 0;
 ibdsMainInvoiceCONTRACT_ID.AsVariant := Null;
 wwDBLookupCombo2CloseUp(wwDBLookupCombo2, nil, nil, True);
 ibdsMainInvoiceENTERPRISE_NAME.Value := ibdsEnterprisesNAME.AsString;
 ibdsMainInvoice.Post;
 ibdsMainInvoice.Edit;
 wwDBLookupCombo7CloseUp(wwDBLookupCombo7, nil, nil, True);
 ibdsMainInvoice.Post;
 ibdsMainInvoice.Edit;
{ wwDBLookupCombo9CloseUp(wwDBLookupCombo9, nil, nil, True);
 ibdsMainInvoiceCURRENCY_NAME.Value := ibdsCurrencyNAME.AsString;
 ibdsMainInvoice.Post;
 ibdsMainInvoice.Edit;}
 ibdsMainInvoiceNUMBER_FORMAT.Value := 0;
 ibdsMainInvoiceSETUP_NAME.Value := ' ';
 ibdsMainInvoice.Post;
 ibdsMainInvoice.Edit;
 ibdsPersons.Locate('ID',IntToStr(PersonID),[]);
 ibdsMainInvoiceMASTER_ID.Value := PersonID;
 ibdsMainInvoiceMASTER_NAME.Value := ibdsPersonsNAME.AsString;
 ibdsMainInvoiceINCLUDE_NSP.Value := 0;
 ibdsMainInvoiceUPDATE_RIGHT.Value := 1;
 SetReadOnly
end;

procedure TfrmInvoice.tsInvoiceShow(Sender: TObject);
begin
 PageControl1Change(PageControl1)
end;

procedure TfrmInvoice.ibdsMainInvoiceBodyNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_INVOICE_BODY,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainInvoiceBodyID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainInvoiceBodyINVOICE_ID.Value := ibdsMainInvoiceID.Value;
 ibdsMainInvoiceBodyItogoManyOld.Value := 0;
 If (In_Out=1) then
  ibdsMainInvoiceBodyRESERV_AMOUNT.Value := 0
end;

procedure TfrmInvoice.fcInvoiceClick(Sender: TObject);
 var ID, OPPOSITE_SOSTAV_ID, CONTRACT_ID : Int64;
     Black, INCLUDE_NSP : Integer;
     ibsLocalAux : TIBSQL;
begin
 If (ibdsMainInvoiceOPPOSITE_SOSTAV_ID.IsNull) then
  Begin
   ibsLocalAux := TIBSQL.Create(Nil);
   ibsLocalAux.Database := ibdsMainInvoiceBody.Database;
   ibsLocalAux.Transaction := trMain;
   ibsGen_ID.SQL.Clear;
   ibsGen_ID.SQL.Add('select gen_id(GEN_ID_INVOICE_HEADER,1) from rdb$database');
   ibsGen_ID.ExecQuery;
   ID := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
   OPPOSITE_SOSTAV_ID := ibdsMainInvoiceID.Value;
   BLACK := ibdsMainInvoiceBLACK.AsVariant;
   CONTRACT_ID := ibdsMainInvoiceCONTRACT_ID.Value;
   INCLUDE_NSP := ibdsMainInvoiceINCLUDE_NSP.AsVariant;
   ibdsMainInvoice.Edit;
   ibdsMainInvoiceOPPOSITE_SOSTAV_ID.Value := ID;
   ibsGen_ID.Close;
   frmChoiseCopy := TfrmChoiseCopy.Create((Sender as TComponent).Owner);
   frmChoiseCopy.ShowModal;
   ibdsInvoice_Setup.Locate('NAME',ibdsMainInvoiceSETUP_NAME.Value,[]);
   NumberPrefix := ibdsInvoice_SetupNUMBER_PREFIX.AsString;
   NumberSuffix := ibdsInvoice_SetupNUMBER_SUFFIX.AsString;
   ibdsMainInvoiceBody.Close;
   ibdsMainInvoice.Append;
   ibdsMainInvoiceID.Value := ID;
   ibdsMainInvoiceBody.ParamByName('ID').AsInt64 := ibdsMainInvoiceID.Value;
   ibdsMainInvoiceBody.Open;
   StteChange('Invoice', True);
   ibdsMainInvoiceOPPOSITE_SOSTAV_ID.Value := OPPOSITE_SOSTAV_ID;
   ibdsMainInvoiceINCLUDE_NSP.Value := INCLUDE_NSP;
   ibdsMainInvoiceDOUBLE_SOSTAV.Value := 1;
   ibdsMainInvoiceBLACK.Value := Abs(BLACK-1);
   If (CONTRACT_ID<>0) then
    ibdsMainInvoiceCONTRACT_ID.Value := CONTRACT_ID;
   If (frmChoiseCopy.chbHeader.Checked) then
    Begin
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select IH.INVOICE_SETUP_ID, InvS.NAME SETUP_NAME,');
     ibsNumb.SQL.Add('InvS.NUMBER_FORMAT, InvS.NUMBER_RESTART_PERIOD,');
     ibsNumb.SQL.Add('InvS.PRICE_FORMULA,');
     ibsNumb.SQL.Add('IH.MASTER_ID, P.SURNAME||'' ''||P.NAME||'' ''||P.SECOND_NAME MASTER_NAME,');
     ibsNumb.SQL.Add('IH.SECURITY_LEVEL, IH.INVOICE_DATE, IH.ENTERPRISE_ID,');
     ibsNumb.SQL.Add('E.NAME ENTERPRISE_NAME, IH.ENTERPRISE_ACCOUNT_ID,');
     ibsNumb.SQL.Add('B.NAME ENTERPRISE_BANK_NAME, EA.ACCOUNT ENTERPRISE_ACCOUNT,');
     ibsNumb.SQL.Add('IH.ENTERPRISE_STORE_ID, IH.CONTRACTOR_ID,');
     ibsNumb.SQL.Add('C.NAME CONTRACTOR_NAME, IH.CONTRACTOR_ACCOUNT_ID,');
     ibsNumb.SQL.Add('IH.CURRENCY_ID, CUR.NAME CURRENCY_NAME, IH.CURRENCY_RATE,');
     ibsNumb.SQL.Add('IH.PERCENT, IH.VALID_DATE, IH.COMMENTS');
     ibsNumb.SQL.Add('from INVOICE_SETUP InvS, PERSONS P, ENTERPRISES E, CONTRACTORS C,');
     ibsNumb.SQL.Add('CURRENCY CUR, INVOICE_HEADER IH');
     ibsNumb.SQL.Add('left outer join ENTERPRISES_ACCOUNTS EA on (IH.ENTERPRISE_ACCOUNT_ID=EA.ID)');
     ibsNumb.SQL.Add('left outer join  BANKS B on (EA.BANK_ID=B.ID)');
     ibsNumb.SQL.Add('where (IH.ID='+IntToStr(OPPOSITE_SOSTAV_ID)+') and (IH.INVOICE_SETUP_ID=InvS.ID) and');
     ibsNumb.SQL.Add('(IH.MASTER_ID=P.ID) and (IH.ENTERPRISE_ID=E.ID) and');
     ibsNumb.SQL.Add('(IH.CONTRACTOR_ID=C.ID) and (IH.CURRENCY_ID=CUR.ID)');
     ibsNumb.ExecQuery;
     ibdsMainInvoiceENTERPRISE_ID.Value := ibsNumb.FieldByName('ENTERPRISE_ID').AsInt64;
     ibdsMainInvoiceENTERPRISE_NAME.AsVariant := ibsNumb.FieldByName('ENTERPRISE_NAME').AsVariant;
     ibdsInvoice_Setup.Close;
     GenerateSelectInvoiceSetup;
     ibdsInvoice_Setup.Open;
     If (ibdsInvoice_Setup.Locate('ID',ibsNumb.FieldByName('INVOICE_SETUP_ID').AsString,[])) then
      ibdsMainInvoiceINVOICE_SETUP_ID.Value := ibsNumb.FieldByName('INVOICE_SETUP_ID').AsInt64;
     ibdsMainInvoiceSETUP_NAME.AsVariant := ibsNumb.FieldByName('SETUP_NAME').AsVariant;
     ibdsMainInvoiceNUMBER_FORMAT.AsVariant := ibsNumb.FieldByName('NUMBER_FORMAT').AsVariant;
     ibdsMainInvoiceNUMBER_RESTART_PERIOD.AsVariant := ibsNumb.FieldByName('NUMBER_RESTART_PERIOD').AsVariant;
     ibdsMainInvoicePRICE_FORMULA.AsVariant := ibsNumb.FieldByName('PRICE_FORMULA').AsVariant;
     ibdsMainInvoiceMASTER_ID.Value := ibsNumb.FieldByName('MASTER_ID').AsInt64;
     ibdsMainInvoiceMASTER_NAME.AsVariant := ibsNumb.FieldByName('MASTER_NAME').AsVariant;
     ibdsMainInvoiceSECURITY_LEVEL.AsVariant := ibsNumb.FieldByName('SECURITY_LEVEL').AsVariant;
     ibdsMainInvoiceINVOICE_DATE.AsVariant := ibsNumb.FieldByName('INVOICE_DATE').AsVariant;
     If NOT (ibsNumb.FieldByName('ENTERPRISE_ACCOUNT_ID').IsNull) then
      ibdsMainInvoiceENTERPRISE_ACCOUNT_ID.Value := ibsNumb.FieldByName('ENTERPRISE_ACCOUNT_ID').AsInt64;
     If (ibsNumb.FieldByName('ENTERPRISE_STORE_ID').AsString<>'') then
      ibdsMainInvoiceENTERPRISE_STORE_ID.Value := ibsNumb.FieldByName('ENTERPRISE_STORE_ID').AsInt64;
     ibdsMainInvoiceCONTRACTOR_ID.Value := ibsNumb.FieldByName('CONTRACTOR_ID').AsInt64;
     ibdsMainInvoiceCONTRACTOR_NAME.AsVariant := ibsNumb.FieldByName('CONTRACTOR_NAME').AsVariant;
     If (ibsNumb.FieldByName('CONTRACTOR_ACCOUNT_ID').AsString<>'') then
      ibdsMainInvoiceCONTRACTOR_ACCOUNT_ID.Value := ibsNumb.FieldByName('CONTRACTOR_ACCOUNT_ID').AsInt64;
     ibdsMainInvoiceCURRENCY_ID.Value := ibsNumb.FieldByName('CURRENCY_ID').AsInt64;
     ibdsMainInvoiceCURRENCY_NAME.AsVariant := ibsNumb.FieldByName('CURRENCY_NAME').AsVariant;
     ibdsMainInvoiceCURRENCY_RATE.AsVariant := ibsNumb.FieldByName('CURRENCY_RATE').AsVariant;
     ibdsMainInvoicePERCENT.AsVariant := ibsNumb.FieldByName('PERCENT').AsVariant;
     ibdsMainInvoiceVALID_DATE.AsVariant := ibsNumb.FieldByName('VALID_DATE').AsVariant;
     ibdsMainInvoiceCOMMENTS.AsVariant := ibsNumb.FieldByName('COMMENTS').AsVariant;
     ibsNumb.Close;
     ibdsCurrency.Locate('ID',ibdsMainInvoiceCURRENCY_ID.AsString,[]);
     ibdsMainInvoiceDECIMALS_IN.Value := ibdsCurrencyDECIMALS_IN.Value;
     ibdsMainInvoiceDECIMALS_OUT.Value := ibdsCurrencyDECIMALS_OUT.Value;
     SetCurrencyFmt;
     ibdsMainInvoice.Post;
     ibdsMainInvoice.Edit
    End;
   If (frmChoiseCopy.chbBody.Checked) then
    Begin
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select IB.ID, IB.ARTICUL_ID, IB.MADE_IN, IB.PACKS_AMOUNT, IB.PACK_VALUE, IB.ITEMS_AMOUNT,');
     ibsNumb.SQL.Add('IB.PRICE_REFERENCE, IB.PERCENT, IB.PRICE, IB.COMMENTS');
     ibsNumb.SQL.Add('from INVOICE_BODY IB');
     ibsNumb.SQL.Add('where (IB.INVOICE_ID='+IntToStr(OPPOSITE_SOSTAV_ID)+')');
     ibsNumb.ExecQuery;
     Cloning := True;
     ibsLocalAux.SQL.Clear;
     ibsLocalAux.SQL.Add('select cast(IBS.ARTICUL_ID as INTEGER) ARTICUL_ID, IBS.PACKS_AMOUNT, IBS.PACK_VALUE,');
     ibsLocalAux.SQL.Add('IBS.ITEMS_AMOUNT, IBS.PRICE, IBS.COMMENTS');
     ibsLocalAux.SQL.Add('from INVOICE_BODY_SETS IBS');
     ibsLocalAux.SQL.Add('where (IBS.INVOICE_BODY_ID=:ID)');
     ibsLocalAux.GenerateParamNames := True;
     While NOT (ibsNumb.Eof) do
      Begin
       ibdsMainInvoiceBody.Append;
       ibdsMainInvoiceBodyARTICUL_ID.Value := ibsNumb.FieldByName('ARTICUL_ID').AsInt64;
       ibdsMainInvoiceBodyMADE_IN.AsVariant := ibsNumb.FieldByName('MADE_IN').AsVariant;
       ibdsMainInvoiceBodyPACKS_AMOUNT.AsVariant := ibsNumb.FieldByName('PACKS_AMOUNT').AsVariant;
       ibdsMainInvoiceBodyPACK_VALUE.AsVariant := ibsNumb.FieldByName('PACK_VALUE').AsVariant;
       ibdsMainInvoiceBodyITEMS_AMOUNT.AsVariant := ibsNumb.FieldByName('ITEMS_AMOUNT').AsVariant;
       ibdsMainInvoiceBodyCOMMENTS.AsVariant := ibsNumb.FieldByName('COMMENTS').AsVariant;
       If (In_Out=1) then
        Begin
         ibdsMainInvoiceBodyPRICE_REFERENCE.AsVariant := ibsNumb.FieldByName('PRICE_REFERENCE').AsVariant;
         ibdsMainInvoiceBodyPERCENT.AsVariant := ibsNumb.FieldByName('PERCENT').AsVariant
        End;
       ibdsMainInvoiceBodyPRICE.AsVariant := ibsNumb.FieldByName('PRICE').AsVariant;
       ibdsMainInvoiceBody.Post;
       If (ibdsMainInvoiceBodyITEM_TYPE.AsInteger=1) then
        Begin
         ibsLocalAux.ParamByName('ID').AsInt64 := ibsNumb.FieldByName('ID').AsInt64;
         ibsLocalAux.ExecQuery;
         While NOT ibsLocalAux.Eof do
          Begin
           ibdsInvoiceBodySet.Append;
           ibdsInvoiceBodySetARTICUL_ID.Value := ibsLocalAux.FieldByName('ARTICUL_ID').AsInteger;
           ibdsInvoiceBodySetPACKS_AMOUNT.Value := ibsLocalAux.FieldByName('PACKS_AMOUNT').AsInteger;
           ibdsInvoiceBodySetPACK_VALUE.Value := ibsLocalAux.FieldByName('PACK_VALUE').AsDouble;
           ibdsInvoiceBodySetITEMS_AMOUNT.Value := ibsLocalAux.FieldByName('ITEMS_AMOUNT').AsDouble;
           ibdsInvoiceBodySetPRICE.Value := ibsLocalAux.FieldByName('PRICE').AsDouble;
           ibdsInvoiceBodySetCOMMENTS.Value := ibsLocalAux.FieldByName('COMMENTS').AsString;
           ibdsInvoiceBodySet.Post;
           ibsLocalAux.Next
          End;
         ibsLocalAux.Close
        End;
       ibsNumb.Next
      End;
     Cloning := False;
     PostIfNeeded(ibdsMainInvoiceBody);
     PostIfNeeded(ibdsInvoiceBodySet);
     ibdsMainInvoiceBody.Edit;
     ibsNumb.Close
    End;
   ibsLocalAux.Free;
   frmChoiseCopy.Free;
   dbcbBlack.Enabled := False;
   dbcbDouble.Enabled := False
  End
 else
  Begin
   ID := ibdsMainInvoiceOPPOSITE_SOSTAV_ID.Value;
   ibdsMainInvoice.DisableControls;
   ibdsMainInvoice.Close;
   ibdsMainInvoice.ParamByName('ID').AsInt64 := ID;
   ibdsMainInvoice.Open;
   ibdsMainInvoice.EnableControls
  End;
 tvAccountBody.ViewData.Collapse(True)
end;

procedure TfrmInvoice.ibdsMainInvoiceBodyARTICUL_IDChange(Sender: TField);
 var Articul, Articul_Name, Units : String;
     NDS, NSP : Double;
     ItemType : Integer;
     ibsLocalAux : TIBSQL;
     Last_Buy_Price, Price, MainCurrencyRate : Double;
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
 If (Sender.DataSet.FieldByName('ARTICUL').AsString<>Articul) then
  Sender.DataSet.FieldByName('ARTICUL').Value := Articul;
 If (Sender.DataSet.FindField('MADE_IN')<>nil) then
  If (ibdsMadeInMADE_IN.AsVariant=null) then
   Sender.DataSet.FieldByName('MADE_IN').Value := '-'
  else
   Sender.DataSet.FieldByName('MADE_IN').AsVariant := ibdsMadeInMADE_IN.AsVariant;
 MainCurrencyRate := GetMainCurrencyRate(ibsAux,ibdsMainInvoiceENTERPRISE_ID.AsString,ibdsMainInvoiceENTERPRISE_STORE_ID.AsString,ibdsMainInvoiceCURRENCY_ID.AsInteger,ibdsMainInvoiceCURRENCY_RATE.AsFloat);
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('select * from GET_GOODS_INFO(:STORE_ID, :ARTICUL_ID, :MADE_IN)');
 ibsLocalAux.GenerateParamNames := True;
 ibsLocalAux.ParamByName('STORE_ID').AsString := ibdsMainInvoiceENTERPRISE_STORE_ID.AsString;
 ibsLocalAux.ParamByName('ARTICUL_ID').AsString := Sender.AsString;
 ibsLocalAux.ParamByName('MADE_IN').AsString := '-';
 ibsLocalAux.ExecQuery;
 Last_Buy_Price := ibsLocalAux.FieldByName('LAST_BUY_PRICE').AsDouble*MainCurrencyRate;
 Price := ibsLocalAux.FieldByName('PRICE').AsDouble*MainCurrencyRate;
 Sender.DataSet.FieldByName('MAIN_LEAVINGS_TOTAL').Value := ibsLocalAux.FieldByName('MAIN_LEAVINGS_TOTAL').AsDouble;
 Sender.DataSet.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').Value := ibsLocalAux.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').AsDouble;
 If (In_Out=1) then
  Sender.DataSet.FieldByName('TOTAL_RESERV').Value := ibsLocalAux.FieldByName('IN_RESERV').AsDouble;
 ibsLocalAux.Close;
 If (In_Out=2) then
  Sender.DataSet.FieldByName('PRICE').Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower
 else
  Begin
   Sender.DataSet.FieldByName('PRICE_REFERENCE').Value := Round(Price*CurrencyRoundPower)/CurrencyRoundPower;
   If (Sender.DataSet.FindField('PERCENT')<>nil) then
    Begin
     Sender.DataSet.FieldByName('PERCENT').Value := ibdsMainInvoicePERCENT.Value;
     Sender.DataSet.FieldByName('PRICE').Value :=
       Round(GeneratePrice(Price, ibdsMainInvoicePRICE_FORMULA.AsString,
                           Sender.DataSet.FieldByName('PERCENT').AsFloat,
                           ibdsMainInvoiceINCLUDE_NSP.AsInteger,
                           Sender.DataSet.FieldByName('NSP').AsFloat)*CurrencyRoundPower)/CurrencyRoundPower
    End
   else
    Sender.DataSet.FieldByName('PRICE').Value :=
      Round(GeneratePrice(Price, ibdsMainInvoicePRICE_FORMULA.AsString, 0,
                          ibdsMainInvoiceINCLUDE_NSP.AsInteger,0)*CurrencyRoundPower)/CurrencyRoundPower
  End;
 Sender.DataSet.FieldByName('LAST_BUY_PRICE').Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower;
 Sender.DataSet.Post;
 Sender.DataSet.Edit;
 If (Sender=ibdsMainInvoiceBodyARTICUL_ID) and NOT Cloning then
  Begin
   If (ItemType<>1) then
// удаляем старый состав комплекта
    DeleteSet(ibdsInvoiceBodySet,ibdsInvoiceBodySetINVOICE_BODY_ID,ibdsMainInvoiceBodyID.AsInteger)
   else
    Begin
     If (ibdsInvoiceBodySet.Locate('INVOICE_BODY_ID',ibdsMainInvoiceBodyID.AsString,[]) and
        (MessageDlg('Заменить старый состав комплекта новым?',mtConfirmation,[mbYes,mbNo],0)=mrYes)) then
      DeleteSet(ibdsInvoiceBodySet,ibdsInvoiceBodySetINVOICE_BODY_ID,ibdsMainInvoiceBodyID.AsInteger);
     InsertSet(ibsAux.Database, ibsAux.Transaction, ibdsInvoiceBodySet, ibdsMainInvoiceBodyARTICUL_ID.AsString, ibdsMainInvoiceENTERPRISE_STORE_ID.AsString);
    End
  End;
 ibsLocalAux.Free
end;

procedure TfrmInvoice.ibdsMainInvoiceENTERPRISE_STORE_IDChange(
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

procedure TfrmInvoice.ibdsMainInvoiceBodyAfterOpen(DataSet: TDataSet);
 var MainCurrencyRate : Double;
begin
 If (ibdsMainInvoiceBodyLAST_BUY_PRICE.Visible) and
    (ibdsMainInvoiceENTERPRISE_ID.AsString<>'') and
    (ibdsMainInvoiceENTERPRISE_STORE_ID.AsString<>'') and
    (ibdsMainInvoiceCURRENCY_RATE.AsFloat<>0) then
  MainCurrencyRate := GetMainCurrencyRate(ibsAux,ibdsMainInvoiceENTERPRISE_ID.AsString,ibdsMainInvoiceENTERPRISE_STORE_ID.AsString,ibdsMainInvoiceCURRENCY_ID.AsInteger,ibdsMainInvoiceCURRENCY_RATE.AsFloat);
 If (DataSet=ibdsMainInvoiceBody) then
  Begin
   SetCurrencyFmt;
   ibdsMainInvoiceENTERPRISE_STORE_IDChange(ibdsMainInvoiceENTERPRISE_STORE_ID);
   GetTotalMany
  End;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select MAIN_LEAVINGS_TOTAL, ADDITIONAL_LEAVINGS_TOTAL, LAST_BUY_PRICE, IN_RESERV from GET_GOODS_INFO(:STORE_ID, :ARTICUL_ID, :MADE_IN)');
 ibsAux.Prepare;
 ibsAux.GenerateParamNames := True;
 DataSet.DisableControls;
 While NOT (DataSet.Eof) do
  Begin
   ibsAux.ParamByName('STORE_ID').AsString := ibdsMainInvoiceENTERPRISE_STORE_ID.AsString;
   ibsAux.ParamByName('ARTICUL_ID').AsString := DataSet.FieldByName('ARTICUL_ID').AsString;
   ibsAux.ParamByName('MADE_IN').AsString := '-';
   ibsAux.ExecQuery;
   DataSet.Edit;
   DataSet.FieldByName('MAIN_LEAVINGS_TOTAL').Value := ibsAux.FieldByName('MAIN_LEAVINGS_TOTAL').AsDouble;
   DataSet.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').Value := ibsAux.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').AsDouble;
   DataSet.FieldByName('LAST_BUY_PRICE').Value := Round(ibsAux.FieldByName('LAST_BUY_PRICE').AsDouble*MainCurrencyRate*CurrencyRoundPower)/CurrencyRoundPower;
   If (In_Out=1) then
    DataSet.FieldByName('TOTAL_RESERV').Value := ibsAux.FieldByName('IN_RESERV').AsDouble;
   ibsAux.Close;
   DataSet.Next
  End;
 DataSet.First;
 DataSet.EnableControls;
 If (DataSet=ibdsMainInvoiceBody) then
  Begin
   ibdsInvoiceBodySet.Close;
   ibdsInvoiceBodySet.Open;
   tvAccountBody.ViewData.Collapse(True)
  End
end;

procedure TfrmInvoice.ibdsMainInvoiceBodyCalcFields(DataSet: TDataSet);
begin
 ibdsMainInvoiceBodyItogo.Value := ibdsMainInvoiceBodyPACKS_AMOUNT.Value*ibdsMainInvoiceBodyPACK_VALUE.Value+ibdsMainInvoiceBodyITEMS_AMOUNT.Value;
 ibdsMainInvoiceBodyItogoMany.Value := ibdsMainInvoiceBodyItogo.Value*ibdsMainInvoiceBodyPRICE.Value;
 If (ibdsMainInvoiceBodyCOMMENTS.AsString<>'') then
  ibdsMainInvoiceBodyTOTAL_COMMENTS.Value := 'Комментарии: '+ibdsMainInvoiceBodyCOMMENTS.Value;
 If (In_Out=1) and (ibdsMainInvoiceBodyCOMMENTS_RESERVATION.AsString<>'') then
  Begin
   If (ibdsMainInvoiceBodyTOTAL_COMMENTS.AsString<>'') then
    ibdsMainInvoiceBodyTOTAL_COMMENTS.Value := ibdsMainInvoiceBodyTOTAL_COMMENTS.Value+#13#10;
   ibdsMainInvoiceBodyTOTAL_COMMENTS.Value := ibdsMainInvoiceBodyTOTAL_COMMENTS.Value+'Комментарии резерва: '+ibdsMainInvoiceBodyCOMMENTS_RESERVATION.Value
  End
end;

procedure TfrmInvoice.dbgAccountBodyCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 wwDBGridCalcCellColors2(Sender, Field, State, Highlight, AFont, ABrush);
 If (Black) and (PaintBlackBody) and (ABrush.Color=clWindow) then
  If (ibdsMainInvoiceBLACK.AsInteger=1) then
   ABrush.Color := ColorBlack
end;

procedure TfrmInvoice.dbgInvoicesListCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);               
begin
 wwDBGridCalcCellColors(Sender, Field, State, Highlight, AFont, ABrush)
end;

procedure TfrmInvoice.dbgAccountBodyEnter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := (dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource
end;

procedure TfrmInvoice.Panel5Enter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := dsMainInvoice
end;

procedure TfrmInvoice.ArticulSetBodyArticulID;
begin
 If NOT(tvAccountBody.OptionsData.Editing) then
  Exit;
 If (frmArticuls.ibdsMainITEM_TYPE.Value in [1,2,3,4]) then
  With ((dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
   Begin
    If NOT (State in [dsEdit, dsInsert]) then
     Edit;
    FieldByName('ARTICUL_ID').AsInteger := frmArticuls.ibdsMainID.AsInteger
   End;
end;

procedure TfrmInvoice.SetContractor;
begin
 ibdsContractors.Close;
 ibdsContractors.Open;
 ibdsContractors.Locate('ID',frmKontrAgList.ibdsMainContractorsID.AsString,[]);
 If NOT (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
  ibdsMainInvoice.Edit;
 ibdsMainInvoiceCONTRACTOR_ID.Value := ibdsContractorsID.Value;
 If (ibdsMainInvoicePERCENT.IsNull) then
  ibdsMainInvoicePERCENT.Value := ibdsContractorsPRICE_PERCENT.Value;
 wwDBLookupCombo6.Text := ibdsContractorsNAME.AsString;
 frmKontrAgList.LookUpProcedure := nil
end;

procedure TfrmInvoice.ArticulInsertBodyArticulID;
begin
 If NOT(tvAccountBody.OptionsData.Editing) then
  Exit;
 If (frmArticuls.ibdsMainITEM_TYPE.Value in [1,2,3,4]) then
  With ((dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
   Begin
    Append;
    FieldByName('ARTICUL_ID').AsInteger := frmArticuls.ibdsMainID.AsInteger
   End
end;

procedure TfrmInvoice.TovarSetBodyArticulID;
begin
 If NOT(tvAccountBody.OptionsData.Editing) then
  Exit;
 With ((dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
  Begin
   If NOT (State in [dsEdit, dsInsert]) then
    Edit;
   If (frmTovar.ibdsGoods.Active) then
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsARTICUL_ID.Value
   else
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsTotalsARTICUL_ID.Value
  End
end;

procedure TfrmInvoice.TovarInsertBodyArticulID;
begin
 If NOT(tvAccountBody.OptionsData.Editing) then
  Exit;
 With ((dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet) do
  Begin
   Append;
   If (frmTovar.ibdsGoods.Active) then
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsARTICUL_ID.Value
   else
    FieldByName('ARTICUL_ID').AsInteger := frmTovar.ibdsGoodsTotalsARTICUL_ID.Value
  End
end;

procedure TfrmInvoice.SetCurrencyFmt;
 var k : Integer;
     CurrencyFrmt : String;
begin
 If (In_Out=1) then
  k := ibdsMainInvoiceDECIMALS_OUT.Value
 else
  k := ibdsMainInvoiceDECIMALS_IN.Value;
 CurrencyRoundPower := Trunc(Power(10,k));
 CurrencyFrmt := '#,##0.'+StringOfChar('0',k);
 ibdsMainInvoiceBodyLAST_BUY_PRICE.DisplayFormat := CurrencyFrmt;
 ibdsInvoiceBodySetLAST_BUY_PRICE.DisplayFormat := ibdsMainInvoiceBodyLAST_BUY_PRICE.DisplayFormat;
 ibdsMainInvoiceBodyPRICE.DisplayFormat := CurrencyFrmt;
 ibdsMainInvoiceBodyPRICE.EditFormat := Copy(CurrencyFrmt,Pos('0.',CurrencyFrmt),Length(CurrencyFrmt)-Pos('0.',CurrencyFrmt)+1)+'###';
 ibdsInvoiceBodySetPRICE.DisplayFormat := ibdsMainInvoiceBodyPRICE.DisplayFormat;
 ibdsInvoiceBodySetPRICE.EditFormat := ibdsMainInvoiceBodyPRICE.EditFormat;
 ibdsMainInvoiceBodyItogoMany.DisplayFormat := CurrencyFrmt;
 ibdsInvoiceBodySetItogoMany.DisplayFormat := CurrencyFrmt;
 If (tvAccountBody.DataController.Summary.FooterSummaryItems.ItemOfItemLink(tvAccountBodyItogoMany)<>nil) then
  tvAccountBody.DataController.Summary.FooterSummaryItems.ItemOfItemLink(tvAccountBodyItogoMany).Format := CurrencyFrmt;
 If (In_Out=1) then
  Begin
   ibdsMainInvoiceBodyMAX_BUY_PRICE.DisplayFormat := CurrencyFrmt;
   ibdsMainInvoiceBodyMAX_BUY_PRICE.EditFormat := Copy(CurrencyFrmt,Pos('0.',CurrencyFrmt),Length(CurrencyFrmt)-Pos('0.',CurrencyFrmt)+1)+'###';
   ibdsInvoiceBodySetMAX_BUY_PRICE.DisplayFormat := ibdsMainInvoiceBodyMAX_BUY_PRICE.DisplayFormat;
   ibdsInvoiceBodySetMAX_BUY_PRICE.EditFormat := ibdsMainInvoiceBodyMAX_BUY_PRICE.EditFormat;
   ibdsMainInvoiceBodyPRICE_REFERENCE.DisplayFormat := CurrencyFrmt;
   ibdsMainInvoiceBodyPRICE_REFERENCE.EditFormat := Copy(CurrencyFrmt,Pos('0.',CurrencyFrmt),Length(CurrencyFrmt)-Pos('0.',CurrencyFrmt)+1);
   ibdsInvoiceBodySetPRICE_REFERENCE.DisplayFormat := ibdsMainInvoiceBodyPRICE_REFERENCE.DisplayFormat;
   ibdsInvoiceBodySetPRICE_REFERENCE.EditFormat := ibdsMainInvoiceBodyPRICE_REFERENCE.EditFormat;
  End
end;

procedure TfrmInvoice.ibdsMadeInBeforeOpen(DataSet: TDataSet);
begin
 ibdsMadeIn.ParamByName('STORE_ID').AsInt64 := ibdsMainInvoiceENTERPRISE_STORE_ID.Value
end;

procedure TfrmInvoice.GetTotalMany;
 var BookMark : String;
begin
 TotalMany := 0;
 BookMark := ibdsMainInvoiceBody.Bookmark;
 ibdsMainInvoiceBody.DisableControls;
 ibdsMainInvoiceBody.First;
 While NOT (ibdsMainInvoiceBody.Eof) do
  Begin
   TotalMany := TotalMany+ibdsMainInvoiceBodyItogoMany.AsFloat;
   ibdsMainInvoiceBody.Next
  End;
 ibdsMainInvoiceBody.Bookmark := BookMark;
 ibdsMainInvoiceBody.EnableControls
end;

procedure TfrmInvoice.ibdsMainInvoiceBodyARTICULChange(Sender: TField);
 var ID : Largeint;
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
    ID := ibsAux.FieldByName('ID').AsInt64;
   ibsAux.Close;
   If (Sender.DataSet.FieldByName('ARTICUL_ID').AsInteger<>ID) then
    Sender.DataSet.FieldByName('ARTICUL_ID').AsInteger := ID
  End
end;

procedure TfrmInvoice.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) then
  If Assigned(LookUpProcedure) then
   LookUpProcedure
  else
   If Assigned(LookUpProcedureUpdate) then
    LookUpProcedureUpdate(Sender as TForm);
 If (Key=vk_F9) and Assigned(LookUpProcedureInsert) then
  LookUpProcedureInsert(Sender as TForm)
end;

procedure TfrmInvoice.ibdsMainInvoiceBodyBeforePost(DataSet: TDataSet);
begin
 If (ibdsMainInvoiceBodyItogoManyOld.AsFloat<>ibdsMainInvoiceBodyItogoMany.AsFloat) then
  Begin
   TotalMany := TotalMany-ibdsMainInvoiceBodyItogoManyOld.AsFloat+ibdsMainInvoiceBodyItogoMany.AsFloat;
   ibdsMainInvoiceBodyItogoManyOld.Value := ibdsMainInvoiceBodyItogoMany.AsFloat
  End
end;

procedure TfrmInvoice.MenuItem1Click(Sender: TObject);
 var BookMark : String;
begin
 If (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
  ibdsMainInvoice.Post;
 BookMark := ibdsMainInvoiceBody.Bookmark;
 ibdsMainInvoiceBody.DisableControls;
 ibdsMainInvoiceBody.First;
 While NOT (ibdsMainInvoiceBody.Eof) do
  Begin
   If (ibdsMainInvoiceBodyPRICE_REFERENCE.AsFloat<>0){ and
      (ibdsMainInvoiceBodyITEM_TYPE.AsInteger<>1) }then
    Begin
     ibdsMainInvoiceBody.Edit;
     ibdsMainInvoiceBodyPRICE.Value :=
         Round(GeneratePrice(ibdsMainInvoiceBodyPRICE_REFERENCE.AsFloat,
                             ibdsMainInvoicePRICE_FORMULA.AsString,
                             ibdsMainInvoiceBodyPERCENT.AsFloat,
                             ibdsMainInvoiceINCLUDE_NSP.AsInteger,
                             ibdsMainInvoiceBodyNSP.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower
    End;
   ibdsMainInvoiceBody.Next
  End;
 ibdsMainInvoiceBody.Bookmark := BookMark;
 ibdsMainInvoiceBody.EnableControls;
 BookMark := ibdsInvoiceBodySet.Bookmark;
 ibdsInvoiceBodySet.DisableControls;
 ibdsInvoiceBodySet.First;
 While NOT (ibdsInvoiceBodySet.Eof) do
  Begin
   If (ibdsInvoiceBodySetPRICE_REFERENCE.AsFloat<>0) then
    Begin
     ibdsInvoiceBodySet.Edit;
     ibdsInvoiceBodySetPRICE.Value :=
         Round(GeneratePrice(ibdsInvoiceBodySetPRICE_REFERENCE.AsFloat,
                             ibdsMainInvoicePRICE_FORMULA.AsString,
                             ibdsMainInvoiceBody.Lookup('ID',ibdsInvoiceBodySetINVOICE_BODY_ID.Value,'PERCENT'),
                             ibdsMainInvoiceINCLUDE_NSP.AsInteger,
                             ibdsMainInvoiceBody.Lookup('ID',ibdsInvoiceBodySetINVOICE_BODY_ID.Value,'NSP'))*CurrencyRoundPower)/CurrencyRoundPower
    End;
   ibdsInvoiceBodySet.Next
  End;
 ibdsInvoiceBodySet.Bookmark := BookMark;
 ibdsInvoiceBodySet.EnableControls;
 tvAccountBody.ViewData.Collapse(True);
 StteChange('Invoice', True);
 GetTotalMany
end;

procedure TfrmInvoice.MenuItem3Click(Sender: TObject);
 var BookMark : String;
begin
 If (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
  ibdsMainInvoice.Post;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select G.PRICE');
 ibsAux.SQL.Add('from GOODS G');
 ibsAux.SQL.Add('where (G.ARTICUL_ID=:ARTICUL_ID) and (G.MADE_IN=:MADE_IN) and');
 ibsAux.SQL.Add('(G.STORE_ID='+ibdsMainInvoiceENTERPRISE_STORE_ID.AsString+')');
 ibsAux.Prepare;
 ibsAux.GenerateParamNames := True;
 BookMark := ibdsMainInvoiceBody.Bookmark;
 ibdsMainInvoiceBody.DisableControls;
 ibdsMainInvoiceBody.First;
 While NOT (ibdsMainInvoiceBody.Eof) do
  Begin
   ibsAux.ParamByName('ARTICUL_ID').AsInt64 := ibdsMainInvoiceBodyARTICUL_ID.AsInteger;
   ibsAux.ParamByName('MADE_IN').AsString := ibdsMainInvoiceBodyMADE_IN.AsString;
   ibsAux.ExecQuery;
   If (ibsAux.FieldbyName('PRICE').AsDouble<>0) {and
      (ibdsMainInvoiceBodyITEM_TYPE.AsInteger<>1)} then
    Begin
     ibdsMainInvoiceBody.Edit;
     ibdsMainInvoiceBodyPRICE_REFERENCE.Value := ibsAux.FieldbyName('PRICE').AsDouble;
     ibdsMainInvoiceBodyPRICE.Value :=
         Round(GeneratePrice(ibsAux.FieldbyName('PRICE').AsDouble,
                             ibdsMainInvoicePRICE_FORMULA.AsString,
                             ibdsMainInvoiceBodyPERCENT.AsFloat,
                             ibdsMainInvoiceINCLUDE_NSP.AsInteger,
                             ibdsMainInvoiceBodyNSP.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower
    End;
   ibsAux.Close;
   ibdsMainInvoiceBody.Next
  End;
 ibdsMainInvoiceBody.Bookmark := BookMark;
 ibdsMainInvoiceBody.EnableControls;
 BookMark := ibdsInvoiceBodySet.Bookmark;
 ibdsInvoiceBodySet.DisableControls;
 ibdsInvoiceBodySet.First;
 While NOT (ibdsInvoiceBodySet.Eof) do
  Begin
   ibsAux.ParamByName('ARTICUL_ID').AsInteger := ibdsInvoiceBodySetARTICUL_ID.AsInteger;
   ibsAux.ParamByName('MADE_IN').AsString := '-';
   ibsAux.ExecQuery;
   If (ibsAux.FieldbyName('PRICE').AsDouble<>0) then
    Begin
     ibdsInvoiceBodySet.Edit;
     ibdsInvoiceBodySetPRICE_REFERENCE.Value := ibsAux.FieldbyName('PRICE').AsDouble;
     ibdsInvoiceBodySetPRICE.Value :=
         Round(GeneratePrice(ibsAux.FieldbyName('PRICE').AsDouble,
                             ibdsMainInvoicePRICE_FORMULA.AsString,
                             ibdsMainInvoiceBody.Lookup('ID',ibdsInvoiceBodySetINVOICE_BODY_ID.Value,'PERCENT'),
                             ibdsMainInvoiceINCLUDE_NSP.AsInteger,
                             ibdsMainInvoiceBody.Lookup('ID',ibdsInvoiceBodySetINVOICE_BODY_ID.Value,'NSP'))*CurrencyRoundPower)/CurrencyRoundPower
    End;
   ibsAux.Close;
   ibdsInvoiceBodySet.Next
  End;
 ibdsInvoiceBodySet.Bookmark := BookMark;
 ibdsInvoiceBodySet.EnableControls;
 tvAccountBody.ViewData.Collapse(True);
 StteChange('Invoice', True);
 GetTotalMany
end;

procedure TfrmInvoice.wwDBEdit3DblClick(Sender: TObject);
 var BookMark : String;
begin
 If (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
  ibdsMainInvoice.Post;
 BookMark := ibdsMainInvoiceBody.Bookmark;
 ibdsMainInvoiceBody.DisableControls;
 ibdsMainInvoiceBody.First;
 While NOT (ibdsMainInvoiceBody.Eof) do
  Begin
   ibdsMainInvoiceBody.Edit;
   ibdsMainInvoiceBodyPERCENT.Value := ibdsMainInvoicePERCENT.AsFloat;
   ibdsMainInvoiceBody.Next
  End;
 ibdsMainInvoiceBody.Bookmark := BookMark;
 ibdsMainInvoiceBody.EnableControls;
 StteChange('Invoice', True)
end;

procedure TfrmInvoice.ibdsMainInvoiceCURRENCY_RATEChange(Sender: TField);
 var BookMark : String;
begin
 If (ibdsMainInvoiceBody.RecordCount>0) and (OldCurrencyRate<>ibdsMainInvoiceCURRENCY_RATE.AsFloat) then
  Begin
   BookMark := ibdsMainInvoiceBody.Bookmark;
   ibdsMainInvoiceBody.DisableControls;
   ibdsMainInvoiceBody.First;
   While NOT (ibdsMainInvoiceBody.Eof) do
    Begin
     ibdsMainInvoiceBody.Edit;
     ibdsMainInvoiceBodyPRICE.Value := Round((ibdsMainInvoiceBodyPRICE.Value*OldCurrencyRate/ibdsMainInvoiceCURRENCY_RATE.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
     ibdsMainInvoiceBodyLAST_BUY_PRICE.Value := Round((ibdsMainInvoiceBodyLAST_BUY_PRICE.Value*OldCurrencyRate/ibdsMainInvoiceCURRENCY_RATE.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
     If (In_Out=1) then
      ibdsMainInvoiceBodyPRICE_REFERENCE.Value := Round((ibdsMainInvoiceBodyPRICE_REFERENCE.Value*OldCurrencyRate/ibdsMainInvoiceCURRENCY_RATE.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
     ibdsMainInvoiceBody.Next
    End;
   ibdsMainInvoiceBody.Bookmark := BookMark;
   ibdsMainInvoiceBody.EnableControls;
   GetTotalMany
  End;
 OldCurrencyRate := ibdsMainInvoiceCURRENCY_RATE.AsFloat
end;

procedure TfrmInvoice.ibdsMainInvoiceBodyPRICEChange(Sender: TField);
begin
 If (In_Out=1) then
  If (ibdsMainInvoiceBodyPRICE_REFERENCE.AsFloat=0) and (ibdsMainInvoiceBodyPRICE.AsFloat<>0) then
   ibdsMainInvoiceBodyPRICE_REFERENCE.Value := ibdsMainInvoiceBodyPRICE.AsFloat
end;

procedure TfrmInvoice.TuneUpReservAmount;
 var BookMark : String;
begin
 ibdsMainInvoiceBodyRESERV_AMOUNT.ReadOnly := (ibdsMainInvoiceDOUBLE_SOSTAV.AsInteger=1) and
                                              (ibdsMainInvoiceBLACK.AsInteger=0);
 If (ibdsMainInvoiceBodyRESERV_AMOUNT.ReadOnly) then
  Begin
   BookMark := ibdsMainInvoiceBody.Bookmark;
   ibdsMainInvoiceBody.DisableControls;
   ibdsMainInvoiceBody.First;
   While NOT (ibdsMainInvoiceBody.Eof) do
    Begin
     If (ibdsMainInvoiceBodyRESERV_AMOUNT.AsFloat<>0) then
      Begin
       ibdsMainInvoiceBody.Edit;
       ibdsMainInvoiceBodyRESERV_AMOUNT.Value := 0
      End;
     ibdsMainInvoiceBody.Next;
    End;
   ibdsMainInvoiceBody.Bookmark := BookMark;
   ibdsMainInvoiceBody.EnableControls
  End;
 ibdsInvoiceBodySetRESERV_AMOUNT.ReadOnly := ibdsMainInvoiceBodyRESERV_AMOUNT.ReadOnly;
 If (ibdsMainInvoiceBodyRESERV_AMOUNT.ReadOnly) then
  Begin
   BookMark := ibdsInvoiceBodySet.Bookmark;
   ibdsInvoiceBodySet.DisableControls;
   ibdsInvoiceBodySet.First;
   While NOT (ibdsInvoiceBodySet.Eof) do
    Begin
     If (ibdsInvoiceBodySetRESERV_AMOUNT.AsFloat<>0) then
      Begin
       ibdsInvoiceBodySet.Edit;
       ibdsInvoiceBodySetRESERV_AMOUNT.Value := 0
      End;
     ibdsInvoiceBodySet.Next;
    End;
   ibdsInvoiceBodySet.Bookmark := BookMark;
   ibdsInvoiceBodySet.EnableControls
  End
end;

procedure TfrmInvoice.ibdsMainInvoiceDOUBLE_SOSTAVChange(Sender: TField);
begin
 If (ibdsMainInvoiceDOUBLE_SOSTAV.AsInteger=0) and
    (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
  ibdsMainInvoiceOPPOSITE_SOSTAV_ID.AsVariant := null;
 If (Black) and (In_Out=1) then
  TuneUpReservAmount
end;

procedure TfrmInvoice.ibdsMainInvoicesListCalcFields(DataSet: TDataSet);
begin
 ibdsMainInvoicesListAMOUNT_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsMainInvoicesListDECIMALS.AsInteger),ibdsMainInvoicesListAMOUNT.AsFloat)
end;

procedure TfrmInvoice.N4Click(Sender: TObject);
begin
 pnlDetails.Show;
 ibdsMainInvoicesListAfterScroll(ibdsMainInvoicesList)
end;

procedure TfrmInvoice.ibdsIncomeDocsCalcFields(DataSet: TDataSet);
begin
 ibdsIncomeDocsAMOUNT_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsIncomeDocsDECIMALS.AsInteger),ibdsIncomeDocsAMOUNT.AsFloat)
end;

procedure TfrmInvoice.ibdsOutcomeDocsCalcFields(DataSet: TDataSet);
begin
 ibdsOutcomeDocsAMOUNT_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsOutcomeDocsDECIMALS.AsInteger),ibdsOutcomeDocsAMOUNT.AsFloat)
end;

procedure TfrmInvoice.dsIncomeDocsStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('Docs', True)
  else
   StteChange('Docs', ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmInvoice.ibdsIncomeDocsAfterOpen(DataSet: TDataSet);
 var Amount : Double;
begin
 Amount := 0;
 ibdsIncomeDocs.DisableControls;
 try
  While NOT (ibdsIncomeDocs.Eof) do
   Begin
    If (ibdsMainInvoiceCURRENCY_ID.AsLargeInt=ibdsIncomeDocsCURRENCY_ID.AsLargeInt) then
     Amount := Amount+ibdsIncomeDocsAMOUNT.AsFloat
    else
     Amount := Amount+ibdsIncomeDocsAMOUNT.AsFloat*ibdsIncomeDocsCURRENCY_RATE.AsFloat;
    ibdsIncomeDocs.Next
   End;
  ibdsIncomeDocs.First
 finally
  ibdsIncomeDocs.EnableControls;
  dbgIncomeDocs.ColumnByName('Amount_Fmt').FooterValue:=FormatFloat('#,##0.'+StringOfChar('0',ibdsMainInvoiceDECIMALS_IN.AsInteger)+ibdsCurrencySYMBOL.AsString,Amount)
 end;
end;

procedure TfrmInvoice.ibdsOutcomeDocsAfterOpen(DataSet: TDataSet);
 var Amount : Double;
begin
 Amount := 0;
 ibdsOutcomeDocs.DisableControls;
 try
  While NOT (ibdsOutcomeDocs.Eof) do
   Begin
    If (ibdsMainInvoiceCURRENCY_ID.AsLargeInt=ibdsOutcomeDocsCURRENCY_ID.AsLargeInt) then
     Amount := Amount+ibdsOutcomeDocsAMOUNT.AsFloat
    else
     Amount := Amount+ibdsOutcomeDocsAMOUNT.AsFloat*ibdsOutcomeDocsCURRENCY_RATE.AsFloat;
    ibdsOutcomeDocs.Next
   End;
  ibdsOutcomeDocs.First
 finally
  ibdsOutcomeDocs.EnableControls;
  dbgOutcomeDocs.ColumnByName('Amount_Fmt').FooterValue:=FormatFloat('#,##0.'+StringOfChar('0',ibdsMainInvoiceDECIMALS_OUT.AsInteger)+ibdsCurrencySYMBOL.AsString,Amount)
 end;
end;

procedure TfrmInvoice.dbgIncomeDocsDblClick(Sender: TObject);
 var k, Nal_In : Integer;
     frm : TForm;
begin
 If (ibdsIncomeDocsNAME.AsString='НАКЛАДНАЯ') then
  Begin
   If (frmMain.FindComponent('frmNaklIn')=nil) then
    Begin
     Nakl_In_ID := ibdsIncomeDocsID.Value;
     frmNaklIn := TfrmNaklIn.Create(frmMain)
    End
   else
    Begin
     If (frmNaklIn.PageControl1.ActivePageIndex<>1) then
      frmNaklIn.PageControl1.ActivePageIndex := 1;
     frmNaklIn.PageControl1Change(PageControl1);
     frmNaklIn.ibdsMainPrimaryTovarIncome.Close;
     frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Close;
     frmNaklIn.ibdsMainPrimaryTovarIncome.ParamByName('ID').AsInt64 := ibdsIncomeDocsID.Value;
     frmNaklIn.ibdsMainPrimaryTovarIncome.Open;
     frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Open
    End;
   frmNaklIn.Show
  End
 else
  Begin
   If (ibdsIncomeDocsNAL.IsNull) then
    Nal_In := 3
   else
    Nal_In := 1;
   frm := nil;
   For k := 0 to Pred(frmMain.ComponentCount) do
    If (frmMain.Components[k] is TfrmPlat) then
     If ((frmMain.Components[k] as TfrmPlat).Nal_In=Nal_In) then
      frm := frmMain.Components[k] as TfrmPlat;
   If (frm=nil) then
    Begin
     TempNal_In := Nal_In;
     Plat_ID := ibdsIncomeDocsID.Value;
     frmPlat := TfrmPlat.Create(frmMain);
     frm := frmPlat
    End
   else
    Begin
     If ((frm as TfrmPlat).PageControl1.ActivePageIndex<>1) then
      (frm as TfrmPlat).PageControl1.ActivePageIndex := 1;
     (frm as TfrmPlat).PageControl1Change(PageControl1);
     (frm as TfrmPlat).ibdsMainPrimaryPayment.Close;
     (frm as TfrmPlat).ibdsMainPrimaryPayment.ParamByName('ID').AsInt64 := ibdsIncomeDocsID.Value;
     (frm as TfrmPlat).ibdsMainPrimaryPayment.Open
    End;
   frm.Show
  End
end;

procedure TfrmInvoice.dbgOutcomeDocsDblClick(Sender: TObject);
 var k, Nal_In : Integer;
     frm : TForm;
begin
 If (ibdsOutcomeDocsNAME.AsString='НАКЛАДНАЯ') then
  Begin
   If (frmMain.FindComponent('frmNaklOut')=nil) then
    Begin
     Nakl_Out_ID := ibdsOutcomeDocsID.Value;
     frmNaklOut := TfrmNaklOut.Create(frmMain)
    End
   else
    Begin
     If (frmNaklOut.PageControl1.ActivePageIndex<>1) then
      frmNaklOut.PageControl1.ActivePageIndex := 1;
     frmNaklOut.PageControl1Change(PageControl1);
     frmNaklOut.ibdsMainPrimaryTovarOutcome.Close;
     frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Close;
     frmNaklOut.ibdsMainPrimaryTovarOutcome.ParamByName('ID').AsInt64 := ibdsOutcomeDocsID.Value;
     frmNaklOut.ibdsMainPrimaryTovarOutcome.Open;
     frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Open
    End; 
   frmNaklOut.Show
  End
 else
  Begin
   If (ibdsOutcomeDocsNAL.IsNull) then
    Nal_In := 2
   else
    Nal_In := 0;
   frm := nil;
   For k := 0 to Pred(frmMain.ComponentCount) do
    If (frmMain.Components[k] is TfrmPlat) then
     If ((frmMain.Components[k] as TfrmPlat).Nal_In=Nal_In) then
      frm := frmMain.Components[k] as TfrmPlat;
   If (frm=nil) then
    Begin
     TempNal_In := Nal_In;
     Plat_ID := ibdsOutcomeDocsID.Value;
     frmPlat := TfrmPlat.Create(frmMain);
     frm := frmPlat
    End
   else
    Begin
     If ((frm as TfrmPlat).PageControl1.ActivePageIndex<>1) then
      (frm as TfrmPlat).PageControl1.ActivePageIndex := 1;
     (frm as TfrmPlat).PageControl1Change(PageControl1);
     (frm as TfrmPlat).ibdsMainPrimaryPayment.Close;
     (frm as TfrmPlat).ibdsMainPrimaryPayment.ParamByName('ID').AsInt64 := ibdsOutcomeDocsID.Value;
     (frm as TfrmPlat).ibdsMainPrimaryPayment.Open
    End;
   frm.Show
  End
end;

procedure TfrmInvoice.sbDeleteDocsClick(Sender: TObject);
begin
 If (ActiveControl=dbgIncomeDocs) then
  ibdsIncomeDocs.Delete
 else
  ibdsOutcomeDocs.Delete
end;

procedure TfrmInvoice.ibdsIncomeDocsUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 ibsAux.SQL.Clear;
 If (ibdsIncomeDocsNAME.AsString='НАКЛАДНАЯ') then
  ibsAux.SQL.Add('delete from PRIMARY_TOVAR_INCOME_HEADER')
 else
  ibsAux.SQL.Add('delete from PRIMARY_PAYMENTS');
 ibsAux.SQL.Add('where ID='+ibdsIncomeDocsID.AsString);
 ibsAux.ExecQuery;
 ibsWhite.SQL.Clear;
 ibsWhite.SQL.AddStrings(ibsAux.SQL);
 ibsWhite.ExecQuery;
 UpdateAction := uaApplied
end;

procedure TfrmInvoice.sbCancelDocsClick(Sender: TObject);
begin
 ibdsIncomeDocs.CancelUpdates;
 ibdsOutcomeDocs.CancelUpdates;
 StteChange('Docs', False)
end;

procedure TfrmInvoice.sbApplyDocsClick(Sender: TObject);
begin
 try
  ibdsIncomeDocs.ApplyUpdates;
  ibdsOutcomeDocs.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Docs', False);
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end
end;

procedure TfrmInvoice.ibdsOutcomeDocsUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 ibsAux.SQL.Clear;
 If (ibdsOutcomeDocsNAME.AsString='НАКЛАДНАЯ') then
  ibsAux.SQL.Add('delete from PRIMARY_TOVAR_OUTCOME_HEADER')
 else
  ibsAux.SQL.Add('delete from PRIMARY_PAYMENTS');
 ibsAux.SQL.Add('where ID='+ibdsOutcomeDocsID.AsString);
 ibsAux.ExecQuery;
 ibsWhite.SQL.Clear;
 ibsWhite.SQL.AddStrings(ibsAux.SQL);
 ibsWhite.ExecQuery;
 UpdateAction := uaApplied
end;

procedure TfrmInvoice.sbAddDocsClick(Sender: TObject);
begin
 PopupMenu5.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y)
end;

procedure TfrmInvoice.N5Click(Sender: TObject);
 var ibsLocalAux : TIBSQL;
     InvoiceBodyID : Int64;
begin
 If (frmMain.FindComponent('frmNaklIn')=nil) then
  Begin
   Nakl_In_ID := -1;
   frmNaklIn := TfrmNaklIn.Create(frmMain)
  End;
 If NOT (frmNaklIn.sbApplyPrimaryTovarIncomeList.Enabled) then
  Begin
   If (frmNaklIn.PageControl1.ActivePageIndex<>1) then
    frmNaklIn.PageControl1.ActivePageIndex := 1;
   frmNaklIn.PageControl1Change(PageControl1);
   frmNaklIn.sbAddPrimaryTovarIncome.Click;
   frmNaklIn.ibdsMainPrimaryTovarIncomePARENT_TYPE.Value := In_Out;
   frmNaklIn.ibdsMainPrimaryTovarIncomePARENT_ID.Value := ibdsMainInvoiceID.AsLargeInt;
   frmNaklIn.ibdsMainPrimaryTovarIncomeENTERPRISE_ID.Value := ibdsMainInvoiceENTERPRISE_ID.AsLargeInt;
   frmNaklIn.ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.Value := ibdsMainInvoiceCONTRACTOR_ID.AsLargeInt;
   frmNaklIn.ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.Value := ibdsMainInvoiceENTERPRISE_STORE_ID.AsLargeInt;
   frmNaklIn.ibdsMainPrimaryTovarIncomeCURRENCY_ID.Value := ibdsMainInvoiceCURRENCY_ID.AsLargeInt;
   frmNaklIn.ibdsMainPrimaryTovarIncomeCURRENCY_RATE.Value := ibdsMainInvoiceCURRENCY_RATE.AsFloat;
   frmNaklIn.ibdsMainPrimaryTovarIncome.Post;
   frmNaklIn.ibdsMainPrimaryTovarIncome.Edit;
   If (MessageDlg('Сформировать тело накладной?',mtConfirmation,[mbOk,mbCancel],0)=mrOK) then
    Begin
     ibsLocalAux := TIBSQL.Create(Nil);
     ibsLocalAux.Database := ibdsMainInvoiceBody.Database;
     ibsLocalAux.Transaction := trMain;
     frmNaklIn.Cloning := True;
     If (In_Out=1) then
      Begin
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select PTOB.ID, PTOB.ARTICUL_ID, PTOB.MADE_IN, PTOB.PACKS_AMOUNT,');
       ibsAux.SQL.Add('PTOB.PACK_VALUE, PTOB.ITEMS_AMOUNT, PTOB.PRICE, PTOB.LABEL,');
       ibsAux.SQL.Add('PTOB.COUNTRY_ID, PTOB.DECLARATION_NUMBER');
       ibsAux.SQL.Add('from PRIMARY_TOVAR_OUTCOME_BODY PTOB,');
       ibsAux.SQL.Add('PRIMARY_TOVAR_OUTCOME_HEADER PTOH');
       ibsAux.SQL.Add('where (PTOH.PARENT_TYPE='+IntToStr(In_Out)+') and (PTOH.PARENT_ID='+ibdsMainInvoiceID.AsString+') and');
       ibsAux.SQL.Add('(PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID=PTOH.ID)');
       ibsAux.ExecQuery;
       ibsLocalAux.SQL.Add('select cast(PTOBS.ARTICUL_ID as INTEGER) ARTICUL_ID, PTOBS.PACKS_AMOUNT, PTOBS.PACK_VALUE,');
       ibsLocalAux.SQL.Add('PTOBS.ITEMS_AMOUNT, PTOBS.PRICE, PTOBS.COMMENTS');
       ibsLocalAux.SQL.Add('from PRIMARY_TOVAR_OUTCOME_BODY_SETS PTOBS');
       ibsLocalAux.SQL.Add('where (PTOBS.PRIMARY_TOVAR_OUTCOME_BODY_ID=:ID)');
       ibsLocalAux.GenerateParamNames := True;
       While NOT (ibsAux.Eof) do
        Begin
         frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Append;
         frmNaklIn.ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.Value := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
         frmNaklIn.ibdsMainPrimaryTovarIncomeBodyMADE_IN.Value := ibsAux.FieldByName('MADE_IN').AsString;
         frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value := ibsAux.FieldByName('PACKS_AMOUNT').AsInteger;
         frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.Value := ibsAux.FieldByName('PACK_VALUE').AsDouble;
         frmNaklIn.ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value := ibsAux.FieldByName('ITEMS_AMOUNT').AsDouble;
         frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPRICE.Value := ibsAux.FieldByName('PRICE').AsDouble;
         frmNaklIn.ibdsMainPrimaryTovarIncomeBodyLABEL.Value := ibsAux.FieldByName('LABEL').AsString;
         If (ibsAux.FieldByName('COUNTRY_ID').IsNull) then
          frmNaklIn.ibdsMainPrimaryTovarIncomeBodyCOUNTRY_ID.AsVariant := NULL
         else
          frmNaklIn.ibdsMainPrimaryTovarIncomeBodyCOUNTRY_ID.Value := ibsAux.FieldByName('COUNTRY_ID').AsInt64;
         frmNaklIn.ibdsMainPrimaryTovarIncomeBodyDECLARATION_NUMBER.Value := ibsAux.FieldByName('DECLARATION_NUMBER').AsString;
         If (frmNaklIn.ibdsMainPrimaryTovarIncomeBodyITEM_TYPE.AsInteger=1) then
          Begin
           ibsLocalAux.ParamByName('ID').AsInt64 := ibsAux.FieldByName('ID').AsInt64;
           ibsLocalAux.ExecQuery;
           While NOT ibsLocalAux.Eof do
            Begin
             frmNaklIn.ibdsPrimaryTovarIncomeBodySet.Append;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetARTICUL_ID.Value := ibsLocalAux.FieldByName('ARTICUL_ID').AsInteger;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetPACKS_AMOUNT.Value := ibsLocalAux.FieldByName('PACKS_AMOUNT').AsInteger;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetPACK_VALUE.Value := ibsLocalAux.FieldByName('PACK_VALUE').AsDouble;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetITEMS_AMOUNT.Value := ibsLocalAux.FieldByName('ITEMS_AMOUNT').AsDouble;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetPRICE.Value := ibsLocalAux.FieldByName('PRICE').AsDouble;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetCOMMENTS.Value := ibsLocalAux.FieldByName('COMMENTS').AsString;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySet.Post;
             ibsLocalAux.Next
            End;
           ibsLocalAux.Close
          End;
         ibsAux.Next
        End;
       ibsAux.Close
      End
     else
      Begin
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select IB.ARTICUL_ID, IB.MADE_IN, IB.PACK_VALUE, IB.PRICE,');
       ibsAux.SQL.Add('SUM(IB.ITEMS_AMOUNT+IB.PACK_VALUE*IB.PACKS_AMOUNT) AMOUNT_INV');
       ibsAux.SQL.Add('from INVOICE_BODY IB, ARTICULS A');
       ibsAux.SQL.Add('where (IB.INVOICE_ID='+ibdsMainInvoiceID.AsString+') and (A.ITEM_TYPE!=1) and (A.ID=IB.ARTICUL_ID)');
       ibsAux.SQL.Add('group by IB.ARTICUL_ID, IB.MADE_IN, IB.PACK_VALUE, IB.PRICE');
       ibsNumb.SQL.Clear;
       ibsNumb.SQL.Add('select SUM(PTIB.ITEMS_AMOUNT+PTIB.PACK_VALUE*PTIB.PACKS_AMOUNT) AMOUNT_NAKL');
       ibsNumb.SQL.Add('from PRIMARY_TOVAR_INCOME_HEADER PTIH, PRIMARY_TOVAR_INCOME_BODY PTIB');
       ibsNumb.SQL.Add('where (PTIH.PARENT_TYPE='+IntToStr(In_Out)+') and (PTIH.PARENT_ID='+ibdsMainInvoiceID.AsString+') and');
       ibsNumb.SQL.Add('(PTIB.PRIMARI_TOVAR_INCOME_HEADER_ID=PTIH.ID) and');
       ibsNumb.SQL.Add('(PTIB.ARTICUL_ID=:ARTICUL_ID) and (PTIB.MADE_IN=:MADE_IN) and (PTIB.PRICE=:PRICE)');
       ibsNumb.GenerateParamNames := True;
       ibsAux.ExecQuery;
       While NOT (ibsAux.Eof) do
        Begin
         ibsNumb.ParamByName('ARTICUL_ID').AsInt64 := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
         ibsNumb.ParamByName('MADE_IN').AsString := ibsAux.FieldByName('MADE_IN').AsString;
         ibsNumb.ParamByName('PRICE').AsString := ibsAux.FieldByName('PRICE').AsString;
         ibsNumb.ExecQuery;
         If (ibsAux.FieldByName('AMOUNT_INV').AsDouble>ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble) then
          Begin
           frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Append;
           frmNaklIn.ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.Value := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
           frmNaklIn.ibdsMainPrimaryTovarIncomeBodyMADE_IN.Value := ibsAux.FieldByName('MADE_IN').AsString;
           frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.Value := ibsAux.FieldByName('PACK_VALUE').AsDouble;
           frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPRICE.Value := ibsAux.FieldByName('PRICE').AsDouble;
           If (ibsAux.FieldByName('PACK_VALUE').AsDouble>0) then
            frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value := Trunc((ibsAux.FieldByName('AMOUNT_INV').AsDouble-ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble)/ibsAux.FieldByName('PACK_VALUE').AsDouble)
           else
            frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value := 0;
           frmNaklIn.ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value := (ibsAux.FieldByName('AMOUNT_INV').AsDouble-ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble)-ibsAux.FieldByName('PACK_VALUE').AsDouble*frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value
          End;
         ibsNumb.Close;
         ibsAux.Next
        End;
       ibsAux.Close;
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select IB.ARTICUL_ID, IB.MADE_IN, IB.PACK_VALUE, IB.PRICE, IB.CRC32_SET,');
       ibsAux.SQL.Add('SUM(IB.ITEMS_AMOUNT+IB.PACK_VALUE*IB.PACKS_AMOUNT) AMOUNT_INV');
       ibsAux.SQL.Add('from INVOICE_BODY IB, ARTICULS A');
       ibsAux.SQL.Add('where (IB.INVOICE_ID='+ibdsMainInvoiceID.AsString+') and (A.ITEM_TYPE=1) and (A.ID=IB.ARTICUL_ID)');
       ibsAux.SQL.Add('group by IB.ARTICUL_ID, IB.MADE_IN, IB.PACK_VALUE, IB.PRICE, IB.CRC32_SET');
       ibsNumb.SQL.Clear;
       ibsNumb.SQL.Add('select SUM(PTIB.ITEMS_AMOUNT+PTIB.PACK_VALUE*PTIB.PACKS_AMOUNT) AMOUNT_NAKL');
       ibsNumb.SQL.Add('from PRIMARY_TOVAR_INCOME_HEADER PTIH, PRIMARY_TOVAR_INCOME_BODY PTIB');
       ibsNumb.SQL.Add('where (PTIH.PARENT_TYPE='+IntToStr(In_Out)+') and (PTIH.PARENT_ID='+ibdsMainInvoiceID.AsString+') and');
       ibsNumb.SQL.Add('(PTIB.PRIMARI_TOVAR_INCOME_HEADER_ID=PTIH.ID) and');
       ibsNumb.SQL.Add('(PTIB.ARTICUL_ID=:ARTICUL_ID) and (PTIB.MADE_IN=:MADE_IN) and (PTIB.CRC32_SET=:CRC32_SET) and (PTIB.PRICE=:PRICE)');
       ibsNumb.GenerateParamNames := True;
       ibsAux.ExecQuery;
       While NOT (ibsAux.Eof) do
        Begin
         ibsNumb.ParamByName('ARTICUL_ID').AsInt64 := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
         ibsNumb.ParamByName('MADE_IN').AsString := ibsAux.FieldByName('MADE_IN').AsString;
         ibsNumb.ParamByName('CRC32_SET').AsInteger := ibsAux.FieldByName('CRC32_SET').AsInteger;
         ibsNumb.ParamByName('PRICE').AsString := ibsAux.FieldByName('PRICE').AsString;
         ibsNumb.ExecQuery;
         If (ibsAux.FieldByName('AMOUNT_INV').AsDouble>ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble) then
          Begin
           frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Append;
           frmNaklIn.ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.Value := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
           frmNaklIn.ibdsMainPrimaryTovarIncomeBodyMADE_IN.Value := ibsAux.FieldByName('MADE_IN').AsString;
           frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.Value := ibsAux.FieldByName('PACK_VALUE').AsDouble;
           frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPRICE.Value := ibsAux.FieldByName('PRICE').AsDouble;
           If (ibsAux.FieldByName('PACK_VALUE').AsDouble>0) then
            frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value := Trunc((ibsAux.FieldByName('AMOUNT_INV').AsDouble-ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble)/ibsAux.FieldByName('PACK_VALUE').AsDouble)
           else
            frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value := 0;
           frmNaklIn.ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value := (ibsAux.FieldByName('AMOUNT_INV').AsDouble-ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble)-ibsAux.FieldByName('PACK_VALUE').AsDouble*frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value;
           ibsLocalAux.SQL.Clear;
           ibsLocalAux.SQL.Add('select IB.ID');
           ibsLocalAux.SQL.Add('from INVOICE_BODY IB');
           ibsLocalAux.SQL.Add('where (IB.INVOICE_ID='+ibdsMainInvoiceID.AsString+') and (IB.ARTICUL_ID=:ARTICUL_ID) and (IB.CRC32_SET=:CRC32_SET)');
           ibsLocalAux.GenerateParamNames := True;
           ibsLocalAux.ParamByName('ARTICUL_ID').AsInt64 := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
           ibsLocalAux.ParamByName('CRC32_SET').AsInteger := ibsAux.FieldByName('CRC32_SET').AsInteger;
           ibsLocalAux.ExecQuery;
           InvoiceBodyID := ibsLocalAux.FieldByName('ID').AsInt64;
           ibsLocalAux.Close;
           ibsLocalAux.SQL.Clear;
           ibsLocalAux.SQL.Add('select cast(IBS.ARTICUL_ID as INTEGER) ARTICUL_ID, IBS.PACKS_AMOUNT, IBS.PACK_VALUE,');
           ibsLocalAux.SQL.Add('IBS.ITEMS_AMOUNT, IBS.PRICE, IBS.COMMENTS');
           ibsLocalAux.SQL.Add('from INVOICE_BODY_SETS IBS');
           ibsLocalAux.SQL.Add('where (IBS.INVOICE_BODY_ID=:ID)');
           ibsLocalAux.GenerateParamNames := True;
           ibsLocalAux.ParamByName('ID').AsInt64 := InvoiceBodyID;
           ibsLocalAux.ExecQuery;
           While NOT ibsLocalAux.Eof do
            Begin
             frmNaklIn.ibdsPrimaryTovarIncomeBodySet.Append;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetARTICUL_ID.Value := ibsLocalAux.FieldByName('ARTICUL_ID').AsInteger;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetPACKS_AMOUNT.Value := ibsLocalAux.FieldByName('PACKS_AMOUNT').AsInteger;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetPACK_VALUE.Value := ibsLocalAux.FieldByName('PACK_VALUE').AsDouble;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetITEMS_AMOUNT.Value := ibsLocalAux.FieldByName('ITEMS_AMOUNT').AsDouble;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetPRICE.Value := ibsLocalAux.FieldByName('PRICE').AsDouble;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySetCOMMENTS.Value := ibsLocalAux.FieldByName('COMMENTS').AsString;
             frmNaklIn.ibdsPrimaryTovarIncomeBodySet.Post;
             ibsLocalAux.Next
            End;
           ibsLocalAux.Close
          End;
         ibsNumb.Close;
         ibsAux.Next
        End;
       ibsAux.Close;
      End;
     frmNaklIn.Cloning := False;
     ibsLocalAux.Free
    End
  End;
 frmNaklIn.Show;
 If (frmNaklIn.ibdsMainPrimaryTovarIncomeBody.State in [dsEdit, dsInsert]) then
  frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Post
end;

procedure TfrmInvoice.N6Click(Sender: TObject);
 var k : Integer;
     frm : TForm;
begin
 frm := nil;
 For k := 0 to Pred(frmMain.ComponentCount) do
  If (frmMain.Components[k] is TfrmPlat) then
   If ((frmMain.Components[k] as TfrmPlat).Nal_In=(Sender as TMenuItem).Tag) then
    frm := frmMain.Components[k] as TfrmPlat;
 If (frm=nil) then
  Begin
   TempNal_In := (Sender as TMenuItem).Tag;
   Plat_ID := -1;
   frmPlat := TfrmPlat.Create(frmMain);
   frm := frmPlat
  End;
 If NOT ((frm as TfrmPlat).sbApplyPrimaryPaymentsList.Enabled) then
  Begin
   If ((frm as TfrmPlat).PageControl1.ActivePageIndex<>1) then
    (frm as TfrmPlat).PageControl1.ActivePageIndex := 1;
   (frm as TfrmPlat).PageControl1Change(PageControl1);
   (frm as TfrmPlat).sbAddPrimaryPayment.Click;
   If (In_Out=1) then
    (frm as TfrmPlat).ibdsMainPrimaryPaymentPARENT_TYPE.Value := 4
   else
    (frm as TfrmPlat).ibdsMainPrimaryPaymentPARENT_TYPE.Value := 3;
   (frm as TfrmPlat).ibdsMainPrimaryPaymentPARENT_ID.Value := ibdsMainInvoiceID.AsLargeInt;
   (frm as TfrmPlat).ibdsMainPrimaryPaymentENTERPRISE_ID.Value := ibdsMainInvoiceENTERPRISE_ID.AsLargeInt;
   (frm as TfrmPlat).ibdsMainPrimaryPaymentCONTRACTOR_ID.Value := ibdsMainInvoiceCONTRACTOR_ID.AsLargeInt;
   (frm as TfrmPlat).ibdsMainPrimaryPaymentCURRENCY_ID.Value := ibdsMainInvoiceCURRENCY_ID.AsLargeInt;
   (frm as TfrmPlat).ibdsMainPrimaryPaymentCURRENCY_RATE.Value := ibdsMainInvoiceCURRENCY_RATE.AsFloat;
   GetTotalMany;
   (frm as TfrmPlat).ibdsMainPrimaryPaymentAMOUNT.Value := TotalMany;
   (frm as TfrmPlat).ibdsMainPrimaryPayment.Post
  End;
 frm.Show
end;

procedure TfrmInvoice.N8Click(Sender: TObject);
 var ibsLocalAux : TIBSQL;
     InvoiceBodyID : Int64;
begin
 If (frmMain.FindComponent('frmNaklOut')=nil) then
  Begin
   Nakl_Out_ID := -1;
   frmNaklOut := TfrmNaklOut.Create(frmMain)
  End;
 If NOT (frmNaklOut.sbApplyPrimaryTovarOutcomeList.Enabled) then
  Begin
   If (frmNaklOut.PageControl1.ActivePageIndex<>1) then
    frmNaklOut.PageControl1.ActivePageIndex := 1;
   frmNaklOut.PageControl1Change(PageControl1);
   frmNaklOut.sbAddPrimaryTovarOutcome.Click;
   frmNaklOut.ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value := In_Out;
   frmNaklOut.ibdsMainPrimaryTovarOutcomePARENT_ID.Value := ibdsMainInvoiceID.AsLargeInt;
   frmNaklOut.ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.Value := ibdsMainInvoiceENTERPRISE_ID.AsLargeInt;
   frmNaklOut.ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID.Value := ibdsMainInvoiceCONTRACTOR_ID.AsLargeInt;
   frmNaklOut.ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.Value := ibdsMainInvoiceENTERPRISE_STORE_ID.AsLargeInt;
   frmNaklOut.ibdsMainPrimaryTovarOutcomeCURRENCY_ID.Value := ibdsMainInvoiceCURRENCY_ID.AsLargeInt;
   frmNaklOut.ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.Value := ibdsMainInvoiceCURRENCY_RATE.AsFloat;
   frmNaklOut.ibdsMainPrimaryTovarOutcome.Post;
   frmNaklOut.ibdsMainPrimaryTovarOutcome.Edit;
   If (MessageDlg('Сформировать тело накладной?',mtConfirmation,[mbOk,mbCancel],0)=mrOK) then
    Begin
     ibsLocalAux := TIBSQL.Create(Nil);
     ibsLocalAux.Database := ibdsMainInvoiceBody.Database;
     ibsLocalAux.Transaction := trMain;
     frmNaklOut.Cloning := True;
     If (In_Out=2) then
      Begin
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select PTIB.ID, PTIB.ARTICUL_ID, PTIB.MADE_IN, PTIB.PACKS_AMOUNT,');
       ibsAux.SQL.Add('PTIB.PACK_VALUE, PTIB.ITEMS_AMOUNT, PTIB.PRICE,');
       ibsAux.SQL.Add('PTIB.COUNTRY_ID, PTIB.DECLARATION_NUMBER');
       ibsAux.SQL.Add('from PRIMARY_TOVAR_INCOME_BODY PTIB,');
       ibsAux.SQL.Add('PRIMARY_TOVAR_INCOME_HEADER PTIH');
       ibsAux.SQL.Add('where (PTIH.PARENT_TYPE='+IntToStr(In_Out)+') and (PTIH.PARENT_ID='+ibdsMainInvoiceID.AsString+') and');
       ibsAux.SQL.Add('(PTIB.PRIMARI_TOVAR_INCOME_HEADER_ID=PTIH.ID)');
       ibsAux.ExecQuery;
       ibsLocalAux.SQL.Add('select cast(PTIBS.ARTICUL_ID as INTEGER) ARTICUL_ID, PTIBS.PACKS_AMOUNT, PTIBS.PACK_VALUE,');
       ibsLocalAux.SQL.Add('PTIBS.ITEMS_AMOUNT, PTIBS.PRICE, PTIBS.COMMENTS');
       ibsLocalAux.SQL.Add('from PRIMARY_TOVAR_INCOME_BODY_SETS PTIBS');
       ibsLocalAux.SQL.Add('where (PTIBS.PRIMARY_TOVAR_INCOME_BODY_ID=:ID)');
       ibsLocalAux.GenerateParamNames := True;
       While NOT (ibsAux.Eof) do
        Begin
         frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Append;
         frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID.Value := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
         frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyMADE_IN.Value := ibsAux.FieldByName('MADE_IN').AsString;
         frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value := ibsAux.FieldByName('PACKS_AMOUNT').AsInteger;
         frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.Value := ibsAux.FieldByName('PACK_VALUE').AsDouble;
         frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.Value := ibsAux.FieldByName('ITEMS_AMOUNT').AsDouble;
         frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPRICE.Value := ibsAux.FieldByName('PRICE').AsDouble;
         If (ibsAux.FieldByName('COUNTRY_ID').IsNull) then
          frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyCOUNTRY_ID.AsVariant := NULL
         else
          frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyCOUNTRY_ID.Value := ibsAux.FieldByName('COUNTRY_ID').AsInt64;
         frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyDECLARATION_NUMBER.Value := ibsAux.FieldByName('DECLARATION_NUMBER').AsString;
         If (frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyITEM_TYPE.AsInteger=1) then
          Begin
           ibsLocalAux.ParamByName('ID').AsInt64 := ibsAux.FieldByName('ID').AsInt64;
           ibsLocalAux.ExecQuery;
           While NOT ibsLocalAux.Eof do
            Begin
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySet.Append;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetARTICUL_ID.Value := ibsLocalAux.FieldByName('ARTICUL_ID').AsInteger;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetPACKS_AMOUNT.Value := ibsLocalAux.FieldByName('PACKS_AMOUNT').AsInteger;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetPACK_VALUE.Value := ibsLocalAux.FieldByName('PACK_VALUE').AsDouble;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetITEMS_AMOUNT.Value := ibsLocalAux.FieldByName('ITEMS_AMOUNT').AsDouble;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetPRICE.Value := ibsLocalAux.FieldByName('PRICE').AsDouble;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetCOMMENTS.Value := ibsLocalAux.FieldByName('COMMENTS').AsString;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySet.Post;
             ibsLocalAux.Next
            End;
           ibsLocalAux.Close
          End;
         ibsAux.Next
        End;
       If (frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.State in [dsEdit, dsInsert]) then
        frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Post;
       ibsAux.Close;
      End
     else
      Begin
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select IB.ARTICUL_ID, IB.MADE_IN, IB.PACK_VALUE, IB.PRICE,');
       ibsAux.SQL.Add('SUM(IB.ITEMS_AMOUNT+IB.PACK_VALUE*IB.PACKS_AMOUNT) AMOUNT_INV');
       ibsAux.SQL.Add('from INVOICE_BODY IB, ARTICULS A');
       ibsAux.SQL.Add('where (IB.INVOICE_ID='+ibdsMainInvoiceID.AsString+') and (A.ITEM_TYPE!=1) and (A.ID=IB.ARTICUL_ID)');
       ibsAux.SQL.Add('group by IB.ARTICUL_ID, IB.MADE_IN, IB.PACK_VALUE, IB.PRICE');
       ibsNumb.SQL.Clear;
       ibsNumb.SQL.Add('select SUM(PTOB.ITEMS_AMOUNT+PTOB.PACK_VALUE*PTOB.PACKS_AMOUNT) AMOUNT_NAKL');
       ibsNumb.SQL.Add('from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_TOVAR_OUTCOME_BODY PTOB');
       ibsNumb.SQL.Add('where (PTOH.PARENT_TYPE='+IntToStr(In_Out)+') and (PTOH.PARENT_ID='+ibdsMainInvoiceID.AsString+') and');
       ibsNumb.SQL.Add('(PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID=PTOH.ID) and');
       ibsNumb.SQL.Add('(PTOB.ARTICUL_ID=:ARTICUL_ID) and (PTOB.MADE_IN=:MADE_IN) and (PTOB.PRICE=:PRICE)');
       ibsNumb.GenerateParamNames := True;
       ibsAux.ExecQuery;
       While NOT (ibsAux.Eof) do
        Begin
         ibsNumb.ParamByName('ARTICUL_ID').AsInt64 := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
         ibsNumb.ParamByName('MADE_IN').AsString := ibsAux.FieldByName('MADE_IN').AsString;
         ibsNumb.ParamByName('PRICE').Value := ibsAux.FieldByName('PRICE').Value;
         ibsNumb.ExecQuery;
         If (ibsAux.FieldByName('AMOUNT_INV').AsDouble>ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble) then
          Begin
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Append;
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID.Value := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyMADE_IN.Value := ibsAux.FieldByName('MADE_IN').AsString;
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.Value := ibsAux.FieldByName('PACK_VALUE').AsDouble;
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPRICE.Value := ibsAux.FieldByName('PRICE').AsDouble;
           If (ibsAux.FieldByName('PACK_VALUE').AsDouble>0) then
            frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value := Trunc((ibsAux.FieldByName('AMOUNT_INV').AsDouble-ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble)/ibsAux.FieldByName('PACK_VALUE').AsDouble)
           else
            frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value := 0;
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.Value := (ibsAux.FieldByName('AMOUNT_INV').AsDouble-ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble)-ibsAux.FieldByName('PACK_VALUE').AsDouble*frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value
          End;
         ibsNumb.Close;
         ibsAux.Next
        End;
       ibsAux.Close;
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select IB.ARTICUL_ID, IB.MADE_IN, IB.PACK_VALUE, IB.PRICE, IB.CRC32_SET,');
       ibsAux.SQL.Add('SUM(IB.ITEMS_AMOUNT+IB.PACK_VALUE*IB.PACKS_AMOUNT) AMOUNT_INV');
       ibsAux.SQL.Add('from INVOICE_BODY IB, ARTICULS A');
       ibsAux.SQL.Add('where (IB.INVOICE_ID='+ibdsMainInvoiceID.AsString+') and (A.ITEM_TYPE=1) and (A.ID=IB.ARTICUL_ID)');
       ibsAux.SQL.Add('group by IB.ARTICUL_ID, IB.MADE_IN, IB.PACK_VALUE, IB.PRICE, IB.CRC32_SET');
       ibsNumb.SQL.Clear;
       ibsNumb.SQL.Add('select SUM(PTOB.ITEMS_AMOUNT+PTOB.PACK_VALUE*PTOB.PACKS_AMOUNT) AMOUNT_NAKL');
       ibsNumb.SQL.Add('from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_TOVAR_OUTCOME_BODY PTOB');
       ibsNumb.SQL.Add('where (PTOH.PARENT_TYPE='+IntToStr(In_Out)+') and (PTOH.PARENT_ID='+ibdsMainInvoiceID.AsString+') and');
       ibsNumb.SQL.Add('(PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID=PTOH.ID) and');
       ibsNumb.SQL.Add('(PTOB.ARTICUL_ID=:ARTICUL_ID) and (PTOB.MADE_IN=:MADE_IN) and (PTOB.CRC32_SET=:CRC32_SET) and (PTOB.PRICE=:PRICE)');
       ibsNumb.GenerateParamNames := True;
       ibsAux.ExecQuery;
       While NOT (ibsAux.Eof) do
        Begin
         ibsNumb.ParamByName('ARTICUL_ID').AsInt64 := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
         ibsNumb.ParamByName('MADE_IN').AsString := ibsAux.FieldByName('MADE_IN').AsString;
         ibsNumb.ParamByName('CRC32_SET').AsInteger := ibsAux.FieldByName('CRC32_SET').AsInteger;
         ibsNumb.ParamByName('PRICE').Value := ibsAux.FieldByName('PRICE').Value;
         ibsNumb.ExecQuery;
         If (ibsAux.FieldByName('AMOUNT_INV').AsDouble>ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble) then
          Begin
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Append;
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID.Value := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyMADE_IN.Value := ibsAux.FieldByName('MADE_IN').AsString;
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.Value := ibsAux.FieldByName('PACK_VALUE').AsDouble;
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPRICE.Value := ibsAux.FieldByName('PRICE').AsDouble;
           If (ibsAux.FieldByName('PACK_VALUE').AsDouble>0) then
            frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value := Trunc((ibsAux.FieldByName('AMOUNT_INV').AsDouble-ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble)/ibsAux.FieldByName('PACK_VALUE').AsDouble)
           else
            frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value := 0;
           frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.Value := (ibsAux.FieldByName('AMOUNT_INV').AsDouble-ibsNumb.FieldByName('AMOUNT_NAKL').AsDouble)-ibsAux.FieldByName('PACK_VALUE').AsDouble*frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value;
           ibsLocalAux.SQL.Clear;
           ibsLocalAux.SQL.Add('select IB.ID');
           ibsLocalAux.SQL.Add('from INVOICE_BODY IB');
           ibsLocalAux.SQL.Add('where (IB.INVOICE_ID='+ibdsMainInvoiceID.AsString+') and (IB.ARTICUL_ID=:ARTICUL_ID) and (IB.CRC32_SET=:CRC32_SET)');
           ibsLocalAux.GenerateParamNames := True;
           ibsLocalAux.ParamByName('ARTICUL_ID').AsInt64 := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
           ibsLocalAux.ParamByName('CRC32_SET').AsInteger := ibsAux.FieldByName('CRC32_SET').AsInteger;
           ibsLocalAux.ExecQuery;
           InvoiceBodyID := ibsLocalAux.FieldByName('ID').AsInt64;
           ibsLocalAux.Close;
           ibsLocalAux.SQL.Clear;
           ibsLocalAux.SQL.Add('select cast(IBS.ARTICUL_ID as INTEGER) ARTICUL_ID, IBS.PACKS_AMOUNT, IBS.PACK_VALUE,');
           ibsLocalAux.SQL.Add('IBS.ITEMS_AMOUNT, IBS.PRICE, IBS.COMMENTS');
           ibsLocalAux.SQL.Add('from INVOICE_BODY_SETS IBS');
           ibsLocalAux.SQL.Add('where (IBS.INVOICE_BODY_ID=:ID)');
           ibsLocalAux.GenerateParamNames := True;
           ibsLocalAux.ParamByName('ID').AsInt64 := InvoiceBodyID;
           ibsLocalAux.ExecQuery;
           While NOT ibsLocalAux.Eof do
            Begin
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySet.Append;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetARTICUL_ID.Value := ibsLocalAux.FieldByName('ARTICUL_ID').AsInteger;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetPACKS_AMOUNT.Value := ibsLocalAux.FieldByName('PACKS_AMOUNT').AsInteger;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetPACK_VALUE.Value := ibsLocalAux.FieldByName('PACK_VALUE').AsDouble;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetITEMS_AMOUNT.Value := ibsLocalAux.FieldByName('ITEMS_AMOUNT').AsDouble;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetPRICE.Value := ibsLocalAux.FieldByName('PRICE').AsDouble;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySetCOMMENTS.Value := ibsLocalAux.FieldByName('COMMENTS').AsString;
             frmNaklOut.ibdsPrimaryTovarOutcomeBodySet.Post;
             ibsLocalAux.Next
            End;
           ibsLocalAux.Close
          End;
         ibsNumb.Close;
         ibsAux.Next
        End;
       ibsAux.Close;
       If (frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.State in [dsEdit, dsInsert]) then
        frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Post;
      End;
     frmNaklOut.Cloning := False;
     ibsLocalAux.Free
    End
  End;
 frmNaklOut.Show
end;

procedure TfrmInvoice.N12Click(Sender: TObject);
begin
 If (ibdsMainInvoicesList.RecordCount>0) then
  Begin
   If (frmMain.FindComponent('frmFactura')=nil) then
    frmFactura := TfrmFactura.Create(frmMain);
   If (Black) and (ibdsMainInvoicesListDOUBLE_SOSTAV.AsInteger=1) and
      (ibdsMainInvoicesListBLACK.AsInteger=1) then
    frmFactura.IDParent := ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.AsLargeInt
   else
    frmFactura.IDParent := ibdsMainInvoicesListID.AsLargeInt;
   frmFactura.ibdsMainFacturaList.Close;
   frmFactura.GenerateSelectMainFacturaList;
   frmFactura.ibdsMainFacturaList.Open;
   frmFactura.Show
  End
end;

procedure TfrmInvoice.sbFilterInvoicesListClick(Sender: TObject);
 var BookMark : String;
begin
 ibdsFilterPersons.Active := sbFilterInvoicesList.Down;
 ibdsFilterTypes.Active := sbFilterInvoicesList.Down;
 ibdsFilterContractorTypes.Active := sbFilterInvoicesList.Down;
 ibdsFilterArticuls.Active := sbFilterInvoicesList.Down;
 pnlFilter.Visible := sbFilterInvoicesList.Down;
 pnlText.Visible := sbFilterInvoicesList.Down;
 BookMark := ibdsMainInvoicesList.Bookmark;
 Cursor := crHourGlass;
 ibdsMainInvoicesList.Close;
 GenerateSelectMainInvoicesList;
 ibdsMainInvoicesList.Open;
 try
  ibdsMainInvoicesList.Bookmark := BookMark
 except
 end;
 Cursor := crDefault;
end;

procedure TfrmInvoice.SpeedButton5Click(Sender: TObject);
begin
 SpeedButton5.Visible := Not SpeedButton5.Visible;
 SpeedButton3.Visible := Not SpeedButton3.Visible;
 pnlText.Visible := False;
 lblFilter.AutoSize := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 lblFilter.AutoSize := True;
 pnlText.Visible := True
end;

procedure TfrmInvoice.ibdsFilterTypesBeforeOpen(DataSet: TDataSet);
begin
 ibdsFilterTypes.ParamByName('IN_OUT').Value := In_Out;
 ibdsFilterTypes.ParamByName('PERSON_ID').Value := PersonID
end;

procedure TfrmInvoice.cbMenegerClick(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

procedure TfrmInvoice.sbReFilterClick(Sender: TObject);
begin
 sbFilterInvoicesList.Click;
 sbReFilter.Visible := False
end;

procedure TfrmInvoice.ibdsFilterPersonsAfterOpen(DataSet: TDataSet);
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
 deDateStartPaidPeriod.Date := DateStartPaidPeriod;
 deDateStopPaidPeriod.Date := DateStopPaidPeriod;
 sbReFilter.Visible := False
end;

procedure TfrmInvoice.ibdsFilterPersonsBeforeClose(DataSet: TDataSet);
begin
 IType := edType.Text;
 IContractorType := edContractorType.Text;
 Contractor := edContractor.Text;
 Meneger := edMeneger.Text;
 ArticulName := edArticul.Text;
 DateStart := deDateStart.Date;
 DateStop := deDateStop.Date;
 DateStartPaidPeriod := deDateStartPaidPeriod.Date;
 DateStopPaidPeriod := deDateStopPaidPeriod.Date
end;

procedure TfrmInvoice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  ibsAux.SQL.Clear;
  ibsAux.SQL.Add('delete from FILTERS where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
  ibsAux.ExecQuery;
  If (sbFilterInvoicesList.Down) then
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
    If (cbDispatched.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbDispatched.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := null;
      ibsAux.ExecQuery
     End;
    If (cbPaidDispatched.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbPaidDispatched.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := IntToStr(cbbPaidDispatchedSign.ItemIndex);
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
    If (cbPaidPeriod.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbPaidPeriod.Name+'/Start';
      ibsAux.ParamByName('FILTER_VALUE').Value := deDateStartPaidPeriod.Text;
      ibsAux.ExecQuery;
      ibsAux.ParamByName('FILTER_NAME').Value := cbPaidPeriod.Name+'/Stop';
      ibsAux.ParamByName('FILTER_VALUE').Value := deDateStopPaidPeriod.Text;
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
    ibsAux.ParamByName('FILTER_NAME').Value := rgSostav.Name;
    ibsAux.ParamByName('FILTER_VALUE').Value := rgSostav.ItemIndex;
    ibsAux.ExecQuery;
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
      If (cbDoubleSostav.Checked) then
       Begin
        ibsAux.ParamByName('FILTER_NAME').Value := cbDoubleSostav.Name;
        ibsAux.ParamByName('FILTER_VALUE').Value := null;
        ibsAux.ExecQuery
       End
     End;
    If (cbComments.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbComments.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edComments.Text;
      ibsAux.ExecQuery
     End
   End
  except
  end;
 inherited
end;

procedure TfrmInvoice.sbPrintInvoiceClick(Sender: TObject);
begin
 ibdsReportBody.Open;
 ibdsReportHeader.Open;
 sbPrintInvoice.Tag := In_Out;
 frVariables.Clear;
 frVariables['DisplayFormat'] := ibdsMainInvoiceBodyPRICE.DisplayFormat;
 frVariables['CurrencyRoundPower'] := CurrencyRoundPower;
 sbPrintClick((Sender as TSpeedButton), ibsAux, ibdsReportBody);
end;

procedure TfrmInvoice.ibdsReportBodyCalcFields(DataSet: TDataSet);
begin
 ibdsReportBodyNSP_AMOUNT.Value := Round(ibdsReportBodyPRICE.AsFloat*ibdsReportHeaderINCLUDE_NSP.AsInteger*ibdsReportBodyNSP.AsFloat/(100+ibdsReportHeaderINCLUDE_NSP.AsInteger*ibdsReportBodyNSP.Value)*CurrencyRoundPower)/CurrencyRoundPower;
 ibdsReportBodyNDS_AMOUNT.Value := Round((ibdsReportBodyPRICE.AsFloat-ibdsReportBodyNSP_AMOUNT.AsFloat)*ibdsReportBodyNDS.AsFloat/(100+ibdsReportBodyNDS.Value)*CurrencyRoundPower)/CurrencyRoundPower;
 ibdsReportBodyPRICE_WO_NDS.Value := ibdsReportBodyPRICE.AsFloat-ibdsReportBodyNDS_AMOUNT.Value-ibdsReportBodyNSP_AMOUNT.Value
end;

procedure TfrmInvoice.ibdsReportHeaderCalcFields(DataSet: TDataSet);
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
 ibdsReportHeaderAMOUNT_FRAC_PROP.Value := ibdsReportHeaderAMOUNT_FRAC_PROP.Value+' '+AnsiLowerCase(ibdsReportHeaderNAME001.AsString)
{ ibdsReportHeaderAMOUNT_FRAC_PROP.Value := CurrencyToStr(Round(Frac(ibdsReportHeaderAMOUNT.AsFloat)*CurrencyRoundPower),
                                                    AnsiLowerCase(ibdsReportHeaderNAME001.AsString),
                                                    AnsiLowerCase(ibdsReportHeaderNAME001.AsString),
                                                    AnsiLowerCase(ibdsReportHeaderNAME001.AsString),
                                                    1)}
end;

procedure TfrmInvoice.ibdsMainInvoiceBLACKChange(Sender: TField);
begin
 If (Black) and (In_Out=1) then
  TuneUpReservAmount
end;

procedure TfrmInvoice.wwDBLookupCombo6KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F6) then
  Begin
   If (frmMain.FindComponent('frmKontrAgList')=nil) then
    frmKontrAgList := TfrmKontrAgList.Create(frmMain);
   frmKontrAgList.LookUpProcedure := SetContractor;
   If NOT (ibdsMainInvoiceCONTRACTOR_ID.IsNull) then
    frmKontrAgList.ibdsMainContractors.Locate('ID',ibdsMainInvoiceCONTRACTOR_ID.AsString,[]);
   frmKontrAgList.Show
  End
end;

procedure TfrmInvoice.N13Click(Sender: TObject);
begin
 If ((Sender as TMenuItem).Owner.FindComponent('frmGoodInfo')=nil) then
  frmGoodInfo := TfrmGoodInfo.Create((Sender as TMenuItem).Owner);
 frmGoodInfo.ibdsGoods.Close;
 frmGoodInfo.ibdsReservation.Close;
 frmGoodInfo.ibdsGoods.DataSource := (dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource;
 frmGoodInfo.ibdsReservation.DataSource := (dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource;
 frmGoodInfo.ibdsGoods.Open;
 frmGoodInfo.ibdsReservation.Open;
 frmGoodInfo.Show
end;

procedure TfrmInvoice.edContractorChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbContractor.Checked)
end;

procedure TfrmInvoice.cbBlackClick(Sender: TObject);
begin
 sbReFilter.Visible := True;
 cbDoubleSostav.Enabled := cbBlack.Checked or cbWhite.Checked;
 rgSostav.Enabled := NOT cbDoubleSostav.Enabled;
 pnlFilter.Refresh;
 If (Sender as TwwCheckBox).Checked then
  If (Sender=cbBlack) then
   cbWhite.Checked := False
  else
   cbBlack.Checked := False
end;

procedure TfrmInvoice.cbOpenClick(Sender: TObject);
begin
 sbReFilter.Visible := True;
 If (Sender as TwwCheckBox).Checked then
  If (Sender=cbOpen) then
   cbClosed.Checked := False
  else
   cbOpen.Checked := False
end;

procedure TfrmInvoice.ibdsMainInvoiceINCLUDE_NSPChange(Sender: TField);
begin
 If (ibdsMainInvoiceBody.RecordCount>0) and NOT (ibdsMainInvoiceINCLUDE_NSP.IsNull) then
  If (MessageDlg('Пересчитать текущие цены?', mtConfirmation, [mbYes,mbNo],0)=mrYes) then
   Begin
    ibdsMainInvoiceBody.DisableControls;
    ibdsMainInvoiceBody.First;
    While NOT (ibdsMainInvoiceBody.Eof) do
     Begin
      ibdsMainInvoiceBody.Edit;
      If (ibdsMainInvoiceINCLUDE_NSP.AsInteger=1) then
       ibdsMainInvoiceBodyPRICE.Value :=
          Round(ibdsMainInvoiceBodyPRICE.Value*(1+ibdsMainInvoiceBodyNSP.AsFloat/100)*CurrencyRoundPower)/CurrencyRoundPower
      else
       ibdsMainInvoiceBodyPRICE.Value :=
          Round(ibdsMainInvoiceBodyPRICE.Value*100/(100+ibdsMainInvoiceBodyNSP.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
      ibdsMainInvoiceBody.Next
     End;
    If (ibdsMainInvoiceBody.State=dsEdit) then
     ibdsMainInvoiceBody.Post;
    ibdsMainInvoiceBody.EnableControls;
    GetTotalMany
   End
end;

procedure TfrmInvoice.edPrefixChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbPrefix.Checked)
end;

procedure TfrmInvoice.edNumberChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbNumber.Checked)
end;

procedure TfrmInvoice.edSuffixChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbSuffix.Checked)
end;

procedure TfrmInvoice.edAmountChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbAmount.Checked)
end;

procedure TfrmInvoice.N14Click(Sender: TObject);
 var S : String;
     k : Integer;
begin
 If ((Sender as TMenuItem).Owner.FindComponent('frmSostav')=nil) then
  frmSostav := TfrmSostav.Create((Sender as TMenuItem).Owner);
 frmSostav.ibdsGoods.Close;
 S := '';
 For k := 0 to Pred((PopupMenu7.PopupComponent as TwwDBGrid).SelectedList.Count) do
  Begin
   (PopupMenu7.PopupComponent as TwwDBGrid).DataSource.DataSet.GotoBookmark((PopupMenu7.PopupComponent as TwwDBGrid).SelectedList.Items[k]);
   S := S+', '+(PopupMenu7.PopupComponent as TwwDBGrid).DataSource.DataSet.FieldByName('ID').AsString;
  End;
 If (S<>'') then
  S := Copy(S,3,Length(S)-2);
 If (PopupMenu7.PopupComponent=dbgOutcomeDocs) then
  Begin
   frmSostav.ibdsGoods.SelectSQL[3] := 'from PRIMARY_TOVAR_OUTCOME_BODY PTIB, ARTICULS A,';
   frmSostav.ibdsGoods.SelectSQL[4] := 'PRIMARY_TOVAR_OUTCOME_HEADER PTIH, CURRENCY C';
   frmSostav.ibdsGoods.SelectSQL[5] := 'where (PTIB.PRIMARY_TOVAR_OUTCOME_HEADER_ID=PTIH.ID) and';
   If (Pos(',',S)<>0) then
    frmSostav.ibdsGoods.SelectSQL[7] := '(PTIH.ID in ('+S+'))'
   else
    If (S<>'') then
     frmSostav.ibdsGoods.SelectSQL[7] := '(PTIH.ID='+S+')'
    else
     frmSostav.ibdsGoods.SelectSQL[7] := '(PTIH.ID='+(PopupMenu7.PopupComponent as TwwDBGrid).DataSource.DataSet.FieldByName('ID').AsString+')'
  End
 else
  Begin
   frmSostav.ibdsGoods.SelectSQL[3] := 'from PRIMARY_TOVAR_INCOME_BODY PTIB, ARTICULS A,';
   frmSostav.ibdsGoods.SelectSQL[4] := 'PRIMARY_TOVAR_INCOME_HEADER PTIH, CURRENCY C';
   frmSostav.ibdsGoods.SelectSQL[5] := 'where (PTIB.PRIMARI_TOVAR_INCOME_HEADER_ID=PTIH.ID) and';
   If (Pos(',',S)<>0) then
    frmSostav.ibdsGoods.SelectSQL[7] := '(PTIH.ID in ('+S+'))'
   else
    If (S<>'') then
     frmSostav.ibdsGoods.SelectSQL[7] := '(PTIH.ID='+S+')'
    else
     frmSostav.ibdsGoods.SelectSQL[7] := '(PTIH.ID='+(PopupMenu7.PopupComponent as TwwDBGrid).DataSource.DataSet.FieldByName('ID').AsString+')'
  End;
 frmSostav.ibdsGoods.Open;
 frmSostav.Show
end;

procedure TfrmInvoice.N15Click(Sender: TObject);
 var BookMark : String;
begin
 If (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
  ibdsMainInvoice.Post;
 BookMark := ibdsMainInvoiceBody.Bookmark;
 ibdsMainInvoiceBody.DisableControls;
 ibdsMainInvoiceBody.First;
 While NOT (ibdsMainInvoiceBody.Eof) do
  Begin
{   If (ibdsMainInvoiceBodyITEM_TYPE.AsInteger<>1) then
    Begin}
     ibdsMainInvoiceBody.Edit;
     ibdsMainInvoiceBodyPRICE.Value :=
         Round(ibdsMainInvoiceBodyPRICE.Value*(1+ibdsMainInvoiceBodyPERCENT.AsFloat/100)*CurrencyRoundPower)/CurrencyRoundPower;
{    End;}
   ibdsMainInvoiceBody.Next
  End;
 ibdsMainInvoiceBody.Bookmark := BookMark;
 ibdsMainInvoiceBody.EnableControls;
 BookMark := ibdsInvoiceBodySet.Bookmark;
 ibdsInvoiceBodySet.DisableControls;
 ibdsInvoiceBodySet.First;
 While NOT (ibdsInvoiceBodySet.Eof) do
  Begin
   ibdsInvoiceBodySet.Edit;
   ibdsInvoiceBodySetPRICE.Value :=
       Round(ibdsInvoiceBodySetPRICE.Value*(1+ibdsMainInvoiceBody.Lookup('ID',ibdsInvoiceBodySetINVOICE_BODY_ID.Value,'PERCENT')/100)*CurrencyRoundPower)/CurrencyRoundPower;
   ibdsInvoiceBodySet.Next
  End;
 ibdsInvoiceBodySet.Bookmark := BookMark;
 ibdsInvoiceBodySet.EnableControls;
 tvAccountBody.ViewData.Collapse(True);
 StteChange('Invoice', True);
 GetTotalMany
end;

procedure TfrmInvoice.SpeedButton8Click(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainInvoicesList.Bookmark;
 ibdsMainInvoicesList.Close;
 ibdsMainInvoicesList.Open;
 try
  ibdsMainInvoicesList.Bookmark := BookMark
 except
 end
end;

procedure TfrmInvoice.dbgInvoicesListCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 Case (Sender as TComponent).Tag of
  1: Begin
      If ((Sender as TwwDBGrid).UseTFields) and (AFieldName='AMOUNT_FMT') then
       wwDBGridCalcTitleAttributes(Sender, AFieldName, 'AMOUNT', AFont, ABrush, ATitleAlignment, OrderByMainInvoicesList)
      else
       wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainInvoicesList)
     End;
  2: If (AFieldName<>'LAST_BUY_PRICE') then
      wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainInvoiceBody);
  3: Begin
      If (AFieldName='AMOUNT_FMT') then
       wwDBGridCalcTitleAttributes(Sender, AFieldName, 'AMOUNT', AFont, ABrush, ATitleAlignment, OrderByIncomeDocs)
      else
       wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByIncomeDocs)
     End;
  4: Begin
      If (AFieldName='AMOUNT_FMT') then
       wwDBGridCalcTitleAttributes(Sender, AFieldName, 'AMOUNT', AFont, ABrush, ATitleAlignment, OrderByOutcomeDocs)
      else
       wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByOutcomeDocs)
     End;
 end
end;

procedure TfrmInvoice.ibdsMainInvoiceAfterDelete(DataSet: TDataSet);
begin
 StteChange('Invoice', True)
end;

procedure TfrmInvoice.ibdsMainInvoicesListAfterDelete(DataSet: TDataSet);
begin
 StteChange('InvoicesList', True)
end;

procedure TfrmInvoice.ibdsIncomeDocsAfterDelete(DataSet: TDataSet);
begin
 StteChange('Docs', True)
end;

procedure TfrmInvoice.N01Click(Sender: TObject);
 var BookMark : String;
begin
 If NOT (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
  ibdsMainInvoice.Edit;
 ibdsMainInvoicePERCENT.Value := 0;
 ibdsMainInvoice.Post;
 BookMark := ibdsInvoiceBodySet.Bookmark;
 ibdsInvoiceBodySet.DisableControls;
 ibdsInvoiceBodySet.First;
 While NOT (ibdsInvoiceBodySet.Eof) do
  Begin
   ibdsInvoiceBodySet.Edit;
   ibdsInvoiceBodySetPRICE.Value :=
       Round(ibdsInvoiceBodySetPRICE.Value/(1+ibdsMainInvoiceBody.Lookup('ID',ibdsInvoiceBodySetINVOICE_BODY_ID.Value,'PERCENT')/100)*CurrencyRoundPower)/CurrencyRoundPower;
   ibdsInvoiceBodySet.Next
  End;
 ibdsInvoiceBodySet.Bookmark := BookMark;
 ibdsInvoiceBodySet.EnableControls;
 tvAccountBody.ViewData.Collapse(True);
 BookMark := ibdsMainInvoiceBody.Bookmark;
 ibdsMainInvoiceBody.DisableControls;
 ibdsMainInvoiceBody.First;
 While NOT (ibdsMainInvoiceBody.Eof) do
  Begin
   ibdsMainInvoiceBody.Edit;
//   If (ibdsMainInvoiceBodyITEM_TYPE.AsInteger<>1) then
    ibdsMainInvoiceBodyPRICE.Value :=
        Round(ibdsMainInvoiceBodyPRICE.Value/(1+ibdsMainInvoiceBodyPERCENT.AsFloat/100)*CurrencyRoundPower)/CurrencyRoundPower;
   ibdsMainInvoiceBodyPERCENT.Value := 0;
   ibdsMainInvoiceBody.Next
  End;
 ibdsMainInvoiceBody.Bookmark := BookMark;
 ibdsMainInvoiceBody.EnableControls;
 StteChange('Invoice', True);
 GetTotalMany
end;

procedure TfrmInvoice.pnlDetailsMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 const SC_DRAGMOVE = $F012;
begin
 ReleaseCapture;
 pnlDetails.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TfrmInvoice.sbCopyInvoicesListClick(Sender: TObject);
begin
 If (MessageDlg('Копировать текущий счет?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   sbAddInvoicesList.Click;
   frmChoiseCopy := TfrmChoiseCopy.Create((Sender as TComponent).Owner);
   frmChoiseCopy.ShowModal;
   ibdsInvoice_Setup.Locate('NAME',ibdsMainInvoiceSETUP_NAME.Value,[]);
   If (frmChoiseCopy.chbHeader.Checked) then
    Begin
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select IH.INVOICE_SETUP_ID, InvS.NAME SETUP_NAME,');
     ibsNumb.SQL.Add('InvS.NUMBER_FORMAT, InvS.NUMBER_RESTART_PERIOD,');
     ibsNumb.SQL.Add('InvS.PRICE_FORMULA, IH.CONTRACT_ID,');
     If (Black) then
      ibsNumb.SQL.Add('IH.DOUBLE_SOSTAV, IH.BLACK,');
     ibsNumb.SQL.Add('IH.SECURITY_LEVEL, IH.ENTERPRISE_ID,');
     ibsNumb.SQL.Add('E.NAME ENTERPRISE_NAME, IH.ENTERPRISE_ACCOUNT_ID,');
     ibsNumb.SQL.Add('B.NAME ENTERPRISE_BANK_NAME, EA.ACCOUNT ENTERPRISE_ACCOUNT,');
     ibsNumb.SQL.Add('IH.ENTERPRISE_STORE_ID, IH.CONTRACTOR_ID,');
     ibsNumb.SQL.Add('C.NAME CONTRACTOR_NAME, IH.CONTRACTOR_ACCOUNT_ID,');
     ibsNumb.SQL.Add('IH.CURRENCY_ID, CUR.NAME CURRENCY_NAME, CUR.DECIMALS_IN, CUR.DECIMALS_OUT, IH.CURRENCY_RATE,');
     ibsNumb.SQL.Add('IH.PERCENT, IH.VALID_DATE, IH.COMMENTS, IH.INCLUDE_NSP');
     ibsNumb.SQL.Add('from INVOICE_SETUP InvS, PERSONS P, ENTERPRISES E, CONTRACTORS C,');
     ibsNumb.SQL.Add('CURRENCY CUR, INVOICE_HEADER IH');
     ibsNumb.SQL.Add('left outer join ENTERPRISES_ACCOUNTS EA on (IH.ENTERPRISE_ACCOUNT_ID=EA.ID)');
     ibsNumb.SQL.Add('left outer join  BANKS B on (EA.BANK_ID=B.ID)');
     ibsNumb.SQL.Add('where (IH.ID='+ibdsMainInvoicesListID.AsString+') and (IH.INVOICE_SETUP_ID=InvS.ID) and');
     ibsNumb.SQL.Add('(IH.MASTER_ID=P.ID) and (IH.ENTERPRISE_ID=E.ID) and');
     ibsNumb.SQL.Add('(IH.CONTRACTOR_ID=C.ID) and (IH.CURRENCY_ID=CUR.ID)');
     ibsNumb.ExecQuery;
     ibdsMainInvoiceINVOICE_SETUP_ID.Value := ibsNumb.FieldByName('INVOICE_SETUP_ID').AsInt64;
     ibdsInvoice_Setup.Locate('ID',ibdsMainInvoiceINVOICE_SETUP_ID.AsString,[]);
     NumberPrefix := ibdsInvoice_SetupNUMBER_PREFIX.AsString;
     NumberSuffix := ibdsInvoice_SetupNUMBER_SUFFIX.AsString;
     ibdsMainInvoiceSETUP_NAME.AsVariant := ibsNumb.FieldByName('SETUP_NAME').AsVariant;
     ibdsMainInvoiceNUMBER_FORMAT.AsVariant := ibsNumb.FieldByName('NUMBER_FORMAT').AsVariant;
     ibdsMainInvoiceNUMBER_RESTART_PERIOD.AsVariant := ibsNumb.FieldByName('NUMBER_RESTART_PERIOD').AsVariant;
     ibdsMainInvoicePRICE_FORMULA.AsVariant := ibsNumb.FieldByName('PRICE_FORMULA').AsVariant;
     If NOT (ibsNumb.FieldByName('CONTRACT_ID').IsNull) then
      ibdsMainInvoiceCONTRACT_ID.Value := ibsNumb.FieldByName('CONTRACT_ID').AsInt64;
     If (Black) then
      Begin
       ibdsMainInvoiceDOUBLE_SOSTAV.AsVariant := ibsNumb.FieldByName('DOUBLE_SOSTAV').AsVariant;
       ibdsMainInvoiceBLACK.AsVariant := ibsNumb.FieldByName('BLACK').AsVariant
      End;
     ibdsMainInvoiceSECURITY_LEVEL.AsVariant := ibsNumb.FieldByName('SECURITY_LEVEL').AsVariant;
     ibdsMainInvoiceENTERPRISE_ID.Value := ibsNumb.FieldByName('ENTERPRISE_ID').AsInt64;
     ibdsMainInvoiceENTERPRISE_NAME.AsVariant := ibsNumb.FieldByName('ENTERPRISE_NAME').AsVariant;
     If NOT (ibsNumb.FieldByName('ENTERPRISE_ACCOUNT_ID').IsNull) then
      ibdsMainInvoiceENTERPRISE_ACCOUNT_ID.Value := ibsNumb.FieldByName('ENTERPRISE_ACCOUNT_ID').AsInt64;
     If NOT (ibsNumb.FieldByName('ENTERPRISE_STORE_ID').IsNull) then
      ibdsMainInvoiceENTERPRISE_STORE_ID.Value := ibsNumb.FieldByName('ENTERPRISE_STORE_ID').AsInt64;
     ibdsMainInvoiceCONTRACTOR_ID.Value := ibsNumb.FieldByName('CONTRACTOR_ID').AsInt64;
     ibdsMainInvoiceCONTRACTOR_NAME.AsVariant := ibsNumb.FieldByName('CONTRACTOR_NAME').AsVariant;
     If NOT (ibsNumb.FieldByName('CONTRACTOR_ACCOUNT_ID').IsNull) then
      ibdsMainInvoiceCONTRACTOR_ACCOUNT_ID.Value := ibsNumb.FieldByName('CONTRACTOR_ACCOUNT_ID').AsInt64;
     ibdsMainInvoiceCURRENCY_ID.Value := ibsNumb.FieldByName('CURRENCY_ID').AsInt64;
     ibdsMainInvoiceCURRENCY_NAME.AsVariant := ibsNumb.FieldByName('CURRENCY_NAME').AsVariant;
     ibdsMainInvoiceCURRENCY_RATE.AsVariant := ibsNumb.FieldByName('CURRENCY_RATE').AsVariant;
     ibdsMainInvoicePERCENT.AsVariant := ibsNumb.FieldByName('PERCENT').AsVariant;
     ibdsMainInvoiceVALID_DATE.AsVariant := ibsNumb.FieldByName('VALID_DATE').AsVariant;
     ibdsMainInvoiceDECIMALS_IN.AsVariant := ibsNumb.FieldByName('DECIMALS_IN').AsVariant;
     ibdsMainInvoiceDECIMALS_OUT.AsVariant := ibsNumb.FieldByName('DECIMALS_OUT').AsVariant;
     ibdsMainInvoiceCOMMENTS.AsVariant := ibsNumb.FieldByName('COMMENTS').AsVariant;
     ibdsMainInvoiceINCLUDE_NSP.AsVariant := ibsNumb.FieldByName('INCLUDE_NSP').AsVariant;
     ibsNumb.Close;
     ibdsCurrency.Locate('ID',ibdsMainInvoiceCURRENCY_ID.AsString,[]);
     SetCurrencyFmt;
     ibdsMainInvoice.Post;
     ibdsMainInvoice.Edit
    End;
   If (frmChoiseCopy.chbBody.Checked) then
    Begin
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select IB.ARTICUL_ID, A.NAME ARTICUL_NAME, A.UNITS,');
     ibsNumb.SQL.Add('IB.MADE_IN, IB.PACKS_AMOUNT, IB.PACK_VALUE, IB.ITEMS_AMOUNT,');
     ibsNumb.SQL.Add('IB.PRICE_REFERENCE, IB.PERCENT, IB.PRICE, IB.NDS, IB.NSP');
     ibsNumb.SQL.Add('from INVOICE_BODY IB, ARTICULS A');
     ibsNumb.SQL.Add('where (IB.INVOICE_ID='+ibdsMainInvoicesListID.AsString+') and (IB.ARTICUL_ID=A.ID)');
     ibsNumb.ExecQuery;
     While NOT (ibsNumb.Eof) do
      Begin
       ibdsMainInvoiceBody.Append;
       ibdsMainInvoiceBodyARTICUL_ID.Value := ibsNumb.FieldByName('ARTICUL_ID').AsInt64;
       ibdsMainInvoiceBodyARTICUL_NAME.AsVariant := ibsNumb.FieldByName('ARTICUL_NAME').AsVariant;
       ibdsMainInvoiceBodyUNITS.AsVariant := ibsNumb.FieldByName('UNITS').AsVariant;
       ibdsMainInvoiceBodyMADE_IN.AsVariant := ibsNumb.FieldByName('MADE_IN').AsVariant;
       ibdsMainInvoiceBodyPACKS_AMOUNT.AsVariant := ibsNumb.FieldByName('PACKS_AMOUNT').AsVariant;
       ibdsMainInvoiceBodyPACK_VALUE.AsVariant := ibsNumb.FieldByName('PACK_VALUE').AsVariant;
       ibdsMainInvoiceBodyITEMS_AMOUNT.AsVariant := ibsNumb.FieldByName('ITEMS_AMOUNT').AsVariant;
       If (In_Out=1) then
        Begin
         ibdsMainInvoiceBodyPRICE_REFERENCE.AsVariant := ibsNumb.FieldByName('PRICE_REFERENCE').AsVariant;
         ibdsMainInvoiceBodyPERCENT.AsVariant := ibsNumb.FieldByName('PERCENT').AsVariant
        End;
       ibdsMainInvoiceBodyPRICE.AsVariant := ibsNumb.FieldByName('PRICE').AsVariant;
       ibdsMainInvoiceBodyNDS.AsVariant := ibsNumb.FieldByName('NDS').AsVariant;
       ibdsMainInvoiceBodyNSP.AsVariant := ibsNumb.FieldByName('NSP').AsVariant;
       ibsNumb.Next
      End;
     If (ibdsMainInvoiceBody.State in [dsInsert,dsEdit]) then
      Begin
       ibdsMainInvoiceBody.Post;
       ibdsMainInvoiceBody.Edit
      End;
     ibsNumb.Close
    End;
   frmChoiseCopy.Free
  End
end;

procedure TfrmInvoice.N16Click(Sender: TObject);
 var ID, OPPOSITE_SOSTAV_ID : Int64;
begin
 If (MessageDlg('Переформировать состав?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   ID := ibdsMainInvoiceOPPOSITE_SOSTAV_ID.Value;
   OPPOSITE_SOSTAV_ID := ibdsMainInvoiceID.Value;
   ibdsMainInvoice.DisableControls;
   ibdsMainInvoice.Close;
   ibdsMainInvoice.ParamByName('ID').AsInt64 := ID;
   ibdsMainInvoice.Open;
   ibdsMainInvoice.EnableControls;
   ibdsMainInvoice.Edit;
   frmChoiseCopy := TfrmChoiseCopy.Create((Sender as TComponent).Owner);
   frmChoiseCopy.chbHeader.OnClick := Nil;
   frmChoiseCopy.chbBody.Enabled := True;
   frmChoiseCopy.ShowModal;
   If (frmChoiseCopy.chbBody.Checked) then
    While (ibdsMainInvoiceBody.RecordCount>0) do
     ibdsMainInvoiceBody.Delete;
   If (frmChoiseCopy.chbHeader.Checked) then
    Begin
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select IH.INVOICE_SETUP_ID, InvS.NAME SETUP_NAME,');
     ibsNumb.SQL.Add('InvS.NUMBER_FORMAT, InvS.NUMBER_RESTART_PERIOD,');
     ibsNumb.SQL.Add('InvS.PRICE_FORMULA,');
     ibsNumb.SQL.Add('IH.MASTER_ID, P.SURNAME||'' ''||P.NAME||'' ''||P.SECOND_NAME MASTER_NAME,');
     ibsNumb.SQL.Add('IH.SECURITY_LEVEL, IH.INVOICE_DATE, IH.ENTERPRISE_ID,');
     ibsNumb.SQL.Add('E.NAME ENTERPRISE_NAME, IH.ENTERPRISE_ACCOUNT_ID,');
     ibsNumb.SQL.Add('B.NAME ENTERPRISE_BANK_NAME, EA.ACCOUNT ENTERPRISE_ACCOUNT,');
     ibsNumb.SQL.Add('IH.ENTERPRISE_STORE_ID, IH.CONTRACTOR_ID,');
     ibsNumb.SQL.Add('C.NAME CONTRACTOR_NAME, IH.CONTRACTOR_ACCOUNT_ID,');
     ibsNumb.SQL.Add('IH.CURRENCY_ID, CUR.NAME CURRENCY_NAME, IH.CURRENCY_RATE,');
     ibsNumb.SQL.Add('IH.PERCENT, IH.VALID_DATE');
     ibsNumb.SQL.Add('from INVOICE_SETUP InvS, PERSONS P, ENTERPRISES E, CONTRACTORS C,');
     ibsNumb.SQL.Add('CURRENCY CUR, INVOICE_HEADER IH');
     ibsNumb.SQL.Add('left outer join ENTERPRISES_ACCOUNTS EA on (IH.ENTERPRISE_ACCOUNT_ID=EA.ID)');
     ibsNumb.SQL.Add('left outer join  BANKS B on (EA.BANK_ID=B.ID)');
     ibsNumb.SQL.Add('where (IH.ID='+IntToStr(OPPOSITE_SOSTAV_ID)+') and (IH.INVOICE_SETUP_ID=InvS.ID) and');
     ibsNumb.SQL.Add('(IH.MASTER_ID=P.ID) and (IH.ENTERPRISE_ID=E.ID) and');
     ibsNumb.SQL.Add('(IH.CONTRACTOR_ID=C.ID) and (IH.CURRENCY_ID=CUR.ID)');
     ibsNumb.ExecQuery;
     ibdsMainInvoiceINVOICE_SETUP_ID.Value := ibsNumb.FieldByName('INVOICE_SETUP_ID').AsInt64;
     ibdsMainInvoiceSETUP_NAME.AsVariant := ibsNumb.FieldByName('SETUP_NAME').AsVariant;
     ibdsInvoice_Setup.Locate('NAME',ibdsMainInvoiceSETUP_NAME.Value,[]);
     ibdsMainInvoiceNUMBER_FORMAT.AsVariant := ibsNumb.FieldByName('NUMBER_FORMAT').AsVariant;
     ibdsMainInvoiceNUMBER_RESTART_PERIOD.AsVariant := ibsNumb.FieldByName('NUMBER_RESTART_PERIOD').AsVariant;
     ibdsMainInvoicePRICE_FORMULA.AsVariant := ibsNumb.FieldByName('PRICE_FORMULA').AsVariant;
     ibdsMainInvoiceSECURITY_LEVEL.AsVariant := ibsNumb.FieldByName('SECURITY_LEVEL').AsVariant;
     ibdsMainInvoiceENTERPRISE_ID.Value := ibsNumb.FieldByName('ENTERPRISE_ID').AsInt64;
     ibdsMainInvoiceENTERPRISE_NAME.AsVariant := ibsNumb.FieldByName('ENTERPRISE_NAME').AsVariant;
     If NOT (ibsNumb.FieldByName('ENTERPRISE_ACCOUNT_ID').IsNull) then
      ibdsMainInvoiceENTERPRISE_ACCOUNT_ID.Value := ibsNumb.FieldByName('ENTERPRISE_ACCOUNT_ID').AsInt64;
     If (ibsNumb.FieldByName('ENTERPRISE_STORE_ID').AsString<>'') then
      ibdsMainInvoiceENTERPRISE_STORE_ID.Value := ibsNumb.FieldByName('ENTERPRISE_STORE_ID').AsInt64;
     ibdsMainInvoiceCONTRACTOR_ID.Value := ibsNumb.FieldByName('CONTRACTOR_ID').AsInt64;
     ibdsMainInvoiceCONTRACTOR_NAME.AsVariant := ibsNumb.FieldByName('CONTRACTOR_NAME').AsVariant;
     If (ibsNumb.FieldByName('CONTRACTOR_ACCOUNT_ID').AsString<>'') then
      ibdsMainInvoiceCONTRACTOR_ACCOUNT_ID.Value := ibsNumb.FieldByName('CONTRACTOR_ACCOUNT_ID').AsInt64;
     ibdsMainInvoiceCURRENCY_ID.Value := ibsNumb.FieldByName('CURRENCY_ID').AsInt64;
     ibdsMainInvoiceCURRENCY_NAME.AsVariant := ibsNumb.FieldByName('CURRENCY_NAME').AsVariant;
     ibdsMainInvoiceCURRENCY_RATE.AsVariant := ibsNumb.FieldByName('CURRENCY_RATE').AsVariant;
     ibdsMainInvoicePERCENT.AsVariant := ibsNumb.FieldByName('PERCENT').AsVariant;
     ibdsMainInvoiceVALID_DATE.AsVariant := ibsNumb.FieldByName('VALID_DATE').AsVariant;
     ibsNumb.Close;
     ibdsCurrency.Locate('ID',ibdsMainInvoiceCURRENCY_ID.AsString,[]);
     ibdsMainInvoiceDECIMALS_IN.Value := ibdsCurrencyDECIMALS_IN.Value;
     ibdsMainInvoiceDECIMALS_OUT.Value := ibdsCurrencyDECIMALS_OUT.Value;
     SetCurrencyFmt;
     ibdsMainInvoice.Post;
     ibdsMainInvoice.Edit
    End;
   If (frmChoiseCopy.chbBody.Checked) then
    Begin
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select IB.ARTICUL_ID, A.NAME ARTICUL_NAME, A.UNITS,');
     ibsNumb.SQL.Add('IB.MADE_IN, IB.PACKS_AMOUNT, IB.PACK_VALUE, IB.ITEMS_AMOUNT,');
     ibsNumb.SQL.Add('IB.PRICE_REFERENCE, IB.PERCENT, IB.PRICE, IB.NDS, IB.NSP');
     ibsNumb.SQL.Add('from INVOICE_BODY IB, ARTICULS A');
     ibsNumb.SQL.Add('where (IB.INVOICE_ID='+IntToStr(OPPOSITE_SOSTAV_ID)+') and (IB.ARTICUL_ID=A.ID)');
     ibsNumb.ExecQuery;
     While NOT (ibsNumb.Eof) do
      Begin
       ibdsMainInvoiceBody.Append;
       ibdsMainInvoiceBodyARTICUL_ID.Value := ibsNumb.FieldByName('ARTICUL_ID').AsInt64;
       ibdsMainInvoiceBodyARTICUL_NAME.AsVariant := ibsNumb.FieldByName('ARTICUL_NAME').AsVariant;
       ibdsMainInvoiceBodyUNITS.AsVariant := ibsNumb.FieldByName('UNITS').AsVariant;
       ibdsMainInvoiceBodyMADE_IN.AsVariant := ibsNumb.FieldByName('MADE_IN').AsVariant;
       ibdsMainInvoiceBodyPACKS_AMOUNT.AsVariant := ibsNumb.FieldByName('PACKS_AMOUNT').AsVariant;
       ibdsMainInvoiceBodyPACK_VALUE.AsVariant := ibsNumb.FieldByName('PACK_VALUE').AsVariant;
       ibdsMainInvoiceBodyITEMS_AMOUNT.AsVariant := ibsNumb.FieldByName('ITEMS_AMOUNT').AsVariant;
       If (In_Out=1) then
        Begin
         ibdsMainInvoiceBodyPRICE_REFERENCE.AsVariant := ibsNumb.FieldByName('PRICE_REFERENCE').AsVariant;
         ibdsMainInvoiceBodyPERCENT.AsVariant := ibsNumb.FieldByName('PERCENT').AsVariant
        End;
       ibdsMainInvoiceBodyPRICE.AsVariant := ibsNumb.FieldByName('PRICE').AsVariant;
       ibdsMainInvoiceBodyNDS.AsVariant := ibsNumb.FieldByName('NDS').AsVariant;
       ibdsMainInvoiceBodyNSP.AsVariant := ibsNumb.FieldByName('NSP').AsVariant;
       ibsNumb.Next
      End;
     If (ibdsMainInvoiceBody.State in [dsInsert,dsEdit]) then
      Begin
       ibdsMainInvoiceBody.Post;
       ibdsMainInvoiceBody.Edit
      End;
     ibsNumb.Close
    End;
   frmChoiseCopy.Free
  End
end;

procedure TfrmInvoice.dbgInvoicesListUpdateFooter(Sender: TObject);
 var CurrencyFrmt : String;
begin
 If (dgShowFooter in dbgInvoicesList.Options) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select SUM(IH.AMOUNT) AMOUNT, SUM(IH.SALDO_MANY) SALDO_MANY, SUM(IH.SALDO_GOODS) SALDO_GOODS, C.SYMBOL, C.DECIMALS_IN, C.DECIMALS_OUT');
   ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[6]);
   ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[7]);
   ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[8]);
   ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[9]);
   ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[10]);
   ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[11]);
   ibsAux.SQL.Add('group by C.SYMBOL, C.DECIMALS_IN, C.DECIMALS_OUT');
   ibsAux.GenerateParamNames := True;
   ibsAux.ParamByName('IN_OUT').Value := In_Out;
   ibsAux.ParamByName('PERSON_ID').Value := PersonID;
   dbgInvoicesList.ColumnByName('AMOUNT_FMT').FooterValue := '';
   dbgInvoicesList.ColumnByName('SALDO_MANY').FooterValue := '';
   dbgInvoicesList.ColumnByName('SALDO_GOODS').FooterValue := '';
   ibsAux.ExecQuery;
   While NOT (ibsAux.Eof) do
    Begin
     If (In_Out=1) then
      CurrencyFrmt := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_OUT').AsInteger)
     else
      CurrencyFrmt := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_IN').AsInteger);
     CurrencyFrmt := CurrencyFrmt+ibsAux.FieldByName('SYMBOL').AsString;
     dbgInvoicesList.ColumnByName('AMOUNT_FMT').FooterValue := dbgInvoicesList.ColumnByName('AMOUNT_FMT').FooterValue+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('AMOUNT').AsDouble)+#13#10;
     If (In_Out=1) then
      Begin
       dbgInvoicesList.ColumnByName('SALDO_MANY').FooterValue := dbgInvoicesList.ColumnByName('SALDO_MANY').FooterValue+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('SALDO_MANY').AsDouble)+#13#10;
       dbgInvoicesList.ColumnByName('SALDO_GOODS').FooterValue := dbgInvoicesList.ColumnByName('SALDO_GOODS').FooterValue+FormatFloat(CurrencyFrmt,-ibsAux.FieldByName('SALDO_GOODS').AsDouble)+#13#10
      End
     else
      Begin
       dbgInvoicesList.ColumnByName('SALDO_MANY').FooterValue := dbgInvoicesList.ColumnByName('SALDO_MANY').FooterValue+FormatFloat(CurrencyFrmt,-ibsAux.FieldByName('SALDO_MANY').AsDouble)+#13#10;
       dbgInvoicesList.ColumnByName('SALDO_GOODS').FooterValue := dbgInvoicesList.ColumnByName('SALDO_GOODS').FooterValue+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('SALDO_GOODS').AsDouble)+#13#10
      End;
     ibsAux.Next
    End;
   dbgInvoicesList.ColumnByName('AMOUNT_FMT').FooterValue := Copy(dbgInvoicesList.ColumnByName('AMOUNT_FMT').FooterValue,1,Length(dbgInvoicesList.ColumnByName('AMOUNT_FMT').FooterValue)-2);
   dbgInvoicesList.ColumnByName('SALDO_MANY').FooterValue := Copy(dbgInvoicesList.ColumnByName('SALDO_MANY').FooterValue,1,Length(dbgInvoicesList.ColumnByName('SALDO_MANY').FooterValue)-2);
   dbgInvoicesList.ColumnByName('SALDO_GOODS').FooterValue := Copy(dbgInvoicesList.ColumnByName('SALDO_GOODS').FooterValue,1,Length(dbgInvoicesList.ColumnByName('SALDO_GOODS').FooterValue)-2);
   dbgInvoicesList.OnUpdateFooter := Nil;
   dbgInvoicesList.FooterHeight := 22*ibsAux.RecordCount;
   ibsAux.Close;
   dbgInvoicesList.OnUpdateFooter := dbgInvoicesListUpdateFooter
  End
end;

procedure TfrmInvoice.dbgInvoicesListIButtonClick(Sender: TObject);
begin
 If (dbgInvoicesListIButton.Down) then
  Begin
   dbgInvoicesList.Options := dbgInvoicesList.Options+[dgShowFooter];
   dbgInvoicesListUpdateFooter(dbgInvoicesList)
  End
 else
  dbgInvoicesList.Options := dbgInvoicesList.Options-[dgShowFooter]
end;

procedure TfrmInvoice.fcLabel1Click(Sender: TObject);
begin
 If (MessageDlg('Вы действительно хотите закрыть оба состава?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   If (BalWhite<>0) or (BalBlack<>0) then
    If (MessageDlg('Баланс первого состава: '+FloatToStr(BalWhite)+#13#10+'Баланс первого состава: '+FloatToStr(BalBlack)+#13#10+'Закрыть оба состава?',mtWarning,[mbOK,mbCancel],0)=mrCancel) then
     Exit;
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('update INVOICE_HEADER IH set IH.CLOSED=1 where (IH.ID in ('+ibdsMainInvoicesListID.AsString);
   If (ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.IsNull) then
    ibsAux.SQL[0] := ibsAux.SQL[0]+'))'
   else
    ibsAux.SQL[0] := ibsAux.SQL[0]+', '+ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.AsString+'))';
    ibdsMainInvoicesList.DisableControls;
    MainInvoicesListBookMark := ibdsMainInvoicesList.Bookmark;
    ibdsMainInvoicesList.Prior;
    MainInvoicesListPriorBookMark := ibdsMainInvoicesList.Bookmark;
    try
     ibsAux.ExecQuery;
     trMain.CommitRetaining;
     ibdsMainInvoicesList.Close;
     ibdsMainInvoicesList.Open
    except
     trMain.RollbackRetaining;
     MessageDlg('Ошибка сохранения.', mtError, [mbOK],0)
    end;
    try
     ibdsMainInvoicesList.Bookmark := MainInvoicesListBookMark;
     If (ibdsMainInvoicesList.Eof) then
      ibdsMainInvoicesList.Bookmark := MainInvoicesListPriorBookMark
    finally
     ibdsMainInvoicesList.EnableControls;
    end;
    ibdsMainInvoicesListAfterScroll(ibdsMainInvoicesList)
  End
end;

procedure TfrmInvoice.edCommentsChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbComments.Checked)
end;

procedure TfrmInvoice.ibdsMainInvoiceBeforeDelete(DataSet: TDataSet);
begin
 If (ibdsMainInvoiceDELETE_RIGHT.AsInteger=0) or (ibdsMainInvoiceCLOSED.AsInteger=1)then
  Abort
end;

procedure TfrmInvoice.SetReadOnly;
 var ki : Integer;
begin
 For ki := 0 to Pred(ibdsMainInvoice.FieldCount) do
  ibdsMainInvoice.Fields[ki].ReadOnly :=
                    NOT((ibdsMainInvoice.State in [dsInsert]) or
                        (ibdsMainInvoiceNUMBER_PREFIX.AsString='НОВЫЙ')) and
                    (((ibdsMainInvoice.Fields[ki]<>ibdsMainInvoiceCLOSED) and
                      ((ibdsMainInvoiceUPDATE_RIGHT.AsInteger=0) or
                       (ibdsMainInvoiceCLOSED.AsInteger=1))) or
                     ((ibdsMainInvoice.Fields[ki]=ibdsMainInvoiceCLOSED) and
                      (ibdsMainInvoiceCLOSE_RIGHT.AsInteger=0)));
 tvAccountBody.OptionsData.Editing := ((ibdsMainInvoice.State in [dsInsert]) or
                                       (ibdsMainInvoiceNUMBER_PREFIX.AsString='НОВЫЙ')) or
                                   NOT((ibdsMainInvoiceUPDATE_RIGHT.AsInteger=0) or
                                       (ibdsMainInvoiceCLOSED.AsInteger=1));
 tvAccountBody.OptionsData.Inserting := tvAccountBody.OptionsData.Editing;
 tvAccountBody.OptionsData.Appending := tvAccountBody.OptionsData.Editing;
 tvAccountBody.OptionsData.Deleting := tvAccountBody.OptionsData.Editing;
 tvSets.OptionsData := tvAccountBody.OptionsData
end;

procedure TfrmInvoice.ibdsIncomeDocsBeforeOpen(DataSet: TDataSet);
begin
 (DataSet as TIBDataSet).ParamByName('PERSON_ID').Value := PersonID;
 (DataSet as TIBDataSet).ParamByName('PARENT_TYPE').Value := In_Out;
 (DataSet as TIBDataSet).ParamByName('PAYMENT_PARENT_TYPE').Value := 5-In_Out
end;

procedure TfrmInvoice.sbPrintInvoicesListClick(Sender: TObject);
 var Amount, Saldo_Many, Saldo_Goods, CurrencyFrmt : String;
begin
 sbPrintInvoicesList.Tag := In_Out;
 frVariables.Clear;
 frVariables['Фильтр'] := lblFilter.Caption;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select SUM(IH.AMOUNT) AMOUNT, SUM(IH.SALDO_MANY) SALDO_MANY, SUM(IH.SALDO_GOODS) SALDO_GOODS, C.SYMBOL, C.DECIMALS_IN, C.DECIMALS_OUT');
 ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[6]);
 ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[7]);
 ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[8]);
 ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[9]);
 ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[10]);
 ibsAux.SQL.Add(ibdsMainInvoicesList.SelectSQL[11]);
 ibsAux.SQL.Add(GetWhereMainInvoicesList);
 ibsAux.SQL.Add('group by C.SYMBOL, C.DECIMALS_IN, C.DECIMALS_OUT');
 ibsAux.GenerateParamNames := True;
 ibsAux.ParamByName('IN_OUT').Value := In_Out;
 ibsAux.ParamByName('PERSON_ID').Value := PersonID;
 ibsAux.ExecQuery;
 While NOT (ibsAux.Eof) do
  Begin
   If (In_Out=1) then
    CurrencyFrmt := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_OUT').AsInteger)
   else
    CurrencyFrmt := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_IN').AsInteger);
   CurrencyFrmt := CurrencyFrmt+ibsAux.FieldByName('SYMBOL').AsString;
   Amount := Amount+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('AMOUNT').AsDouble)+#13#10;
   If (In_Out=1) then
    Begin
     Saldo_Many := Saldo_Many+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('SALDO_MANY').AsDouble)+#13#10;
     Saldo_Goods := Saldo_Goods+FormatFloat(CurrencyFrmt,-ibsAux.FieldByName('SALDO_GOODS').AsDouble)+#13#10
    End
   else
    Begin
     Saldo_Many := Saldo_Many+FormatFloat(CurrencyFrmt,-ibsAux.FieldByName('SALDO_MANY').AsDouble)+#13#10;
     Saldo_Goods := Saldo_Goods+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('SALDO_GOODS').AsDouble)+#13#10
    End;
   ibsAux.Next
  End;
 Amount := Copy(Amount,1,Length(Amount)-2);
 Saldo_Many := Copy(Saldo_Many,1,Length(Saldo_Many)-2);
 Saldo_Goods := Copy(Saldo_Goods,1,Length(Saldo_Goods)-2);
 ibsAux.Close;
 frVariables['Итого выписано'] := Amount;
 frVariables['Итого сальдо по деньгам'] := Saldo_Many;
 frVariables['Итого сальдо по товару'] := Saldo_Goods;
 sbPrintClick((Sender as TSpeedButton), ibsAux, ibdsMainInvoicesList);
end;

procedure TfrmInvoice.sbDeleteInvoicesListDoubleClick(Sender: TObject);
begin
 ibsWhite.SQL.Clear;
 ibsWhite.SQL.Add('delete from INVOICE_HEADER IH');
 If (ibdsMainInvoicesListBLACK.AsInteger=1) then
  ibsWhite.SQL.Add('where (IH.ID='+ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.AsString+')')
 else
  ibsWhite.SQL.Add('where (IH.ID='+ibdsMainInvoicesListID.AsString+')');
 try
  ibsWhite.ExecQuery;
  ibsWhite.Close
 except
  MessageDlg('Невозможно удалить!',mtError,[mbOK],0);
  Exit
 end;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('delete from INVOICE_HEADER IH');
 ibsAux.SQL.Add('where (IH.ID='+ibdsMainInvoicesListOPPOSITE_SOSTAV_ID.AsString+')');
 try
  ibsAux.ExecQuery;
  ibsAux.Close
 except
  MessageDlg('Невозможно удалить!',mtError,[mbOK],0);
  Exit
 end;
 ibdsMainInvoicesList.Delete
end;

procedure TfrmInvoice.ibdsIncomeDocsAfterScroll(DataSet: TDataSet);
begin
 sbDeleteDocs.Enabled := (DataSet.FieldByName('DELETE_RIGHT').AsInteger=1) and
                         (((DataSet.FieldByName('NAME').AsString<>'ПЛАТЕЖ') and
                           (DataSet.FieldByName('CLOSED').AsInteger=0)) or
                          (DataSet.FieldByName('NAME').AsString='ПЛАТЕЖ'))
end;

procedure TfrmInvoice.dbgIncomeDocsEnter(Sender: TObject);
begin
 If (Sender=dbgIncomeDocs) then
  ibdsIncomeDocsAfterScroll(ibdsIncomeDocs)
 else
  ibdsIncomeDocsAfterScroll(ibdsOutcomeDocs)
end;

procedure TfrmInvoice.cbbPaidDispatchedSignChange(Sender: TObject);
begin
 sbReFilter.Visible := cbPaidDispatched.Checked
end;

procedure TfrmInvoice.N18Click(Sender: TObject);
begin
 If (N18.Owner.FindComponent('frmLastBuyPrice')=nil) then
  frmLastBuyPrice := TfrmLastBuyPrice.Create(N18.Owner);
 frmLastBuyPrice.Top := Top;
 frmLastBuyPrice.Left := Screen.Width-frmLastBuyPrice.Width;
 frmLastBuyPrice.Run(trMain,(dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource,ibdsMainInvoiceENTERPRISE_STORE_ID.AsLargeInt);
 frmLastBuyPrice.Show
end;

procedure TfrmInvoice.lcInvoiceSetupBeforeDropDown(Sender: TObject);
begin
 ibdsInvoice_Setup.Filtered := True
end;

procedure TfrmInvoice.ibdsInvoice_SetupFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsInvoice_SetupCREATE_RIGHT.AsInteger>0)
end;

procedure TfrmInvoice.ibdsMainInvoiceSECURITY_LEVELChange(Sender: TField);
begin
 If (ibdsMainInvoiceSECURITY_LEVEL.AsInteger<ibdsInvoice_SetupSECURITY_LEVEL.AsInteger) then
  ibdsMainInvoiceSECURITY_LEVEL.Value := ibdsInvoice_SetupSECURITY_LEVEL.AsInteger;
 If (ibdsMainInvoiceSECURITY_LEVEL.AsInteger>SecurityLevel) then
  ibdsMainInvoiceSECURITY_LEVEL.Value := SecurityLevel
end;

procedure TfrmInvoice.ibdsCurrencyAfterOpen(DataSet: TDataSet);
begin
 ibdsCurrency.Locate('ID',ibdsMainInvoiceCURRENCY_ID.AsString,[])
end;

procedure TfrmInvoice.tvAccountBodyCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmInvoice.tvAccountBodyCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If (Black) then
  GridDBTableViewCustomDrawCell(Sender,ACanvas,AViewInfo,(PaintBlackBody) and (ibdsMainInvoiceBLACK.AsInteger=1))
 else
  GridDBTableViewCustomDrawCell(Sender,ACanvas,AViewInfo,False)
end;

procedure TfrmInvoice.tvAccountBodyEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
 AAllow := (AItem.DataBinding as TcxGridItemDBDataBinding).Field.CanModify;
{ If (Sender=tvAccountBody) then
  AAllow := AAllow and (ibdsMainInvoiceBodyITEM_TYPE.AsInteger<>1)}
end;

procedure TfrmInvoice.FormKeyPress(Sender: TObject; var Key: Char);
begin
 Key := MyUpCase(Key)
end;

procedure TfrmInvoice.sbShowCommentsClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlComments.RestoreHotSpot
 else
  pnlComments.CloseHotSpot
end;

procedure TfrmInvoice.pnlCommentsHotSpotClick(Sender: TObject);
begin
 sbShowComments.Down := NOT pnlComments.HotSpotClosed
end;

procedure TfrmInvoice.tvAccountBodyKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var ClipBrd : TClipBoard;
begin
 If ((Key=Ord('C')) or (Key=Ord('С')) or (Key=Ord('c')) or (Key=Ord('c'))) and (Shift=[ssCtrl]) then
  Begin
   ClipBrd := ClipBoard;
   ClipBrd.SetTextBuf(PChar((dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DisplayTexts[(dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.FocusedRecordIndex,(dbgAccountBody.FocusedView as TcxGridDBTableView).Controller.FocusedItem.Index]))
  End;
 Case Key of
  vk_F6 : Begin
           If (frmMain.FindComponent('frmArticuls')=nil) then
            frmArticuls := TfrmArticuls.Create(frmMain);
           If (tvAccountBody.OptionsData.Editing) then
            Begin
             frmArticuls.LookUpProcedureUpdate := ArticulSetBodyArticulID;
             frmArticuls.LookUpProcedureInsert := ArticulInsertBodyArticulID
            End;
           If NOT (ibdsMainInvoiceBodyARTICUL_ID.IsNull) then
            Begin
             frmArticuls.dbeFilter.Text := (dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet.FieldByName('ARTICUL_ID').AsString;
             frmArticuls.ibdsSearch.Close;
             frmArticuls.ibdsSearch.SelectSQL[2] := 'where (A.ID=:NAME)';
             frmArticuls.sbFilter.Click;
             frmArticuls.ibdsSearch.Close;
             frmArticuls.ibdsSearch.SelectSQL[2] := 'where (A.NAME like :NAME)';
             frmArticuls.dbeFilter.Text := ''
            End;
           frmArticuls.Show
          End;
  vk_F7 : Begin
           If (frmMain.FindComponent('frmTovar')=nil) then
            frmTovar := TfrmTovar.Create(frmMain);
           If (tvAccountBody.OptionsData.Editing) then
            Begin
             frmTovar.LookUpProcedureUpdate := TovarSetBodyArticulID;
             frmTovar.LookUpProcedureInsert := TovarInsertBodyArticulID
            End;
//!!           If NOT (ibdsMainInvoiceBodyARTICUL_ID.IsNull) then
//!!            frmTovar.ibdsGoods.Locate('NAME',ibdsMainInvoiceBodyARTICUL_NAME.AsString,[]);
           frmTovar.Show
          End
 end
end;

procedure TfrmInvoice.ibdsInvoiceBodySetBeforeOpen(DataSet: TDataSet);
begin
 ibdsInvoiceBodySet.ParamByName('ID').AsInt64 := ibdsMainInvoiceID.Value
end;

procedure TfrmInvoice.ibdsInvoiceBodySetNewRecord(DataSet: TDataSet);
begin
 ibdsInvoiceBodySetID.Value := GetNewID(ibsGen_ID,'GEN_INVOICE_BODY_SETS_ID');
 ibdsInvoiceBodySetINVOICE_BODY_ID.AsInteger := ibdsMainInvoiceBodyID.AsInteger;
 If (In_Out=1) then
  ibdsInvoiceBodySetRESERV_AMOUNT.Value := 0
end;

procedure TfrmInvoice.tvAccountBodyDataControllerDetailHasChildren(
  Sender: TcxDBDataController; ARecordIndex, ARelationIndex: Integer;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var HasChildren: Boolean);
begin
 HasChildren := (Sender.Values[ARecordIndex,tvAccountBodyITEM_TYPE.Index]=1)
end;

procedure TfrmInvoice.ibdsInvoiceBodySetCalcFields(DataSet: TDataSet);
begin
 ibdsInvoiceBodySetItogo.Value := ibdsInvoiceBodySetPACKS_AMOUNT.Value*ibdsInvoiceBodySetPACK_VALUE.Value+ibdsInvoiceBodySetITEMS_AMOUNT.Value;
 ibdsInvoiceBodySetItogoMany.Value := ibdsInvoiceBodySetItogo.Value*ibdsInvoiceBodySetPRICE.Value;
 If (ibdsInvoiceBodySetCOMMENTS.AsString<>'') then
  ibdsInvoiceBodySetTOTAL_COMMENTS.Value := 'Комментарии: '+ibdsInvoiceBodySetCOMMENTS.Value;
 If (In_Out=1) and (ibdsInvoiceBodySetCOMMENTS_RESERVATION.AsString<>'') then
  Begin
   If (ibdsInvoiceBodySetTOTAL_COMMENTS.AsString<>'') then
    ibdsInvoiceBodySetTOTAL_COMMENTS.Value := ibdsInvoiceBodySetTOTAL_COMMENTS.Value+#13#10;
   ibdsInvoiceBodySetTOTAL_COMMENTS.Value := ibdsInvoiceBodySetTOTAL_COMMENTS.Value+'Комментарии резерва: '+ibdsInvoiceBodySetCOMMENTS_RESERVATION.Value
  End
end;

procedure TfrmInvoice.ibdsMainInvoiceBodyBeforeDelete(DataSet: TDataSet);
 var BookMark : String;
begin
 If (ibdsMainInvoiceCLOSED.AsInteger=1) then
  Abort;
 If (ibdsMainInvoiceBodyITEM_TYPE.AsInteger=1) then
  Begin
   BookMark := ibdsMainInvoiceBody.Bookmark;
   DeleteSet(ibdsInvoiceBodySet,ibdsInvoiceBodySetINVOICE_BODY_ID,ibdsMainInvoiceBodyID.AsInteger);
   ibdsMainInvoiceBody.Bookmark := BookMark
  End
end;

procedure TfrmInvoice.dbgAccountBodyFocusedViewChanged(
  Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
begin
 dbmComments.DataBinding.DataSource := (dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource
end;

procedure TfrmInvoice.tvSetsDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
{ If VarIsNumeric(ASender.FooterSummaryValues[0]) and
    (ASender.FooterSummaryValues[0]<>ibdsMainInvoiceBodyPRICE.AsFloat) then
  Begin
   If NOT (ibdsMainInvoiceBody.State in [dsEdit,dsInsert]) then
    ibdsMainInvoiceBody.Edit;
   ibdsMainInvoiceBodyPRICE.Value := ASender.FooterSummaryValues[0];
   ibdsMainInvoiceBody.Post;
  End}
end;

procedure TfrmInvoice.ibdsInvoiceBodySetBeforeDelete(DataSet: TDataSet);
begin
 If (ibdsMainInvoiceCLOSED.AsInteger=1) then
  Abort;
end;

procedure TfrmInvoice.PopupMenu6Popup(Sender: TObject);
begin
 miShowRequest.Visible := False;
 miCreateRequest.Visible := False;
 If (In_Out=1) and (ibdsMainInvoiceBodyITEM_TYPE.AsInteger=1) then
  Begin
   miShowRequest.Visible := True;
   miCreateRequest.Visible := True;
   miShowRequest.Enabled := True;
   miCreateRequest.Enabled := True;
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select count(*) cnt from REQUEST_HEADERS RH where (RH.INVOICE_BODY_ID='+ibdsMainInvoiceBodyID.AsString+')');
   ibsAux.ExecQuery;
   If (ibsAux.FieldByName('cnt').AsInteger=0) then
    miShowRequest.Enabled := False;
   If (ibsAux.FieldByName('cnt').AsInteger>=ibdsMainInvoiceBodyItogo.AsInteger) then
    miCreateRequest.Enabled := False;
   miCreateRequest.Tag := ibdsMainInvoiceBodyItogo.AsInteger-ibsAux.FieldByName('cnt').AsInteger;
   miShowRequest.Tag := ibsAux.FieldByName('cnt').AsInteger;
   ibsAux.Close
  End
end;

procedure TfrmInvoice.miCreateRequestClick(Sender: TObject);
var I, K, Number: Integer;
    ibsLocalAux: TIBSQL;
begin
 If (frmMain.FindComponent('frmRequests')<>nil) and ((frmRequests.sbApplyRequestsList.Enabled) or (frmRequests.sbApplyRequest.Enabled))then
  Begin
   MessageDlg('В форме заказов на сборку имеются несохраненные данные!',mtError,[mbOK],0);
   Exit
  End;
 If (miCreateRequest.Tag=1) then
  Begin
   Request_ID := -1;
   If (frmMain.FindComponent('frmRequests')=nil) then
    frmRequests := TfrmRequests.Create(frmMain);
   With frmRequests do
    Begin
     ibdsMainRequest.Insert;
     ibdsMainRequestINVOICE_BODY_ID.Value := ibdsMainInvoiceBodyID.Value;
     ibdsMainRequestBLACK.Value := ibdsMainInvoiceBLACK.Value;
     lblManager.Caption := 'Менеджер: '+ibdsMainInvoiceMASTER_NAME.AsString;
     lblContractor.Caption := 'Заказчик: '+ibdsMainInvoiceCONTRACTOR_NAME.AsString;
    End;  // with
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select IBS.ARTICUL_ID, IBS.PACKS_AMOUNT*IBS.PACK_VALUE+IBS.ITEMS_AMOUNT AMOUNT');
   ibsAux.SQL.Add('from INVOICE_BODY_SETS IBS');
   ibsAux.SQL.Add('where (IBS.INVOICE_BODY_ID='+ibdsMainInvoiceBodyID.AsString+')');
   ibsAux.ExecQuery;
   While NOT ibsAux.Eof do
    Begin
     frmRequests.ibdsMainRequestBody.Append;
     frmRequests.ibdsMainRequestBodyARTICUL_ID.Value := ibsAux.FieldByName('ARTICUL_ID').AsInt64;
     frmRequests.ibdsMainRequestBodyAMOUNT.Value := ibsAux.FieldByName('AMOUNT').AsDouble;
     ibsAux.Next
    End;
   ibsAux.Close;
   frmRequests.Show
  End
 else
  Begin
   If (FindComponent('frmGetStore')=nil) then
    frmGetStore := TfrmGetStore.Create(frmInvoiceOut);
   With frmGetStore do
    Begin
     ibdsStores.Transaction := frmInvoiceOut.trMain;
     ibdsStores.Open;
     ShowModal;
     K := frmGetStore.lcbStore.EditValue;
    End;  // with
   FreeAndNil(frmGetStore);
   If (trLock.InTransaction) then
    trLock.Commit;
   trLock.Params[1] := 'lock_write=REQUESTS_LOCK';
   pnlMessage.Show;
   Application.ProcessMessages;
   trLock.StartTransaction;
   pnlMessage.Hide;
   Application.ProcessMessages;
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select max(RH.NUMBER) NUMBER from REQUEST_HEADERS RH where (RH.REQUEST_TIMESTAMP>'#39+FormatDateTime('01.01.yyyy',Date)+#39') and (RH.REQUEST_TIMESTAMP<'#39+FormatDateTime('01.01.yyyy',IncYear(Date))+#39')');
   ibsAux.ExecQuery;
   If (ibsAux.RecordCount=0) then
    Number := 1
   else
    Number := ibsAux.FieldByName('NUMBER').AsInteger+1;
   ibsAux.Close;
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('insert into REQUEST_HEADERS (ID,ENTERPRISE_STORE_ID,INVOICE_BODY_ID,CRC32_SET,NUMBER,REQUEST_TIMESTAMP)');
   ibsAux.SQL.Add('values (:ID,'+IntToStr(K)+','+ibdsMainInvoiceBodyID.AsString+','+ibdsMainInvoiceBodyCRC32_SET.AsString+',:NUMBER,'#39+FormatDateTime('dd.mm.yyyy hh:nn',Now)+#39')');
   ibsAux.GenerateParamNames := True;
   ibsNumb.SQL.Clear;
   ibsNumb.SQL.Add('insert into REQUEST_BODIES (ID,REQUEST_HEADER_ID,ARTICUL_ID,AMOUNT)');
   ibsNumb.SQL.Add('values (:ID,:REQUEST_HEADER_ID,:ARTICUL_ID,:AMOUNT)');
   ibsNumb.GenerateParamNames := True;
   ibsLocalAux := TIBSQL.Create(Nil);
   ibsLocalAux.Database := ibsAux.Database;
   ibsLocalAux.Transaction := ibsAux.Transaction;
   ibsLocalAux.SQL.Clear;
   ibsLocalAux.SQL.Add('select IBS.ARTICUL_ID, IBS.PACKS_AMOUNT*IBS.PACK_VALUE+IBS.ITEMS_AMOUNT AMOUNT');
   ibsLocalAux.SQL.Add('from INVOICE_BODY_SETS IBS');
   ibsLocalAux.SQL.Add('where (IBS.INVOICE_BODY_ID='+ibdsMainInvoiceBodyID.AsString+')');
   For I := 0 to Pred(miCreateRequest.Tag) do
    Begin
     ibsAux.ParamByName('ID').AsInteger := GetNewID(ibsGen_ID,'GEN_REQUEST_HEADERS_ID');
     ibsAux.ParamByName('NUMBER').AsInteger := Number;
     ibsAux.ExecQuery;
     ibsNumb.ParamByName('REQUEST_HEADER_ID').AsInteger := ibsAux.ParamByName('ID').AsInteger;
     ibsLocalAux.ExecQuery;
     While NOT (ibsLocalAux.Eof) do
      Begin
       ibsNumb.ParamByName('ID').AsInteger := GetNewID(ibsGen_ID,'GEN_REQUEST_BODIES_ID');
       ibsNumb.ParamByName('ARTICUL_ID').AsInt64 := ibsLocalAux.FieldByName('ARTICUL_ID').AsInt64;
       ibsNumb.ParamByName('AMOUNT').AsDouble := ibsLocalAux.FieldByName('AMOUNT').AsDouble;
       ibsNumb.ExecQuery;
       ibsLocalAux.Next
      End;    // while
     ibsLocalAux.Close;
     Inc(Number);
    End;
   trLock.Commit;
   trLock.Params[1] := 'lock_write=INVOICES_LOCK';
   ibsLocalAux.Close;
   ibsLocalAux.Free;
   trMain.CommitRetaining;
   If (frmMain.FindComponent('frmRequests')=nil) then
    frmRequests := TfrmRequests.Create(frmMain);
   With frmRequests do
    Begin
     ibdsMainRequestsList.Close;
     ibdsMainRequestsList.SelectSQL.Add('and (IB.ID='+ibdsMainInvoiceBodyID.AsString+')');
     ibdsMainRequestsList.Open;
     Show
    End  // with
  End
end;


procedure TfrmInvoice.miShowRequestClick(Sender: TObject);
begin
 If (miShowRequest.Tag=1) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select RH.ID from REQUEST_HEADERS RH where (RH.INVOICE_BODY_ID='+ibdsMainInvoiceBodyID.AsString+')');
   ibsAux.ExecQuery;
   Request_ID := ibsAux.FieldByName('ID').AsInteger;
   ibsAux.Close;
   If (frmMain.FindComponent('frmRequests')=nil) then
    frmRequests := TfrmRequests.Create(frmMain);
   frmRequests.Show
  End
 else
  Begin
   If (frmMain.FindComponent('frmRequests')=nil) then
    frmRequests := TfrmRequests.Create(frmMain);
   With frmRequests do
    Begin
     ibdsMainRequestsList.Close;
     ibdsMainRequestsList.SelectSQL.Add('and (IB.ID='+ibdsMainInvoiceBodyID.AsString+')');
     ibdsMainRequestsList.Open;
     Show
    End  // with
  End
end;

end.
