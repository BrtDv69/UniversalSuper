unit InnerInvoice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, StdCtrls, ComCtrls, wwriched, wwrichedspell,
  wwdbdatetimepicker, wwdblook, Mask, wwdbedit, DBCtrls, fcLabel, Buttons,
  Grids, Wwdbigrd, Wwdbgrid, fcText, IBSQL, IBDatabase, Db, IBCustomDataSet,
  Wwdotdot, Wwdbcomb, Wwdbspin, Menus, wwcheckbox, Math, Variants,
  wwclearbuttongroup, wwradiogroup, FR_DSet, FR_DBSet, FR_Desgn, FR_Class,
  FR_IBXDB, FR_DCtrl, cxGridCustomTableView, cxGridTableView, cxGraphics,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGridLevel, cxGrid, cxContainer, cxEdit, cxTextEdit,
  cxMemo, cxDBEdit, RzPanel, RzSplit, cxGridDBTableView, cxGridDBDataDefinitions,
  cxGridCustomPopupMenu, cxGridPopupMenu, clipbrd, cxDBData;

type
 TObjProcedure = procedure of object;

type
  TfrmInnerInvoice = class(TfrmLike)
    PageControl1: TPageControl;
    tsInvoicesList: TTabSheet;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
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
    SpeedButton30: TSpeedButton;
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
    sbShowComments: TSpeedButton;
    Panel2: TPanel;
    Panel5: TPanel;
    Label18: TLabel;
    Label17: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    lcInvoiceSetup: TwwDBLookupCombo;
    wwDBEdit10: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBLookupCombo9: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Panel6: TPanel;
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
    wwDBComboBox1: TwwDBComboBox;
    ibdsMainInvoice: TIBDataSet;
    dsMainInvoice: TDataSource;
    ibdsMainInvoiceID: TLargeintField;
    ibdsMainInvoiceINVOICE_SETUP_ID: TLargeintField;
    ibdsMainInvoiceCONTRACT_ID: TLargeintField;
    ibdsMainInvoiceMASTER_ID: TLargeintField;
    ibdsMainInvoiceSECURITY_LEVEL: TIntegerField;
    ibdsMainInvoiceNUMBER_PREFIX: TIBStringField;
    ibdsMainInvoiceNUMBER: TIntegerField;
    ibdsMainInvoiceNUMBER_SUFFIX: TIBStringField;
    ibdsMainInvoiceINVOICE_DATE: TDateField;
    ibdsMainInvoiceENTERPRISE_ID: TLargeintField;
    ibdsMainInvoiceENTERPRISE_STORE_ID: TLargeintField;
    ibdsMainInvoiceCONTRACTOR_ID: TLargeintField;
    ibdsMainInvoiceCURRENCY_ID: TLargeintField;
    ibdsMainInvoiceCURRENCY_RATE: TFloatField;
    ibdsMainInvoiceCLOSED: TIntegerField;
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
    ibdsCurrency: TIBDataSet;
    ibdsCurrencyID: TLargeintField;
    ibdsCurrencyNAME: TIBStringField;
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
    ibdsInvoice_SetupNUMBER_PREFIX: TIBStringField;
    ibdsInvoice_SetupNUMBER_FORMAT: TIntegerField;
    ibdsInvoice_SetupNUMBER_SUFFIX: TIBStringField;
    ibdsInvoice_SetupNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsInvoice_SetupCURRENCY_ID_DEFAULT: TLargeintField;
    ibdsInvoice_SetupSECURITY_LEVEL: TIntegerField;
    ibdsInvoice_SetupPRICE_FORMULA: TIBStringField;
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
    ibdsMainInvoiceBodyUNITS: TIBStringField;
    ibdsMainInvoicesListSETUP_NAME: TIBStringField;
    ibdsMadeIn: TIBDataSet;
    ibdsMadeInMADE_IN: TIBStringField;
    dsMadeIn: TDataSource;
    ibdsMainInvoiceBodyItogo: TFloatField;
    ibdsMainInvoiceBodyItogoMany: TFloatField;
    ibdsMainInvoiceBodyMAIN_LEAVINGS_TOTAL: TFloatField;
    ibdsMainInvoiceBodyADDITIONAL_LEAVINGS_TOTAL: TFloatField;
    ibdsMainInvoiceBodyARTICUL: TIBStringField;
    ibsAux: TIBSQL;
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
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    ibdsMainInvoicesListAMOUNT: TFloatField;
    ibdsMainInvoicesListSYMBOL: TIBStringField;
    ibdsMainInvoicesListDECIMALS: TSmallintField;
    ibdsMainInvoicesListAMOUNT_FMT: TStringField;
    PopupMenu4: TPopupMenu;
    N4: TMenuItem;
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
    N12: TMenuItem;
    ibdsIncomeDocsCLOSED: TIntegerField;
    ibdsOutcomeDocsCLOSED: TIntegerField;
    pnlText: TPanel;
    lblFilter: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    pnlFilter: TPanel;
    ibdsFilterPersons: TIBDataSet;
    ibdsFilterPersonsID: TLargeintField;
    ibdsFilterPersonsNAME: TIBStringField;
    ibdsFilterTypes: TIBDataSet;
    ibdsFilterTypesID: TLargeintField;
    ibdsFilterTypesNAME: TIBStringField;
    ibdsFilterArticuls: TIBDataSet;
    ibdsFilterArticulsID: TLargeintField;
    ibdsFilterArticulsNAME: TIBStringField;
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
    ibdsMainInvoicesListENTERPRISE_STORE_NAME: TIBStringField;
    ibdsMainInvoicesListCONTRACTOR_STORE_NAME: TIBStringField;
    ibdsMainInvoiceENTERPRISE_STORE_NAME: TIBStringField;
    ibdsContractorsCONTRACTOR_ID: TLargeintField;
    ibdsContractorsCONTRACTOR_NAME: TIBStringField;
    PopupMenu5: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    ibdsContractorsENTERPRISE_ID: TLargeintField;
    cbMeneger: TwwCheckBox;
    edMeneger: TwwDBLookupCombo;
    cbContractor: TwwCheckBox;
    edContractor: TwwDBEdit;
    cbOpen: TwwCheckBox;
    cbClosed: TwwCheckBox;
    cbType: TwwCheckBox;
    edType: TwwDBLookupCombo;
    cbPeriod: TwwCheckBox;
    deDateStart: TwwDBDateTimePicker;
    Label42: TLabel;
    deDateStop: TwwDBDateTimePicker;
    cbArticuls: TwwCheckBox;
    edArticul: TwwDBLookupCombo;
    cbPrefix: TwwCheckBox;
    edPrefix: TwwDBEdit;
    cbNumber: TwwCheckBox;
    edNumber: TwwDBEdit;
    cbSuffix: TwwCheckBox;
    edSuffix: TwwDBEdit;
    sbReFilter: TSpeedButton;
    PopupMenu6: TPopupMenu;
    N13: TMenuItem;
    ibdsMainInvoicesListDELETE_RIGHT: TIntegerField;
    ibdsMainInvoiceUPDATE_RIGHT: TIntegerField;
    ibdsMainInvoiceDELETE_RIGHT: TIntegerField;
    ibdsMainInvoiceCLOSE_RIGHT: TIntegerField;
    ibdsIncomeDocsDELETE_RIGHT: TIntegerField;
    ibdsOutcomeDocsDELETE_RIGHT: TIntegerField;
    ibdsInvoice_SetupCREATE_RIGHT: TIntegerField;
    pnlComments: TRzSizePanel;
    Label39: TLabel;
    dbmComments: TcxDBMemo;
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
    tvAccountBodyPRICE: TcxGridDBColumn;
    tvAccountBodyItogoMany: TcxGridDBColumn;
    tvAccountBodyCOMMENTS: TcxGridDBColumn;
    glAccountBody: TcxGridLevel;
    ibdsMainInvoiceBodyARTICUL_ID: TIntegerField;
    cxGridPopupMenu1: TcxGridPopupMenu;
    ibdsInvoiceBodySet: TIBDataSet;
    ibdsInvoiceBodySetID: TLargeintField;
    ibdsInvoiceBodySetINVOICE_BODY_ID: TIntegerField;
    ibdsInvoiceBodySetARTICUL: TIBStringField;
    ibdsInvoiceBodySetARTICUL_ID: TIntegerField;
    ibdsInvoiceBodySetPACKS_AMOUNT: TIntegerField;
    ibdsInvoiceBodySetPACK_VALUE: TFloatField;
    ibdsInvoiceBodySetITEMS_AMOUNT: TFloatField;
    ibdsInvoiceBodySetMAIN_LEAVINGS_TOTAL: TFloatField;
    ibdsInvoiceBodySetADDITIONAL_LEAVINGS_TOTAL: TFloatField;
    ibdsInvoiceBodySetPRICE_REFERENCE: TFloatField;
    ibdsInvoiceBodySetPRICE: TFloatField;
    ibdsInvoiceBodySetCOMMENTS: TIBStringField;
    ibdsInvoiceBodySetARTICUL_NAME: TIBStringField;
    ibdsInvoiceBodySetUNITS: TIBStringField;
    dsInvoiceBodySet: TDataSource;
    ibdsMainInvoiceBodyITEM_TYPE: TIntegerField;
    glSets: TcxGridLevel;
    tvSets: TcxGridDBTableView;
    tvSetsARTICUL: TcxGridDBColumn;
    tvSetsARTICUL_ID: TcxGridDBColumn;
    tvSetsPACKS_AMOUNT: TcxGridDBColumn;
    tvSetsPACK_VALUE: TcxGridDBColumn;
    tvSetsITEMS_AMOUNT: TcxGridDBColumn;
    tvSetsMAIN_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvSetsADDITIONAL_LEAVINGS_TOTAL: TcxGridDBColumn;
    tvSetsPRICE: TcxGridDBColumn;
    tvSetsCOMMENTS: TcxGridDBColumn;
    tvAccountBodyITEM_TYPE: TcxGridDBColumn;
    ibdsInvoiceBodySetItogo: TFloatField;
    ibdsInvoiceBodySetItogoMany: TFloatField;
    tvSetsItogo: TcxGridDBColumn;
    tvSetsItogoMany: TcxGridDBColumn;
    ibdsPersonsNAME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure fcContractMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure fcContractMouseEnter(Sender: TObject);
    procedure fcContractMouseLeave(Sender: TObject);
    procedure sbShowCommentsClick(Sender: TObject);
    procedure ibdsMainInvoicesListAfterScroll(DataSet: TDataSet);
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
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo7CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo6CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo9CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainInvoiceAfterOpen(DataSet: TDataSet);
    procedure sbFirstInvoicesListClick(Sender: TObject);
    procedure sbPriorInvoicesListClick(Sender: TObject);
    procedure sbNextInvoicesListClick(Sender: TObject);
    procedure sbLastInvoicesListClick(Sender: TObject);
    procedure dsMainInvoicesListStateChange(Sender: TObject);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1CreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
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
    procedure ibdsMainInvoiceNewRecord(DataSet: TDataSet);
    procedure tsInvoiceShow(Sender: TObject);
    procedure ibdsMainInvoiceBodyNewRecord(DataSet: TDataSet);
    procedure ibdsMainInvoiceBodyARTICUL_IDChange(Sender: TField);
    procedure ibdsMainInvoiceENTERPRISE_STORE_IDChange(Sender: TField);
    procedure ibdsMainInvoiceBodyAfterOpen(DataSet: TDataSet);
    procedure ibdsMainInvoiceBodyMADE_INChange(Sender: TField);
    procedure ibdsMainInvoiceBodyCalcFields(DataSet: TDataSet);
    procedure ibdsMadeInBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainInvoiceBodyARTICULChange(Sender: TField);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsMainInvoiceBodyBeforePost(DataSet: TDataSet);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure ibdsMainInvoiceCURRENCY_RATEChange(Sender: TField);
    procedure ibdsMainInvoiceBodyPRICEChange(Sender: TField);
    procedure ibdsMainInvoicesListCalcFields(DataSet: TDataSet);
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
    procedure N5Click(Sender: TObject);
    procedure wwDBLookupCombo6KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edContractorChange(Sender: TObject);
    procedure edSuffixChange(Sender: TObject);
    procedure edNumberChange(Sender: TObject);
    procedure edPrefixChange(Sender: TObject);
    procedure cbOpenClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure wwDBGrid1CalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure ibdsMainInvoicesListAfterDelete(DataSet: TDataSet);
    procedure ibdsMainInvoiceAfterDelete(DataSet: TDataSet);
    procedure ibdsIncomeDocsAfterDelete(DataSet: TDataSet);
    procedure ibdsInvoice_SetupBeforeOpen(DataSet: TDataSet);
    procedure ibdsIncomeDocsAfterScroll(DataSet: TDataSet);
    procedure dbgIncomeDocsEnter(Sender: TObject);
    procedure ibdsMainInvoiceBeforeOpen(DataSet: TDataSet);
    procedure ibdsIncomeDocsBeforeOpen(DataSet: TDataSet);
    procedure dbgAccountBodyEnter(Sender: TObject);
    procedure tvAccountBodyCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvAccountBodyCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure tvAccountBodyEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure pnlCommentsHotSpotClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Panel5Enter(Sender: TObject);
    procedure tvAccountBodyKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibdsInvoiceBodySetBeforeOpen(DataSet: TDataSet);
    procedure ibdsInvoiceBodySetNewRecord(DataSet: TDataSet);
    procedure dbgAccountBodyFocusedViewChanged(Sender: TcxCustomGrid;
      APrevFocusedView, AFocusedView: TcxCustomGridView);
    procedure tvAccountBodyDataControllerDetailHasChildren(
      Sender: TcxDBDataController; ARecordIndex, ARelationIndex: Integer;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var HasChildren: Boolean);
    procedure ibdsMainInvoiceBodyBeforeDelete(DataSet: TDataSet);
    procedure ibdsInvoiceBodySetCalcFields(DataSet: TDataSet);
    procedure ibdsMainInvoiceBeforeDelete(DataSet: TDataSet);
    procedure ibdsInvoiceBodySetBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereMainInvoicesList: String;
    procedure GenerateSelectMainInvoicesList;
    procedure GenerateSelectMainInvoiceBody;
    procedure GenerateSelectIncomeDocs;
    procedure GenerateSelectOutcomeDocs;
    procedure ArticulSetBodyArticulID;
    procedure ArticulInsertBodyArticulID;
    procedure TovarSetBodyArticulID;
    procedure TovarInsertBodyArticulID;
    procedure SetCurrencyFmt;
    procedure GetTotalMany;
    procedure SetContractor;
    procedure SetReadOnly;
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

var
  frmInnerInvoice: TfrmInnerInvoice;

implementation

uses Misk, DM, ChoiseCopy, Main, Articuls, Tovar, NaklIn, Plat,
  NaklOut, Factura, KontrAgList, GoodInfo;

{$R *.DFM}

var
  OrderByMainInvoicesList  : String = ' 5 asc, 4 desc, 3 asc, 7 asc';
  WhereSqlMainInvoicesList : String = '';

  OrderByMainInvoiceBody  : String = '';

  OrderByIncomeDocs  : String = ' 4 asc, 3 asc';
  OrderByOutcomeDocs  : String = ' 4 asc, 3 asc';

  NumberPrefix, NumberSuffix : String;
  TotalMany, OldCurrencyRate : Double;
  CurrencyRoundPower : Integer;

  Contractor, Meneger, IType, ArticulName : String;
  DateStart, DateStop : TDate;

  MainInvoicesListBookMark, MainInvoicesListPriorBookMark : String;

procedure TfrmInnerInvoice.StteChange(Suf: String; Enabled: Boolean);
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
      If (NOT Enabled) then
       (Components[k] as TControl).Visible := True
      else
       (Components[k] as TControl).Visible := False;
     If (Components[k] is TTabSheet) and
        (Components[k].Name<>'ts'+Suf) then
      (Components[k] as TTabSheet).TabVisible := NOT Enabled
    End;
   PageControl1.ActivePage := ActivePage
  End
end;

function TfrmInnerInvoice.GetWhereMainInvoicesList: String;
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
     Result := Result+'and (UPPER(ST.NAME collate PXW_CYRL) like '#39+AnsiUpperCase(edContractor.Text)+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Контрагент: '+edContractor.Text+'; '
    End;
   If (cbType.Checked) then
    Begin
     Result := Result+'and (InvS.ID='+ibdsFilterTypesID.AsString+') ';
     lblFilter.Caption := lblFilter.Caption+'Тип: '+edType.Text+'; '
    End;
   If (cbPeriod.Checked) and (deDateStart.Text<>'') and (deDateStop.Text<>'') then
    Begin
     Result := Result+'and (IH.INVOICE_DATE>='#39+deDateStart.Text+#39') and (IH.INVOICE_DATE<='#39+deDateStop.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'За период с '+deDateStart.Text+' по '+deDateStop.Text+'; '
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
   If (cbPrefix.Checked) then
    Begin
     Result := Result+'and (IH.NUMBER_PREFIX like '#39+edPrefix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Префикс: '+edPrefix.Text+'; '
    End;
   If (cbNumber.Checked) then
    Begin
     Result := Result+'and (IH.NUMBER='+edNumber.Text+') ';
     lblFilter.Caption := lblFilter.Caption+'Номер счета: '+edNumber.Text+'; '
    End;
   If (cbSuffix.Checked) then
    Begin
     Result := Result+'and (IH.NUMBER_SUFFIX like '#39+edSuffix.Text+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Суффикс: '+edSuffix.Text+'; '
    End;
   lblFilter.Caption := Trim(lblFilter.Caption);
   pnlText.Visible := True;
   lblFilter.AutoSize := True
  End
end;

procedure TfrmInnerInvoice.GenerateSelectMainInvoicesList;
 var k : Integer;
begin
 WhereSqlMainInvoicesList := GetWhereMainInvoicesList;
 ibdsMainInvoicesList.SelectSQL[7] := 'INVOICE_SETUP InvS, CURRENCY C, INVOICE_HEADER IH, USERS U, USER_RIGHTS_FOR_INVOICE UR';
 If (cbArticuls.Checked) and (sbFilterInvoicesList.Down) then
  ibdsMainInvoicesList.SelectSQL[7] :=  ibdsMainInvoicesList.SelectSQL[7]+', INVOICE_BODY IB';
 For k := Pred(ibdsMainInvoicesList.SelectSQL.Count) downto 16 do
  ibdsMainInvoicesList.SelectSQL.Delete(k);
 ibdsMainInvoicesList.SelectSQL.Add(WhereSqlMainInvoicesList);
 ibdsMainInvoicesList.SelectSQL.Add('order by'+OrderByMainInvoicesList);
 ibdsMainInvoicesList.ParamByName('PERSON_ID').Value := PersonID
end;

procedure TfrmInnerInvoice.GenerateSelectMainInvoiceBody;
 var k : Integer;
begin
 For k := Pred(ibdsMainInvoiceBody.SelectSQL.Count) downto 8 do
  ibdsMainInvoiceBody.SelectSQL.Delete(k);
 If (OrderByMainInvoiceBody<>'') then
  ibdsMainInvoiceBody.SelectSQL.Add('order by'+OrderByMainInvoiceBody);
 ibdsMainInvoiceBody.ParamByName('ID').AsInt64 := ibdsMainInvoice.ParamByName('ID').AsInt64
end;

procedure TfrmInnerInvoice.GenerateSelectIncomeDocs;
 var k : Integer;
begin
 For k := Pred(ibdsIncomeDocs.SelectSQL.Count) downto 10 do
  ibdsIncomeDocs.SelectSQL.Delete(k);
 ibdsIncomeDocs.SelectSQL.Add('order by'+OrderByIncomeDocs);
end;

procedure TfrmInnerInvoice.GenerateSelectOutcomeDocs;
 var k : Integer;
begin
 For k := Pred(ibdsOutcomeDocs.SelectSQL.Count) downto 10 do
  ibdsOutcomeDocs.SelectSQL.Delete(k);
 ibdsOutcomeDocs.SelectSQL.Add('order by'+OrderByOutcomeDocs);
end;

procedure TfrmInnerInvoice.FormCreate(Sender: TObject);
var ki : Integer;
begin
 PageControl1.ActivePageIndex := 0;
 FName := 'Внутреннее перемещение';
 Caption := 'Счет на внутреннее перемещение';
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
   ibdsMainInvoice.InsertSQL[3] := '';
   ibdsMainInvoice.InsertSQL[8] := ''
  End;
 trMain.StartTransaction;
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
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbType.Name) then
    Begin
     cbType.Checked := True;
     IType := ibsAux.FieldByName('FILTER_VALUE').AsString
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Start') then
    Begin
     cbPeriod.Checked := True;
     DateStart := ibsAux.FieldByName('FILTER_VALUE').AsDate
    End;
   If (ibsAux.FieldByName('FILTER_NAME').AsString=cbPeriod.Name+'/Stop') then
    Begin
     cbPeriod.Checked := True;
     DateStop := ibsAux.FieldByName('FILTER_VALUE').AsDate
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
   ibsAux.Next
  End;
 ibsAux.Close;
 ibdsFilterPersons.Active := sbFilterInvoicesList.Down;
 ibdsFilterTypes.Active := sbFilterInvoicesList.Down;
 ibdsFilterArticuls.Active := sbFilterInvoicesList.Down;
 GenerateSelectMainInvoicesList;
 GenerateSelectMainInvoiceBody;
 If (Inner_Invoice_ID=0) then
  Begin
   PageControl1.ActivePageIndex := 0;
   ibdsMainInvoicesList.Open
  End
 else
  Begin
   ibdsMainInvoice.ParamByName('ID').AsInt64 := Inner_Invoice_ID;
   PageControl1.ActivePageIndex := 1;
   Inner_Invoice_ID := 0
  End
end;

procedure TfrmInnerInvoice.SpeedButton21Click(Sender: TObject);
begin
 Close;
 frmInnerInvoice := nil
end;

procedure TfrmInnerInvoice.fcContractMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsLowered
end;

procedure TfrmInnerInvoice.fcContractMouseEnter(Sender: TObject);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsRaised
end;

procedure TfrmInnerInvoice.fcContractMouseLeave(Sender: TObject);
begin
 (Sender as TfcLabel).TextOptions.Style := fclsLowered
end;

procedure TfrmInnerInvoice.sbShowCommentsClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlComments.RestoreHotSpot
 else
  pnlComments.CloseHotSpot
end;

procedure TfrmInnerInvoice.ibdsMainInvoicesListAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,'InvoicesList');
 sbDeleteInvoicesList.Enabled := (ibdsMainInvoicesListDELETE_RIGHT.AsInteger=1) and (ibdsMainInvoicesListCLOSED.AsInteger=0)
end;

procedure TfrmInnerInvoice.sbAddInvoicesListClick(Sender: TObject);
begin
 If NOT (sbApplyInvoicesList.Enabled) then
  Begin
   tsInvoice.Show;
   PageControl1Change(PageControl1);
   sbAddInvoice.Click
  End 
end;

procedure TfrmInnerInvoice.sbDeleteInvoicesListClick(Sender: TObject);
begin
 ibdsMainInvoicesList.Delete
end;

procedure TfrmInnerInvoice.sbApplyInvoicesListClick(Sender: TObject);
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

procedure TfrmInnerInvoice.sbCancelInvoicesListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainInvoicesList.Bookmark;
 ibdsMainInvoicesList.CancelUpdates;
 StteChange('InvoicesList', False);
 try
  ibdsMainInvoicesList.Bookmark := BookMark
 except
 end
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceCalcFields(DataSet: TDataSet);
begin
 ibdsMainInvoiceNUMBER_STR.Value := ibdsMainInvoiceNUMBER_PREFIX.AsString;
 If (ibdsMainInvoiceNUMBER.Value<>0) then
  ibdsMainInvoiceNUMBER_STR.Value := ibdsMainInvoiceNUMBER_STR.Value+
                                     ibdsMainInvoiceNUMBER.AsString;
 ibdsMainInvoiceNUMBER_STR.Value := ibdsMainInvoiceNUMBER_STR.Value+
                                    ibdsMainInvoiceNUMBER_SUFFIX.AsString
end;

procedure TfrmInnerInvoice.wwDBComboBox1DropDown(Sender: TObject);
begin
 pnlNumber.Parent := (Sender as TwwDBComboBox).Parent;
 pnlNumber.Top := (Sender as TwwDBComboBox).Top+(Sender as TwwDBComboBox).Height-1;
 pnlNumber.Left := (Sender as TwwDBComboBox).Left;
 pnlNumber.Show
end;

procedure TfrmInnerInvoice.SpeedButton4Click(Sender: TObject);
begin
 If (Sender is TSpeedButton) then
  (Sender as TControl).Parent.Hide
 else
  (Sender as TControl).Hide
end;

procedure TfrmInnerInvoice.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainInvoiceENTERPRISE_ID.Value := ibdsEnterprisesID.Value;
end;

procedure TfrmInnerInvoice.lcInvoiceSetupCloseUp(Sender: TObject; LookupTable,
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
    NumberPrefix := ibdsInvoice_SetupNUMBER_PREFIX.AsString;
    ibdsMainInvoiceNUMBER_FORMAT.Value := ibdsInvoice_SetupNUMBER_FORMAT.Value;
    NumberSuffix := ibdsInvoice_SetupNUMBER_SUFFIX.AsString;
    ibdsMainInvoiceNUMBER_RESTART_PERIOD.Value := ibdsInvoice_SetupNUMBER_RESTART_PERIOD.Value;
    ibdsMainInvoicePRICE_FORMULA.Value := ibdsInvoice_SetupPRICE_FORMULA.Value;
    If (ibdsMainInvoiceCURRENCY_ID.IsNull) then
     ibdsMainInvoiceCURRENCY_ID.Value := ibdsInvoice_SetupCURRENCY_ID_DEFAULT.Value;
    If (ibdsMainInvoiceSECURITY_LEVEL.Value<ibdsInvoice_SetupSECURITY_LEVEL.Value) then
     ibdsMainInvoiceSECURITY_LEVEL.Value := ibdsInvoice_SetupSECURITY_LEVEL.Value
   End
end;

procedure TfrmInnerInvoice.wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainInvoiceMASTER_ID.Value := ibdsPersonsID.Value
end;

procedure TfrmInnerInvoice.wwDBLookupCombo7CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainInvoiceENTERPRISE_STORE_ID.Value := ibdsEnterpriseStoresID.Value
end;

procedure TfrmInnerInvoice.wwDBLookupCombo6CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainInvoiceCONTRACTOR_ID.Value := ibdsContractorsCONTRACTOR_ID.Value;
   ibdsMainInvoice.Post
  End
end;

procedure TfrmInnerInvoice.wwDBLookupCombo9CloseUp(Sender: TObject; LookupTable,
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

procedure TfrmInnerInvoice.ibdsMainInvoiceAfterOpen(DataSet: TDataSet);
begin
 ibdsMainInvoiceBody.Close;
 ibdsMainInvoiceBody.ParamByName('ID').AsInt64 := ibdsMainInvoice.ParamByName('ID').AsInt64;
 ibdsMainInvoiceBody.Open;
 SetReadOnly;
 ibdsInvoice_Setup.Close;
 ibdsInvoice_Setup.Open;
 OldCurrencyRate := ibdsMainInvoiceCURRENCY_RATE.AsFloat
end;

procedure TfrmInnerInvoice.sbFirstInvoicesListClick(Sender: TObject);
begin
 ibdsMainInvoicesList.First
end;

procedure TfrmInnerInvoice.sbPriorInvoicesListClick(Sender: TObject);
begin
 ibdsMainInvoicesList.Prior
end;

procedure TfrmInnerInvoice.sbNextInvoicesListClick(Sender: TObject);
begin
 ibdsMainInvoicesList.Next
end;

procedure TfrmInnerInvoice.sbLastInvoicesListClick(Sender: TObject);
begin
 ibdsMainInvoicesList.Last
end;

procedure TfrmInnerInvoice.dsMainInvoicesListStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmInnerInvoice.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: Begin
      If (Field=ibdsMainInvoicesListAMOUNT_FMT) then
       Field := ibdsMainInvoicesListAMOUNT;
      wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainInvoicesList)
     End;
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

procedure TfrmInnerInvoice.wwDBGrid1CreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmInnerInvoice.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin   
 Case (Sender as TComponent).Tag of
  1: Begin
      If (AFieldName='AMOUNT_FMT') then
       AFieldName := 'AMOUNT';
      wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainInvoicesList, (GetKeyState(VK_CONTROL)<0),
                               sbApplyInvoicesList, sbCancelInvoicesList, GenerateSelectMainInvoicesList)
     End;
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

procedure TfrmInnerInvoice.PageControl1Change(Sender: TObject);
 var Active : Boolean; 
begin
 Active := (PageControl1.ActivePage<>tsInvoicesList);
 ibdsMainInvoice.Active := Active;
 ibdsMainInvoiceBody.Active := Active;
 ibdsEnterprises.Active := Active;
 ibdsEnterpriseStores.Active := Active;
 ibdsPersons.Active := Active;
 ibdsInvoice_Setup.Active := Active;
 ibdsContractors.Active := Active;
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

procedure TfrmInnerInvoice.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 AllowChange := True;
 If (PageControl1.ActivePage=tsInvoicesList) then
  ibdsMainInvoice.ParamByName('ID').AsInt64 := ibdsMainInvoicesListID.Value
end;

procedure TfrmInnerInvoice.sbDeleteInvoiceClick(Sender: TObject);
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

procedure TfrmInnerInvoice.sbAddInvoiceClick(Sender: TObject);
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

procedure TfrmInnerInvoice.sbCancelInvoiceClick(Sender: TObject);
begin
 If (trLock.InTransaction) then
  trLock.Commit;
 ibdsMainInvoiceBody.CancelUpdates;
 ibdsMainInvoice.CancelUpdates;
 StteChange('Invoice', False)
end;

procedure TfrmInnerInvoice.sbApplyInvoiceClick(Sender: TObject);
begin
 PostIfNeeded(ibdsMainInvoice);
 PostIfNeeded(ibdsMainInvoiceBody);
 PostIfNeeded(ibdsInvoiceBodySet);
 CheckDataSet(ibdsMainInvoiceBody);
 CheckDataSet(ibdsInvoiceBodySet);
 try
  ibdsMainInvoice.ApplyUpdates;
  ibdsMainInvoiceBody.ApplyUpdates;
  ibdsInvoiceBodySet.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Invoice', False);
  ibdsMainInvoice.Close;
  ibdsMainInvoice.Open;
  GetTotalMany;
  If (ibdsMainInvoicesList.Active) then
   Begin
    MainInvoicesListBookMark := ibdsMainInvoicesList.Bookmark;
    ibdsMainInvoicesList.Prior;
    MainInvoicesListPriorBookMark := ibdsMainInvoicesList.Bookmark;
    ibdsMainInvoicesList.Close
   End 
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 If (trLock.InTransaction) then
  trLock.Commit
end;

procedure TfrmInnerInvoice.dsMainInvoiceBodyStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('Invoice', True)
  else
   StteChange('Invoice', ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
 var MinNumber, MaxNumber, Number, Number_FormatOld, Number_FormatNew : Integer;
     SetupOld, SetupNew : String;
     Setted : Boolean;
begin
 Number_FormatOld := ibdsMainInvoiceNUMBER_FORMAT.OldValue;
 Number_FormatNew := ibdsMainInvoiceNUMBER_FORMAT.NewValue;
 SetupOld := ibdsMainInvoiceSETUP_NAME.OldValue;
 SetupNew := ibdsMainInvoiceSETUP_NAME.NewValue;
 If (UpdateKind=ukInsert) or (SetupOld<>SetupNew) then
  Begin
   If (UpdateKind=ukInsert) or (Number_FormatOld<>Number_FormatNew) or
      (ibdsMainInvoiceINVOICE_DATE.OldValue<>ibdsMainInvoiceINVOICE_DATE.NewValue) then
    Begin
     pnlMessage.Show;
     Application.ProcessMessages;
     If NOT (trLock.InTransaction) then
      trLock.StartTransaction;
     pnlMessage.Hide;
     Application.ProcessMessages;
     If (ibdsMainInvoiceNUMBER_RESTART_PERIOD.Value<>1) then
      Begin
       ibsNumb.SQL.Clear;
       ibsNumb.SQL.Add('select max(IH.NUMBER) MinNumber');
       ibsNumb.SQL.Add('from INVOICE_HEADER IH, INVOICE_SETUP InvS');
       ibsNumb.SQL.Add('where (IH.INVOICE_DATE>=:START_DATE) and (IH.INVOICE_DATE<:INVOICE_DATE)');
       ibsNumb.SQL.Add('and (InvS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (IH.INVOICE_SETUP_ID=InvS.ID)');
       ibsNumb.SQL.Add('and (IH.ENTERPRISE_ID='+ibdsMainInvoiceENTERPRISE_ID.AsString+')');
       ibsNumb.GenerateParamNames := True;
       ibsNumb.ParamByName('START_DATE').AsDate := GetStartDate(ibdsMainInvoiceNUMBER_RESTART_PERIOD.Value, ibdsMainInvoiceINVOICE_DATE.Value);
       ibsNumb.ParamByName('INVOICE_DATE').AsDate := ibdsMainInvoiceINVOICE_DATE.Value;
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
     ibsNumb.SQL.Add('and (InvS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (IH.INVOICE_SETUP_ID=InvS.ID)');
     ibsNumb.SQL.Add('and (IH.ENTERPRISE_ID='+ibdsMainInvoiceENTERPRISE_ID.AsString+')');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('INVOICE_DATE').AsDate := ibdsMainInvoiceINVOICE_DATE.Value;
     ibsNumb.ParamByName('STOP_DATE').AsDate := GetStopDate(ibdsMainInvoiceNUMBER_RESTART_PERIOD.Value, ibdsMainInvoiceINVOICE_DATE.Value);
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
     ibsNumb.SQL.Add('and (InvS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (IH.INVOICE_SETUP_ID=InvS.ID)');
     ibsNumb.SQL.Add('and (IH.ENTERPRISE_ID='+ibdsMainInvoiceENTERPRISE_ID.AsString+')');
     ibsNumb.SQL.Add('order by 1');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('INVOICE_DATE').AsDate := ibdsMainInvoiceINVOICE_DATE.Value;
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
      FlashMsg('Внимание!','Такой номер уже существует в последующих днях. После сохранения измените префикс/суффикс.',2000);
    End;
   If (UpdateKind=ukInsert) or (SETUPOld<>SETUPNew) then
    Begin
     NumberPrefix := ReplaceDateStr(NumberPrefix,ibdsMainInvoiceINVOICE_DATE.Value);
     NumberSuffix := ReplaceDateStr(NumberSuffix,ibdsMainInvoiceINVOICE_DATE.Value);
     ibdsMainInvoiceNUMBER_PREFIX.AsString := NumberPrefix;
     ibdsMainInvoiceNUMBER_SUFFIX.AsString := NumberSuffix
    End;
   If (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
    ibdsMainInvoice.Post;
  End;
 UpdateAction := uaApply
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceNewRecord(DataSet: TDataSet);
begin
 ibdsMainInvoiceID.Value := ibdsMainInvoice.ParamByName('ID').AsInt64;
 ibdsMainInvoiceINVOICE_DATE.Value := Date;
 ibdsMainInvoiceCLOSED.Value := 0;
 ibdsPersons.Locate('ID',IntToStr(PersonID),[]);
 ibdsMainInvoiceMASTER_NAME.Value := ibdsPersonsNAME.Value;
 ibdsMainInvoiceSECURITY_LEVEL.Value := 1;
 ibdsMainInvoiceNUMBER_PREFIX.Value := 'НОВЫЙ';
 ibdsMainInvoiceNUMBER_SUFFIX.Value := ' ';
 ibdsMainInvoiceNUMBER.Value := 0;
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
 SetReadOnly
end;

procedure TfrmInnerInvoice.tsInvoiceShow(Sender: TObject);
begin
 PageControl1Change(PageControl1)
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceBodyNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_INVOICE_BODY,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainInvoiceBodyID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainInvoiceBodyINVOICE_ID.Value := ibdsMainInvoiceID.Value;
 ibdsMainInvoiceBodyItogoManyOld.Value := 0
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceBodyARTICUL_IDChange(Sender: TField);
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
 Price := ibsLocalAux.FieldByName('PRICE').AsDouble*MainCurrencyRate;
 Sender.DataSet.FieldByName('MAIN_LEAVINGS_TOTAL').Value := ibsLocalAux.FieldByName('MAIN_LEAVINGS_TOTAL').AsDouble;
 Sender.DataSet.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').Value := ibsLocalAux.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').AsDouble;
 ibsLocalAux.Close;
 Sender.DataSet.FieldByName('PRICE_REFERENCE').Value := Round(Price*CurrencyRoundPower)/CurrencyRoundPower;
 Sender.DataSet.FieldByName('PRICE').Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower;
 Sender.DataSet.Post;
 Sender.DataSet.Edit;
 If (Sender=ibdsMainInvoiceBodyARTICUL_ID) then
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

procedure TfrmInnerInvoice.ibdsMainInvoiceENTERPRISE_STORE_IDChange(
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

procedure TfrmInnerInvoice.ibdsMainInvoiceBodyAfterOpen(DataSet: TDataSet);
begin
 If (DataSet=ibdsMainInvoiceBody) then
  Begin
   SetCurrencyFmt;
   ibdsMainInvoiceENTERPRISE_STORE_IDChange(ibdsMainInvoiceENTERPRISE_STORE_ID);
   GetTotalMany
  End;
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select MAIN_LEAVINGS_TOTAL, ADDITIONAL_LEAVINGS_TOTAL from GET_GOODS_INFO(:STORE_ID, :ARTICUL_ID, :MADE_IN)');
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

procedure TfrmInnerInvoice.ibdsMainInvoiceBodyMADE_INChange(Sender: TField);
// var Last_Buy_Price, Price, MainCurrencyRate : Double;
begin
{ MainCurrencyRate := GetMainCurrencyRate(ibsAux,ibdsMainInvoiceENTERPRISE_ID.AsString,ibdsMainInvoiceENTERPRISE_STORE_ID.AsString,ibdsMainInvoiceCURRENCY_ID.AsInteger,ibdsMainInvoiceCURRENCY_RATE.AsFloat);
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select * from GET_GOODS_INFO(:STORE_ID, :ARTICUL_ID, :MADE_IN)');
 ibsAux.GenerateParamNames := True;
 ibsAux.ParamByName('STORE_ID').AsString := ibdsMainInvoiceENTERPRISE_STORE_ID.AsString;
 ibsAux.ParamByName('ARTICUL_ID').AsString := ibdsMainInvoiceBodyARTICUL_ID.AsString;
 ibsAux.ParamByName('MADE_IN').AsString := ibdsMainInvoiceBodyMADE_IN.AsString;
 ibsAux.ExecQuery;
 Last_Buy_Price := ibsAux.FieldByName('LAST_BUY_PRICE').AsDouble*MainCurrencyRate;
 Price := ibsAux.FieldByName('PRICE').AsDouble*MainCurrencyRate;
 ibdsMainInvoiceBodyMAIN_LEAVINGS_TOTAL.Value := ibsAux.FieldByName('MAIN_LEAVINGS_TOTAL').AsDouble;
 ibdsMainInvoiceBodyADDITIONAL_LEAVINGS_TOTAL.Value := ibsAux.FieldByName('ADDITIONAL_LEAVINGS_TOTAL').AsDouble;
 ibsAux.Close;
 ibdsMainInvoiceBodyPRICE_REFERENCE.Value := Round(Price*CurrencyRoundPower)/CurrencyRoundPower;
 ibdsMainInvoiceBodyPRICE.Value := Round(Last_Buy_Price*CurrencyRoundPower)/CurrencyRoundPower
}end;

procedure TfrmInnerInvoice.ibdsMainInvoiceBodyCalcFields(DataSet: TDataSet);
begin
 ibdsMainInvoiceBodyItogo.Value := ibdsMainInvoiceBodyPACKS_AMOUNT.Value*ibdsMainInvoiceBodyPACK_VALUE.Value+ibdsMainInvoiceBodyITEMS_AMOUNT.Value;
 ibdsMainInvoiceBodyItogoMany.Value := ibdsMainInvoiceBodyItogo.Value*ibdsMainInvoiceBodyPRICE.Value
end;

procedure TfrmInnerInvoice.ArticulSetBodyArticulID;
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

procedure TfrmInnerInvoice.ArticulInsertBodyArticulID;
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

procedure TfrmInnerInvoice.TovarSetBodyArticulID;
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

procedure TfrmInnerInvoice.TovarInsertBodyArticulID;
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

procedure TfrmInnerInvoice.SetCurrencyFmt;
 var k : Integer;
     CurrencyFrmt : String;
begin
 k := ibdsMainInvoiceDECIMALS_IN.Value;
 CurrencyRoundPower := Trunc(Power(10,k)); 
 CurrencyFrmt := '#,##0.';
 While (k>0) do
  Begin
   CurrencyFrmt := CurrencyFrmt+'0';
   Dec(k)
  End;
 ibdsMainInvoiceBodyPRICE.DisplayFormat := CurrencyFrmt;
 ibdsMainInvoiceBodyPRICE.EditFormat := Copy(CurrencyFrmt,Pos('0.',CurrencyFrmt),Length(CurrencyFrmt)-Pos('0.',CurrencyFrmt)+1)+'###';
 ibdsInvoiceBodySetPRICE.DisplayFormat := ibdsMainInvoiceBodyPRICE.DisplayFormat;
 ibdsInvoiceBodySetPRICE.EditFormat := ibdsMainInvoiceBodyPRICE.EditFormat;
 ibdsMainInvoiceBodyItogoMany.DisplayFormat := CurrencyFrmt;
 ibdsInvoiceBodySetItogoMany.DisplayFormat := CurrencyFrmt;
 ibdsMainInvoiceBodyPRICE_REFERENCE.DisplayFormat := CurrencyFrmt
end;

procedure TfrmInnerInvoice.ibdsMadeInBeforeOpen(DataSet: TDataSet);
begin
 ibdsMadeIn.ParamByName('STORE_ID').AsInt64 := ibdsMainInvoiceENTERPRISE_STORE_ID.Value
end;

procedure TfrmInnerInvoice.GetTotalMany;
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

procedure TfrmInnerInvoice.ibdsMainInvoiceBodyARTICULChange(Sender: TField);
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

procedure TfrmInnerInvoice.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure;
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceBodyBeforePost(DataSet: TDataSet);
begin
 If (ibdsMainInvoiceBodyItogoManyOld.AsFloat<>ibdsMainInvoiceBodyItogoMany.AsFloat) then
  Begin
   TotalMany := TotalMany-ibdsMainInvoiceBodyItogoManyOld.AsFloat+ibdsMainInvoiceBodyItogoMany.AsFloat;
   ibdsMainInvoiceBodyItogoManyOld.Value := ibdsMainInvoiceBodyItogoMany.AsFloat
  End
end;

procedure TfrmInnerInvoice.MenuItem1Click(Sender: TObject);
 var BookMark : String;
begin
 If (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
  ibdsMainInvoice.Post;
 BookMark := ibdsMainInvoiceBody.Bookmark;
 ibdsMainInvoiceBody.DisableControls;
 ibdsMainInvoiceBody.First;
 While NOT (ibdsMainInvoiceBody.Eof) do
  Begin
   If (ibdsMainInvoiceBodyPRICE_REFERENCE.AsFloat<>0) then
    Begin
     ibdsMainInvoiceBody.Edit;
     ibdsMainInvoiceBodyPRICE.Value := Round(GeneratePrice(ibdsMainInvoiceBodyPRICE_REFERENCE.AsFloat,
                                                           ibdsMainInvoicePRICE_FORMULA.AsString,
                                                           0,0,0)*CurrencyRoundPower)/CurrencyRoundPower
    End;
   ibdsMainInvoiceBody.Next
  End;
 ibdsMainInvoiceBody.Bookmark := BookMark;
 ibdsMainInvoiceBody.EnableControls;
 StteChange('Invoice', True)
end;

procedure TfrmInnerInvoice.MenuItem3Click(Sender: TObject);
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
   If (ibsAux.FieldbyName('PRICE').AsDouble<>0) then
    Begin
     ibdsMainInvoiceBody.Edit;
     ibdsMainInvoiceBodyPRICE_REFERENCE.Value := ibsAux.FieldbyName('PRICE').AsDouble;
     ibdsMainInvoiceBodyPRICE.Value := Round(GeneratePrice(ibsAux.FieldbyName('PRICE').AsDouble,
                                                           ibdsMainInvoicePRICE_FORMULA.AsString,
                                                           0,0,0)*CurrencyRoundPower)/CurrencyRoundPower
    End;
   ibsAux.Close;
   ibdsMainInvoiceBody.Next
  End;
 ibdsMainInvoiceBody.Bookmark := BookMark;
 ibdsMainInvoiceBody.EnableControls;
 StteChange('Invoice', True)
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceCURRENCY_RATEChange(Sender: TField);
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
     ibdsMainInvoiceBodyPRICE_REFERENCE.Value := Round((ibdsMainInvoiceBodyPRICE_REFERENCE.Value*OldCurrencyRate/ibdsMainInvoiceCURRENCY_RATE.AsFloat)*CurrencyRoundPower)/CurrencyRoundPower;
     ibdsMainInvoiceBody.Next
    End;
   ibdsMainInvoiceBody.Bookmark := BookMark;
   ibdsMainInvoiceBody.EnableControls
  End;
 OldCurrencyRate := ibdsMainInvoiceCURRENCY_RATE.AsFloat
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceBodyPRICEChange(Sender: TField);
begin
 If (ibdsMainInvoiceBodyPRICE_REFERENCE.AsFloat=0) and (ibdsMainInvoiceBodyPRICE.AsFloat<>0) then
  ibdsMainInvoiceBodyPRICE_REFERENCE.Value := ibdsMainInvoiceBodyPRICE.AsFloat
end;

procedure TfrmInnerInvoice.ibdsMainInvoicesListCalcFields(DataSet: TDataSet);
begin
 ibdsMainInvoicesListAMOUNT_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsMainInvoicesListDECIMALS.AsInteger),ibdsMainInvoicesListAMOUNT.AsFloat)
end;

procedure TfrmInnerInvoice.ibdsIncomeDocsCalcFields(DataSet: TDataSet);
begin
 ibdsIncomeDocsAMOUNT_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsIncomeDocsDECIMALS.AsInteger),ibdsIncomeDocsAMOUNT.AsFloat)
end;

procedure TfrmInnerInvoice.ibdsOutcomeDocsCalcFields(DataSet: TDataSet);
begin
 ibdsOutcomeDocsAMOUNT_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsOutcomeDocsDECIMALS.AsInteger),ibdsOutcomeDocsAMOUNT.AsFloat)
end;

procedure TfrmInnerInvoice.dsIncomeDocsStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('Docs', True)
  else
   StteChange('Docs', ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmInnerInvoice.ibdsIncomeDocsAfterOpen(DataSet: TDataSet);
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

procedure TfrmInnerInvoice.ibdsOutcomeDocsAfterOpen(DataSet: TDataSet);
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

procedure TfrmInnerInvoice.dbgIncomeDocsDblClick(Sender: TObject);
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
     (frm as TfrmPlat).ibdsMainPrimaryPayment.Close;
     (frm as TfrmPlat).ibdsMainPrimaryPayment.ParamByName('ID').AsInt64 := ibdsIncomeDocsID.Value;
     (frm as TfrmPlat).ibdsMainPrimaryPayment.Open
    End;
   frm.Show
  End
end;

procedure TfrmInnerInvoice.dbgOutcomeDocsDblClick(Sender: TObject);
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
     (frm as TfrmPlat).ibdsMainPrimaryPayment.Close;
     (frm as TfrmPlat).ibdsMainPrimaryPayment.ParamByName('ID').AsInt64 := ibdsOutcomeDocsID.Value;
     (frm as TfrmPlat).ibdsMainPrimaryPayment.Open
    End;
   frm.Show
  End
end;

procedure TfrmInnerInvoice.sbDeleteDocsClick(Sender: TObject);
begin
 If (ActiveControl=dbgIncomeDocs) then
  ibdsIncomeDocs.Delete
 else
  ibdsOutcomeDocs.Delete
end;

procedure TfrmInnerInvoice.ibdsIncomeDocsUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 ibsAux.SQL.Clear;
 If (ibdsIncomeDocsNAME.AsString='НАКЛАДНАЯ') then
  ibsAux.SQL.Add('delete from PRIMARY_TOVAR_INCOME_HEADER')
 else
  ibsAux.SQL.Add('delete from PRIMARY_PAYMENTS');
 ibsAux.SQL.Add('where ID='+ibdsIncomeDocsID.AsString);
 ibsAux.ExecQuery;
 UpdateAction := uaApplied
end;

procedure TfrmInnerInvoice.sbCancelDocsClick(Sender: TObject);
begin
 ibdsIncomeDocs.CancelUpdates;
 ibdsOutcomeDocs.CancelUpdates;
 StteChange('Docs', False)
end;

procedure TfrmInnerInvoice.sbApplyDocsClick(Sender: TObject);
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

procedure TfrmInnerInvoice.ibdsOutcomeDocsUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 ibsAux.SQL.Clear;
 If (ibdsOutcomeDocsNAME.AsString='НАКЛАДНАЯ') then
  ibsAux.SQL.Add('delete from PRIMARY_TOVAR_OUTCOME_HEADER')
 else
  ibsAux.SQL.Add('delete from PRIMARY_PAYMENTS');
 ibsAux.SQL.Add('where ID='+ibdsOutcomeDocsID.AsString);
 ibsAux.ExecQuery;
 UpdateAction := uaApplied
end;

procedure TfrmInnerInvoice.sbAddDocsClick(Sender: TObject);
begin
 PopupMenu5.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y)
end;

procedure TfrmInnerInvoice.sbFilterInvoicesListClick(Sender: TObject);
 var BookMark : String;
begin
 ibdsFilterPersons.Active := sbFilterInvoicesList.Down;
 ibdsFilterTypes.Active := sbFilterInvoicesList.Down;
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

procedure TfrmInnerInvoice.SpeedButton5Click(Sender: TObject);
begin
 SpeedButton5.Visible := Not SpeedButton5.Visible;
 SpeedButton3.Visible := Not SpeedButton3.Visible;
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True
end;

procedure TfrmInnerInvoice.ibdsFilterTypesBeforeOpen(DataSet: TDataSet);
begin
 ibdsFilterTypes.ParamByName('IN_OUT').Value := 3;
 ibdsFilterTypes.ParamByName('PERSON_ID').Value := PersonID
end;

procedure TfrmInnerInvoice.cbMenegerClick(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

procedure TfrmInnerInvoice.sbReFilterClick(Sender: TObject);
begin
 sbFilterInvoicesList.Click;
 sbReFilter.Visible := False
end;

procedure TfrmInnerInvoice.ibdsFilterPersonsAfterOpen(DataSet: TDataSet);
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

procedure TfrmInnerInvoice.ibdsFilterPersonsBeforeClose(DataSet: TDataSet);
begin
 IType := edType.Text;
 Contractor := edContractor.Text;
 Meneger := edMeneger.Text;
 ArticulName := edArticul.Text;
 DateStart := deDateStart.Date;
 DateStop := deDateStop.Date
end;

procedure TfrmInnerInvoice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
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
  If (cbType.Checked) then
   Begin
    ibsAux.ParamByName('FILTER_NAME').Value := cbType.Name;
    ibsAux.ParamByName('FILTER_VALUE').Value := edType.Text;
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
 End;
 inherited;
 frmInnerInvoice := nil
end;

procedure TfrmInnerInvoice.sbPrintInvoiceClick(Sender: TObject);
begin
{ ibdsReportBody.Open;
 ibdsReportHeader.Open;
 sbPrintInvoice.Tag := In_Out;
 frVariables.Clear;
 frVariables['DisplayFormat'] := ibdsMainInvoiceBodyPRICE.DisplayFormat;
 frVariables['CurrencyRoundPower'] := CurrencyRoundPower;
 sbPrintClick((Sender as TSpeedButton), ibsAux, ibdsReportBody);}
end;

procedure TfrmInnerInvoice.ibdsReportBodyCalcFields(DataSet: TDataSet);
begin
 ibdsReportBodyNDS_AMOUNT.Value := Round(ibdsReportBodyPRICE.AsFloat*ibdsReportBodyNDS.AsFloat/(100+ibdsReportBodyNDS.Value)*CurrencyRoundPower)/CurrencyRoundPower;
 ibdsReportBodyPRICE_WO_NDS.Value := ibdsReportBodyPRICE.AsFloat-ibdsReportBodyNDS_AMOUNT.Value
end;

procedure TfrmInnerInvoice.ibdsReportHeaderCalcFields(DataSet: TDataSet);
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

procedure TfrmInnerInvoice.N5Click(Sender: TObject);
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
   frmNaklOut.ibdsMainPrimaryTovarOutcomeENTERPRISE_ID.Value := ibdsMainInvoiceENTERPRISE_ID.AsLargeInt;
   frmNaklOut.ibdsMainPrimaryTovarOutcomeENTERPRISE_STORE_ID.Value := ibdsMainInvoiceENTERPRISE_STORE_ID.AsLargeInt;
   frmNaklOut.ibdsMainPrimaryTovarOutcome.Post;
   frmNaklOut.ibdsMainPrimaryTovarOutcome.Edit;
   frmNaklOut.ibdsMainPrimaryTovarOutcomeCONTRACTOR_ID.Value := ibdsMainInvoiceCONTRACTOR_ID.AsLargeInt;
   frmNaklOut.ibdsMainPrimaryTovarOutcome.Post;
   frmNaklOut.ibdsMainPrimaryTovarOutcome.Edit;
   frmNaklOut.wwDBLookupCombo16.Text := ibdsMainInvoiceCONTRACTOR_NAME.AsString;
   frmNaklOut.ibdsMainPrimaryTovarOutcomeCURRENCY_ID.Value := ibdsMainInvoiceCURRENCY_ID.AsLargeInt;
   frmNaklOut.ibdsMainPrimaryTovarOutcomeCURRENCY_RATE.Value := ibdsMainInvoiceCURRENCY_RATE.AsFloat;
   frmNaklOut.ibdsMainPrimaryTovarOutcomePARENT_TYPE.Value := 4;
   frmNaklOut.ibdsMainPrimaryTovarOutcomePARENT_ID.Value := ibdsMainInvoiceID.AsLargeInt;
   frmNaklOut.ibdsMainPrimaryTovarOutcome.Post;
   frmNaklOut.ibdsMainPrimaryTovarOutcome.Edit;
   frmNaklOut.ibdsMainPrimaryTovarOutcomeIS_NAKL.Value := 1;
   frmNaklOut.wwRadioGroup1.Visible := False;
   frmNaklOut.Label22.Visible := False;
   frmNaklOut.wwDBLookupCombo2.Visible := False;
   ibdsMainInvoiceBody.DisableControls;
   ibdsInvoiceBodySet.DisableControls;
   ibdsInvoiceBodySet.First;
   ibdsMainInvoiceBody.First;
   If ((Sender as TMenuItem).Tag=1) then
    While NOT(ibdsInvoiceBodySet.Eof) do
     Begin
      frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Append;
      frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID.Value := ibdsInvoiceBodySetARTICUL_ID.AsInteger;
      frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.Value := (ibdsMainInvoiceBodyITEMS_AMOUNT.AsFloat+ibdsMainInvoiceBodyPACKS_AMOUNT.AsInteger*ibdsMainInvoiceBodyPACK_VALUE.AsFloat)*(ibdsInvoiceBodySetITEMS_AMOUNT.AsFloat+ibdsInvoiceBodySetPACKS_AMOUNT.AsInteger*ibdsInvoiceBodySetPACK_VALUE.AsFloat);
      frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Post;
      ibdsInvoiceBodySet.Next
     End
   else
    Begin
     frmNaklOut.Cloning := True;
     While NOT (ibdsMainInvoiceBody.Eof) do
      Begin
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Append;
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyARTICUL_ID.Value := ibdsMainInvoiceBodyARTICUL_ID.AsInteger;
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyMADE_IN.Value := ibdsMainInvoiceBodyMADE_IN.AsString;
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACK_VALUE.Value := ibdsMainInvoiceBodyPACK_VALUE.AsFloat;
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPRICE.Value := ibdsMainInvoiceBodyPRICE.AsFloat;
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyPACKS_AMOUNT.Value := ibdsMainInvoiceBodyPACKS_AMOUNT.AsInteger;
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBodyITEMS_AMOUNT.Value := ibdsMainInvoiceBodyITEMS_AMOUNT.AsFloat;
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Post;
       ibdsInvoiceBodySet.First;
       While NOT (ibdsInvoiceBodySet.Eof) do
        Begin
         If (ibdsInvoiceBodySetINVOICE_BODY_ID.AsInteger=ibdsMainInvoiceBodyID.AsInteger) then
          Begin
           frmNaklOut.ibdsPrimaryTovarOutcomeBodySet.Append;
           frmNaklOut.ibdsPrimaryTovarOutcomeBodySetARTICUL_ID.Value := ibdsInvoiceBodySetARTICUL_ID.AsInteger;
           frmNaklOut.ibdsPrimaryTovarOutcomeBodySetPACKS_AMOUNT.Value := ibdsInvoiceBodySetPACKS_AMOUNT.AsInteger;
           frmNaklOut.ibdsPrimaryTovarOutcomeBodySetPACK_VALUE.Value := ibdsInvoiceBodySetPACK_VALUE.AsFloat;
           frmNaklOut.ibdsPrimaryTovarOutcomeBodySetITEMS_AMOUNT.Value := ibdsInvoiceBodySetITEMS_AMOUNT.AsFloat;
           frmNaklOut.ibdsPrimaryTovarOutcomeBodySetPRICE.Value := ibdsInvoiceBodySetPRICE.AsFloat;
           frmNaklOut.ibdsPrimaryTovarOutcomeBodySetCOMMENTS.Value := ibdsInvoiceBodySetCOMMENTS.AsString;
           frmNaklOut.ibdsPrimaryTovarOutcomeBodySet.Post
          End;
         ibdsInvoiceBodySet.Next
        End;
       ibdsMainInvoiceBody.Next
      End
    End;
   frmNaklOut.Cloning := False
  End;
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
   frmNaklIn.ibdsMainPrimaryTovarIncomeENTERPRISE_ID.Value := ibdsContractorsENTERPRISE_ID.AsLargeInt;
   frmNaklIn.ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.Value := -ibdsMainInvoiceCONTRACTOR_ID.AsLargeInt;
   frmNaklIn.ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.Value := -ibdsMainInvoiceENTERPRISE_STORE_ID.AsLargeInt;
   frmNaklIn.ibdsMainPrimaryTovarIncome.Post;
   frmNaklIn.ibdsMainPrimaryTovarIncome.Edit;
   frmNaklIn.wwDBLookupCombo16.Text := ibdsMainInvoiceENTERPRISE_STORE_NAME.AsString+'/'+ibdsMainInvoiceENTERPRISE_NAME.AsString;
   frmNaklIn.ibdsMainPrimaryTovarIncomeCURRENCY_ID.Value := ibdsMainInvoiceCURRENCY_ID.AsLargeInt;
   frmNaklIn.ibdsMainPrimaryTovarIncomeCURRENCY_RATE.Value := ibdsMainInvoiceCURRENCY_RATE.AsFloat;
   frmNaklIn.ibdsMainPrimaryTovarIncomePARENT_TYPE.Value := 4;
   frmNaklIn.ibdsMainPrimaryTovarIncomePARENT_ID.Value := ibdsMainInvoiceID.AsLargeInt;
   frmNaklIn.ibdsMainPrimaryTovarIncome.Post;
   frmNaklIn.ibdsMainPrimaryTovarIncome.Edit;
   frmNaklIn.Label16.Visible := False;
   frmNaklIn.Label22.Visible := False;
   frmNaklIn.wwDBDateTimePicker1.Visible := False;
   frmNaklIn.wwDBDateTimePicker2.Visible := False;
   ibdsMainInvoiceBody.First;
   ibdsInvoiceBodySet.First;
   If ((Sender as TMenuItem).Tag=2) then
    While NOT(ibdsInvoiceBodySet.Eof) do
     Begin
      frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Append;
      frmNaklIn.ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.Value := ibdsInvoiceBodySetARTICUL_ID.AsInteger;
      frmNaklIn.ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value := (ibdsMainInvoiceBodyITEMS_AMOUNT.AsFloat+ibdsMainInvoiceBodyPACKS_AMOUNT.AsInteger*ibdsMainInvoiceBodyPACK_VALUE.AsFloat)*(ibdsInvoiceBodySetITEMS_AMOUNT.AsFloat+ibdsInvoiceBodySetPACKS_AMOUNT.AsInteger*ibdsInvoiceBodySetPACK_VALUE.AsFloat);
      frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Post;
      ibdsInvoiceBodySet.Next
     End
   else
    Begin
     frmNaklIn.Cloning := True;
     While NOT (ibdsMainInvoiceBody.Eof) do
      Begin
       frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Append;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.Value := ibdsMainInvoiceBodyARTICUL_ID.AsInteger;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyMADE_IN.Value := ibdsMainInvoiceBodyMADE_IN.AsString;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACK_VALUE.Value := ibdsMainInvoiceBodyPACK_VALUE.AsFloat;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPRICE.Value := ibdsMainInvoiceBodyPRICE.AsFloat;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPACKS_AMOUNT.Value := ibdsMainInvoiceBodyPACKS_AMOUNT.AsInteger;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value := ibdsMainInvoiceBodyITEMS_AMOUNT.AsFloat;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Post;
       ibdsInvoiceBodySet.First;
       While NOT (ibdsInvoiceBodySet.Eof) do
        Begin
         If (ibdsInvoiceBodySetINVOICE_BODY_ID.AsInteger=ibdsMainInvoiceBodyID.AsInteger) then
          Begin
           frmNaklIn.ibdsPrimaryTovarIncomeBodySet.Append;
           frmNaklIn.ibdsPrimaryTovarIncomeBodySetARTICUL_ID.Value := ibdsInvoiceBodySetARTICUL_ID.AsInteger;
           frmNaklIn.ibdsPrimaryTovarIncomeBodySetPACKS_AMOUNT.Value := ibdsInvoiceBodySetPACKS_AMOUNT.AsInteger;
           frmNaklIn.ibdsPrimaryTovarIncomeBodySetPACK_VALUE.Value := ibdsInvoiceBodySetPACK_VALUE.AsFloat;
           frmNaklIn.ibdsPrimaryTovarIncomeBodySetITEMS_AMOUNT.Value := ibdsInvoiceBodySetITEMS_AMOUNT.AsFloat;
           frmNaklIn.ibdsPrimaryTovarIncomeBodySetPRICE.Value := ibdsInvoiceBodySetPRICE.AsFloat;
           frmNaklIn.ibdsPrimaryTovarIncomeBodySetCOMMENTS.Value := ibdsInvoiceBodySetCOMMENTS.AsString;
           frmNaklIn.ibdsPrimaryTovarIncomeBodySet.Post
          End;
         ibdsInvoiceBodySet.Next
        End;
       ibdsMainInvoiceBody.Next
      End
    End;
   ibdsMainInvoiceBody.First;
   ibdsMainInvoiceBody.EnableControls;
   ibdsInvoiceBodySet.EnableControls;
   frmNaklIn.Cloning := False
  End;
 frmNaklOut.Show;
 frmNaklIn.Show
end;

procedure TfrmInnerInvoice.SetContractor;
begin
 ibdsContractors.Close;
 ibdsContractors.Open;
 ibdsContractors.Locate('CONTRACTOR_ID',frmKontrAgList.ibdsMainContractorsID.AsString,[]);
 If NOT (ibdsMainInvoice.State in [dsEdit, dsInsert]) then
  ibdsMainInvoice.Edit;
 ibdsMainInvoiceCONTRACTOR_ID.Value := ibdsContractorsCONTRACTOR_ID.Value;
 wwDBLookupCombo6.Text := ibdsContractorsCONTRACTOR_NAME.AsString;
 frmKontrAgList.LookUpProcedure := nil
end;

procedure TfrmInnerInvoice.wwDBLookupCombo6KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmInnerInvoice.edContractorChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbContractor.Checked)
end;

procedure TfrmInnerInvoice.edSuffixChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbSuffix.Checked)
end;

procedure TfrmInnerInvoice.edNumberChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbNumber.Checked)
end;

procedure TfrmInnerInvoice.edPrefixChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbPrefix.Checked)
end;

procedure TfrmInnerInvoice.cbOpenClick(Sender: TObject);
begin
 sbReFilter.Visible := True;
 If (Sender as TwwCheckBox).Checked then
  If (Sender=cbOpen) then
   cbClosed.Checked := False
  else
   cbOpen.Checked := False
end;

procedure TfrmInnerInvoice.SpeedButton8Click(Sender: TObject);
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

procedure TfrmInnerInvoice.N13Click(Sender: TObject);
begin
 If ((Sender as TMenuItem).Owner.FindComponent('frmGoodInfo')=nil) then
  frmGoodInfo := TfrmGoodInfo.Create((Sender as TMenuItem).Owner);
 frmGoodInfo.ibdsGoods.Close;
 frmGoodInfo.ibdsReservation.Close;
 frmGoodInfo.ibdsGoods.DataSource := dsMainInvoiceBody;
 frmGoodInfo.ibdsReservation.DataSource := dsMainInvoiceBody;
 frmGoodInfo.ibdsGoods.Open;
 frmGoodInfo.ibdsReservation.Open;
 frmGoodInfo.Show
end;

procedure TfrmInnerInvoice.wwDBGrid1CalcTitleAttributes(Sender: TObject;
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

procedure TfrmInnerInvoice.ibdsMainInvoicesListAfterDelete(
  DataSet: TDataSet);
begin
 StteChange('InvoicesList', True)
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceAfterDelete(DataSet: TDataSet);
begin
 StteChange('Invoice', True)
end;

procedure TfrmInnerInvoice.ibdsIncomeDocsAfterDelete(DataSet: TDataSet);
begin
 StteChange('Docs', True)
end;

procedure TfrmInnerInvoice.SetReadOnly;
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

procedure TfrmInnerInvoice.ibdsInvoice_SetupBeforeOpen(DataSet: TDataSet);
begin
 ibdsInvoice_Setup.ParamByName('PERSON_ID').Value := PersonID;
 ibdsInvoice_Setup.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainInvoiceENTERPRISE_ID.AsLargeInt
end;

procedure TfrmInnerInvoice.ibdsIncomeDocsAfterScroll(DataSet: TDataSet);
begin
 sbDeleteDocs.Enabled := (DataSet.FieldByName('DELETE_RIGHT').AsInteger=1) and
                         (((DataSet.FieldByName('NAME').AsString<>'ПЛАТЕЖ') and
                           (DataSet.FieldByName('CLOSED').AsInteger=0)) or
                          (DataSet.FieldByName('NAME').AsString='ПЛАТЕЖ'))
end;

procedure TfrmInnerInvoice.dbgIncomeDocsEnter(Sender: TObject);
begin
 If (Sender=dbgIncomeDocs) then
  ibdsIncomeDocsAfterScroll(ibdsIncomeDocs)
 else
  ibdsIncomeDocsAfterScroll(ibdsOutcomeDocs)
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceBeforeOpen(DataSet: TDataSet);
begin
 ibdsMainInvoice.ParamByName('PERSON_ID').AsInt64 := PersonID
end;

procedure TfrmInnerInvoice.ibdsIncomeDocsBeforeOpen(DataSet: TDataSet);
begin
 (DataSet as TIBDataSet).ParamByName('PERSON_ID').Value := PersonID
end;

procedure TfrmInnerInvoice.dbgAccountBodyEnter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := (dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource
end;

procedure TfrmInnerInvoice.tvAccountBodyCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If (Black) then
  GridDBTableViewCustomDrawCell(Sender,ACanvas,AViewInfo,(PaintBlackBody))
 else
  GridDBTableViewCustomDrawCell(Sender,ACanvas,AViewInfo,False)
end;

procedure TfrmInnerInvoice.tvAccountBodyCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmInnerInvoice.tvAccountBodyEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 AAllow := (AItem.DataBinding as TcxGridItemDBDataBinding).Field.CanModify
end;

procedure TfrmInnerInvoice.pnlCommentsHotSpotClick(Sender: TObject);
begin
 sbShowComments.Down := NOT pnlComments.HotSpotClosed
end;

procedure TfrmInnerInvoice.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (tvAccountBody.Focused) then
  Key := MyUpCase(Key)
end;

procedure TfrmInnerInvoice.Panel5Enter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := dsMainInvoice
end;

procedure TfrmInnerInvoice.tvAccountBodyKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmInnerInvoice.ibdsInvoiceBodySetBeforeOpen(DataSet: TDataSet);
begin
 ibdsInvoiceBodySet.ParamByName('ID').AsInt64 := ibdsMainInvoiceID.Value
end;

procedure TfrmInnerInvoice.ibdsInvoiceBodySetNewRecord(DataSet: TDataSet);
begin
 ibdsInvoiceBodySetID.Value := GetNewID(ibsGen_ID,'GEN_INVOICE_BODY_SETS_ID');
 ibdsInvoiceBodySetINVOICE_BODY_ID.AsInteger := ibdsMainInvoiceBodyID.AsInteger
end;

procedure TfrmInnerInvoice.dbgAccountBodyFocusedViewChanged(
  Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
begin
 dbmComments.DataBinding.DataSource := (dbgAccountBody.FocusedView as TcxGridDBTableView).DataController.DataSource
end;

procedure TfrmInnerInvoice.tvAccountBodyDataControllerDetailHasChildren(
  Sender: TcxDBDataController; ARecordIndex, ARelationIndex: Integer;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var HasChildren: Boolean);
begin
 HasChildren := (Sender.Values[ARecordIndex,tvAccountBodyITEM_TYPE.Index]=1)
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceBodyBeforeDelete(
  DataSet: TDataSet);
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

procedure TfrmInnerInvoice.ibdsInvoiceBodySetCalcFields(DataSet: TDataSet);
begin
 ibdsInvoiceBodySetItogo.Value := ibdsInvoiceBodySetPACKS_AMOUNT.Value*ibdsInvoiceBodySetPACK_VALUE.Value+ibdsInvoiceBodySetITEMS_AMOUNT.Value;
 ibdsInvoiceBodySetItogoMany.Value := ibdsInvoiceBodySetItogo.Value*ibdsInvoiceBodySetPRICE.Value;
end;

procedure TfrmInnerInvoice.ibdsMainInvoiceBeforeDelete(DataSet: TDataSet);
begin
 If (ibdsMainInvoiceDELETE_RIGHT.AsInteger=0) or (ibdsMainInvoiceCLOSED.AsInteger=1)then
  Abort
end;

procedure TfrmInnerInvoice.ibdsInvoiceBodySetBeforeDelete(
  DataSet: TDataSet);
begin
 If (ibdsMainInvoiceCLOSED.AsInteger=1) then
  Abort;
end;

end.
