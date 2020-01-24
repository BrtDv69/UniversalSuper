unit Plat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, StdCtrls, ComCtrls, wwriched, wwrichedspell,
  wwdbdatetimepicker, wwdblook, Mask, wwdbedit, DBCtrls, fcLabel, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, fcText, IBSQL, IBDatabase, Db, IBCustomDataSet,
  wwcheckbox, Wwdotdot, Wwdbcomb, Wwdbspin, Menus, Math, FR_Class,
  wwclearbuttongroup, wwradiogroup, Variants;

type
  TfrmPlat = class(TfrmLike)
    PageControl1: TPageControl;
    tsPrimaryPaymentsList: TTabSheet;
    Panel1: TPanel;
    dbgPaymentsList: TwwDBGrid;
    Panel4: TPanel;
    sbCancelPrimaryPaymentsList: TSpeedButton;
    sbApplyPrimaryPaymentsList: TSpeedButton;
    sbDeletePrimaryPaymentsList: TSpeedButton;
    sbAddPrimaryPaymentsList: TSpeedButton;
    sbLastPrimaryPaymentsList: TSpeedButton;
    sbNextPrimaryPaymentsList: TSpeedButton;
    sbPriorPrimaryPaymentsList: TSpeedButton;
    sbFirstPrimaryPaymentsList: TSpeedButton;
    sbFilterPrimaryPaymentsList: TSpeedButton;
    SpeedButton10: TSpeedButton;
    sbRefreashPrimaryPaymentsList: TSpeedButton;
    SpeedButton30: TSpeedButton;
    tsPrimaryPayment: TTabSheet;
    Panel2: TPanel;
    Panel5: TPanel;
    pnlComments: TPanel;
    Label11: TLabel;
    wwDBEdit12: TwwDBEdit;
    Label12: TLabel;
    pnlBN: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Label8: TLabel;
    Label16: TLabel;
    wwDBLookupCombo8: TwwDBLookupCombo;
    Label20: TLabel;
    Label23: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label21: TLabel;
    wwDBEdit8: TwwDBEdit;
    Label25: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label26: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label27: TLabel;
    wwDBEdit9: TwwDBEdit;
    Label28: TLabel;
    wwDBEdit11: TwwDBEdit;
    lblNDS: TLabel;
    dbeNDS: TwwDBEdit;
    Label22: TLabel;
    wwDBEdit13: TwwDBEdit;
    trLock: TIBTransaction;
    ibdsMainPrimaryPaymentsList: TIBDataSet;
    dsMainPrimaryPaymentsList: TDataSource;
    ibsWhite: TIBSQL;
    ibsNumb: TIBSQL;
    ibsAux: TIBSQL;
    ibdsMainPrimaryPaymentsListID: TLargeintField;
    ibdsMainPrimaryPaymentsListMASTER_NAME: TIBStringField;
    ibdsMainPrimaryPaymentsListNUMBER_STR: TIBStringField;
    ibdsMainPrimaryPaymentsListPAYMENT_DATE: TDateField;
    ibdsMainPrimaryPaymentsListENTERPRISE_CASH_DESK_NAME: TIBStringField;
    ibdsMainPrimaryPaymentsListCONTRACTOR_NAME: TIBStringField;
    ibdsMainPrimaryPaymentsListAMOUNT: TFloatField;
    ibdsMainPrimaryPaymentsListSYMBOL: TIBStringField;
    ibdsMainPrimaryPaymentsListBLACK: TIntegerField;
    ibdsMainPrimaryPaymentsListSETUP_NAME: TIBStringField;
    ibdsMainPrimaryPayment: TIBDataSet;
    dsMainPrimaryPayment: TDataSource;
    ibdsMainPrimaryPaymentID: TLargeintField;
    ibdsMainPrimaryPaymentPARENT_TYPE: TIntegerField;
    ibdsMainPrimaryPaymentPARENT_ID: TLargeintField;
    ibdsMainPrimaryPaymentPRIMARY_SETUP_ID: TLargeintField;
    ibdsMainPrimaryPaymentNUMBER_FORMAT: TIntegerField;
    ibdsMainPrimaryPaymentNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsMainPrimaryPaymentMASTER_ID: TLargeintField;
    ibdsMainPrimaryPaymentSECURITY_LEVEL: TIntegerField;
    ibdsMainPrimaryPaymentNUMBER_PREFIX: TIBStringField;
    ibdsMainPrimaryPaymentNUMBER: TIntegerField;
    ibdsMainPrimaryPaymentNUMBER_SUFFIX: TIBStringField;
    ibdsMainPrimaryPaymentPAYMENT_DATE: TDateField;
    ibdsMainPrimaryPaymentENTERPRISE_ID: TLargeintField;
    ibdsMainPrimaryPaymentENTERPRISE_STORE_ID: TLargeintField;
    ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID: TLargeintField;
    ibdsMainPrimaryPaymentCONTRACTOR_ID: TLargeintField;
    ibdsMainPrimaryPaymentCURRENCY_ID: TLargeintField;
    ibdsMainPrimaryPaymentCURRENCY_RATE: TFloatField;
    ibdsMainPrimaryPaymentBLACK: TIntegerField;
    ibdsMainPrimaryPaymentAMOUNT: TFloatField;
    ibdsMainPrimaryPaymentCOMMENTS: TIBStringField;
    ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_ID: TLargeintField;
    ibdsMainPrimaryPaymentCONTRACTOR_ACCOUNT_ID: TLargeintField;
    ibdsMainPrimaryPaymentPAYMENT_KIND: TIBStringField;
    ibdsMainPrimaryPaymentCHARGE_KIND: TIBStringField;
    ibdsMainPrimaryPaymentPAYMENT_PURPOSE: TIBStringField;
    ibdsMainPrimaryPaymentCODE: TIBStringField;
    ibdsMainPrimaryPaymentTERM_DATE: TDateField;
    ibdsMainPrimaryPaymentPAYMENT_ORDER: TIBStringField;
    ibdsMainPrimaryPaymentRESERV_FIELD: TIBStringField;
    ibdsMainPrimaryPaymentPAYMENT_PURPOSE_BIG: TIBStringField;
    ibdsMainPrimaryPaymentNDS: TFloatField;
    ibdsDesks: TIBDataSet;
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
    ibdsPrimary_SetupBLACK: TIntegerField;
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
    Label24: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    Label29: TLabel;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    lblDesk: TLabel;
    dblcDesk: TwwDBLookupCombo;
    Label31: TLabel;
    wwDBEdit14: TwwDBEdit;
    dbcbBlack: TwwCheckBox;
    Label32: TLabel;
    wwDBLookupCombo13: TwwDBLookupCombo;
    Label33: TLabel;
    fcContract: TfcLabel;
    Label34: TLabel;
    wwDBLookupCombo10: TwwDBLookupCombo;
    Label36: TLabel;
    dbcbContractor: TwwDBLookupCombo;
    Label37: TLabel;
    dblcCurrency: TwwDBLookupCombo;
    Label38: TLabel;
    wwDBEdit15: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    ibdsMainPrimaryPaymentNumber_Str: TStringField;
    Panel6: TPanel;
    sbCancelPrimaryPayment: TSpeedButton;
    sbApplyPrimaryPayment: TSpeedButton;
    sbDeletePrimaryPayment: TSpeedButton;
    sbAddPrimaryPayment: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    sbPrintPrimaryPayment: TSpeedButton;
    ibdsDesksID: TLargeintField;
    ibdsDesksENTERPRISE_ID: TLargeintField;
    ibdsDesksSTORE_ID: TLargeintField;
    ibdsDesksDESK_NAME: TIBStringField;
    ibdsEnterpriseAccounts: TIBDataSet;
    ibdsEnterpriseAccountsID: TLargeintField;
    ibdsEnterpriseAccountsACCOUNT_NAME: TIBStringField;
    ibdsContractorAccounts: TIBDataSet;
    ibdsContractorAccountsID: TLargeintField;
    ibdsContractorAccountsACCOUNT_NAME: TIBStringField;
    ibdsDesksBLACK: TIntegerField;
    pnlMessage: TPanel;
    pnlNumber: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    wwDBEdit2: TwwDBEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBEdit5: TwwDBEdit;
    pmParent: TPopupMenu;
    pmParentInvoiceIn: TMenuItem;
    N4: TMenuItem;
    pmParentSelf: TMenuItem;
    pmParentPrimaryIn: TMenuItem;
    pmParentPrimaryOut: TMenuItem;
    ibdsCurrencyENTERPRISE_ID: TLargeintField;
    pmParentInvoiceOut: TMenuItem;
    ibdsCurrencyDECIMALS_IN: TSmallintField;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesNAME: TIBStringField;
    ibdsEnterprisesID: TLargeintField;
    lblEnterprise: TLabel;
    dblcEnterprise: TwwDBLookupCombo;
    wwDBComboBox1: TwwDBComboBox;
    lblParentRate: TLabel;
    dbeParentRate: TwwDBEdit;
    ibdsMainPrimaryPaymentPARENT_CURRENCY_RATE: TFloatField;
    ibdsEnterpriseAccountsCURRENCY_ID: TLargeintField;
    ibdsContractorAccountsCURRENCY_ID: TLargeintField;
    ibdsMainPrimaryPaymentsListDECIMALS: TSmallintField;
    ibdsMainPrimaryPaymentsListAMOUNT_FMT: TStringField;
    sbFactura: TSpeedButton;
    pnlFactura: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    sbApplyFactura: TSpeedButton;
    sbCancelFactura: TSpeedButton;
    Label13: TLabel;
    SpeedButton4: TSpeedButton;
    dbePefix: TwwDBEdit;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    ibdsFactura: TIBDataSet;
    ibdsFacturaNUMBER_PREFIX: TIBStringField;
    ibdsFacturaNUMBER: TIntegerField;
    ibdsFacturaNUMBER_SUFFIX: TIBStringField;
    ibdsFacturaFACTURA_DATE: TDateField;
    ibdsFacturaID: TLargeintField;
    ibdsFacturaPARENT_TYPE: TIntegerField;
    ibdsFacturaPARENT_ID: TLargeintField;
    dsFactura: TDataSource;
    ibdsReportHeader: TIBDataSet;
    ibdsReportHeaderENTERPRISE_NAME: TIBStringField;
    ibdsReportHeaderNUMBER_STR: TIBStringField;
    ibdsReportHeaderCONTRACTOR_NAME: TIBStringField;
    ibdsReportHeaderMASTER_NAME: TIBStringField;
    ibdsReportHeaderCURRENCY_NAME: TIBStringField;
    ibdsReportHeaderDECIMALS_OUT: TSmallintField;
    ibdsReportHeaderSYMBOL: TIBStringField;
    ibdsReportHeaderNAME1: TIBStringField;
    ibdsReportHeaderNAME3: TIBStringField;
    ibdsReportHeaderNAME5: TIBStringField;
    ibdsReportHeaderNAME001: TIBStringField;
    ibdsReportHeaderCURRENCY_RATE: TFloatField;
    ibdsReportHeaderSETUP_NAME: TIBStringField;
    ibdsReportHeaderENTERPRISE_INN: TIBStringField;
    ibdsReportHeaderCONTRACTOR_INN: TIBStringField;
    ibdsReportHeaderAMOUNT_FRAC_PROP: TStringField;
    ibdsReportHeaderAMOUNT_PROP: TStringField;
    ibdsReportHeaderENTERPRISE_KPP: TIBStringField;
    ibdsReportHeaderPAYMENT_DATE: TDateField;
    ibdsReportHeaderCONTRACTOR_KPP: TIBStringField;
    ibdsReportHeaderDECIMALS_IN: TSmallintField;
    ibdsReportHeaderAMOUNT: TFloatField;
    ibdsReportHeaderENTERPRISE_ACCOUNT: TStringField;
    ibdsReportHeaderCONTRACTOR_ACCOUNT: TStringField;
    ibdsReportHeaderENTERPRISE_ACCOUNT_ID: TLargeintField;
    ibdsReportHeaderCONTRACTOR_ACCOUNT_ID: TLargeintField;
    ibdsReportHeaderPAYMENT_KIND: TIBStringField;
    ibdsReportHeaderCHARGE_KIND: TIBStringField;
    ibdsReportHeaderPAYMENT_PURPOSE: TIBStringField;
    ibdsReportHeaderCODE: TIBStringField;
    ibdsReportHeaderTERM_DATE: TDateField;
    ibdsReportHeaderPAYMENT_ORDER: TIBStringField;
    ibdsReportHeaderRESERV_FIELD: TIBStringField;
    ibdsReportHeaderPAYMENT_PURPOSE_BIG: TIBStringField;
    ibdsReportHeaderNDS: TFloatField;
    ibdsReportHeaderENTERPRISE_BANK_NAME: TStringField;
    ibdsReportHeaderCONTRACTOR_BANK_NAME: TStringField;
    ibdsReportHeaderENTERPRISE_BIK: TIntegerField;
    ibdsReportHeaderENTERPRISE_BANK_ADDRESS: TStringField;
    ibdsReportHeaderENTERPRISE_KOR_SCH: TStringField;
    ibdsReportHeaderCONTRACTOR_BIK: TIntegerField;
    ibdsReportHeaderCONTRACTOR_BANK_ADDRESS: TStringField;
    ibdsReportHeaderCONTRACTOR_KOR_SCH: TStringField;
    ibdsReportHeaderPARENT_STRING: TStringField;
    ibdsReportHeaderPARENT_TYPE: TIntegerField;
    ibdsReportHeaderPARENT_ID: TLargeintField;
    ibdsReportHeaderNSP: TFloatField;
    ibdsReportHeaderTAKE_NSP: TIntegerField;
    ibdsReportHeaderPRIVATE: TIntegerField;
    pnlText: TPanel;
    lblFilter: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    pnlFilter: TPanel;
    Label42: TLabel;
    sbReFilter: TSpeedButton;
    deDateStart: TwwDBDateTimePicker;
    deDateStop: TwwDBDateTimePicker;
    cbPeriod: TwwCheckBox;
    Label4: TLabel;
    dbeAmount: TwwDBEdit;
    ibdsFacturaAMOUNT: TFloatField;
    ibdsEnterprisesDEFAULT_ID_ACCOUNT: TLargeintField;
    cbBlack: TwwCheckBox;
    cbWhite: TwwCheckBox;
    cbType: TwwCheckBox;
    edType: TwwDBLookupCombo;
    cbContractor: TwwCheckBox;
    edContractor: TwwDBEdit;
    cbContractorType: TwwCheckBox;
    edContractorType: TwwDBLookupCombo;
    cbPrefix: TwwCheckBox;
    edPrefix: TwwDBEdit;
    cbNumber: TwwCheckBox;
    edNumber: TwwDBEdit;
    cbSuffix: TwwCheckBox;
    edSuffix: TwwDBEdit;
    cbAmount: TwwCheckBox;
    edAmount: TwwDBEdit;
    cbDeskAccount: TwwCheckBox;
    edDeskAccount: TwwDBLookupCombo;
    ibdsFilterTypes: TIBDataSet;
    ibdsFilterTypesID: TLargeintField;
    ibdsFilterTypesNAME: TIBStringField;
    ibdsFilterContractorTypes: TIBDataSet;
    ibdsFilterContractorTypesID: TLargeintField;
    ibdsFilterContractorTypesNAME: TIBStringField;
    ibdsFilterDeskAccount: TIBDataSet;
    ibdsFilterDeskAccountNAME: TIBStringField;
    ibdsFilterDeskAccountID: TLargeintField;
    ibdsMainPrimaryPaymentsListDELETE_RIGHT: TIntegerField;
    ibdsMainPrimaryPaymentUPDATE_RIGHT: TIntegerField;
    ibdsMainPrimaryPaymentDELETE_RIGHT: TIntegerField;
    ibdsMainPrimaryPaymentCLOSE_RIGHT: TIntegerField;
    ibdsPersonsVALID: TIntegerField;
    ibdsPrimary_SetupCREATE_RIGHT: TIntegerField;
    ibdsDesksVALID: TLargeintField;
    ibdsEnterprisesVALID: TIntegerField;
    ibdsCurrencyVALID: TIntegerField;
    ibdsEnterpriseAccountsVALID: TLargeintField;
    ibdsContractorAccountsVALID: TLargeintField;
    ibdsPrimary_SetupREASON_TYPE: TIntegerField;
    ibdsPrimary_SetupMOVEMENT_TYPE_NEW: TIntegerField;
    ibdsPrimary_SetupPAYMENT_TYPE: TIntegerField;
    ibdsPrimary_SetupMOVEMENT_TYPE: TIntegerField;
    ibdsPrimary_SetupNAME_WITH_SPECS: TStringField;
    ibdsFilterTypesREASON_TYPE: TIntegerField;
    ibdsFilterTypesMOVEMENT_TYPE_NEW: TIntegerField;
    ibdsFilterTypesPAYMENT_TYPE: TIntegerField;
    ibdsFilterTypesNAME_WITH_SPECS: TStringField;
    ibdsMainPrimaryPaymentsListREASON_TYPE: TIntegerField;
    ibdsMainPrimaryPaymentsListMOVEMENT_TYPE_NEW: TIntegerField;
    ibdsMainPrimaryPaymentsListPAYMENT_TYPE: TIntegerField;
    sbCopyInvoicesList: TSpeedButton;
    ibdsPersonsNAME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure fcLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure fcLabel1MouseEnter(Sender: TObject);
    procedure fcLabel1MouseLeave(Sender: TObject);
    procedure fcLabel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ibdsMainPrimaryPaymentsListAfterScroll(DataSet: TDataSet);
    procedure ibdsMainPrimaryPaymentsListUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure sbAddPrimaryPaymentsListClick(Sender: TObject);
    procedure sbDeletePrimaryPaymentsListClick(Sender: TObject);
    procedure sbApplyPrimaryPaymentsListClick(Sender: TObject);
    procedure sbCancelPrimaryPaymentsListClick(Sender: TObject);
    procedure ibdsMainPrimaryPaymentCalcFields(DataSet: TDataSet);
    procedure wwDBComboBox2DropDown(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBLookupCombo10CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure dblcCurrencyCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure dblcDeskCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure sbFirstPrimaryPaymentsListClick(Sender: TObject);
    procedure sbPriorPrimaryPaymentsListClick(Sender: TObject);
    procedure sbNextPrimaryPaymentsListClick(Sender: TObject);
    procedure sbLastPrimaryPaymentsListClick(Sender: TObject);
    procedure dsMainPrimaryPaymentsListStateChange(Sender: TObject);
    procedure dbgPaymentsListCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgPaymentsListCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure dbgPaymentsListTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure sbDeletePrimaryPaymentClick(Sender: TObject);
    procedure sbAddPrimaryPaymentClick(Sender: TObject);
    procedure sbCancelPrimaryPaymentClick(Sender: TObject);
    procedure sbApplyPrimaryPaymentClick(Sender: TObject);
    procedure ibdsMainPrimaryPaymentUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainPrimaryPaymentNewRecord(DataSet: TDataSet);
    procedure tsPrimaryPaymentShow(Sender: TObject);
    procedure ibdsMainPrimaryPaymentPARENT_IDChange(Sender: TField);
    procedure pmParentSelfClick(Sender: TObject);
    procedure dbgPaymentsListCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure pmParentInvoiceInClick(Sender: TObject);
    procedure ibdsMainPrimaryPaymentCURRENCY_RATEChange(Sender: TField);
    procedure pmParentPrimaryInClick(Sender: TObject);
    procedure pmParentPrimaryOutClick(Sender: TObject);
    procedure ibdsMainPrimaryPaymentsListBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_IDChange(
      Sender: TField);
    procedure ibdsDesksAfterOpen(DataSet: TDataSet);
    procedure ibdsPrimary_SetupAfterOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_IDChange(
      Sender: TField);
    procedure ibdsMainPrimaryPaymentAfterOpen(DataSet: TDataSet);
    procedure ibdsMainPrimaryPaymentsListCalcFields(DataSet: TDataSet);
    procedure sbFacturaClick(Sender: TObject);
    procedure dsFacturaStateChange(Sender: TObject);
    procedure sbApplyFacturaClick(Sender: TObject);
    procedure ibdsFacturaUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure sbCancelFacturaClick(Sender: TObject);
    procedure dblcEnterpriseCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsReportHeaderCalcFields(DataSet: TDataSet);
    procedure sbPrintPrimaryPaymentClick(Sender: TObject);
    procedure dbcbContractorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPaymentsListUpdateFooter(Sender: TObject);
    procedure cbPeriodClick(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure sbFilterPrimaryPaymentsListClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure ibdsMainPrimaryPaymentENTERPRISE_IDChange(Sender: TField);
    procedure cbBlackClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo10BeforeDropDown(Sender: TObject);
    procedure ibdsMainPrimaryPaymentBLACKChange(Sender: TField);
    procedure ibdsMainPrimaryPaymentsListAfterDelete(DataSet: TDataSet);
    procedure ibdsMainPrimaryPaymentAfterDelete(DataSet: TDataSet);
    procedure dbgPaymentsListCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure cbDeskAccountClick(Sender: TObject);
    procedure edContractorChange(Sender: TObject);
    procedure edPrefixChange(Sender: TObject);
    procedure edNumberChange(Sender: TObject);
    procedure edSuffixChange(Sender: TObject);
    procedure edAmountChange(Sender: TObject);
    procedure ibdsFilterDeskAccountAfterOpen(DataSet: TDataSet);
    procedure ibdsFilterDeskAccountBeforeClose(DataSet: TDataSet);
    procedure ibdsMainPrimaryPaymentBeforeOpen(DataSet: TDataSet);
    procedure sbRefreashPrimaryPaymentsListClick(Sender: TObject);
    procedure wwDBLookupCombo13BeforeDropDown(Sender: TObject);
    procedure wwDBLookupCombo13CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsPersonsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsPrimary_SetupFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsDesksFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dblcDeskBeforeDropDown(Sender: TObject);
    procedure ibdsEnterprisesFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dblcEnterpriseBeforeDropDown(Sender: TObject);
    procedure ibdsCurrencyFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dblcCurrencyBeforeDropDown(Sender: TObject);
    procedure ibdsEnterpriseAccountsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure wwDBLookupCombo7BeforeDropDown(Sender: TObject);
    procedure wwDBLookupCombo7CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsContractorAccountsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure wwDBLookupCombo8BeforeDropDown(Sender: TObject);
    procedure wwDBLookupCombo8CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsPrimary_SetupCalcFields(DataSet: TDataSet);
    procedure ibdsFilterTypesCalcFields(DataSet: TDataSet);
    procedure ibdsMainPrimaryPaymentsListSETUP_NAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ibdsMainPrimaryPaymentNDSChange(Sender: TField);
    procedure sbCopyInvoicesListClick(Sender: TObject);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereMainPrimaryPaymentsList: String;
    procedure GenerateSelectMainPrimaryPaymentsList;
    procedure GenerateSelectMainPrimaryPayment;
    procedure GenerateSelectPrimarySetup;
    procedure GenerateSelectDesks;
    procedure SetInvoiceID;
    procedure SetNaklID;
    procedure SetCurrencyFmt;
    procedure SetContractor;
    procedure SetReadOnly;
    procedure frReportGetValue(const ParName: String; var ParValue: Variant);
  public
    { Public declarations }
    Nal_In : Integer;
  end;

var
  frmPlat: TfrmPlat;

implementation

uses DM, Misk, NaklIn, NaklOut, Invoice, Main, KontrAgList;

{$R *.DFM}

var
  OrderByMainPrimaryPaymentsList  : String = ' 4 desc, 3 desc, 2 asc, 5 asc, 6 asc';
  WhereSqlMainPrimaryPaymentsList : String = '';

  NumberPrefix, NumberSuffix : String;
  OldCurrencyRate : Double;
  CurrencyRoundPower : Integer;

  Contractor, IDeskAccount, IType, IContractorType : String;
//  DateStart, DateStop : TDate;

  MainPrimaryPaymentsListBookMark, MainPrimaryPaymentsListPriorBookMark : String;

  Parent_Closed : Boolean = False;

procedure TfrmPlat.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
     ActivePage: TTabSheet;
begin
 If (frmPlat<>nil) then
  Begin
   ActivePage := PageControl1.ActivePage;
   For k := 0 to Pred(frmPlat.ComponentCount) do
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
   If (Suf='PrimaryPayment') then
    If (Black) then
     sbFactura.Visible := (NOT Enabled) and (ibdsMainPrimaryPaymentBLACK.AsInteger=0) and (Nal_In in [1,3])
    else
     sbFactura.Visible := (NOT Enabled) and (Nal_In in [1,3]);
   PageControl1.ActivePage := ActivePage
  End
end;

function TfrmPlat.GetWhereMainPrimaryPaymentsList: String;
begin
 Result := '';
 If (sbFilterPrimaryPaymentsList.Down) then
  Begin
   lblFilter.Caption := '';
   If (cbDeskAccount.Checked) then
    If (Nal_In<2) then //безнал
     Begin
      Result := Result+'and (EA.ID='+ibdsFilterDeskAccountID.AsString+') ';
      lblFilter.Caption := lblFilter.Caption+'Счет: '+edDeskAccount.Text+'; '
     End
    else
     Begin
      Result := Result+'and (ECD.ID='+ibdsFilterDeskAccountID.AsString+') ';
      lblFilter.Caption := lblFilter.Caption+'Касса: '+edDeskAccount.Text+'; '
     End;
   If (cbContractor.Checked) then
    Begin
     Result := Result+'and (UPPER(CNTR.NAME collate PXW_CYRL) like '#39+AnsiUpperCase(edContractor.Text)+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Контрагент: '+edContractor.Text+'; '
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
     Result := Result+'and (PP.PAYMENT_DATE>='#39+deDateStart.Text+#39') and (PP.PAYMENT_DATE<='#39+deDateStop.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'За период с '+deDateStart.Text+' по '+deDateStop.Text+'; '
    End;
   If (cbPrefix.Checked) then
    Begin
     Result := Result+'and (PP.NUMBER_PREFIX like '#39+edPrefix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Префикс: '+edPrefix.Text+'; '
    End;
   If (cbNumber.Checked) then
    Begin
     Result := Result+'and (PP.NUMBER='+edNumber.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Номер счета: '+edNumber.Text+'; '
    End;
   If (cbSuffix.Checked) then
    Begin
     Result := Result+'and (PP.NUMBER_SUFFIX like '#39+edSuffix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Суффикс: '+edSuffix.Text+'; '
    End;
   If (cbAmount.Checked) then
    Begin
     Result := Result+'and (Cast(PP.AMOUNT as NUMERIC(18,4))='+edAmount.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'На сумму: '+edAmount.Text+'; '
    End;
   If (Black) then
    Begin
     If (cbBlack.Checked) then
      Begin
       Result := Result+'and (PP.BLACK=1) ';
       lblFilter.Caption := lblFilter.Caption+'Н/О; '
      End;
     If (cbWhite.Checked) then
      Begin
       Result := Result+'and (PP.BLACK=0) ';
       lblFilter.Caption := lblFilter.Caption+'О; '
      End
    End;
   lblFilter.Caption := Trim(lblFilter.Caption);
   pnlText.Visible := True;
   lblFilter.AutoSize := True
  End
end;

procedure TfrmPlat.GenerateSelectMainPrimaryPaymentsList;
 var k : Integer;
begin
 WhereSqlMainPrimaryPaymentsList := GetWhereMainPrimaryPaymentsList;
 If (Nal_In in [1,3]) then
  ibdsMainPrimaryPaymentsList.SelectSQL[4] := 'C.DECIMALS_IN DECIMALS,'
 else
  ibdsMainPrimaryPaymentsList.SelectSQL[4] := 'C.DECIMALS_OUT DECIMALS,';
 If (Black) then
  ibdsMainPrimaryPaymentsList.SelectSQL[4] := ibdsMainPrimaryPaymentsList.SelectSQL[4]+'  PP.BLACK,';
 If (Nal_In in [0,1]) then
  Begin
   ibdsMainPrimaryPaymentsList.SelectSQL[2] := 'PP.PAYMENT_DATE, EA.ACCOUNT||'' ''||B.NAME||'' ''||E.NAME ENTERPRISE_CASH_DESK_NAME,';
   ibdsMainPrimaryPaymentsList.SelectSQL[7] := 'CONTRACTORS CNTR, PRIMARY_SETUP PS, BANKS B,';
   ibdsMainPrimaryPaymentsList.SelectSQL[8] := 'ENTERPRISES_ACCOUNTS EA, CURRENCY C, USERS U, USER_RIGHTS_FOR_PRIMARY UR';
   ibdsMainPrimaryPaymentsList.SelectSQL[13] := '(EA.BANK_ID=B.ID) and (PP.CURRENCY_ID=C.ID) and (PP.ENTERPRISE_ACCOUNT_ID=EA.ID) and'
  End;
 If Not (Black) then
  ibdsMainPrimaryPaymentsList.SelectSQL[15] := '(UR.USER_ID=U.ID) and (UR.PRIMARY_SETUP_ID=PP.PRIMARY_SETUP_ID)';
 For k := Pred(ibdsMainPrimaryPaymentsList.SelectSQL.Count) downto 16 do
  ibdsMainPrimaryPaymentsList.SelectSQL.Delete(k);
 ibdsMainPrimaryPaymentsList.SelectSQL.Add(WhereSqlMainPrimaryPaymentsList);
 ibdsMainPrimaryPaymentsList.SelectSQL.Add('order by'+OrderByMainPrimaryPaymentsList)
end;

procedure TfrmPlat.GenerateSelectMainPrimaryPayment;
begin
 If NOT (Black) then
  Begin
   ibdsMainPrimaryPayment.SelectSQL[6] := '';
   ibdsMainPrimaryPayment.SelectSQL[15] := '';
   ibdsMainPrimaryPayment.InsertSQL[6] := '';
   ibdsMainPrimaryPayment.InsertSQL[17] := '';
   ibdsMainPrimaryPayment.ModifySQL[17] := '';
   ibdsMainPrimaryPayment.RefreshSQL[6] := ''
  End
end;

procedure TfrmPlat.GenerateSelectPrimarySetup;
begin
 If NOT (Black) then
  Begin
   ibdsPrimary_Setup.SelectSQL[2] := '';
   ibdsPrimary_Setup.SelectSQL[4] := '';
  End
end;

procedure TfrmPlat.GenerateSelectDesks;
begin
 If NOT (Black) then
  ibdsDesks.SelectSQL[1] := ''
end;

procedure TfrmPlat.FormCreate(Sender: TObject);
 var ki : Integer;
begin
 Nal_In := TempNal_In;
 Case Nal_In of
 0 : Begin
      FName := 'Исходящий платежный документ';
      Caption := 'Расходный платежный документ';
      dbcbBlack.Hide
     End;
 1 : Begin
      FName := 'Входящий платежный документ';
      Caption := 'Приходный платежный документ';
      dbcbBlack.Hide
     End;
 2 : Begin
      FName := 'Исходящий кассовый ордер';
      Caption := 'Расходный кассовый ордер'
     End;
 3 : Begin
      FName := 'Входящий кассовый ордер';
      Caption := 'Приходный кассовый ордер';
     End
 end;
 sbPrintPrimaryPayment.Tag := Nal_In;
 For ki := 0 to Pred(pnlBN.ControlCount) do
  If (pnlBN.Controls[ki].Name<>'dbeNDS') and (pnlBN.Controls[ki].Name<>'lblNDS') then
   pnlBN.Controls[ki].Enabled := Nal_In in [0,1];
// dblcCurrency.Enabled := NOT Nal_In in [0,1];
 inherited;
 If NOT (Black) then
  Begin
   ki := 0;
   While (ki<=Pred(ComponentCount)) do
    Begin
     If (Components[ki] is TIBDataSet) and
        ((Components[ki] as TIBDataSet).Database=frmDM.dbMain) then
      (Components[ki] as TIBDataSet).Database := frmDM.dbWhite;
     If (Components[ki] is TIBSQL) and
        ((Components[ki] as TIBSQL).Database=frmDM.dbMain) then
      (Components[ki] as TIBSQL).Database := frmDM.dbWhite;
     If (Components[ki].Tag=99) then
      Components[ki].Free
     else
      Inc(ki)
    End
  End;
 trMain.StartTransaction;
 If (Black) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select FILTER_NAME, FILTER_VALUE from FILTERS');
   ibsAux.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
   ibsAux.ExecQuery;
   sbFilterPrimaryPaymentsList.Down :=(ibsAux.RecordCount>0);
   While NOT (ibsAux.Eof) do
    Begin
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbDeskAccount.Name) then
      Begin
       cbDeskAccount.Checked := True;
       IDeskAccount := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbContractor.Name) then
      Begin
       cbContractor.Checked := True;
       Contractor := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     If (ibsAux.FieldByName('FILTER_NAME').AsString=cbType.Name) then
      Begin
       cbType.Checked := True;
       IType := ibsAux.FieldByName('FILTER_VALUE').AsString
      End;
     try
      If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Start') then
       Begin
        cbPeriod.Checked := True;
        deDateStart.Date := ibsAux.FieldByName('FILTER_VALUE').AsDate
       End;
      If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Stop') then
       Begin
        cbPeriod.Checked := True;
        deDateStop.Date := ibsAux.FieldByName('FILTER_VALUE').AsDate
       End
      except
       cbPeriod.Checked := False
      end;
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
        cbWhite.Checked := True
      End;
     ibsAux.Next
    End;
   ibsAux.Close
  End; 
 If (Nal_In<2) then //безнал
  Begin
   lblEnterprise.Top := lblDesk.Top;
   dblcEnterprise.Top := dblcDesk.Top;
   lblDesk.Visible := False;
   dblcDesk.Visible := False;
   lblEnterprise.Visible := True;
   dblcEnterprise.Visible := True;
   cbDeskAccount.Caption := 'Счет:';
   ibdsFilterDeskAccount.SelectSQL.Clear;
   ibdsFilterDeskAccount.SelectSQL.Add('select EA.ID, EA.ACCOUNT||'' ''||B.NAME||'' ''||E.NAME NAME');
   ibdsFilterDeskAccount.SelectSQL.Add('from ENTERPRISES E, BANKS B, ENTERPRISES_ACCOUNTS EA');
   ibdsFilterDeskAccount.SelectSQL.Add('where (B.ID=EA.BANK_ID) and (E.ID=EA.ENTERPRISE_ID)');
   ibdsFilterDeskAccount.SelectSQL.Add('order by 2')
  End
 else
  Begin
   ibdsFilterDeskAccount.SelectSQL.Clear;
   ibdsFilterDeskAccount.SelectSQL.Add('select ECD.ID, ECD.NAME||''/''||S.NAME||''/''||E.NAME NAME');
   ibdsFilterDeskAccount.SelectSQL.Add('from ENTERPRISES E, STORES S, ENTERPRISE_CASH_DESKS ECD');
   ibdsFilterDeskAccount.SelectSQL.Add('where (S.ID=ECD.STORE_ID) and (E.ID=ECD.ENTERPRISE_ID)');
   ibdsFilterDeskAccount.SelectSQL.Add('order by 2')
  End;
 ibdsFilterDeskAccount.Active := sbFilterPrimaryPaymentsList.Down;
 ibdsFilterTypes.Active := sbFilterPrimaryPaymentsList.Down;
 ibdsFilterContractorTypes.Active := sbFilterPrimaryPaymentsList.Down;
 GenerateSelectMainPrimaryPaymentsList;
 GenerateSelectMainPrimaryPayment;
 GenerateSelectDesks;
 GenerateSelectPrimarySetup;
 If (Plat_ID=0) then
  Begin
   PageControl1.ActivePageIndex := 0;
   ibdsMainPrimaryPaymentsList.Open
  End
 else
  Begin
   ibdsMainPrimaryPayment.ParamByName('ID').AsInt64 := Plat_ID;
   PageControl1.ActivePageIndex := 1;
   Plat_ID := 0
  End
end;

procedure TfrmPlat.SpeedButton21Click(Sender: TObject);
begin
 Close
end;

procedure TfrmPlat.fcLabel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsLowered
end;

procedure TfrmPlat.fcLabel1MouseEnter(Sender: TObject);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsRaised
end;

procedure TfrmPlat.fcLabel1MouseLeave(Sender: TObject);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsLowered
end;

procedure TfrmPlat.fcLabel1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsRaised;
 pmParent.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y)
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentsListAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,'PrimaryPaymentsList');
 sbDeletePrimaryPaymentsList.Enabled := (ibdsMainPrimaryPaymentsListDELETE_RIGHT.AsInteger=1)
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentsListUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   ibsWhite.SQL.AddStrings(ibdsMainPrimaryPaymentsList.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainPrimaryPaymentsListID.OldValue);
   ibsWhite.ExecQuery
  End;
 UpdateAction := uaApply
end;

procedure TfrmPlat.sbAddPrimaryPaymentsListClick(Sender: TObject);
begin
 If NOT (sbApplyPrimaryPaymentsList.Enabled) then
  Begin
   tsPrimaryPayment.Show;
   PageControl1Change(PageControl1);
   sbAddPrimaryPayment.Click
  End
end;

procedure TfrmPlat.sbDeletePrimaryPaymentsListClick(Sender: TObject);
begin
 ibdsMainPrimaryPaymentsList.Delete
end;

procedure TfrmPlat.sbApplyPrimaryPaymentsListClick(Sender: TObject);
begin
 try
  ibdsMainPrimaryPaymentsList.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('PrimaryPaymentsList', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
end;

procedure TfrmPlat.sbCancelPrimaryPaymentsListClick(Sender: TObject);
begin
 ibdsMainPrimaryPaymentsList.CancelUpdates;
 StteChange('PrimaryPaymentsList', False);
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentCalcFields(DataSet: TDataSet);
begin
 ibdsMainPrimaryPaymentNumber_Str.Value := ibdsMainPrimaryPaymentNUMBER_PREFIX.AsString;
 If (ibdsMainPrimaryPaymentNUMBER.Value<>0) then
  ibdsMainPrimaryPaymentNUMBER_STR.Value := ibdsMainPrimaryPaymentNUMBER_STR.Value+
                                                 ibdsMainPrimaryPaymentNUMBER.AsString;
 ibdsMainPrimaryPaymentNUMBER_STR.Value := ibdsMainPrimaryPaymentNUMBER_STR.Value+
                                                ibdsMainPrimaryPaymentNUMBER_SUFFIX.AsString
end;

procedure TfrmPlat.wwDBComboBox2DropDown(Sender: TObject);
begin
 pnlNumber.Parent := (Sender as TwwDBComboBox).Parent;
 pnlNumber.Top := (Sender as TwwDBComboBox).Top+(Sender as TwwDBComboBox).Height-1;
 pnlNumber.Left := (Sender as TwwDBComboBox).Left;
 pnlNumber.Show
end;

procedure TfrmPlat.SpeedButton1Click(Sender: TObject);
begin
 (Sender as TControl).Parent.Hide
end;

procedure TfrmPlat.wwDBLookupCombo10CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   If (Black) then
    dbcbBlack.Enabled := (ibdsMainPrimaryPaymentPARENT_ID.IsNull) and
                         (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=3);
   If Not (ibdsPrimary_SetupINVOICE_ID_DEFAULT.IsNull) then
    Begin
     If (Nal_In in [0,2]) then
      ibdsMainPrimaryPaymentPARENT_TYPE.Value := 4 //Расходный счет
     else
      ibdsMainPrimaryPaymentPARENT_TYPE.Value := 3; //Приходный счет
     ibdsMainPrimaryPaymentPARENT_ID.Value := ibdsPrimary_SetupINVOICE_ID_DEFAULT.Value
    End;
   NumberPrefix := ibdsPrimary_SetupNUMBER_PREFIX.AsString;
   ibdsMainPrimaryPaymentNUMBER_FORMAT.Value := ibdsPrimary_SetupNUMBER_FORMAT.Value;
   NumberSuffix := ibdsPrimary_SetupNUMBER_SUFFIX.AsString;
   ibdsMainPrimaryPaymentNUMBER_RESTART_PERIOD.Value := ibdsPrimary_SetupNUMBER_RESTART_PERIOD.Value;
   If (Black) then
    Begin
     If (ibdsMainPrimaryPayment.State=dsInsert) then
      ibdsMainPrimaryPaymentBLACK.Value := ibdsPrimary_SetupBLACK_DEFAULT.Value;
     If (ibdsPrimary_SetupBLACK.Value=1) then
      Begin
       If (ibdsMainPrimaryPaymentBLACK.Value<>1) then
        ibdsMainPrimaryPaymentBLACK.Value := 1;
       dbcbBlack.Enabled := False
      End
     else
      Begin
       If (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=1) then
        If (ibdsMainPrimaryPaymentBLACK.Value<>0) then
          ibdsMainPrimaryPaymentBLACK.Value := 0;
       If (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=2) then
        If (ibdsMainPrimaryPaymentBLACK.Value<>1) then
         ibdsMainPrimaryPaymentBLACK.Value := 1;
       If (ibdsPrimary_SetupCREATE_RIGHT.AsInteger<>3) then
        dbcbBlack.Enabled := False
      End
    End;
   If (ibdsMainPrimaryPaymentCURRENCY_ID.IsNull) and (NOT(ibdsPrimary_SetupCURRENCY_ID_DEFAULT.IsNull)) then
    Begin
     ibdsMainPrimaryPaymentCURRENCY_ID.Value := ibdsPrimary_SetupCURRENCY_ID_DEFAULT.Value;
     ibdsCurrency.Locate('ID', ibdsMainPrimaryPaymentCURRENCY_ID.AsString,[]);
     ibdsMainPrimaryPaymentCURRENCY_RATE.Value := ibdsCurrencyCURRENT_RATE.Value
    End;
   If (ibdsMainPrimaryPaymentSECURITY_LEVEL.Value<ibdsPrimary_SetupSECURITY_LEVEL.Value) then
    ibdsMainPrimaryPaymentSECURITY_LEVEL.Value := ibdsPrimary_SetupSECURITY_LEVEL.AsInteger
  End;
 ibdsPrimary_Setup.Filtered := False
end;

procedure TfrmPlat.dblcCurrencyCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainPrimaryPaymentCURRENCY_RATE.Value := ibdsCurrencyCURRENT_RATE.Value;
   SetCurrencyFmt
  End;
 ibdsCurrency.Filtered := False
end;

procedure TfrmPlat.dblcDeskCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 ibdsMainPrimaryPaymentENTERPRISE_ID.Value := ibdsDesksENTERPRISE_ID.AsLargeInt;
 ibdsMainPrimaryPaymentENTERPRISE_STORE_ID.Value := ibdsDesksSTORE_ID.AsLargeInt;
 ibdsMainPrimaryPayment.Post;
 ibdsPrimary_Setup.Open;
 ibdsDesks.Filtered := False
end;

procedure TfrmPlat.sbFirstPrimaryPaymentsListClick(Sender: TObject);
begin
 ibdsMainPrimaryPaymentsList.First
end;

procedure TfrmPlat.sbPriorPrimaryPaymentsListClick(Sender: TObject);
begin
 ibdsMainPrimaryPaymentsList.Prior
end;

procedure TfrmPlat.sbNextPrimaryPaymentsListClick(Sender: TObject);
begin
 ibdsMainPrimaryPaymentsList.Next
end;

procedure TfrmPlat.sbLastPrimaryPaymentsListClick(Sender: TObject);
begin
 ibdsMainPrimaryPaymentsList.Last
end;

procedure TfrmPlat.dsMainPrimaryPaymentsListStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmPlat.dbgPaymentsListCalcTitleImage(Sender: TObject; Field: TField;
  var TitleImageAttributes: TwwTitleImageAttributes);
begin
 If (Field=ibdsMainPrimaryPaymentsListAMOUNT_FMT) then
  Field := ibdsMainPrimaryPaymentsListAMOUNT;
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainPrimaryPaymentsList)
end;

procedure TfrmPlat.dbgPaymentsListCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmPlat.dbgPaymentsListTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 If (AFieldName='AMOUNT_FMT') then
  AFieldName := 'AMOUNT';
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainPrimaryPaymentsList, (GetKeyState(VK_CONTROL)<0),
                          sbApplyPrimaryPaymentsList, sbCancelPrimaryPaymentsList, GenerateSelectMainPrimaryPaymentsList)
end;

procedure TfrmPlat.PageControl1Change(Sender: TObject);
 var Active : Boolean;
begin
 Active := (PageControl1.ActivePage<>tsPrimaryPaymentsList);
 ibdsMainPrimaryPayment.Active := Active;
 ibdsDesks.Active := Active;
 ibdsEnterprises.Active := Active;
 ibdsPersons.Active := Active;
 ibdsPrimary_Setup.Active := Active;
 ibdsContractors.Active := Active;
 ibdsCurrency.Active := Active;
 ibdsEnterpriseAccounts.Active := Active;
 ibdsContractorAccounts.Active := Active;
 ibdsFactura.Active := Active;
 If Not(Active) and Not(ibdsMainPrimaryPaymentsList.Active) then
  Begin
   ibdsMainPrimaryPaymentsList.Active := True;
   try
    ibdsMainPrimaryPaymentsList.Bookmark := MainPrimaryPaymentsListBookMark
   except
   end;
   If (ibdsMainPrimaryPaymentsList.Eof) then
    try
     ibdsMainPrimaryPaymentsList.Bookmark := MainPrimaryPaymentsListPriorBookMark
    except
    end
  End;
 SetCurrencyFmt
end;

procedure TfrmPlat.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 AllowChange := True;
 If (PageControl1.ActivePage=tsPrimaryPaymentsList) and (Plat_ID=0) then
  ibdsMainPrimaryPayment.ParamByName('ID').AsInt64 := ibdsMainPrimaryPaymentsListID.Value
end;

procedure TfrmPlat.sbDeletePrimaryPaymentClick(Sender: TObject);
begin
 ibdsMainPrimaryPayment.Delete
end;

procedure TfrmPlat.sbAddPrimaryPaymentClick(Sender: TObject);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_PRIMARY_PAYMENTS,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainPrimaryPayment.Close;
 ibdsMainPrimaryPayment.ParamByName('ID').AsInt64 := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibdsMainPrimaryPayment.Open;
 ibsGen_ID.Close;
 ibdsMainPrimaryPayment.Insert
end;

procedure TfrmPlat.sbCancelPrimaryPaymentClick(Sender: TObject);
begin
 If (trLock.InTransaction) then
  trLock.Commit;
 ibdsMainPrimaryPayment.CancelUpdates;
 StteChange('PrimaryPayment', False);
 ibdsPrimary_Setup.Close;
 GenerateSelectPrimarySetup;
 ibdsPrimary_Setup.Open
end;

procedure TfrmPlat.sbApplyPrimaryPaymentClick(Sender: TObject);
begin
 If (ibdsMainPrimaryPayment.RecordCount>0) and (Nal_In<2) and
    (ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_ID.IsNull) then // безнал
  Begin
   MessageDlg('Должны быть выбраны расчетные счета предприятия и контрагента!',mtError,[mbOK],0);
   Exit
  End;
 If (ibdsMainPrimaryPayment.RecordCount>0) and (Nal_In>1) and
    (ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID.IsNull) then // нал
  Begin
   MessageDlg('Должна быть выбрана касса предприятия!',mtError,[mbOK],0);
   Exit
  End;
 If (ibdsMainPrimaryPayment.State in [dsEdit,dsInsert]) then
  ibdsMainPrimaryPayment.Post;
 If (ibdsMainPrimaryPaymentAMOUNT.AsVariant=null) and (ibdsMainPrimaryPayment.RecordCount>0) then
  Begin
   ibdsMainPrimaryPayment.Edit;
   ibdsMainPrimaryPaymentAMOUNT.Value := 0
  End;
 try
  ibdsMainPrimaryPayment.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('PrimaryPayment', False);
  ibdsMainPrimaryPayment.Close;
  ibdsMainPrimaryPayment.Open;
  If (ibdsMainPrimaryPaymentsList.Active) then
   Begin
    MainPrimaryPaymentsListBookMark := ibdsMainPrimaryPaymentsList.Bookmark;
    ibdsMainPrimaryPaymentsList.Prior;
    MainPrimaryPaymentsListPriorBookMark := ibdsMainPrimaryPaymentsList.Bookmark;
    ibdsMainPrimaryPaymentsList.Close
   End 
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 If (trLock.InTransaction) then
  trLock.Commit
end;
                                             
procedure TfrmPlat.ibdsMainPrimaryPaymentUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
 var Number, BlackOld, BlackNew, Number_FormatOld, Number_FormatNew : Integer;
     SetupOld, SetupNew, CashDesk_AccountOld, CashDesk_AccountNew : String;
     Setted : Boolean;
begin
 If (Black) then
  Begin
   BlackOld := ibdsMainPrimaryPaymentBLACK.OldValue;
   BlackNew := ibdsMainPrimaryPaymentBLACK.NewValue
  End
 else
  Begin
   BlackOld := 0;
   BlackNew := 0
  End;
 If (ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID.IsNull) then
  Begin
   CashDesk_AccountOld := IntToStr(ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_ID.OldValue);
   CashDesk_AccountNew := IntToStr(ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_ID.NewValue)
  End
 else
  Begin
   CashDesk_AccountOld := IntToStr(ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID.OldValue);
   CashDesk_AccountNew := IntToStr(ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID.NewValue)
  End;
 Number_FormatOld := ibdsMainPrimaryPaymentNUMBER_FORMAT.OldValue;
 Number_FormatNew := ibdsMainPrimaryPaymentNUMBER_FORMAT.NewValue;
 SetupOld := IntToStr(ibdsMainPrimaryPaymentPRIMARY_SETUP_ID.OldValue);
 SetupNew := IntToStr(ibdsMainPrimaryPaymentPRIMARY_SETUP_ID.NewValue);
 If (UpdateKind=ukInsert) or (BLACKOld<>BLACKNew) or (SetupOld<>SetupNew) or (CashDesk_AccountOld<>CashDesk_AccountNew) then
  Begin
   If (UpdateKind=ukInsert) or (BLACKOld<>BLACKNew) or (Number_FormatOld<>Number_FormatNew) or
      (ibdsMainPrimaryPaymentPAYMENT_DATE.OldValue<>ibdsMainPrimaryPaymentPAYMENT_DATE.NewValue) or
      (CashDesk_AccountOld<>CashDesk_AccountNew) then
    Begin
     pnlMessage.Show;
     Application.ProcessMessages;
     If NOT (trLock.InTransaction) then
      trLock.StartTransaction;
     pnlMessage.Hide;
     Application.ProcessMessages;
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select PP.NUMBER');
     ibsNumb.SQL.Add('from PRIMARY_PAYMENTS PP, PRIMARY_SETUP PS');
     ibsNumb.SQL.Add('where (PP.PAYMENT_DATE>=:START_DATE) and (PP.PAYMENT_DATE<:STOP_DATE)');
     If (Black) then
      ibsNumb.SQL.Add('and (PP.BLACK=:BLACK)');
     ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PP.PRIMARY_SETUP_ID=PS.ID)');
     If (ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID.IsNull) then
      ibsNumb.SQL.Add('and (PP.ENTERPRISE_ACCOUNT_ID='+CashDesk_AccountNew+')')
     else
      ibsNumb.SQL.Add('and (PP.ENTERPRISE_CASH_DESK_ID='+CashDesk_AccountNew+')');
     ibsNumb.SQL.Add('order by 1');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('START_DATE').AsDate := GetStartDate(ibdsMainPrimaryPaymentNUMBER_RESTART_PERIOD.Value, ibdsMainPrimaryPaymentPAYMENT_DATE.Value);
     ibsNumb.ParamByName('STOP_DATE').AsDate := GetStopDate(ibdsMainPrimaryPaymentNUMBER_RESTART_PERIOD.Value, ibdsMainPrimaryPaymentPAYMENT_DATE.Value);
     If (Black) then
      ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
     ibsNumb.ExecQuery;
     ibdsMainPrimaryPayment.Edit;
     If (ibsNumb.Eof) then
      ibdsMainPrimaryPaymentNUMBER.Value := 1
     else
      Begin
       Setted := False;
       While Not (ibsNumb.Eof) do
        Begin
         Number := ibsNumb.FieldByName('NUMBER').AsInteger;
         ibsNumb.Next;
         If ((ibsNumb.FieldByName('NUMBER').AsInteger-Number)>1) then
          Begin
           ibdsMainPrimaryPaymentNUMBER.Value := Succ(Number);
           Setted := True;
           Break
          End
        End;
       If NOT (Setted) then
        ibdsMainPrimaryPaymentNUMBER.Value := Succ(ibsNumb.FieldByName('NUMBER').AsInteger)
      End;
     ibsNumb.Close
    End;
   If (UpdateKind=ukInsert) or (SETUPOld<>SETUPNew) then
    Begin
     NumberPrefix := ReplaceDateStr(NumberPrefix,ibdsMainPrimaryPaymentPAYMENT_DATE.Value);
     NumberSuffix := ReplaceDateStr(NumberSuffix,ibdsMainPrimaryPaymentPAYMENT_DATE.Value);
     If NOT (ibdsMainPrimaryPayment.State in [dsInsert, dsEdit]) then
      ibdsMainPrimaryPayment.Edit;
     ibdsMainPrimaryPaymentNUMBER_PREFIX.AsString := NumberPrefix;
     ibdsMainPrimaryPaymentNUMBER_SUFFIX.AsString := NumberSuffix
    End
  End;
 If (UpdateKind=ukModify) and
    ((VarToStr(ibdsMainPrimaryPaymentNUMBER_PREFIX.OldValue)<>VarToStr(ibdsMainPrimaryPaymentNUMBER_PREFIX.NewValue)) or
     (ibdsMainPrimaryPaymentNUMBER.OldValue<>ibdsMainPrimaryPaymentNUMBER.NewValue) or
     (VarToStr(ibdsMainPrimaryPaymentNUMBER_SUFFIX.OldValue)<>VarToStr(ibdsMainPrimaryPaymentNUMBER_SUFFIX.NewValue))) and
    (Nal_In<>1) then
  Begin
   ibsNumb.SQL.Clear;
   ibsNumb.SQL.Add('select count(*) CNT');
   ibsNumb.SQL.Add('from PRIMARY_PAYMENTS PP, PRIMARY_SETUP PS');
   ibsNumb.SQL.Add('where (PP.PAYMENT_DATE>=:START_DATE) and (PP.PAYMENT_DATE<:STOP_DATE)');
   If (Black) then
    ibsNumb.SQL.Add('and (PP.BLACK=:BLACK)');
   ibsNumb.SQL.Add('and (PS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (PP.PRIMARY_SETUP_ID=PS.ID) and (PS.IN_OUT=:IN_OUT)');
   ibsNumb.SQL.Add('and (PP.NUMBER_PREFIX='#39+ibdsMainPrimaryPaymentNUMBER_PREFIX.AsString+#39') and (PP.NUMBER='+ibdsMainPrimaryPaymentNUMBER.AsString+') and (PP.NUMBER_SUFFIX='#39+ibdsMainPrimaryPaymentNUMBER_SUFFIX.AsString+#39')');
   If (ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID.IsNull) then
    ibsNumb.SQL.Add('and (PP.ENTERPRISE_ACCOUNT_ID='+CashDesk_AccountNew+')')
   else
    ibsNumb.SQL.Add('and (PP.ENTERPRISE_CASH_DESK_ID='+CashDesk_AccountNew+')');
   ibsNumb.GenerateParamNames := True;
   ibsNumb.ParamByName('START_DATE').AsDate := GetStartDate(ibdsMainPrimaryPaymentNUMBER_RESTART_PERIOD.Value, ibdsMainPrimaryPaymentPAYMENT_DATE.Value);
   ibsNumb.ParamByName('STOP_DATE').AsDate := GetStopDate(ibdsMainPrimaryPaymentNUMBER_RESTART_PERIOD.Value, ibdsMainPrimaryPaymentPAYMENT_DATE.Value);
   If (Nal_In in [0,2]) then
    ibsNumb.ParamByName('IN_OUT').AsInteger := 1
   else
    ibsNumb.ParamByName('IN_OUT').AsInteger := 2;
   If (Black) then
    ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
   ibsNumb.ExecQuery;
   If (ibsNumb.FieldByName('CNT').AsInteger>0) then
    Begin
     MessageDlg('Документ с таким номером существует! Сохранить невозможно!',mtError,[mbOK],0);
     UpdateAction := uaFail;
     ibsNumb.Close;
     Exit
    End;
   ibsNumb.Close
  End;
 If (ibdsMainPrimaryPayment.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryPayment.Post;
 If (Black) and ((BLACKOld=0) or (BLACKNew=0)) then
  Begin
   ibsWhite.SQL.Clear;
   If (UpdateKind=ukInsert) or
      ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
    Begin
     ibsWhite.SQL.AddStrings(ibdsMainPrimaryPayment.InsertSQL);
     ibsWhite.SQL.Strings[6] := '';
     ibsWhite.SQL.Strings[17] := ''
    End
   else
    If (UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0) then
     Begin
      ibsWhite.SQL.AddStrings(ibdsMainPrimaryPayment.ModifySQL);
      ibsWhite.SQL.Strings[17] := ''
     End
    else
     If (UpdateKind=ukDelete) or ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=1)) then
      ibsWhite.SQL.AddStrings(ibdsMainPrimaryPayment.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   If ((UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0))) or
      ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0)) then
    Begin
     ibsWhite.ParamByName('PARENT_TYPE').Value := ibdsMainPrimaryPaymentPARENT_TYPE.Value;
     If (ibdsMainPrimaryPaymentPARENT_ID.IsNull) then
      ibsWhite.ParamByName('PARENT_ID').Value := null
     else
      ibsWhite.ParamByName('PARENT_ID').AsInt64 := ibdsMainPrimaryPaymentPARENT_ID.Value;
     ibsWhite.ParamByName('PARENT_CURRENCY_RATE').Value := ibdsMainPrimaryPaymentPARENT_CURRENCY_RATE.AsVariant;
     ibsWhite.ParamByName('PRIMARY_SETUP_ID').AsInt64 := ibdsMainPrimaryPaymentPRIMARY_SETUP_ID.Value;
     ibsWhite.ParamByName('MASTER_ID').AsInt64 := ibdsMainPrimaryPaymentMASTER_ID.Value;
     ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsMainPrimaryPaymentSECURITY_LEVEL.AsVariant;
     ibsWhite.ParamByName('NUMBER_PREFIX').Value := ibdsMainPrimaryPaymentNUMBER_PREFIX.AsVariant;
     ibsWhite.ParamByName('NUMBER').Value := ibdsMainPrimaryPaymentNUMBER.AsVariant;
     ibsWhite.ParamByName('NUMBER_SUFFIX').Value := ibdsMainPrimaryPaymentNUMBER_SUFFIX.AsVariant;
     ibsWhite.ParamByName('PAYMENT_DATE').Value := ibdsMainPrimaryPaymentPAYMENT_DATE.AsVariant;
     ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryPaymentENTERPRISE_ID.Value;
     If (ibdsMainPrimaryPaymentENTERPRISE_STORE_ID.IsNull) then
      ibsWhite.ParamByName('ENTERPRISE_STORE_ID').Value := null
     else
      ibsWhite.ParamByName('ENTERPRISE_STORE_ID').AsInt64 := ibdsMainPrimaryPaymentENTERPRISE_STORE_ID.Value;
     If (ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID.IsNull) then
      ibsWhite.ParamByName('ENTERPRISE_CASH_DESK_ID').Value := null
     else
      ibsWhite.ParamByName('ENTERPRISE_CASH_DESK_ID').AsInt64 := ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID.Value;
     ibsWhite.ParamByName('CONTRACTOR_ID').AsInt64 := ibdsMainPrimaryPaymentCONTRACTOR_ID.Value;
     ibsWhite.ParamByName('CURRENCY_ID').AsInt64 := ibdsMainPrimaryPaymentCURRENCY_ID.Value;
     ibsWhite.ParamByName('CURRENCY_RATE').Value := ibdsMainPrimaryPaymentCURRENCY_RATE.AsVariant;
     ibsWhite.ParamByName('AMOUNT').Value := ibdsMainPrimaryPaymentAMOUNT.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainPrimaryPaymentCOMMENTS.AsVariant;
     If (ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_ID.IsNull) then
      ibsWhite.ParamByName('ENTERPRISE_ACCOUNT_ID').Value := null
     else
      ibsWhite.ParamByName('ENTERPRISE_ACCOUNT_ID').AsInt64 := ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_ID.Value;
     If (ibdsMainPrimaryPaymentCONTRACTOR_ACCOUNT_ID.IsNull) then
      ibsWhite.ParamByName('CONTRACTOR_ACCOUNT_ID').Value := null
     else
      ibsWhite.ParamByName('CONTRACTOR_ACCOUNT_ID').AsInt64 := ibdsMainPrimaryPaymentCONTRACTOR_ACCOUNT_ID.Value;
     ibsWhite.ParamByName('PAYMENT_KIND').Value := ibdsMainPrimaryPaymentPAYMENT_KIND.AsVariant;
     ibsWhite.ParamByName('CHARGE_KIND').Value := ibdsMainPrimaryPaymentCHARGE_KIND.AsVariant;
     ibsWhite.ParamByName('PAYMENT_PURPOSE').Value := ibdsMainPrimaryPaymentPAYMENT_PURPOSE.AsVariant;
     ibsWhite.ParamByName('CODE').Value := ibdsMainPrimaryPaymentCODE.AsVariant;
     ibsWhite.ParamByName('TERM_DATE').Value := ibdsMainPrimaryPaymentTERM_DATE.AsVariant;
     ibsWhite.ParamByName('PAYMENT_ORDER').Value := ibdsMainPrimaryPaymentPAYMENT_ORDER.AsVariant;
     ibsWhite.ParamByName('RESERV_FIELD').Value := ibdsMainPrimaryPaymentRESERV_FIELD.AsVariant;
     ibsWhite.ParamByName('PAYMENT_PURPOSE_BIG').Value := ibdsMainPrimaryPaymentPAYMENT_PURPOSE_BIG.AsVariant;
     ibsWhite.ParamByName('NDS').Value := ibdsMainPrimaryPaymentNDS.AsVariant
    End;
   If (UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainPrimaryPaymentID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainPrimaryPaymentID.Value;
   ibsWhite.ExecQuery;
  End;
 UpdateAction := uaApply
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentNewRecord(DataSet: TDataSet);
begin
 ibdsMainPrimaryPaymentID.Value := ibdsMainPrimaryPayment.ParamByName('ID').AsInt64;
 ibdsMainPrimaryPaymentPAYMENT_DATE.Value := Date;
 If (Black) then
  ibdsMainPrimaryPaymentBLACK.Value := 0;
 ibdsMainPrimaryPaymentMASTER_ID.Value := PersonID;
 ibdsMainPrimaryPaymentSECURITY_LEVEL.Value := 1;
 ibdsMainPrimaryPaymentNUMBER_PREFIX.Value := 'НОВАЯ';
 ibdsMainPrimaryPaymentNUMBER_SUFFIX.Value := ' ';
 ibdsMainPrimaryPaymentNUMBER.Value := 0;
 ibdsMainPrimaryPaymentNUMBER_FORMAT.Value := 0;
 ibdsMainPrimaryPaymentPARENT_TYPE.Value := 0;
 ibdsMainPrimaryPaymentPARENT_CURRENCY_RATE.Value := 0;
 ibdsMainPrimaryPaymentPARENT_ID.AsVariant := Null;
 ibdsMainPrimaryPaymentPRIMARY_SETUP_ID.Value := 0;
 SetReadOnly
end;

procedure TfrmPlat.tsPrimaryPaymentShow(Sender: TObject);
begin
 PageControl1Change(PageControl1)
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentPARENT_IDChange(Sender: TField);
begin
 If (Black) then
  dbcbBlack.Enabled := (ibdsPrimary_SetupBLACK.Value<>1) and
                       (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=3);
 If (ibdsMainPrimaryPaymentPARENT_ID.IsNull) then
  Begin
   fcContract.Caption := 'Самостоятельный документ';
   If (ibdsMainPrimaryPayment.State in [dsEdit,dsInsert]) then
    ibdsMainPrimaryPaymentPARENT_TYPE.Value := 0
  End
 else
  Begin
   ibsNumb.SQL.Clear;
   If (ibdsMainPrimaryPaymentPARENT_TYPE.Value=1) then //приходная накладная
    Begin
     ibsNumb.SQL.Add('select NUMBER_PREFIX, NUMBER, NUMBER_SUFFIX, PRIMARY_DATE DOC_DATE, CURRENCY_RATE');
     If (Black) then
      ibsNumb.SQL.Add(', BLACK');
     ibsNumb.SQL.Add('from PRIMARY_TOVAR_INCOME_HEADER where (ID='+ibdsMainPrimaryPaymentPARENT_ID.AsString+')');
     fcContract.Caption := 'Приходная накладная № '
    End
   else
    If (ibdsMainPrimaryPaymentPARENT_TYPE.Value=2) then //расходная накладная
     Begin
      ibsNumb.SQL.Add('select NUMBER_PREFIX, NUMBER, NUMBER_SUFFIX, PRIMARY_DATE DOC_DATE, CURRENCY_RATE');
      If (Black) then
       ibsNumb.SQL.Add(', BLACK');
      ibsNumb.SQL.Add('from PRIMARY_TOVAR_OUTCOME_HEADER where (ID='+ibdsMainPrimaryPaymentPARENT_ID.AsString+')');
      fcContract.Caption := 'Расходная накладная № '
     End
    else
     If (ibdsMainPrimaryPaymentPARENT_TYPE.Value in [3,4]) then //счет
      Begin
       ibsNumb.SQL.Add('select NUMBER_PREFIX, NUMBER, NUMBER_SUFFIX, INVOICE_DATE DOC_DATE, CURRENCY_RATE');
       If (Black) then
        ibsNumb.SQL.Add(', BLACK, DOUBLE_SOSTAV');
       ibsNumb.SQL.Add('from INVOICE_HEADER where (ID='+ibdsMainPrimaryPaymentPARENT_ID.AsString+')');
       If (ibdsMainPrimaryPaymentPARENT_TYPE.Value=3) then
        fcContract.Caption := 'Приходный '
       else
        fcContract.Caption := 'Расходный ';
       fcContract.Caption := fcContract.Caption+'cчет № '
      End
     else
      Begin
       ibsNumb.SQL.Add('select NUMBER_PREFIX, NUMBER, NUMBER_SUFFIX, CONTRACT_DATE DOC_DATE');
       If (Black) then
        ibsNumb.SQL.Add(', BLACK');
       ibsNumb.SQL.Add('from CONTRACTS where (ID='+ibdsMainPrimaryPaymentPARENT_ID.AsString+')');
       fcContract.Caption := 'Договор № '
      End;
   ibsNumb.ExecQuery;
   fcContract.Caption := fcContract.Caption+ibsNumb.FieldByName('NUMBER_PREFIX').AsString+
                                            ibsNumb.FieldByName('NUMBER').AsString+
                                            ibsNumb.FieldByName('NUMBER_SUFFIX').AsString+
                                            ' от '+FormatDateTime('dd.mm.yyyy',ibsNumb.FieldByName('DOC_DATE').AsDateTime);
   If (Black) then
    If (ibdsMainPrimaryPayment.State in [dsEdit,dsInsert]) then
     Begin
      If (ibdsMainPrimaryPaymentPARENT_TYPE.Value in [1,2]) then //приходная накладная
       Begin
        ibdsMainPrimaryPaymentBLACK.Value := ibsNumb.FieldByName('BLACK').AsInteger;
        dbcbBlack.Enabled := False;
       End
      else
       If (ibdsMainPrimaryPaymentPARENT_TYPE.Value in [3,4]) then //счет
        Begin
         ibdsMainPrimaryPaymentBLACK.Value := ibsNumb.FieldByName('BLACK').AsInteger;
         dbcbBlack.Enabled := False
        End
       else
        If (ibdsMainPrimaryPaymentPARENT_TYPE.Value=5) then //договор
         Begin
          ibdsMainPrimaryPaymentBLACK.Value := ibsNumb.FieldByName('BLACK').AsInteger;
          dbcbBlack.Enabled := False
         End;
      ibdsMainPrimaryPaymentPARENT_CURRENCY_RATE.Value := ibsNumb.FieldByName('CURRENCY_RATE').AsDouble
     End;
   ibsNumb.Close
  End;
 lblParentRate.Visible := NOT (ibdsMainPrimaryPaymentPARENT_ID.IsNull);
 dbeParentRate.Visible := NOT (ibdsMainPrimaryPaymentPARENT_ID.IsNull)
end;

procedure TfrmPlat.SetInvoiceID;
 var frm : TfrmInvoice;
begin
 If (Parent_Closed) then
  Exit;
 If NOT (ibdsMainPrimaryPayment.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryPayment.Edit;
 Case ibdsMainPrimaryPaymentPARENT_TYPE.AsInteger of
  {1}4: frm := frmInvoiceOut;
  {2}3: frm := frmInvoiceIn
 End;
 If (frm.ibdsMainInvoice.Active) then
  Begin
   ibdsMainPrimaryPaymentPARENT_ID.Value := frm.ibdsMainInvoiceID.Value;
   ibdsMainPrimaryPaymentCONTRACTOR_ID.Value := frm.ibdsMainInvoiceCONTRACTOR_ID.Value
  End
 else
  Begin
   ibdsMainPrimaryPaymentPARENT_ID.Value := frm.ibdsMainInvoicesListID.Value;
   ibdsMainPrimaryPaymentCONTRACTOR_ID.Value := frm.ibdsMainInvoicesListCONTRACTOR_ID.Value
  End;
 frm.LookUpProcedure := nil
end;

procedure TfrmPlat.SetNaklID;
begin
 If (Parent_Closed) then
  Exit;
 If NOT (ibdsMainPrimaryPayment.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryPayment.Edit;
 If (ibdsMainPrimaryPaymentPARENT_TYPE.Value=1) then
  Begin
   ibdsMainPrimaryPaymentPARENT_ID.Value := frmNaklIn.ibdsMainPrimaryTovarIncomeID.Value;
   ibdsMainPrimaryPaymentCONTRACTOR_ID.Value := frmNaklIn.ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.Value;
   frmNaklIn.LookUpProcedure := nil
  End
 else
  Begin
   ibdsMainPrimaryPaymentPARENT_ID.Value := frmNaklOut.ibdsMainPrimaryTovarOutcomeListID.Value;
   ibdsMainPrimaryPaymentCONTRACTOR_ID.Value := frmNaklOut.ibdsMainPrimaryTovarOutcomeListCONTRACTOR_ID.Value;
   frmNaklOut.LookUpProcedure := nil
  End
end;

procedure TfrmPlat.pmParentSelfClick(Sender: TObject);
begin
 If NOT (ibdsMainPrimaryPayment.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryPayment.Edit;
 ibdsMainPrimaryPaymentPARENT_ID.AsVariant := Null
end;

procedure TfrmPlat.dbgPaymentsListCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
 wwDBGridCalcCellColors3(Sender, Field, State, Highlight, AFont, ABrush)
end;

procedure TfrmPlat.SetCurrencyFmt;
 var k : Integer;
     CurrencyFrmt : String;
begin
 If (Nal_In in [0,2]) then
  k := ibdsCurrencyDECIMALS_OUT.Value
 else
  k := ibdsCurrencyDECIMALS_IN.Value;
 CurrencyRoundPower := Trunc(Power(10,k));
 CurrencyFrmt := '#,##0.';
 While (k>0) do
  Begin
   CurrencyFrmt := CurrencyFrmt+'0';
   Dec(k)
  End;
 ibdsMainPrimaryPaymentAMOUNT.DisplayFormat := CurrencyFrmt;
 ibdsMainPrimaryPaymentAMOUNT.EditFormat := CurrencyFrmt
end;

procedure TfrmPlat.pmParentInvoiceInClick(Sender: TObject);
begin
 If (ibdsMainPrimaryPayment.RecordCount>0) or (ibdsMainPrimaryPayment.State=dsInsert) then
  Case (Sender as TMenuItem).Tag of
   {1}4 : Begin
        If (frmMain.FindComponent('frmInvoiceOut')=nil) then
         Begin
          TempIn_Out := 1;
          If NOT (ibdsMainPrimaryPaymentPARENT_ID.IsNull) and (ibdsMainPrimaryPaymentPARENT_TYPE.Value=1) then
           Invoice_ID := ibdsMainPrimaryPaymentPARENT_ID.Value;
          frmInvoiceOut := TfrmInvoice.Create(frmMain);
          frmInvoiceOut.Name := 'frmInvoiceOut'
         End
        else
         If NOT (ibdsMainPrimaryPaymentPARENT_ID.IsNull) and (ibdsMainPrimaryPaymentPARENT_TYPE.Value=(Sender as TMenuItem).Tag) then
          Begin
           If (frmInvoiceOut.PageControl1.ActivePageIndex<>1) then
            frmInvoiceOut.PageControl1.ActivePageIndex := 1;
           frmInvoiceOut.ibdsMainInvoice.Close;
           frmInvoiceOut.ibdsMainInvoice.ParamByName('ID').AsInt64 := ibdsMainPrimaryPaymentPARENT_ID.Value;
           frmInvoiceOut.ibdsMainInvoice.Open
          End;
        frmInvoiceOut.LookUpProcedure := SetInvoiceID;
        If (ibdsMainPrimaryPaymentPARENT_TYPE.Value<>4) then
         Begin
          If NOT (ibdsMainPrimaryPayment.State in [dsEdit, dsInsert]) then
           ibdsMainPrimaryPayment.Edit;
          ibdsMainPrimaryPaymentPARENT_TYPE.Value := 4
         End;
        frmInvoiceOut.Show
       End;
   {2}3 : Begin
        If (frmMain.FindComponent('frmInvoiceIn')=nil) then
         Begin
          TempIn_Out := 2;
          If NOT (ibdsMainPrimaryPaymentPARENT_ID.IsNull) and (ibdsMainPrimaryPaymentPARENT_TYPE.Value=2) then
           Invoice_ID := ibdsMainPrimaryPaymentPARENT_ID.Value;
          frmInvoiceIn := TfrmInvoice.Create(frmMain);
          frmInvoiceIn.Name := 'frmInvoiceIn'
         End
        else
         If NOT (ibdsMainPrimaryPaymentPARENT_ID.IsNull) and (ibdsMainPrimaryPaymentPARENT_TYPE.Value=(Sender as TMenuItem).Tag) then
          Begin
           If (frmInvoiceIn.PageControl1.ActivePageIndex<>1) then
            frmInvoiceIn.PageControl1.ActivePageIndex := 1;
           frmInvoiceIn.ibdsMainInvoice.Close;
           frmInvoiceIn.ibdsMainInvoice.ParamByName('ID').AsInt64 := ibdsMainPrimaryPaymentPARENT_ID.Value;
           frmInvoiceIn.ibdsMainInvoice.Open
          End;
        frmInvoiceIn.LookUpProcedure := SetInvoiceID;
        If (ibdsMainPrimaryPaymentPARENT_TYPE.Value<>3) then
         Begin
          If NOT (ibdsMainPrimaryPayment.State in [dsEdit, dsInsert]) then
           ibdsMainPrimaryPayment.Edit;
          ibdsMainPrimaryPaymentPARENT_TYPE.Value := 3
         End;
        frmInvoiceIn.Show
       End
  End
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentCURRENCY_RATEChange(
  Sender: TField);
begin
 If (ibdsMainPrimaryPaymentAMOUNT.AsInteger<>0) and
    (OldCurrencyRate<>ibdsMainPrimaryPaymentCURRENCY_RATE.AsFloat) and
    (ibdsMainPrimaryPayment.State in [dsEdit,dsInsert]) then
  ibdsMainPrimaryPaymentAMOUNT.Value := Round((ibdsMainPrimaryPaymentAMOUNT.Value*OldCurrencyRate/ibdsMainPrimaryPaymentCURRENCY_RATE.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
 OldCurrencyRate := ibdsMainPrimaryPaymentCURRENCY_RATE.AsFloat
end;

procedure TfrmPlat.pmParentPrimaryInClick(Sender: TObject);
begin
 If (ibdsMainPrimaryPayment.RecordCount>0) or (ibdsMainPrimaryPayment.State=dsInsert) then
  Begin
   If (frmMain.FindComponent('frmNaklIn')=nil) then
    frmNaklIn := TfrmNaklIn.Create(frmMain);
   frmNaklIn.LookUpProcedure := SetNaklID;
   If NOT (ibdsMainPrimaryPaymentPARENT_ID.IsNull) and (ibdsMainPrimaryPaymentPARENT_TYPE.Value=1) then
    Begin
     frmNaklIn.PageControl1.ActivePageIndex := 1;
     frmNaklIn.ibdsMainPrimaryTovarIncome.ParamByName('ID').AsInt64 := ibdsMainPrimaryPaymentPARENT_ID.Value
    End
   else
    Begin
     If NOT (ibdsMainPrimaryPayment.State in [dsEdit, dsInsert]) then
      ibdsMainPrimaryPayment.Edit;
     ibdsMainPrimaryPaymentPARENT_TYPE.Value := 1
    End;
   frmNaklIn.Show
  End
end;

procedure TfrmPlat.pmParentPrimaryOutClick(Sender: TObject);
begin
 If (ibdsMainPrimaryPayment.RecordCount>0) or (ibdsMainPrimaryPayment.State=dsInsert) then
  Begin
   If (frmMain.FindComponent('frmNaklOut')=nil) then
    frmNaklOut := TfrmNaklOut.Create(frmMain);
   frmNaklOut.LookUpProcedure := SetNaklID;
   If NOT (ibdsMainPrimaryPaymentPARENT_ID.IsNull) and (ibdsMainPrimaryPaymentPARENT_TYPE.Value=2) then
    Begin
     frmNaklOut.PageControl1.ActivePageIndex := 1;
     frmNaklOut.ibdsMainPrimaryTovarOutcome.ParamByName('ID').AsInt64 := ibdsMainPrimaryPaymentPARENT_ID.Value
    End
   else
    Begin
     If NOT (ibdsMainPrimaryPayment.State in [dsEdit, dsInsert]) then
      ibdsMainPrimaryPayment.Edit;
     ibdsMainPrimaryPaymentPARENT_TYPE.Value := 2
    End; 
   frmNaklOut.Show
  End
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentsListBeforeOpen(
  DataSet: TDataSet);
begin
 If (Nal_In<2) then
  (DataSet as TIBDataSet).ParamByName('MOVEMENT_TYPE').Value := 2 //безнал
 else
  (DataSet as TIBDataSet).ParamByName('MOVEMENT_TYPE').Value := 1;
 If (Nal_In in [1,3]) then
  (DataSet as TIBDataSet).ParamByName('IN_OUT').Value := 2 // приход
 else
  (DataSet as TIBDataSet).ParamByName('IN_OUT').Value := 1;
 If ((DataSet as TIBDataSet)=ibdsPrimary_Setup) then
  Begin
   If (ibdsMainPrimaryPaymentENTERPRISE_ID.IsNull) then
    ibdsPrimary_Setup.ParamByName('ENTERPRISE_ID').AsVariant := null
   else
    ibdsPrimary_Setup.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPrimaryPaymentENTERPRISE_ID.AsLargeInt
  End;
 (DataSet as TIBDataSet).ParamByName('PERSON_ID').AsInt64 := PersonID
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_IDChange(
  Sender: TField);
begin
 dbcbBlack.Enabled := (ibdsDesksBLACK.AsInteger=0) and (ibdsPrimary_SetupBLACK.Value<>1) and
                      (ibdsMainPrimaryPaymentPARENT_ID.IsNull) and
                      (ibdsPrimary_SetupCREATE_RIGHT.AsInteger=3);
 If (ibdsMainPrimaryPayment.State in [dsEdit,dsInsert]) then
  If (ibdsMainPrimaryPaymentBLACK.AsInteger=0) and (ibdsDesksBLACK.AsInteger=1) then
   ibdsMainPrimaryPaymentBLACK.Value := 1;
 GenerateSelectPrimarySetup
end;

procedure TfrmPlat.ibdsDesksAfterOpen(DataSet: TDataSet);
begin
 If (ibdsMainPrimaryPaymentsList.RecordCount>0) then
  ibdsDesks.Locate('ID', ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID.AsString,[])
end;

procedure TfrmPlat.ibdsPrimary_SetupAfterOpen(DataSet: TDataSet);
begin
 If (ibdsMainPrimaryPaymentsList.RecordCount>0) then
  ibdsPrimary_Setup.Locate('ID', ibdsMainPrimaryPaymentPRIMARY_SETUP_ID.AsString,[])
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_IDChange(
  Sender: TField);
begin
 If NOT (ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_ID.IsNull) then
  If (ibdsMainPrimaryPayment.State in [dsEdit,dsInsert]) then
    ibdsMainPrimaryPaymentCURRENCY_ID.Value := ibdsEnterpriseAccountsCURRENCY_ID.AsLargeInt
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentAfterOpen(DataSet: TDataSet);
begin
 SetReadOnly;
 ibdsPrimary_Setup.Close;
 GenerateSelectPrimarySetup;
 ibdsPrimary_Setup.Open;
 ibdsMainPrimaryPaymentPARENT_IDChange(ibdsMainPrimaryPaymentPARENT_ID);
 OldCurrencyRate := ibdsMainPrimaryPaymentCURRENCY_RATE.AsFloat;
 If (Black) then
  sbFactura.Visible := (ibdsMainPrimaryPaymentBLACK.AsInteger=0) and (Nal_In in [1,3])
 else
  sbFactura.Visible := (Nal_In in [1,3])
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentsListCalcFields(
  DataSet: TDataSet);
begin
 ibdsMainPrimaryPaymentsListAMOUNT_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsMainPrimaryPaymentsListDECIMALS.AsInteger),ibdsMainPrimaryPaymentsListAMOUNT.AsFloat)
end;

procedure TfrmPlat.sbFacturaClick(Sender: TObject);
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
     ibdsFacturaPARENT_TYPE.Value := 3;
     ibdsFacturaPARENT_ID.AsLargeInt := ibdsMainPrimaryPaymentID.AsLargeInt;
     ibdsFacturaAMOUNT.AsFloat := ibdsMainPrimaryPaymentAMOUNT.AsFloat;
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
     trLock.Params[1] := 'lock_write=PRIMARY_PAYMENTS_LOCK'
    End
  End
 else
  pnlFactura.Show
end;

procedure TfrmPlat.dsFacturaStateChange(Sender: TObject);
begin
 sbApplyFactura.Enabled := (dsFactura.State in [dsEdit,dsInsert]);
 sbCancelFactura.Enabled := sbApplyFactura.Enabled
end;

procedure TfrmPlat.sbApplyFacturaClick(Sender: TObject);
begin
 try
  ibdsFactura.ApplyUpdates;
  trMain.CommitRetaining;
  pnlFactura.Show
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка генерации счета-фактуры.', mtError, [mbOK],0)
 end;
 If (trLock.InTransaction) then
  trLock.Commit
end;

procedure TfrmPlat.ibdsFacturaUpdateRecord(DataSet: TDataSet;
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
   ibsWhite.ParamByName('AMOUNT').Value := ibdsFacturaAMOUNT.AsVariant;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsFacturaID.AsLargeInt
   else
    ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsFacturaID.AsLargeInt;
   ibsWhite.ExecQuery;
   ibsWhite.Close
  End;
 UpdateAction := uaApply
end;

procedure TfrmPlat.sbCancelFacturaClick(Sender: TObject);
begin
 ibdsFactura.CancelUpdates
end;

procedure TfrmPlat.dblcEnterpriseCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 ibdsMainPrimaryPayment.Post;
 ibdsEnterprises.Filtered := False
end;

procedure TfrmPlat.ibdsReportHeaderCalcFields(DataSet: TDataSet);
begin
 ibdsReportHeaderAMOUNT_PROP.Value := CurrencyToStr(Trunc(StrToFloat(ibdsReportHeaderAMOUNT.AsString)),
                                                    AnsiLowerCase(ibdsReportHeaderNAME1.AsString),
                                                    AnsiLowerCase(ibdsReportHeaderNAME3.AsString),
                                                    AnsiLowerCase(ibdsReportHeaderNAME5.AsString),
                                                    1);
 ibdsReportHeaderAMOUNT_FRAC_PROP.Value := IntToStr(Round(Frac(StrToFloat(ibdsReportHeaderAMOUNT.AsString))*CurrencyRoundPower));
 If (Length(ibdsReportHeaderAMOUNT_FRAC_PROP.AsString)<2) then
  ibdsReportHeaderAMOUNT_FRAC_PROP.Value := '0'+ibdsReportHeaderAMOUNT_FRAC_PROP.Value;
 ibdsReportHeaderAMOUNT_FRAC_PROP.Value := ibdsReportHeaderAMOUNT_FRAC_PROP.Value+' '+AnsiLowerCase(ibdsReportHeaderNAME001.AsString);
 If NOT (ibdsReportHeaderENTERPRISE_ACCOUNT_ID.IsNull) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select EA.ACCOUNT, B.NAME, B.ACCOUNT KOR_SCH, B.BIK, B.ADDRESS from ENTERPRISES_ACCOUNTS EA, BANKS B where (B.ID=EA.BANK_ID) and (EA.ID='+ibdsReportHeaderENTERPRISE_ACCOUNT_ID.AsString+')');
   ibsAux.ExecQuery;
   ibdsReportHeaderENTERPRISE_ACCOUNT.Value := ibsAux.FieldByName('ACCOUNT').AsString;
   ibdsReportHeaderENTERPRISE_BANK_NAME.Value := ibsAux.FieldByName('NAME').AsString;
   ibdsReportHeaderENTERPRISE_BIK.Value := ibsAux.FieldByName('BIK').AsInteger;
   ibdsReportHeaderENTERPRISE_BANK_ADDRESS.Value := ibsAux.FieldByName('ADDRESS').AsString;
   ibdsReportHeaderENTERPRISE_KOR_SCH.Value := ibsAux.FieldByName('KOR_SCH').AsString;
   ibsAux.Close
  End;
 If NOT (ibdsReportHeaderCONTRACTOR_ACCOUNT_ID.IsNull) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select CA.ACCOUNT, B.NAME, B.ACCOUNT KOR_SCH, B.BIK, B.ADDRESS from CONTRACTORS_ACCOUNTS CA, BANKS B where (B.ID=CA.BANK_ID) and (CA.ID='+ibdsReportHeaderCONTRACTOR_ACCOUNT_ID.AsString+')');
   ibsAux.ExecQuery;
   ibdsReportHeaderCONTRACTOR_ACCOUNT.Value := ibsAux.FieldByName('ACCOUNT').AsString;
   ibdsReportHeaderCONTRACTOR_BANK_NAME.Value := ibsAux.FieldByName('NAME').AsString;
   ibdsReportHeaderCONTRACTOR_BIK.Value := ibsAux.FieldByName('BIK').AsInteger;
   ibdsReportHeaderCONTRACTOR_BANK_ADDRESS.Value := ibsAux.FieldByName('ADDRESS').AsString;
   ibdsReportHeaderCONTRACTOR_KOR_SCH.Value := ibsAux.FieldByName('KOR_SCH').AsString;
   ibsAux.Close
  End;
 ibdsReportHeaderNSP.Value := 5;
 Case (ibdsReportHeaderPARENT_TYPE.AsInteger) of
  0 : ibdsReportHeaderPARENT_STRING.Value := '';
  2 : Begin
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select PTOH.NUMBER_PREFIX||cast(PTOH.NUMBER as varchar(30))||PTOH.NUMBER_SUFFIX NUMBER_STR,');
       ibsAux.SQL.Add('PTOH.PRIMARY_DATE');
       ibsAux.SQL.Add('from PRIMARY_TOVAR_OUTCOME_HEADER PTOH');
       ibsAux.SQL.Add('where (PTOH.ID='+ibdsReportHeaderPARENT_ID.AsString+')');
       ibsAux.ExecQuery;
       ibdsReportHeaderPARENT_STRING.Value := 'по накладной №'+ibsAux.FieldByName('NUMBER_STR').AsString+
                                              ' от '+ FormatDateTime('dd.mm.yyyy',ibsAux.FieldByName('PRIMARY_DATE').AsDate);
       ibsAux.Close
      End;
  4 : Begin
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select IH.NUMBER_PREFIX||cast(IH.NUMBER as varchar(30))||IH.NUMBER_SUFFIX NUMBER_STR,');
       ibsAux.SQL.Add('IH.INVOICE_DATE');
       ibsAux.SQL.Add('from INVOICE_HEADER IH');
       ibsAux.SQL.Add('where (IH.ID='+ibdsReportHeaderPARENT_ID.AsString+')');
       ibsAux.ExecQuery;
       ibdsReportHeaderPARENT_STRING.Value := 'по счету №'+ibsAux.FieldByName('NUMBER_STR').AsString+
                                              ' от '+ FormatDateTime('dd.mm.yyyy',ibsAux.FieldByName('INVOICE_DATE').AsDate);
       ibsAux.Close
      End;
  5 : Begin
       ibsAux.SQL.Clear;
       ibsAux.SQL.Add('select C.NUMBER_PREFIX||cast(C.NUMBER as varchar(30))||C.NUMBER_SUFFIX NUMBER_STR,');
       ibsAux.SQL.Add('C.CONTRACT_DATE');
       ibsAux.SQL.Add('from CONTRACTS C');
       ibsAux.SQL.Add('where (C.ID='+ibdsReportHeaderPARENT_ID.AsString+')');
       ibsAux.ExecQuery;
       ibdsReportHeaderPARENT_STRING.Value := 'по договору №'+ibsAux.FieldByName('NUMBER_STR').AsString+
                                              ' от '+ FormatDateTime('dd.mm.yyyy',ibsAux.FieldByName('CONTRACT_DATE').AsDate);
       ibsAux.Close
      End;
 end
end;

procedure TfrmPlat.sbPrintPrimaryPaymentClick(Sender: TObject);
begin
 ibdsReportHeader.Close;
 ibdsReportHeader.Open;
 frVariables.Clear;
 frVariables['DisplayFormat'] := ibdsMainPrimaryPaymentAMOUNT.DisplayFormat;
 frVariables['CurrencyRoundPower'] := CurrencyRoundPower;
 frVariables['MomDoc'] := fcContract.Caption;
 frmDM.frReport1.OnGetValue := frReportGetValue;
 sbPrintClick((Sender as TSpeedButton), ibsAux, ibdsReportHeader)
end;

procedure TfrmPlat.SetContractor;
begin
 ibdsContractors.Close;
 ibdsContractors.Open;
 ibdsContractors.Locate('NAME',frmKontrAgList.ibdsMainContractorsNAME.AsString,[]);
 If NOT (ibdsMainPrimaryPayment.State in [dsEdit, dsInsert]) then
  ibdsMainPrimaryPayment.Edit;
 ibdsMainPrimaryPaymentCONTRACTOR_ID.Value := ibdsContractorsID.Value;
 dbcbContractor.Text := ibdsContractorsNAME.AsString;
 frmKontrAgList.LookUpProcedure := nil
end;

procedure TfrmPlat.dbcbContractorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F6) then
  Begin
   If (frmMain.FindComponent('frmKontrAgList')=nil) then
    frmKontrAgList := TfrmKontrAgList.Create(frmMain);
   frmKontrAgList.LookUpProcedure := SetContractor;
   If NOT (ibdsMainPrimaryPaymentCONTRACTOR_ID.IsNull) then
    frmKontrAgList.ibdsMainContractors.Locate('ID',ibdsMainPrimaryPaymentCONTRACTOR_ID.AsString,[]);
   frmKontrAgList.Show
  End
end;

procedure TfrmPlat.dbgPaymentsListUpdateFooter(Sender: TObject);
 var CurrencyFrmt : String;
begin
 dbgPaymentsList.ColumnByName('AMOUNT_FMT').FooterValue := '';
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select SUM(PP.AMOUNT) AMOUNT, C.SYMBOL, C.DECIMALS_IN, C.DECIMALS_OUT');
 ibsAux.SQL.Add(ibdsMainPrimaryPaymentsList.SelectSQL[6]);
 ibsAux.SQL.Add(ibdsMainPrimaryPaymentsList.SelectSQL[7]);
 ibsAux.SQL.Add(ibdsMainPrimaryPaymentsList.SelectSQL[8]);
 ibsAux.SQL.Add(ibdsMainPrimaryPaymentsList.SelectSQL[9]);
 ibsAux.SQL.Add(ibdsMainPrimaryPaymentsList.SelectSQL[10]);
 ibsAux.SQL.Add(ibdsMainPrimaryPaymentsList.SelectSQL[11]);
 ibsAux.SQL.Add(ibdsMainPrimaryPaymentsList.SelectSQL[12]);
 ibsAux.SQL.Add(ibdsMainPrimaryPaymentsList.SelectSQL[13]);
 ibsAux.SQL.Add(ibdsMainPrimaryPaymentsList.SelectSQL[14]);
 ibsAux.SQL.Add(ibdsMainPrimaryPaymentsList.SelectSQL[15]);
 ibsAux.SQL.Add(WhereSqlMainPrimaryPaymentsList);
 ibsAux.SQL.Add('group by C.SYMBOL, C.DECIMALS_IN, C.DECIMALS_OUT');
 ibsAux.GenerateParamNames := True;
 If (Nal_In<2) then
  ibsAux.ParamByName('MOVEMENT_TYPE').Value := 2 //безнал
 else
  ibsAux.ParamByName('MOVEMENT_TYPE').Value := 1;
 If (Nal_In in [1,3]) then
  ibsAux.ParamByName('IN_OUT').Value := 2 // приход
 else
  ibsAux.ParamByName('IN_OUT').Value := 1;
 ibsAux.ParamByName('PERSON_ID').Value := PersonID;
 ibsAux.ExecQuery;
 While NOT (ibsAux.Eof) do
  Begin
   If (Nal_In in [0,2]) then
    CurrencyFrmt := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_OUT').AsInteger)
   else
    CurrencyFrmt := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_IN').AsInteger);
   CurrencyFrmt := CurrencyFrmt+ibsAux.FieldByName('SYMBOL').AsString;
   dbgPaymentsList.ColumnByName('AMOUNT_FMT').FooterValue := dbgPaymentsList.ColumnByName('AMOUNT_FMT').FooterValue+FormatFloat(CurrencyFrmt,ibsAux.FieldByName('AMOUNT').AsDouble)+#13#10;
   ibsAux.Next
  End;
 dbgPaymentsList.ColumnByName('AMOUNT_FMT').FooterValue := Copy(dbgPaymentsList.ColumnByName('AMOUNT_FMT').FooterValue,1,Length(dbgPaymentsList.ColumnByName('AMOUNT_FMT').FooterValue)-2);
 dbgPaymentsList.OnUpdateFooter := Nil;
 dbgPaymentsList.FooterHeight := 22*ibsAux.RecordCount;
 ibsAux.Close;
 dbgPaymentsList.OnUpdateFooter := dbgPaymentsListUpdateFooter
end;

procedure TfrmPlat.cbPeriodClick(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

procedure TfrmPlat.sbReFilterClick(Sender: TObject);
begin
 sbFilterPrimaryPaymentsList.Click;
 sbReFilter.Visible := False
end;

procedure TfrmPlat.sbFilterPrimaryPaymentsListClick(Sender: TObject);
begin
 ibdsFilterDeskAccount.Active := sbFilterPrimaryPaymentsList.Down;
 ibdsFilterTypes.Active := sbFilterPrimaryPaymentsList.Down;
 ibdsFilterContractorTypes.Active := sbFilterPrimaryPaymentsList.Down;
 pnlFilter.Visible := sbFilterPrimaryPaymentsList.Down;
 pnlText.Visible := sbFilterPrimaryPaymentsList.Down;
 Cursor := crHourGlass;
 ibdsMainPrimaryPaymentsList.Close;
 GenerateSelectMainPrimaryPaymentsList;
 ibdsMainPrimaryPaymentsList.Open;
 Cursor := crDefault
end;

procedure TfrmPlat.SpeedButton5Click(Sender: TObject);
begin
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True;
 SpeedButton5.Visible := pnlFilter.Visible;
 SpeedButton3.Visible := Not pnlFilter.Visible
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentENTERPRISE_IDChange(
  Sender: TField);
begin
 If (Nal_In<2) then
  ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_ID.Value := ibdsEnterprisesDEFAULT_ID_ACCOUNT.AsLargeInt;
end;

procedure TfrmPlat.cbBlackClick(Sender: TObject);
begin
 sbReFilter.Visible := True;
 pnlFilter.Refresh;
 If (Sender as TwwCheckBox).Checked then
  If (Sender=cbBlack) then
   cbWhite.Checked := False
  else
   cbBlack.Checked := False
end;

procedure TfrmPlat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  ibsAux.SQL.Clear;
  ibsAux.SQL.Add('delete from FILTERS where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
  ibsAux.ExecQuery;
  If (sbFilterPrimaryPaymentsList.Down) then
   Begin
    ibsAux.SQL.Clear;
    ibsAux.SQL.Add('insert into FILTERS (PERSON_ID, FORM_NAME, FILTER_NAME, CHEKED, FILTER_VALUE)');
    ibsAux.SQL.Add('values (:PERSON_ID, :FORM_NAME, :FILTER_NAME, 1, :FILTER_VALUE)');
    ibsAux.GenerateParamNames := True;
    ibsAux.ParamByName('PERSON_ID').Value := PersonID;
    ibsAux.ParamByName('FORM_NAME').Value := (Sender as TForm).Caption;
    If (cbDeskAccount.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbDeskAccount.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edDeskAccount.Text;
      ibsAux.ExecQuery
     End;
    If (cbContractor.Checked) then
     Begin
      ibsAux.ParamByName('FILTER_NAME').Value := cbContractor.Name;
      ibsAux.ParamByName('FILTER_VALUE').Value := edContractor.Text;
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
       End
     End
   End
  except
  end;
 inherited;
 frmPlat := nil
end;

procedure TfrmPlat.wwDBLookupCombo10BeforeDropDown(Sender: TObject);
begin
 ibdsPrimary_Setup.Filtered := True
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentBLACKChange(Sender: TField);
begin
 If (ibdsMainPrimaryPayment.State in [dsEdit,dsInsert]) and
    (ibdsPrimary_SetupBLACK.Value=1) and
    (ibdsMainPrimaryPaymentBLACK.Value=0) and
    NOT (ibdsMainPrimaryPaymentPRIMARY_SETUP_ID.IsNull) then
  Begin
   ibdsMainPrimaryPaymentPRIMARY_SETUP_ID.AsVariant := null;
   ibdsPrimary_Setup.Close;
   GenerateSelectPrimarySetup;
   ibdsPrimary_Setup.Open
  End
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentsListAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('PrimaryPaymentsList', True)
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentAfterDelete(DataSet: TDataSet);
begin
 StteChange('PrimaryPayment', True)
end;

procedure TfrmPlat.dbgPaymentsListCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 If (Nal_In<2) and (AFieldName='ENTERPRISE_CASH_DESK_NAME') and
    (Pos('Счет/Банк/Предприятие',dbgPaymentsList.ColumnByName('ENTERPRISE_CASH_DESK_NAME').DisplayLabel)=0) then
  dbgPaymentsList.ColumnByName('ENTERPRISE_CASH_DESK_NAME').DisplayLabel := 'Счет/Банк/Предприятие';
 If (AFieldName='AMOUNT_FMT') then
  wwDBGridCalcTitleAttributes(Sender, AFieldName, 'AMOUNT', AFont, ABrush, ATitleAlignment, OrderByMainPrimaryPaymentsList)
 else
  wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainPrimaryPaymentsList)
end;

procedure TfrmPlat.cbDeskAccountClick(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

procedure TfrmPlat.edContractorChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbContractor.Checked)
end;

procedure TfrmPlat.edPrefixChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbPrefix.Checked)
end;

procedure TfrmPlat.edNumberChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbNumber.Checked)
end;

procedure TfrmPlat.edSuffixChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbSuffix.Checked)
end;

procedure TfrmPlat.edAmountChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbAmount.Checked)
end;

procedure TfrmPlat.ibdsFilterDeskAccountAfterOpen(DataSet: TDataSet);
begin
 If (DataSet=ibdsFilterDeskAccount) and (IDeskAccount<>'') then
  Begin
   edDeskAccount.Text := IDeskAccount;
   ibdsFilterDeskAccount.Locate('NAME',IDeskAccount,[])
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
 edContractor.Text := Contractor;
 sbReFilter.Visible := False
end;

procedure TfrmPlat.ibdsFilterDeskAccountBeforeClose(DataSet: TDataSet);
begin
 IDeskAccount := edDeskAccount.Text;
 IType := edType.Text;
 IContractorType := edContractorType.Text;
 Contractor := edContractor.Text
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentBeforeOpen(DataSet: TDataSet);
begin
  (DataSet as TIBDataSet).ParamByName('PERSON_ID').AsInt64 := PersonID
end;

procedure TfrmPlat.SetReadOnly;
 var ki : Integer;
begin
 sbApplyPrimaryPayment.OnClick := sbApplyPrimaryPaymentClick;
 If NOT((ibdsMainPrimaryPayment.State in [dsInsert]) or
        (ibdsMainPrimaryPaymentNUMBER_PREFIX.AsString='НОВАЯ')) and
    (ibdsMainPrimaryPaymentUPDATE_RIGHT.AsInteger=1) and
    NOT (ibdsMainPrimaryPaymentPARENT_TYPE.AsInteger=0) then
  Begin
   ibsAux.SQL.Clear;
   Case ibdsMainPrimaryPaymentPARENT_TYPE.AsInteger of
    1  : ibsAux.SQL.Add('select PTIH.CLOSED from PRIMARY_TOVAR_INCOME_HEADER PTIH where (PTIH.ID='+ibdsMainPrimaryPaymentPARENT_ID.AsString+')');
    2  : ibsAux.SQL.Add('select PTOH.CLOSED from PRIMARY_TOVAR_OUTCOME_HEADER PTOH where (PTOH.ID='+ibdsMainPrimaryPaymentPARENT_ID.AsString+')');
    3,4: ibsAux.SQL.Add('select IH.CLOSED from INVOICE_HEADER IH where (IH.ID='+ibdsMainPrimaryPaymentPARENT_ID.AsString+')');
    5  : ibsAux.SQL.Add('select C.CLOSED from CONTRACTS C where (C.ID='+ibdsMainPrimaryPaymentPARENT_ID.AsString+')')
   End;
   ibsAux.ExecQuery;
   Parent_Closed := (ibsAux.FieldByName('CLOSED').AsInteger=1);
   If (Parent_Closed) then
    sbApplyPrimaryPayment.OnClick := nil;
   ibsAux.Close
  End;
 For ki := 0 to Pred(ibdsMainPrimaryPayment.FieldCount) do
  ibdsMainPrimaryPayment.Fields[ki].ReadOnly :=
                    (NOT((ibdsMainPrimaryPayment.State in [dsInsert]) or
                         (ibdsMainPrimaryPaymentNUMBER_PREFIX.AsString='НОВАЯ')) and
                     (ibdsMainPrimaryPaymentUPDATE_RIGHT.AsInteger=0)) or
                     Parent_Closed;
 sbDeletePrimaryPayment.Enabled := (ibdsMainPrimaryPaymentDELETE_RIGHT.AsInteger=1);
 pmParentSelf.Enabled := NOT ibdsMainPrimaryPaymentPARENT_TYPE.ReadOnly;
 If (ibdsMainPrimaryPaymentPARENT_TYPE.ReadOnly) then
  Begin
   pmParentInvoiceIn.Enabled := (ibdsMainPrimaryPaymentPARENT_TYPE.AsInteger=3);
   pmParentInvoiceOut.Enabled := (ibdsMainPrimaryPaymentPARENT_TYPE.AsInteger=4);
   pmParentPrimaryIn.Enabled := (ibdsMainPrimaryPaymentPARENT_TYPE.AsInteger=1);
   pmParentPrimaryOut.Enabled := (ibdsMainPrimaryPaymentPARENT_TYPE.AsInteger=2)
  End
 else
  Begin
   pmParentInvoiceIn.Enabled := True;
   pmParentInvoiceOut.Enabled := True;
   pmParentPrimaryIn.Enabled := True;
   pmParentPrimaryOut.Enabled := True
  End
end;

procedure TfrmPlat.sbRefreashPrimaryPaymentsListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPrimaryPaymentsList.Bookmark;
 ibdsMainPrimaryPaymentsList.Close;
 ibdsMainPrimaryPaymentsList.Open;
 try
  ibdsMainPrimaryPaymentsList.Bookmark := BookMark
 except
 end
end;

procedure TfrmPlat.wwDBLookupCombo13BeforeDropDown(Sender: TObject);
begin
 ibdsPersons.Filtered := True
end;

procedure TfrmPlat.wwDBLookupCombo13CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 ibdsPersons.Filtered := False
end;

procedure TfrmPlat.ibdsPersonsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsPersonsVALID.AsInteger=1)
end;

procedure TfrmPlat.ibdsPrimary_SetupFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 If NOT(Black) then
  exit;
 If (dbcbBlack.Enabled) then
  Accept := (ibdsPrimary_SetupCREATE_RIGHT.AsInteger>0)
 else
  Accept := (ibdsPrimary_SetupCREATE_RIGHT.AsInteger in [3,Succ(ibdsMainPrimaryPaymentBLACK.AsInteger)])
end;

procedure TfrmPlat.ibdsDesksFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsDesksVALID.AsInteger=3)
end;

procedure TfrmPlat.dblcDeskBeforeDropDown(Sender: TObject);
begin
 ibdsDesks.Filtered := True
end;

procedure TfrmPlat.ibdsEnterprisesFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsEnterprisesVALID.AsInteger=1)
end;

procedure TfrmPlat.dblcEnterpriseBeforeDropDown(Sender: TObject);
begin
 ibdsEnterprises.Filtered := True
end;

procedure TfrmPlat.ibdsCurrencyFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsCurrencyVALID.AsInteger=1)
end;

procedure TfrmPlat.dblcCurrencyBeforeDropDown(Sender: TObject);
begin
 ibdsCurrency.Filtered := True
end;

procedure TfrmPlat.ibdsEnterpriseAccountsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsEnterpriseAccountsVALID.AsInteger=2)
end;

procedure TfrmPlat.wwDBLookupCombo7BeforeDropDown(Sender: TObject);
begin
 ibdsEnterpriseAccounts.Filtered := True
end;

procedure TfrmPlat.wwDBLookupCombo7CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 ibdsEnterpriseAccounts.Filtered := False
end;

procedure TfrmPlat.ibdsContractorAccountsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := (ibdsContractorAccountsVALID.AsInteger=2)
end;

procedure TfrmPlat.wwDBLookupCombo8BeforeDropDown(Sender: TObject);
begin
 ibdsContractorAccounts.Filtered := True
end;

procedure TfrmPlat.wwDBLookupCombo8CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 ibdsContractorAccounts.Filtered := False
end;

procedure TfrmPlat.ibdsPrimary_SetupCalcFields(DataSet: TDataSet);
begin
 DataSet.FieldByName('NAME_WITH_SPECS').AsString := DataSet.FieldByName('NAME').AsString;
 Case DataSet.FieldByName('REASON_TYPE').AsInteger of
   0: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Расчеты по товару';
   1: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Расчеты по услугам';
   2: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Внутреннее перемещение';
   3: DataSet.FieldByName('NAME_WITH_SPECS').Value := DataSet.FieldByName('NAME_WITH_SPECS').AsString+' | Прочее'
 end
end;

procedure TfrmPlat.ibdsFilterTypesCalcFields(DataSet: TDataSet);
begin
 CalcNameWithSpecs(DataSet)
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentsListSETUP_NAMEGetText(
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

procedure TfrmPlat.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
 If (ParName='Дата пп') then
  ParValue := ibdsReportHeaderPAYMENT_DATE.AsString;
 If (ParName='Номер пп') then
  ParValue := ibdsReportHeaderNUMBER_STR.AsString;
 If (ParName='Вид платежа') then
  ParValue := ibdsReportHeaderPAYMENT_KIND.AsString;
 If (ParName='Сумма прописью') then
  ParValue := ibdsReportHeaderAMOUNT_PROP.AsString+' '+ibdsReportHeaderAMOUNT_FRAC_PROP.AsString;
 If (ParName='Сумма') then
  ParValue := ibdsReportHeaderAMOUNT.AsFloat;
 If (ParName='Фирма ИНН') then
  ParValue := ibdsReportHeaderENTERPRISE_INN.AsString;
 If (ParName='Фирма КПП') then
  ParValue := ibdsReportHeaderENTERPRISE_KPP.AsString;
 If (ParName='Фирма Полное название') then
  ParValue := ibdsReportHeaderENTERPRISE_NAME.AsString;
 If (ParName='Фирма Банк') then
  ParValue := ibdsReportHeaderENTERPRISE_BANK_NAME.AsString;
 If (ParName='Фирма Расчетный счет') then
  ParValue := ibdsReportHeaderENTERPRISE_ACCOUNT.AsString;
 If (ParName='Фирма БИК') then
  ParValue := FormatFloat('000000000',ibdsReportHeaderENTERPRISE_BIK.AsFloat);
 If (ParName='Фирма Кор счет') then
  ParValue := ibdsReportHeaderENTERPRISE_KOR_SCH.AsString;
 If (ParName='Партнер Банк') then
  ParValue := ibdsReportHeaderCONTRACTOR_BANK_NAME.AsString;
 If (ParName='Партнер ИНН') then
  ParValue := ibdsReportHeaderCONTRACTOR_INN.AsString;
 If (ParName='Партнер КПП') then
  ParValue := ibdsReportHeaderCONTRACTOR_KPP.AsString;
 If (ParName='Партнер Полное название') then
  ParValue := ibdsReportHeaderCONTRACTOR_NAME.AsString;
 If (ParName='Партнер БИК') then
  ParValue := FormatFloat('000000000',ibdsReportHeaderCONTRACTOR_BIK.AsFloat);
 If (ParName='Партнер Кор счет') then
  ParValue := ibdsReportHeaderCONTRACTOR_KOR_SCH.AsString;
 If (ParName='Партнер Расчетный счет') then
  ParValue := ibdsReportHeaderCONTRACTOR_ACCOUNT.AsString;
 If (ParName='Назначение платежа') then
  ParValue := ibdsReportHeaderPAYMENT_PURPOSE_BIG.AsString;
 If (ParName='Вид оп') then
  ParValue := ibdsReportHeaderCHARGE_KIND.AsString;
 If (ParName='Наз пл') then
  ParValue := ibdsReportHeaderPAYMENT_PURPOSE.AsString;
 If (ParName='Код') then
  ParValue := ibdsReportHeaderCODE.AsString;
 If (ParName='Срок пл') then
  ParValue := ibdsReportHeaderTERM_DATE.AsString;
 If (ParName='Очер плат') then
  ParValue := ibdsReportHeaderPAYMENT_ORDER.AsString;
 If (ParName='Рез поле') then
  ParValue := ibdsReportHeaderRESERV_FIELD.AsString
end;

procedure TfrmPlat.ibdsMainPrimaryPaymentNDSChange(Sender: TField);
 var OldDecimalSeparator : Char;
begin
 If (ibdsMainPrimaryPaymentNDS.AsFloat<>0) then
  Begin
   If (ibdsMainPrimaryPaymentPAYMENT_PURPOSE_BIG.AsString<>'') then
    ibdsMainPrimaryPaymentPAYMENT_PURPOSE_BIG.AsString := ibdsMainPrimaryPaymentPAYMENT_PURPOSE_BIG.AsString+#13#10;
   OldDecimalSeparator := DecimalSeparator;
   DecimalSeparator := '-';
   ibdsMainPrimaryPaymentPAYMENT_PURPOSE_BIG.AsString := ibdsMainPrimaryPaymentPAYMENT_PURPOSE_BIG.AsString+
      'В т.ч. НДС '+ibdsMainPrimaryPaymentNDS.AsString+'% - '+FormatFloat('0.00',ibdsMainPrimaryPaymentAMOUNT.AsFloat*ibdsMainPrimaryPaymentNDS.AsFloat/(100+ibdsMainPrimaryPaymentNDS.AsFloat));
   DecimalSeparator := OldDecimalSeparator
  End
end;

procedure TfrmPlat.sbCopyInvoicesListClick(Sender: TObject);
 var ibsLocalAux : TIBSQL;
begin
 If (MessageDlg('Копировать текущий платежный документ?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   ibsLocalAux := TIBSQL.Create(Nil);
   ibsLocalAux.Database := ibdsMainPrimaryPaymentsList.Database;
   ibsLocalAux.Transaction := trMain;
   ibsLocalAux.SQL.Clear;
   ibsLocalAux.SQL.Add('select PP.PARENT_TYPE, PP.PARENT_ID, PP.PARENT_CURRENCY_RATE, PP.PRIMARY_SETUP_ID,');
   ibsLocalAux.SQL.Add('PP.SECURITY_LEVEL, PP.NUMBER_PREFIX, PP.NUMBER, PP.NUMBER_SUFFIX, PP.PAYMENT_DATE,');
   ibsLocalAux.SQL.Add('PP.ENTERPRISE_ID, PP.ENTERPRISE_STORE_ID, PP.ENTERPRISE_CASH_DESK_ID, PP.CONTRACTOR_ID,');
   ibsLocalAux.SQL.Add('PP.CURRENCY_ID, PP.CURRENCY_RATE,');
   If (Black) then
    ibsLocalAux.SQL.Add('PP.BLACK,');
   ibsLocalAux.SQL.Add('PP.AMOUNT, PP.COMMENTS, PP.ENTERPRISE_ACCOUNT_ID, PP.CONTRACTOR_ACCOUNT_ID, PP.PAYMENT_KIND,');
   ibsLocalAux.SQL.Add('PP.CHARGE_KIND, PP.PAYMENT_PURPOSE, PP.CODE, PP.TERM_DATE, PP.PAYMENT_ORDER,');
   ibsLocalAux.SQL.Add('PP.RESERV_FIELD, PP.PAYMENT_PURPOSE_BIG, PP.NDS');
   ibsLocalAux.SQL.Add('from PRIMARY_PAYMENTS PP');
   ibsLocalAux.SQL.Add('where (PP.ID='+ibdsMainPrimaryPaymentsListID.AsString+')');
   sbAddPrimaryPaymentsList.Click;
   ibsLocalAux.ExecQuery;
   If Not(ibsLocalAux.FieldByName('PARENT_ID').IsNull) then
    Begin
     ibdsMainPrimaryPaymentPARENT_TYPE.Value := ibsLocalAux.FieldByName('PARENT_TYPE').Value;
     ibdsMainPrimaryPaymentPARENT_ID.Value := ibsLocalAux.FieldByName('PARENT_ID').AsInt64
    End;
   ibdsMainPrimaryPaymentENTERPRISE_ID.Value := ibsLocalAux.FieldByName('ENTERPRISE_ID').AsInt64;
   ibdsMainPrimaryPaymentCONTRACTOR_ID.Value := ibsLocalAux.FieldByName('CONTRACTOR_ID').AsInt64;
   ibdsMainPrimaryPaymentPRIMARY_SETUP_ID.Value := ibsLocalAux.FieldByName('PRIMARY_SETUP_ID').AsInt64;
   ibdsPrimary_Setup.Locate('ID',ibsLocalAux.FieldByName('PRIMARY_SETUP_ID').AsString,[]);
   ibdsMainPrimaryPaymentSECURITY_LEVEL.Value := ibsLocalAux.FieldByName('SECURITY_LEVEL').Value;
   If Not(ibsLocalAux.FieldByName('ENTERPRISE_STORE_ID').IsNull) then
    ibdsMainPrimaryPaymentENTERPRISE_STORE_ID.Value := ibsLocalAux.FieldByName('ENTERPRISE_STORE_ID').AsInt64;
   If Not(ibsLocalAux.FieldByName('ENTERPRISE_CASH_DESK_ID').IsNull) then
    ibdsMainPrimaryPaymentENTERPRISE_CASH_DESK_ID.Value := ibsLocalAux.FieldByName('ENTERPRISE_CASH_DESK_ID').AsInt64;
   If (Black) then
    ibdsMainPrimaryPaymentBLACK.Value := ibsLocalAux.FieldByName('BLACK').Value;
   ibdsMainPrimaryPaymentCOMMENTS.AsVariant := ibsLocalAux.FieldByName('COMMENTS').Value;
   If Not(ibsLocalAux.FieldByName('ENTERPRISE_ACCOUNT_ID').IsNull) then
    ibdsMainPrimaryPaymentENTERPRISE_ACCOUNT_ID.Value := ibsLocalAux.FieldByName('ENTERPRISE_ACCOUNT_ID').AsInt64;
   If Not(ibsLocalAux.FieldByName('CONTRACTOR_ACCOUNT_ID').IsNull) then
    ibdsMainPrimaryPaymentCONTRACTOR_ACCOUNT_ID.Value := ibsLocalAux.FieldByName('CONTRACTOR_ACCOUNT_ID').AsInt64;
   ibdsMainPrimaryPaymentCURRENCY_ID.Value := ibsLocalAux.FieldByName('CURRENCY_ID').AsInt64;
   ibdsMainPrimaryPaymentCURRENCY_RATE.Value := ibsLocalAux.FieldByName('CURRENCY_RATE').AsFloat;
   ibdsMainPrimaryPaymentAMOUNT.Value := ibsLocalAux.FieldByName('AMOUNT').AsDouble;
   ibdsMainPrimaryPaymentPAYMENT_KIND.AsVariant := ibsLocalAux.FieldByName('PAYMENT_KIND').Value;
   ibdsMainPrimaryPaymentCHARGE_KIND.AsVariant := ibsLocalAux.FieldByName('CHARGE_KIND').Value;
   ibdsMainPrimaryPaymentPAYMENT_PURPOSE.AsVariant := ibsLocalAux.FieldByName('PAYMENT_PURPOSE').Value;
   ibdsMainPrimaryPaymentCODE.AsVariant := ibsLocalAux.FieldByName('CODE').Value;
   ibdsMainPrimaryPaymentTERM_DATE.AsVariant := ibsLocalAux.FieldByName('TERM_DATE').Value;
   ibdsMainPrimaryPaymentPAYMENT_ORDER.AsVariant := ibsLocalAux.FieldByName('PAYMENT_ORDER').Value;
   ibdsMainPrimaryPaymentRESERV_FIELD.AsVariant := ibsLocalAux.FieldByName('RESERV_FIELD').Value;
   ibdsMainPrimaryPaymentPAYMENT_PURPOSE_BIG.AsVariant := ibsLocalAux.FieldByName('PAYMENT_PURPOSE_BIG').Value;
   ibdsMainPrimaryPaymentNDS.OnChange := Nil;
   ibdsMainPrimaryPaymentNDS.AsVariant := ibsLocalAux.FieldByName('NDS').Value;
   ibdsMainPrimaryPaymentNDS.OnChange := ibdsMainPrimaryPaymentNDSChange;
   ibsLocalAux.Close;
   ibsLocalAux.Free
  End
end;

end.
