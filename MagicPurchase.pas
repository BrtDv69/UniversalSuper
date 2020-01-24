unit MagicPurchase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, IBSQL, IBDatabase, DB, IBCustomDataSet, cxPC, cxControls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridCustomPopupMenu,
  cxGridPopupMenu, ExtCtrls, RzPanel, RzSplit, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxButtons,
  cxGraphics, Clipbrd, cxProgressBar, DateUtils, Buttons, Menus;

type
  TfrmMagicPurchase = class(TfrmLike)
    ibdsMainSales: TIBDataSet;
    dsMainSales: TDataSource;
    ibdsCountries: TIBDataSet;
    ibdsCountriesNAME: TIBStringField;
    ibdsCountriesID: TLargeintField;
    cxPageControl1: TcxPageControl;
    tsPrepare: TcxTabSheet;
    ibdsMainSalesCONTRACTOR_NAME: TIBStringField;
    ibdsMainSalesARTICUL_NAME: TIBStringField;
    ibdsMainSalesPRIMARY_DATE: TDateField;
    ibdsMainSalesNUMBER_PREFIX: TIBStringField;
    ibdsMainSalesNUMBER: TIntegerField;
    ibdsMainSalesNUMBER_SUFFIX: TIBStringField;
    ibdsMainSalesI_NUMBER_PREFIX: TIBStringField;
    ibdsMainSalesI_NUMBER: TIntegerField;
    ibdsMainSalesI_NUMBER_SUFFIX: TIBStringField;
    ibdsMainSalesDECLARATION_NUMBER: TIBStringField;
    ibdsMainSalesAMOUNT: TFloatField;
    ibdsMainSalesPRICE: TFloatField;
    ibdsMainSalesNDS: TFloatField;
    ibdsMainSalesNSP: TFloatField;
    ibdsMainSalesIS_NAKL: TIntegerField;
    ibdsMainSalesTAKE_NSP: TIntegerField;
    ibdsMainSalesITEM_TYPE: TIntegerField;
    ibdsMainSalesNUMBER_NAKL: TStringField;
    ibdsMainSalesNUMBER_INV: TStringField;
    tvPrepare: TcxGridDBTableView;
    lvPrepare: TcxGridLevel;
    grdPrepare: TcxGrid;
    cxGridPopupMenu1: TcxGridPopupMenu;
    ibdsMainSalesID: TLargeintField;
    ibdsMainSalesPRICE_W_NALOG: TFloatField;
    ibdsMainSalesPRICE_WO_NALOG: TFloatField;
    ibdsMainSalesTOTAL_W_NALOG: TFloatField;
    ibdsMainSalesTOTAL_WO_NALOG: TFloatField;
    ibdsMainSalesPRIVATE: TIntegerField;
    tvPrepareCONTRACTOR_NAME: TcxGridDBColumn;
    tvPrepareARTICUL_NAME: TcxGridDBColumn;
    tvPreparePRIMARY_DATE: TcxGridDBColumn;
    tvPrepareCOUNTRY_ID: TcxGridDBColumn;
    tvPrepareDECLARATION_NUMBER: TcxGridDBColumn;
    tvPrepareAMOUNT: TcxGridDBColumn;
    tvPrepareNUMBER_NAKL: TcxGridDBColumn;
    tvPrepareNUMBER_INV: TcxGridDBColumn;
    tvPreparePRICE_W_NALOG: TcxGridDBColumn;
    tvPreparePRICE_WO_NALOG: TcxGridDBColumn;
    tvPrepareTOTAL_W_NALOG: TcxGridDBColumn;
    tvPrepareTOTAL_WO_NALOG: TcxGridDBColumn;
    dsCountries: TDataSource;
    pnlComments: TRzSizePanel;
    deStart: TcxDateEdit;
    deStop: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    btSave: TcxButton;
    btShow: TcxButton;
    ibdsMainSalesCOUNTRY_ID: TIntegerField;
    ibdsSets: TIBDataSet;
    dsSets: TDataSource;
    ibdsMainSalesARTICUL_ID: TLargeintField;
    ibdsMainSalesENTERPRISE_STORE_ID: TLargeintField;
    ibdsSetsID: TLargeintField;
    ibdsSetsPRIMARY_TOVAR_OUTCOME_BODY_ID: TIntegerField;
    ibdsSetsARTICUL_ID: TLargeintField;
    ibdsSetsCONTRACTOR_NAME: TIBStringField;
    ibdsSetsARTICUL_NAME: TIBStringField;
    ibdsSetsPRIMARY_DATE: TDateField;
    ibdsSetsNUMBER_PREFIX: TIBStringField;
    ibdsSetsNUMBER: TIntegerField;
    ibdsSetsNUMBER_SUFFIX: TIBStringField;
    ibdsSetsI_NUMBER_PREFIX: TIBStringField;
    ibdsSetsI_NUMBER: TIntegerField;
    ibdsSetsENTERPRISE_STORE_ID: TLargeintField;
    ibdsSetsI_NUMBER_SUFFIX: TIBStringField;
    ibdsSetsCOUNTRY_ID: TIntegerField;
    ibdsSetsDECLARATION_NUMBER: TIBStringField;
    ibdsSetsAMOUNT: TFloatField;
    ibdsSetsPRICE: TFloatField;
    ibdsSetsNDS: TFloatField;
    ibdsSetsNSP: TFloatField;
    ibdsSetsIS_NAKL: TIntegerField;
    ibdsSetsTAKE_NSP: TIntegerField;
    ibdsSetsPRIVATE: TIntegerField;
    ibdsSetsNUMBER_NAKL: TStringField;
    ibdsSetsNUMBER_INV: TStringField;
    ibdsSetsPRICE_W_NALOG: TFloatField;
    ibdsSetsPRICE_WO_NALOG: TFloatField;
    ibdsSetsTOTAL_W_NALOG: TFloatField;
    ibdsSetsTOTAL_WO_NALOG: TFloatField;
    lvSets: TcxGridLevel;
    tvSets: TcxGridDBTableView;
    tvSetsARTICUL_NAME: TcxGridDBColumn;
    tvSetsCOUNTRY_ID: TcxGridDBColumn;
    tvSetsDECLARATION_NUMBER: TcxGridDBColumn;
    tvSetsAMOUNT: TcxGridDBColumn;
    tvSetsPRICE_W_NALOG: TcxGridDBColumn;
    tvSetsPRICE_WO_NALOG: TcxGridDBColumn;
    tvSetsTOTAL_W_NALOG: TcxGridDBColumn;
    tvSetsTOTAL_WO_NALOG: TcxGridDBColumn;
    ibdsSetsENTERPRISE_ID: TLargeintField;
    ibdsSetsCURRENCY_ID: TLargeintField;
    ibdsSetsCURRENCY_RATE: TFloatField;
    ibdsMainSalesENTERPRISE_ID: TLargeintField;
    ibdsMainSalesCURRENCY_ID: TLargeintField;
    ibdsMainSalesCURRENCY_RATE: TFloatField;
    ibdsSetsITEM_TYPE: TIntegerField;
    cxTabSheet1: TcxTabSheet;
    RzSizePanel1: TRzSizePanel;
    Label3: TLabel;
    Label4: TLabel;
    cxButton2: TcxButton;
    RzSizePanel2: TRzSizePanel;
    grdSuplayers: TcxGrid;
    tvSuplayers: TcxGridDBTableView;
    lvSuplayers: TcxGridLevel;
    pbPrepare: TcxProgressBar;
    meStopBuying: TcxMaskEdit;
    meStartBuying: TcxMaskEdit;
    Label5: TLabel;
    meDeltaStart: TcxMaskEdit;
    Label6: TLabel;
    meDeltaStop: TcxMaskEdit;
    Label7: TLabel;
    ibdsSuplayers: TIBDataSet;
    dsSuplayers: TDataSource;
    tvSuplayersCONTRACTOR_NAME: TcxGridDBColumn;
    tvSuplayersINVOICE_DATE: TcxGridDBColumn;
    tvSuplayersNUMBER_STR: TcxGridDBColumn;
    tvSuplayersSALDO_GOODS: TcxGridDBColumn;
    tvSuplayersSALDO_MANY: TcxGridDBColumn;
    ibdsSuplayersNUMBER_STR: TStringField;
    tvSuplayersFIRST_PAYMENT_DATE: TcxGridDBColumn;
    ibdsSaleSettling: TIBDataSet;
    dsSaleSettling: TDataSource;
    ibdsSaleSettlingID: TLargeintField;
    ibdsSaleSettlingARTICUL_NAME: TIBStringField;
    ibdsSaleSettlingNUMBER_PREFIX: TIBStringField;
    ibdsSaleSettlingNUMBER: TIntegerField;
    ibdsSaleSettlingNUMBER_SUFFIX: TIBStringField;
    ibdsSaleSettlingCOUNTRY_NAME: TIBStringField;
    ibdsSaleSettlingDECLARATION_NUMBER: TIBStringField;
    ibdsSaleSettlingAMOUNT: TFloatField;
    ibdsSaleSettlingSELL_PRICE: TFloatField;
    ibdsSaleSettlingNDS: TFloatField;
    ibdsSaleSettlingNSP: TFloatField;
    ibdsSaleSettlingBUY_PRICE: TFloatField;
    ibdsSaleSettlingBUY_PRICE_WO_NALOG: TFloatField;
    ibdsSaleSettlingNUMBER_STR: TStringField;
    ibdsSaleSettlingSELL_TOTAL: TFloatField;
    ibdsSaleSettlingSELL_TOTAL_WO_NALOG: TFloatField;
    ibdsSaleSettlingBUY_TOTAL: TFloatField;
    ibdsSaleSettlingBUY_TOTAL_WO_NALOG: TFloatField;
    ibdsSaleSettlingSELL_PRICE_WO_NALOG: TFloatField;
    ibdsSaleSettlingSTART_BUYING_DATE: TDateField;
    ibdsSaleSettlingSTOP_BUYING_DATE: TDateField;
    ibdsSaleSettlingTOTAL_DELTA: TFloatField;
    ibdsSaleSettlingPRIMARY_DATE: TDateField;
    ibdsSuplayersCONTRACTOR_NUMBER: TStringField;
    ibdsSuplayersAVAILABLE: TFloatField;
    tvSuplayersAVAILABLE: TcxGridDBColumn;
    ibdsSuplayersCONTRACTOR_NAME: TIBStringField;
    ibdsSuplayersINVOICE_DATE: TDateField;
    ibdsSuplayersINVOICE_ID: TLargeintField;
    ibdsSuplayersFIRST_PAYMENT_DATE: TDateField;
    ibdsSuplayersNUMBER_PREFIX: TIBStringField;
    ibdsSuplayersNUMBER: TIntegerField;
    ibdsSuplayersNUMBER_SUFFIX: TIBStringField;
    ibdsSuplayersENTERPRISE_ID: TLargeintField;
    ibdsSuplayersSALDO_GOODS: TFloatField;
    ibdsSuplayersSALDO_MANY: TFloatField;
    ibdsSuplayersINCLUDE_NSP: TIntegerField;
    Panel1: TPanel;
    grdSaleSettling: TcxGrid;
    tvSaleSettling: TcxGridDBTableView;
    tvSaleSettlingARTICUL_NAME: TcxGridDBColumn;
    tvSaleSettlingNUMBER_STR: TcxGridDBColumn;
    tvSaleSettlingCOUNTRY_NAME: TcxGridDBColumn;
    tvSaleSettlingDECLARATION_NUMBER: TcxGridDBColumn;
    tvSaleSettlingAMOUNT: TcxGridDBColumn;
    tvSaleSettlingSELL_PRICE: TcxGridDBColumn;
    tvSaleSettlingSELL_PRICE_WO_NALOG: TcxGridDBColumn;
    tvSaleSettlingSELL_TOTAL: TcxGridDBColumn;
    tvSaleSettlingSELL_TOTAL_WO_NALOG: TcxGridDBColumn;
    tvSaleSettlingBUY_PRICE: TcxGridDBColumn;
    tvSaleSettlingBUY_PRICE_WO_NALOG: TcxGridDBColumn;
    tvSaleSettlingBUY_TOTAL: TcxGridDBColumn;
    tvSaleSettlingBUY_TOTAL_WO_NALOG: TcxGridDBColumn;
    tvSaleSettlingTOTAL_DELTA: TcxGridDBColumn;
    tvSaleSettlingSTART_BUYING_DATE: TcxGridDBColumn;
    tvSaleSettlingSTOP_BUYING_DATE: TcxGridDBColumn;
    glSaleSettling: TcxGridLevel;
    Panel2: TPanel;
    sbCancelSaleSettling: TSpeedButton;
    sbApplySaleSettling: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel3: TPanel;
    sbCancelInvoice: TSpeedButton;
    sbApplyInvoice: TSpeedButton;
    sbDeleteInvoice: TSpeedButton;
    sbAddInvoice: TSpeedButton;
    pmInvoices: TPopupMenu;
    pmParentInvoiceIn: TMenuItem;
    pmParentInvoiceOut: TMenuItem;
    ibdsSaleSettlingTOTAL_WHITE: TFloatField;
    ibdsSaleSettlingENTERPRISE_STORE_ID: TLargeintField;
    ibdsSaleSettlingARTICUL_ID: TLargeintField;
    tvSaleSettlingTOTAL_WHITE: TcxGridDBColumn;
    pbSaleSettling: TcxProgressBar;
    ibdsPrimaryForBuying: TIBDataSet;
    dsPrimaryForBuying: TDataSource;
    ibdsPrimaryForBuyingID: TLargeintField;
    ibdsPrimaryForBuyingINVOICE_ID: TLargeintField;
    ibdsPrimaryForBuyingPRIMARY_TOVAR_INCOME_HEADER_ID: TLargeintField;
    ibdsPrimaryForBuyingPRIMARY_TOVAR_INCOME_DATE: TDateField;
    ibdsPrimaryForBuyingPRIMARY_DATE: TDateField;
    ibdsPrimaryForBuyingNUMBER_DATE: TStringField;
    ibdsPrimaryForBuyingNUMBER: TIBStringField;
    lvPrimaryForBuying: TcxGridLevel;
    tvPrimaryForBuying: TcxGridDBTableView;
    ibdsPrimaryForBuyingAMOUNT: TFloatField;
    tvPrimaryForBuyingPRIMARY_TOVAR_INCOME_DATE: TcxGridDBColumn;
    tvPrimaryForBuyingNUMBER_DATE: TcxGridDBColumn;
    tvPrimaryForBuyingAMOUNT: TcxGridDBColumn;
    ibdsPrimaryForBuyingNUMBER_PP: TIntegerField;
    tvPrimaryForBuyingNUMBER_PP: TcxGridDBColumn;
    ibdsPrimaryBodyForBuying: TIBDataSet;
    ibdsPrimaryBodyForBuyingNUMBER_STR: TStringField;
    ibdsPrimaryBodyForBuyingSELL_TOTAL: TFloatField;
    ibdsPrimaryBodyForBuyingSELL_TOTAL_WO_NALOG: TFloatField;
    ibdsPrimaryBodyForBuyingBUY_PRICE_WO_NALOG: TFloatField;
    ibdsPrimaryBodyForBuyingBUY_TOTAL: TFloatField;
    ibdsPrimaryBodyForBuyingBUY_TOTAL_WO_NALOG: TFloatField;
    ibdsPrimaryBodyForBuyingTOTAL_DELTA: TFloatField;
    dsPrimaryBodyForBuying: TDataSource;
    ibdsPrimaryBodyForBuyingID: TLargeintField;
    ibdsPrimaryBodyForBuyingARTICUL_NAME: TIBStringField;
    ibdsPrimaryBodyForBuyingNUMBER_PREFIX: TIBStringField;
    ibdsPrimaryBodyForBuyingNUMBER: TIntegerField;
    ibdsPrimaryBodyForBuyingNUMBER_SUFFIX: TIBStringField;
    ibdsPrimaryBodyForBuyingPRIMARY_DATE: TDateField;
    ibdsPrimaryBodyForBuyingCOUNTRY_NAME: TIBStringField;
    ibdsPrimaryBodyForBuyingDECLARATION_NUMBER: TIBStringField;
    ibdsPrimaryBodyForBuyingAMOUNT: TFloatField;
    ibdsPrimaryBodyForBuyingSELL_PRICE: TFloatField;
    ibdsPrimaryBodyForBuyingSELL_PRICE_WO_NALOG: TFloatField;
    ibdsPrimaryBodyForBuyingNDS: TFloatField;
    ibdsPrimaryBodyForBuyingNSP: TFloatField;
    ibdsPrimaryBodyForBuyingBUY_PRICE: TFloatField;
    ibdsPrimaryBodyForBuyingENTERPRISE_STORE_ID: TLargeintField;
    ibdsPrimaryBodyForBuyingARTICUL_ID: TLargeintField;
    lvPrimaryBodyForBuying: TcxGridLevel;
    tvPrimaryBodyForBuying: TcxGridDBTableView;
    tvPrimaryBodyForBuyingNUMBER_STR: TcxGridDBColumn;
    tvPrimaryBodyForBuyingSELL_TOTAL: TcxGridDBColumn;
    tvPrimaryBodyForBuyingSELL_TOTAL_WO_NALOG: TcxGridDBColumn;
    tvPrimaryBodyForBuyingBUY_PRICE_WO_NALOG: TcxGridDBColumn;
    tvPrimaryBodyForBuyingBUY_TOTAL: TcxGridDBColumn;
    tvPrimaryBodyForBuyingBUY_TOTAL_WO_NALOG: TcxGridDBColumn;
    tvPrimaryBodyForBuyingTOTAL_DELTA: TcxGridDBColumn;
    tvPrimaryBodyForBuyingARTICUL_NAME: TcxGridDBColumn;
    tvPrimaryBodyForBuyingCOUNTRY_NAME: TcxGridDBColumn;
    tvPrimaryBodyForBuyingDECLARATION_NUMBER: TcxGridDBColumn;
    tvPrimaryBodyForBuyingAMOUNT: TcxGridDBColumn;
    tvPrimaryBodyForBuyingSELL_PRICE: TcxGridDBColumn;
    tvPrimaryBodyForBuyingSELL_PRICE_WO_NALOG: TcxGridDBColumn;
    tvPrimaryBodyForBuyingBUY_PRICE: TcxGridDBColumn;
    ibdsSuplayersIN_OUT: TIntegerField;
    ibdsSuplayersCONTRACTOR_ID: TLargeintField;
    ibdsPrimaryBodyForBuyingBUY_PRIMARY_ID: TLargeintField;
    procedure ibdsMainSalesCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btShowClick(Sender: TObject);
    procedure tvPrepareCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvPrepareCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure tvPrepareKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSaveClick(Sender: TObject);
    procedure ibdsSuplayersCalcFields(DataSet: TDataSet);
    procedure cxPageControl1Change(Sender: TObject);
    procedure grdSuplayersEnter(Sender: TObject);
    procedure ibdsSaleSettlingCalcFields(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure sbAddInvoiceClick(Sender: TObject);
    procedure pmParentInvoiceInClick(Sender: TObject);
    procedure ibdsSuplayersINVOICE_IDChange(Sender: TField);
    procedure sbDeleteInvoiceClick(Sender: TObject);
    procedure sbApplyInvoiceClick(Sender: TObject);
    procedure sbCancelInvoiceClick(Sender: TObject);
    procedure ibdsSaleSettlingAfterOpen(DataSet: TDataSet);
    procedure dsSuplayersStateChange(Sender: TObject);
    procedure ibdsSuplayersAfterDelete(DataSet: TDataSet);
    procedure dsSaleSettlingStateChange(Sender: TObject);
    procedure ibdsSaleSettlingBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sbApplySaleSettlingClick(Sender: TObject);
    procedure sbCancelSaleSettlingClick(Sender: TObject);
    procedure ibdsPrimaryForBuyingCalcFields(DataSet: TDataSet);
    procedure ibdsPrimaryForBuyingNewRecord(DataSet: TDataSet);
    procedure grdSuplayersFocusedViewChanged(Sender: TcxCustomGrid;
      APrevFocusedView, AFocusedView: TcxCustomGridView);
    procedure ibdsSuplayersAfterOpen(DataSet: TDataSet);
    procedure tvPrimaryForBuyingDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateInvoiceID(Sender: TForm);
    procedure InsertInvoiceID(Sender: TForm);
  public
    { Public declarations }
  end;

var
  frmMagicPurchase: TfrmMagicPurchase;

implementation

uses DM, Main, Misk, Invoice, NaklIn;

{$R *.dfm}
var Deleted : Boolean = False;

procedure TfrmMagicPurchase.ibdsMainSalesCalcFields(DataSet: TDataSet);
 var NSP, PNSP, NDS : Double;
begin
 DataSet.FieldByName('NUMBER_NAKL').Value := DataSet.FieldByName('NUMBER_PREFIX').AsString+
                                   DataSet.FieldByName('NUMBER').AsString+
                                   DataSet.FieldByName('NUMBER_SUFFIX').AsString;
 DataSet.FieldByName('NUMBER_INV').Value := DataSet.FieldByName('I_NUMBER_PREFIX').AsString+
                                  DataSet.FieldByName('I_NUMBER').AsString+
                                  DataSet.FieldByName('I_NUMBER_SUFFIX').AsString;
 DataSet.FieldByName('PRICE_W_NALOG').Value := DataSet.FieldByName('Price').Value;
 PNSP := DataSet.FieldByName('TAKE_NSP').AsInteger*DataSet.FieldByName('PRIVATE').AsInteger*DataSet.FieldByName('NSP').AsFloat;
 NSP := Round(DataSet.FieldByName('PRICE').AsFloat*PNSP/(100+PNSP)*100)/100;
 NDS := Round((DataSet.FieldByName('PRICE').AsFloat-NSP)*DataSet.FieldByName('NDS').AsFloat/(100+DataSet.FieldByName('NDS').AsFloat)*100)/100;
 DataSet.FieldByName('PRICE_WO_NALOG').Value := DataSet.FieldByName('Price').Value-NSP-NDS;
 DataSet.FieldByName('TOTAL_W_NALOG').Value := DataSet.FieldByName('PRICE_W_NALOG').AsFloat*DataSet.FieldByName('AMOUNT').AsFloat;
 DataSet.FieldByName('TOTAL_WO_NALOG').Value := DataSet.FieldByName('PRICE_WO_NALOG').AsFloat*DataSet.FieldByName('AMOUNT').AsFloat
end;

procedure TfrmMagicPurchase.FormCreate(Sender: TObject);
 var D, M, Y: Word;
begin
 FName := 'Волшебные покупки';
 inherited;
 trMain.StartTransaction;
 ibdsCountries.Open;
 DecodeDate(Date, Y, M, D);
 If (M>1) then
  Begin
   deStart.Date := EncodeDate(Y, M-1, 1);
   deStop.Date := EncodeDate(Y, M, 1)-1;
  End
 else
  Begin
   deStart.Date := EncodeDate(Y-1, 12, 1);
   deStop.Date := EncodeDate(Y, 1, 1)-1;
  End;
 cxPageControl1.ActivePageIndex := 0
end;

procedure TfrmMagicPurchase.btShowClick(Sender: TObject);

 procedure FillInSerialsAndPrice(DataSet: TIBDataSet);
  var Bkmrk : String;
      ibsLocalAux: TIBSQL;
      MainCurrencyRate: Double;
 begin
  With DataSet do
   Begin
    Bkmrk := BookMark;
    DisableControls;
    First;
    While Not Eof do
     Begin
      If (FieldByName('COUNTRY_ID').IsNull) or
         (FieldByName('PRICE').AsFloat=0) then
       Begin
        If (ibsLocalAux=nil) then
         Begin
          ibsLocalAux := TIBSQL.Create(Nil);
          ibsLocalAux.Database := ibdsMainSales.Database;
          ibsLocalAux.Transaction := ibdsMainSales.Transaction;
          ibsLocalAux.SQL.Clear;
          ibsLocalAux.SQL.Add('select G.DECLARATION_NUMBER, G.COUNTRY_ID, G.LAST_BUY_PRICE from GOODS G where (G.STORE_ID=:STORE_ID) and (G.ARTICUL_ID=:ARTICUL_ID)');
          ibsLocalAux.GenerateParamNames := True
         End;
        ibsLocalAux.ParamByName('ARTICUL_ID').AsString := FieldByName('ARTICUL_ID').AsString;
        ibsLocalAux.ParamByName('STORE_ID').AsString := FieldByName('ENTERPRISE_STORE_ID').AsString;
        ibsLocalAux.ExecQuery;
        If (FieldByName('COUNTRY_ID').IsNull) and
            Not (ibsLocalAux.FieldByName('COUNTRY_ID').IsNull) then
         Begin
          Edit;
          FieldByName('COUNTRY_ID').Value := ibsLocalAux.FieldByName('COUNTRY_ID').AsInteger;
          FieldByName('DECLARATION_NUMBER').Value := ibsLocalAux.FieldByName('DECLARATION_NUMBER').AsString
         End;
        If (FieldByName('PRICE').AsFloat=0) and
           (ibsLocalAux.FieldByName('LAST_BUY_PRICE').AsFloat<>0)then
         Begin
          MainCurrencyRate := GetMainCurrencyRate(ibsGridsSetup,FieldByName('ENTERPRISE_ID').AsString,FieldByName('ENTERPRISE_STORE_ID').AsString,FieldByName('CURRENCY_ID').AsInteger,FieldByName('CURRENCY_RATE').AsFloat);
          Edit;
          FieldByName('PRICE').Value := Round(ibsLocalAux.FieldByName('LAST_BUY_PRICE').AsFloat*MainCurrencyRate*100)/100
         End;
        ibsLocalAux.Close
       End;
      Next;
      pbPrepare.Position := pbPrepare.Position+1;
      frmMagicPurchase.Repaint
     End;
    PostIfNeeded(DataSet);
    BookMark := Bkmrk;
    EnableControls;
    FreeAndNil(ibsLocalAux)
   End
 end;

begin
 btSave.Enabled := False;
 pbPrepare.Position := 0;
 pbPrepare.Visible := True;
 ibdsMainSales.Close;
 ibdsMainSales.ParamByName('START').AsString := deStart.Text;
 ibdsMainSales.ParamByName('STOP').AsString := deStop.Text;
 ibdsMainSales.Open;
 ibdsSets.ParamByName('START').AsString := deStart.Text;
 ibdsSets.ParamByName('STOP').AsString := deStop.Text;
 ibdsSets.Open;
 pbPrepare.Properties.Max := ibdsSets.RecordCount+ibdsMainSales.RecordCount;
 FillInSerialsAndPrice(ibdsMainSales);
 FillInSerialsAndPrice(ibdsSets);
 frmMagicPurchase.Caption := 'Волшебные покупки c '+deStart.Text+' по '+deStop.Text;
 btSave.Enabled := True;
 pbPrepare.Visible := False
end;

procedure TfrmMagicPurchase.tvPrepareCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  GridDBTableViewCustomDrawCell(Sender,ACanvas,AViewInfo,False)
end;

procedure TfrmMagicPurchase.tvPrepareCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmMagicPurchase.tvPrepareKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var ClipBrd : TClipBoard;
begin
 If ((Key=Ord('C')) or (Key=Ord('С')) or (Key=Ord('c')) or (Key=Ord('c'))) and (Shift=[ssCtrl]) then
  Begin
   ClipBrd := ClipBoard;
   ClipBrd.SetTextBuf(PChar((grdPrepare.FocusedView as TcxGridDBTableView).DataController.DisplayTexts[(grdPrepare.FocusedView as TcxGridDBTableView).DataController.FocusedRecordIndex,(grdPrepare.FocusedView as TcxGridDBTableView).Controller.FocusedItem.Index]))
  End;
end;

procedure TfrmMagicPurchase.btSaveClick(Sender: TObject);
 var ibsLocalAux: TIBSQL;

 procedure DoInsert(DataSet: TIBDataSet);
  var Bkmrk : String;
 begin
  With DataSet do
   Begin
    Bkmrk := BookMark;
    DisableControls;
    First;
    While NOT Eof do
     Begin
      If (DataSet.FieldByName('ITEM_TYPE').AsInteger=3) then
       Begin
        ibsLocalAux.ParamByName('ID').AsString := DataSet.FieldByName('ID').AsString;
        ibsLocalAux.ParamByName('ARTICUL_ID').AsString := DataSet.FieldByName('ARTICUL_ID').AsString;
        If (DataSet.FindField('PRIMARY_TOVAR_OUTCOME_BODY_ID')<>nil) then
         ibsLocalAux.ParamByName('SELL_PRIMARY_BODY_ID').AsString := DataSet.FieldByName('PRIMARY_TOVAR_OUTCOME_BODY_ID').AsString
        else
         ibsLocalAux.ParamByName('SELL_PRIMARY_BODY_ID').AsString := DataSet.FieldByName('ID').AsString;
        ibsLocalAux.ParamByName('COUNTRY_ID').Value := DataSet.FieldByName('COUNTRY_ID').Value;
        ibsLocalAux.ParamByName('DECLARATION_NUMBER').AsString := DataSet.FieldByName('DECLARATION_NUMBER').AsString;
        ibsLocalAux.ParamByName('AMOUNT').Value := DataSet.FieldByName('AMOUNT').Value;
        ibsLocalAux.ParamByName('SELL_PRICE').Value := DataSet.FieldByName('PRICE').Value;
        ibsLocalAux.ParamByName('SELL_PRICE_WO_NALOG').Value := DataSet.FieldByName('PRICE_WO_NALOG').Value;
        ibsLocalAux.ParamByName('NDS').Value := DataSet.FieldByName('NDS').Value;
        ibsLocalAux.ParamByName('NSP').Value := DataSet.FieldByName('NSP').Value;
        ibsLocalAux.ExecQuery
       End;
      Next;
      pbPrepare.Position := pbPrepare.Position+1;
      frmMagicPurchase.Repaint
     End;
    BookMark := Bkmrk;
    EnableControls
   End;
 end;

begin
 ibsLocalAux := TIBSQL.Create(Nil);
 ibsLocalAux.Database := ibdsMainSales.Database;
 ibsLocalAux.Transaction := ibdsMainSales.Transaction;
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('delete from SALE_SETTLING');
 ibsLocalAux.ExecQuery;
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('delete from INVOICE_FOR_BUYING');
 ibsLocalAux.ExecQuery;
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('insert into SALE_SETTLING (ID,ARTICUL_ID,SELL_PRIMARY_BODY_ID,COUNTRY_ID,DECLARATION_NUMBER,AMOUNT,SELL_PRICE,SELL_PRICE_WO_NALOG,NDS,NSP)'+' values (:ID,:ARTICUL_ID,:SELL_PRIMARY_BODY_ID,:COUNTRY_ID,:DECLARATION_NUMBER,:AMOUNT,:SELL_PRICE,:SELL_PRICE_WO_NALOG,:NDS,:NSP)');
 ibsLocalAux.GenerateParamNames := True;
 pbPrepare.Position := 0;
 pbPrepare.Visible := True;
 DoInsert(ibdsMainSales);
 DoInsert(ibdsSets);
 ibsLocalAux.Free;
 trMain.CommitRetaining;
 pbPrepare.Visible := False;
 cxPageControl1.ActivePageIndex := 1
end;

procedure TfrmMagicPurchase.ibdsSuplayersCalcFields(DataSet: TDataSet);
begin
 ibdsSuplayersNUMBER_STR.Value := ibdsSuplayersNUMBER_PREFIX.AsString+
                                  ibdsSuplayersNUMBER.AsString+
                                  ibdsSuplayersNUMBER_SUFFIX.AsString;
 ibdsSuplayersCONTRACTOR_NUMBER.Value := ibdsSuplayersCONTRACTOR_NAME.AsString+' №'+ibdsSuplayersNUMBER_STR.AsString;
 ibdsSuplayersAVAILABLE.Value := ibdsSuplayersSALDO_MANY.AsFloat-ibdsSuplayersSALDO_GOODS.AsFloat
end;

procedure TfrmMagicPurchase.cxPageControl1Change(Sender: TObject);
begin
 If (cxPageControl1.ActivePageIndex=1) then
  Begin
   ibdsSuplayers.Open;
   ibdsPrimaryForBuying.Open;
   ibdsPrimaryBodyForBuying.Open;
   ibdsSaleSettling.Open
  End
end;

procedure TfrmMagicPurchase.grdSuplayersEnter(Sender: TObject);
begin
 cxGridPopupMenu1.Grid := (Sender as TcxGrid);
// sbAddInvoice.Tag := (Sender as TcxGrid).Tag
end;

procedure TfrmMagicPurchase.ibdsSaleSettlingCalcFields(DataSet: TDataSet);
 var NDS : Double;
begin
 DataSet.FieldByName('NUMBER_STR').AsString := DataSet.FieldByName('NUMBER_PREFIX').AsString+
                                               DataSet.FieldByName('NUMBER').AsString+
                                               DataSet.FieldByName('NUMBER_SUFFIX').AsString;
 DataSet.FieldByName('SELL_TOTAL').AsFloat := DataSet.FieldByName('SELL_PRICE').AsFloat*DataSet.FieldByName('AMOUNT').AsFloat;
 DataSet.FieldByName('SELL_TOTAL_WO_NALOG').AsFloat := DataSet.FieldByName('SELL_PRICE_WO_NALOG').AsFloat*DataSet.FieldByName('AMOUNT').AsFloat;
 DataSet.FieldByName('BUY_TOTAL').AsFloat := DataSet.FieldByName('BUY_PRICE').AsFloat*DataSet.FieldByName('AMOUNT').AsFloat;
 NDS := Round(DataSet.FieldByName('BUY_PRICE').AsFloat*DataSet.FieldByName('NDS').AsFloat/(100+DataSet.FieldByName('NDS').AsFloat)*100)/100;
 DataSet.FieldByName('BUY_PRICE_WO_NALOG').AsFloat := DataSet.FieldByName('BUY_PRICE').AsFloat-NDS;
 DataSet.FieldByName('BUY_TOTAL_WO_NALOG').AsFloat := DataSet.FieldByName('BUY_PRICE_WO_NALOG').AsFloat*DataSet.FieldByName('AMOUNT').AsFloat;
 DataSet.FieldByName('TOTAL_DELTA').AsFloat := DataSet.FieldByName('SELL_TOTAL').AsFloat-DataSet.FieldByName('BUY_TOTAL').AsFloat;
 If (DataSet=ibdsSaleSettling) then
  Begin
   ibdsSaleSettlingSTART_BUYING_DATE.Value := ibdsSaleSettlingPRIMARY_DATE.Value-StrToInt(meStartBuying.Text);
   ibdsSaleSettlingSTOP_BUYING_DATE.Value := ibdsSaleSettlingPRIMARY_DATE.Value-StrToInt(meStopBuying.Text);
   If (DayOfTheWeek(ibdsSaleSettlingSTART_BUYING_DATE.Value) in [6,7]) then
    ibdsSaleSettlingSTART_BUYING_DATE.Value := ibdsSaleSettlingSTART_BUYING_DATE.Value-DayOfTheWeek(ibdsSaleSettlingSTART_BUYING_DATE.Value)+5;
   If (DayOfTheWeek(ibdsSaleSettlingSTOP_BUYING_DATE.Value) in [6,7]) then
    ibdsSaleSettlingSTOP_BUYING_DATE.Value := ibdsSaleSettlingSTOP_BUYING_DATE.Value+8-DayOfTheWeek(ibdsSaleSettlingSTOP_BUYING_DATE.Value)
  End  
end;

procedure TfrmMagicPurchase.cxButton2Click(Sender: TObject);
 var RndDelta : Integer;
     BookMrk : String;
begin
 Randomize;
 With ibdsSaleSettling do
  Begin
   BookMrk := Bookmark;
   DisableControls;
   First;
   While not EOF do
    Begin
     RndDelta := StrToInt(meDeltaStart.Text)+Random(StrToInt(meDeltaStop.Text)-StrToInt(meDeltaStart.Text)+1);
     Edit;
     ibdsSaleSettlingBUY_PRICE.Value := Round(ibdsSaleSettlingSELL_PRICE.AsFloat/(1+RndDelta/100)*100)/100;
     Next
    End;
   Bookmark := BookMrk;
   EnableControls
  End;
 PostIfNeeded(ibdsSaleSettling);
 sbApplySaleSettling.Enabled := True;
 sbCancelSaleSettling.Enabled := True
end;

procedure TfrmMagicPurchase.sbAddInvoiceClick(Sender: TObject);
 var S : String;
     ibsLocalAux : TIBSQL;
     I : Integer;
begin
 If (grdSuplayers.IsFocused) then
  pmInvoices.Popup(Mouse.CursorPos.x,Mouse.CursorPos.y)
 else
  If sbAddInvoice.Tag=2 then 
   Begin
    If (MessageDlg('Создать новую временную приходную накладую'+#13#10+'и добавить в нее выделенныее позиции из списка формирования закупа?',mtConfirmation,mbOKCancel,0)=mrOK) then
     ibdsPrimaryForBuying.Append;
   End
  else
   If (MessageDlg('Добавить в текущую временную приходную накладую выделенныее позиции из списка формирования закупа?',mtConfirmation,mbOKCancel,0)=mrOK) then
    Begin
     S := '';
     For I := 0 to Pred(tvSaleSettling.DataController.Controller.SelectedRecordCount) do
      Begin
       tvSaleSettling.DataController.Controller.SelectedRecords[I].Focused := True;
       S := S+ibdsSaleSettlingID.AsString+','
      End;
     S := Copy(S,1,Pred(Length(S)));
     ibsLocalAux := TIBSQL.Create(Nil);
     ibsLocalAux.Database := ibdsMainSales.Database;
     ibsLocalAux.Transaction := ibdsMainSales.Transaction;
     ibsLocalAux.SQL.Clear;
     ibsLocalAux.SQL.Add('update SALE_SETTLING SS set SS.BUY_PRIMARY_ID='+ibdsPrimaryForBuyingID.AsString+' where SS.ID in ('+S+')');
     ibsLocalAux.ExecQuery;
     trMain.Commit;
     ibsLocalAux.Free;
     ibdsSuplayers.Open;
     ibdsPrimaryForBuying.Open;
     ibdsPrimaryBodyForBuying.Open;
     ibdsSaleSettling.Open
    End
end;

procedure TfrmMagicPurchase.pmParentInvoiceInClick(Sender: TObject);
begin
 Case (Sender as TMenuItem).Tag of
  1 : Begin
       If (frmMain.FindComponent('frmInvoiceOut')=nil) then
        Begin
         TempIn_Out := 1;
         frmInvoiceOut := TfrmInvoice.Create(frmMain);
         frmInvoiceOut.Name := 'frmInvoiceOut'
        End;
       frmInvoiceOut.LookUpProcedureUpdate := UpdateInvoiceID;
       frmInvoiceOut.LookUpProcedureInsert := InsertInvoiceID;
       frmInvoiceOut.Show
      End;
  2 : Begin
       If (frmMain.FindComponent('frmInvoiceIn')=nil) then
        Begin
         TempIn_Out := 2;
         frmInvoiceIn := TfrmInvoice.Create(frmMain);
         frmInvoiceIn.Name := 'frmInvoiceIn'
        End;
       frmInvoiceIn.LookUpProcedureUpdate := UpdateInvoiceID;
       frmInvoiceIn.LookUpProcedureInsert := InsertInvoiceID;
       frmInvoiceIn.Show
      End
 End
end;

procedure TfrmMagicPurchase.UpdateInvoiceID(Sender: TForm);
begin
 If NOT (ibdsSuplayers.State in [dsEdit, dsInsert]) then
  ibdsSuplayers.Edit;
 With (Sender as TfrmInvoice) do
  Begin
   If (ibdsMainInvoice.Active) then
    ibdsSuplayersINVOICE_ID.Value := ibdsMainInvoiceID.Value
   else
    ibdsSuplayersINVOICE_ID.Value := ibdsMainInvoicesListID.Value
  End
end;

procedure TfrmMagicPurchase.InsertInvoiceID(Sender: TForm);
begin
 ibdsSuplayers.Append;
 With (Sender as TfrmInvoice) do
  Begin
   If (ibdsMainInvoice.Active) then
    ibdsSuplayersINVOICE_ID.Value := ibdsMainInvoiceID.Value
   else
    ibdsSuplayersINVOICE_ID.Value := ibdsMainInvoicesListID.Value
  End
end;

procedure TfrmMagicPurchase.ibdsSuplayersINVOICE_IDChange(Sender: TField);
 var ibsLocalAux: TIBSQL;
begin
 ibsLocalAux := TIBSQL.Create(Nil);
 ibsLocalAux.Database := ibdsMainSales.Database;
 ibsLocalAux.Transaction := ibdsMainSales.Transaction;
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('select C.NAME CONTRACTOR_NAME, IH.INVOICE_DATE,');
 ibsLocalAux.SQL.Add('min(PP.PAYMENT_DATE) FIRST_PAYMENT_DATE, IH.NUMBER_PREFIX, IH.NUMBER, IH.NUMBER_SUFFIX,');
 ibsLocalAux.SQL.Add('IH.ENTERPRISE_ID, IH.SALDO_GOODS, -IH.SALDO_MANY SALDO_MANY, IH.INCLUDE_NSP');
 ibsLocalAux.SQL.Add('from INVOICE_HEADER IH join INVOICE_SETUP INS on (IH.ID='+ibdsSuplayersINVOICE_ID.AsString+') and (INS.ID=IH.INVOICE_SETUP_ID)');
 ibsLocalAux.SQL.Add('join CONTRACTORS C on (C.ID=IH.CONTRACTOR_ID) left outer join PRIMARY_PAYMENTS PP on');
 ibsLocalAux.SQL.Add('(PP.PARENT_TYPE in (3,4)) and (PP.PARENT_ID=IH.ID)');
 ibsLocalAux.SQL.Add('group by C.NAME, IH.INVOICE_DATE, IH.ID, IH.NUMBER_PREFIX, IH.NUMBER, IH.NUMBER_SUFFIX,');
 ibsLocalAux.SQL.Add('IH.ENTERPRISE_ID, IH.SALDO_GOODS, IH.SALDO_MANY, IH.INCLUDE_NSP');
 ibsLocalAux.ExecQuery;
 ibdsSuplayersCONTRACTOR_NAME.Value := ibsLocalAux.FieldByName('CONTRACTOR_NAME').AsString;
 ibdsSuplayersINVOICE_DATE.Value := ibsLocalAux.FieldByName('INVOICE_DATE').AsDate;
 ibdsSuplayersFIRST_PAYMENT_DATE.Value := ibsLocalAux.FieldByName('FIRST_PAYMENT_DATE').Value;
 ibdsSuplayersNUMBER_PREFIX.Value := ibsLocalAux.FieldByName('NUMBER_PREFIX').AsString;
 ibdsSuplayersNUMBER.Value := ibsLocalAux.FieldByName('NUMBER').AsInteger;
 ibdsSuplayersNUMBER_SUFFIX.Value := ibsLocalAux.FieldByName('NUMBER_SUFFIX').AsString;
 ibdsSuplayersENTERPRISE_ID.Value := ibsLocalAux.FieldByName('ENTERPRISE_ID').AsInt64;
 ibdsSuplayersSALDO_GOODS.Value := ibsLocalAux.FieldByName('SALDO_GOODS').AsDouble;
 ibdsSuplayersSALDO_MANY.Value := ibsLocalAux.FieldByName('SALDO_MANY').AsDouble;
 ibdsSuplayersINCLUDE_NSP.Value := ibsLocalAux.FieldByName('INCLUDE_NSP').AsInteger;
 ibsLocalAux.Close;
 ibsLocalAux.Free
end;

procedure TfrmMagicPurchase.sbDeleteInvoiceClick(Sender: TObject);
begin
 Case sbDeleteInvoice.Tag of
  1 : If (MessageDlg('Удалить счет №'+ibdsSuplayersNUMBER_STR.AsString+' из списка формируемых?',mtConfirmation,mbOKCancel,0)=mrOK) then
       ibdsSuplayers.Delete;
  2 : If (MessageDlg('Удалить позицию из временной приходной накладной?',mtConfirmation,mbOKCancel,0)=mrOK) then
       ibdsPrimaryBodyForBuying.Delete;
  3 : If NOT(ibdsPrimaryForBuyingPRIMARY_TOVAR_INCOME_HEADER_ID.IsNull) then
       MessageDlg('Невозможно удалить временную приходную накладую №'+ibdsPrimaryForBuyingNUMBER_PP.AsString+', так как на ее основе уже создана постоянная накладная. Удалите вначале ее.',mtInformation,[mbOK],0)
      else
        If (MessageDlg('Удалить временную приходную накладую №'+ibdsPrimaryForBuyingNUMBER_PP.AsString+'?',mtConfirmation,mbOKCancel,0)=mrOK) then
         ibdsPrimaryForBuying.Delete
 end
end;

procedure TfrmMagicPurchase.sbApplyInvoiceClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить изменения в списке формируемых счетов?',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   PostIfNeeded(ibdsSuplayers);
   PostIfNeeded(ibdsPrimaryForBuying);
   PostIfNeeded(ibdsPrimaryBodyForBuying);
   ibdsSuplayers.ApplyUpdates;
   ibdsPrimaryForBuying.ApplyUpdates;
   ibdsPrimaryBodyForBuying.ApplyUpdates;
   If (Deleted) then
    Begin
     trMain.Commit;
     ibdsSuplayers.Open;
     ibdsPrimaryForBuying.Open;
     ibdsPrimaryBodyForBuying.Open;
     ibdsSaleSettling.Open
    End 
   else
    Begin
     trMain.CommitRetaining;
     ibdsSuplayers.Close;
     ibdsPrimaryBodyForBuying.Close;
     ibdsPrimaryForBuying.Close;
     ibdsSuplayers.Open;
     ibdsPrimaryForBuying.Open;
     ibdsPrimaryBodyForBuying.Open
    End;
   sbApplyInvoice.Enabled := False;
   sbCancelInvoice.Enabled := False
  End
end;

procedure TfrmMagicPurchase.sbCancelInvoiceClick(Sender: TObject);
begin
 If (MessageDlg('Отменить изменения?',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   ibdsPrimaryBodyForBuying.CancelUpdates;
   ibdsPrimaryForBuying.CancelUpdates;
   ibdsSuplayers.CancelUpdates
  End
end;

procedure TfrmMagicPurchase.ibdsSaleSettlingAfterOpen(DataSet: TDataSet);
 var ibsGoods, ibsIncome, ibsOutcome, ibsIncomeSet, ibsOutcomeSet, ibsTmpIncome : TIBSQL;

 procedure SQLInitialise(var ibs : TIBSQL; SQLString : String);
 begin
  ibs := TIBSQL.Create(Nil);
  ibs.Database := ibdsMainSales.Database;
  ibs.Transaction := ibdsMainSales.Transaction;
  ibs.SQL.Clear;
  ibs.SQL.Add(SQLString);
  ibs.GenerateParamNames := True;
 end;

begin
 SQLInitialise(ibsGoods,'select G.TOTAL_WHITE+G.IN_SETS TOTAL_WHITE from GOODS G where (G.STORE_ID=:STORE_ID) and (G.ARTICUL_ID=:ARTICUL_ID)');
 SQLInitialise(ibsIncome,'select -SUM(PTIB.PACKS_AMOUNT*PTIB.PACK_VALUE+PTIB.ITEMS_AMOUNT) TOTAL_WHITE'+
                         ' from PRIMARY_TOVAR_INCOME_HEADER PTIH, PRIMARY_TOVAR_INCOME_BODY PTIB'+
                         ' where (PTIH.CLOSED=1) and (PTIH.PRIMARY_DATE!<:IN_DATE) and (PTIH.BLACK=0) and'+
                         ' (PTIH.ENTERPRISE_STORE_ID=:STORE_ID) and  (PTIB.ARTICUL_ID=:ARTICUL_ID) and'+
                         ' (PTIH.ID=PTIB.PRIMARI_TOVAR_INCOME_HEADER_ID)');
 SQLInitialise(ibsOutcome,'select SUM(PTOB.PACKS_AMOUNT*PTOB.PACK_VALUE+PTOB.ITEMS_AMOUNT) TOTAL_WHITE'+
                         ' from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_TOVAR_OUTCOME_BODY PTOB'+
                         ' where (PTOH.CLOSED=1) and (PTOH.PRIMARY_DATE!<:IN_DATE) and (PTOH.BLACK=0) and'+
                         ' (PTOH.ENTERPRISE_STORE_ID=:STORE_ID) and  (PTOB.ARTICUL_ID=:ARTICUL_ID) and'+
                         ' (PTOH.ID=PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID)');
 SQLInitialise(ibsIncomeSet,'select -SUM((PTIB.PACKS_AMOUNT*PTIB.PACK_VALUE+PTIB.ITEMS_AMOUNT)*'+
                            '(PTIBS.PACKS_AMOUNT*PTIBS.PACK_VALUE+PTIBS.ITEMS_AMOUNT)) IN_SETS'+
                            ' from PRIMARY_TOVAR_INCOME_HEADER PTIH, PRIMARY_TOVAR_INCOME_BODY PTIB, PRIMARY_TOVAR_INCOME_BODY_SETS PTIBS'+
                            ' where (PTIH.CLOSED=1) and (PTIH.PRIMARY_DATE!<:IN_DATE) and (PTIH.BLACK=0) and'+
                            ' (PTIH.ENTERPRISE_STORE_ID=:STORE_ID) and (PTIBS.ARTICUL_ID=:ARTICUL_ID) and'+
                            ' (PTIB.ID=PTIBS.PRIMARI_TOVAR_INCOME_BODY_ID) and (PTIH.ID=PTIB.PRIMARI_TOVAR_INCOME_HEADER_ID)');
 SQLInitialise(ibsOutcomeSet,'select SUM((PTOB.PACKS_AMOUNT*PTOB.PACK_VALUE+PTOB.ITEMS_AMOUNT)*'+
                            '(PTOBS.PACKS_AMOUNT*PTOBS.PACK_VALUE+PTOBS.ITEMS_AMOUNT)) IN_SETS'+
                            ' from PRIMARY_TOVAR_OUTCOME_HEADER PTOH, PRIMARY_TOVAR_OUTCOME_BODY PTOB, PRIMARY_TOVAR_OUTCOME_BODY_SETS PTOBS'+
                            ' where (PTOH.CLOSED=1) and (PTOH.PRIMARY_DATE!<:IN_DATE) and (PTOH.BLACK=0) and'+
                            ' (PTOH.ENTERPRISE_STORE_ID=:STORE_ID) and (PTOBS.ARTICUL_ID=:ARTICUL_ID) and'+
                            ' (PTOB.ID=PTOBS.PRIMARY_TOVAR_OUTCOME_BODY_ID) and (PTOH.ID=PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID)');
 SQLInitialise(ibsTmpIncome,'select SUM(SS.AMOUNT) TOTAL_WHITE from SALE_SETTLING SS, PRIMARY_FOR_BUYING PFB'+
                            ' where (PFB.PRIMARY_TOVAR_INCOME_DATE<:IN_DATE) and (SS.ARTICUL_ID=:ARTICUL_ID) and (SS.BUY_PRIMARY_ID=PFB.ID)');
 pbSaleSettling.Position := 0;
 pbSaleSettling.Visible := True;
 With ibdsSaleSettling do
  Begin
   DisableControls;
   While NOT Eof do
    Begin
     ibsGoods.ParamByName('STORE_ID').AsInt64 := ibdsSaleSettlingENTERPRISE_STORE_ID.AsLargeInt;
     ibsGoods.ParamByName('ARTICUL_ID').AsInt64 := ibdsSaleSettlingARTICUL_ID.AsLargeInt;
     ibsGoods.ExecQuery;
     Edit;
     ibdsSaleSettlingTOTAL_WHITE.Value := ibsGoods.FieldByName('TOTAL_WHITE').AsDouble;
     ibsGoods.Close;
     ibsIncome.ParamByName('STORE_ID').AsInt64 := ibdsSaleSettlingENTERPRISE_STORE_ID.AsLargeInt;
     ibsIncome.ParamByName('ARTICUL_ID').AsInt64 := ibdsSaleSettlingARTICUL_ID.AsLargeInt;
     ibsIncome.ParamByName('IN_DATE').AsDate := ibdsSaleSettlingPRIMARY_DATE.AsDateTime;
     ibsIncome.ExecQuery;
     ibdsSaleSettlingTOTAL_WHITE.Value := ibdsSaleSettlingTOTAL_WHITE.Value+ibsIncome.FieldByName('TOTAL_WHITE').AsDouble;
     ibsIncome.Close;
     ibsOutcome.ParamByName('STORE_ID').AsInt64 := ibdsSaleSettlingENTERPRISE_STORE_ID.AsLargeInt;
     ibsOutcome.ParamByName('ARTICUL_ID').AsInt64 := ibdsSaleSettlingARTICUL_ID.AsLargeInt;
     ibsOutcome.ParamByName('IN_DATE').AsDate := ibdsSaleSettlingPRIMARY_DATE.AsDateTime;
     ibsOutcome.ExecQuery;
     ibdsSaleSettlingTOTAL_WHITE.Value := ibdsSaleSettlingTOTAL_WHITE.Value+ibsOutcome.FieldByName('TOTAL_WHITE').AsDouble;
     ibsOutcome.Close;
     ibsIncomeSet.ParamByName('STORE_ID').AsInt64 := ibdsSaleSettlingENTERPRISE_STORE_ID.AsLargeInt;
     ibsIncomeSet.ParamByName('ARTICUL_ID').AsInt64 := ibdsSaleSettlingARTICUL_ID.AsLargeInt;
     ibsIncomeSet.ParamByName('IN_DATE').AsDate := ibdsSaleSettlingPRIMARY_DATE.AsDateTime;
     ibsIncomeSet.ExecQuery;
     ibdsSaleSettlingTOTAL_WHITE.Value := ibdsSaleSettlingTOTAL_WHITE.Value+ibsIncomeSet.FieldByName('IN_SETS').AsDouble;
     ibsIncomeSet.Close;
     ibsOutcomeSet.ParamByName('STORE_ID').AsInt64 := ibdsSaleSettlingENTERPRISE_STORE_ID.AsLargeInt;
     ibsOutcomeSet.ParamByName('ARTICUL_ID').AsInt64 := ibdsSaleSettlingARTICUL_ID.AsLargeInt;
     ibsOutcomeSet.ParamByName('IN_DATE').AsDate := ibdsSaleSettlingPRIMARY_DATE.AsDateTime;
     ibsOutcomeSet.ExecQuery;
     ibdsSaleSettlingTOTAL_WHITE.Value := ibdsSaleSettlingTOTAL_WHITE.Value+ibsOutcomeSet.FieldByName('IN_SETS').AsDouble;
     ibsOutcomeSet.Close;
     ibsTmpIncome.ParamByName('ARTICUL_ID').AsInt64 := ibdsSaleSettlingARTICUL_ID.AsLargeInt;
     ibsTmpIncome.ParamByName('IN_DATE').AsDate := ibdsSaleSettlingPRIMARY_DATE.AsDateTime;
     ibsTmpIncome.ExecQuery;
     ibdsSaleSettlingTOTAL_WHITE.Value := ibdsSaleSettlingTOTAL_WHITE.Value+ibsTmpIncome.FieldByName('TOTAL_WHITE').AsDouble;
     ibsTmpIncome.Close;
     Next;
     pbSaleSettling.Position := pbSaleSettling.Position+1;
     frmMagicPurchase.Repaint
    End;
   First;
   EnableControls;
  End;
 sbApplySaleSettling.Enabled := False;
 sbCancelSaleSettling.Enabled := False;
 pbSaleSettling.Visible := False;
 ibsGoods.Free; ibsIncome.Free; ibsOutcome.Free; ibsIncomeSet.Free; ibsOutcomeSet.Free
end;

procedure TfrmMagicPurchase.dsSuplayersStateChange(Sender: TObject);
begin
 If (ibdsSuplayers.UpdatesPending) or (ibdsPrimaryForBuying.UpdatesPending) or
    (ibdsPrimaryForBuying.UpdatesPending) then
  Begin
   sbApplyInvoice.Enabled := True;
   sbCancelInvoice.Enabled := True
  End
end;

procedure TfrmMagicPurchase.ibdsSuplayersAfterDelete(DataSet: TDataSet);
begin
 sbApplyInvoice.Enabled := True;
 sbCancelInvoice.Enabled := True;
 If (DataSet=ibdsPrimaryBodyForBuying) then
  Deleted := True
end;

procedure TfrmMagicPurchase.dsSaleSettlingStateChange(Sender: TObject);
begin
 If (ibdsSaleSettling.State in [dsEdit,dsInsert]) then
  Begin
   sbApplySaleSettling.Enabled := True;
   sbCancelSaleSettling.Enabled := True
  End 
end;

procedure TfrmMagicPurchase.ibdsSaleSettlingBeforeDelete(
  DataSet: TDataSet);
begin
 sbApplySaleSettling.Enabled := True;
 sbCancelSaleSettling.Enabled := True
end;

procedure TfrmMagicPurchase.SpeedButton3Click(Sender: TObject);
begin
 If (MessageDlg('Удалить позицию в списке для формирования закупа?',mtConfirmation,mbOKCancel,0)=mrOK) then
  ibdsSaleSettling.Delete
end;

procedure TfrmMagicPurchase.sbApplySaleSettlingClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить изменения в списке для формирования закупа?',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   PostIfNeeded(ibdsSaleSettling);
   ibdsSaleSettling.ApplyUpdates;
   trMain.CommitRetaining;
   sbApplySaleSettling.Enabled := False;
   sbCancelSaleSettling.Enabled := False;
   ibdsSaleSettling.Close;
   ibdsSaleSettling.Open
  End
end;

procedure TfrmMagicPurchase.sbCancelSaleSettlingClick(Sender: TObject);
begin
 If (MessageDlg('Отменить изменения в списке для формирования закупа?',mtConfirmation,mbOKCancel,0)=mrOK) then
  ibdsSaleSettling.CancelUpdates
end;

procedure TfrmMagicPurchase.ibdsPrimaryForBuyingCalcFields(
  DataSet: TDataSet);
begin
 If NOT (ibdsPrimaryForBuyingPRIMARY_TOVAR_INCOME_HEADER_ID.IsNull) then
  ibdsPrimaryForBuyingNUMBER_DATE.Value := ibdsPrimaryForBuyingNUMBER.AsString+' от '+
                                           FormatDateTime('dd.mm.yyyy',ibdsPrimaryForBuyingPRIMARY_DATE.AsDateTime);
 ibdsPrimaryForBuyingNUMBER_PP.Value := ibdsPrimaryForBuying.RecNo
end;

procedure TfrmMagicPurchase.ibdsPrimaryForBuyingNewRecord(
  DataSet: TDataSet);
var I : Integer;
    S : String;
    ibsLocalAux: TIBSQL;
    ID : Int64;
begin
 ID := GetNewID(ibsGridsSetup,'GEN_PRIMARY_FOR_BUYING_ID');
 ibdsPrimaryForBuyingID.Value := ID;
 ibdsPrimaryForBuyingINVOICE_ID.Value := ibdsSuplayersINVOICE_ID.AsLargeInt;
 ibdsPrimaryForBuying.ApplyUpdates;
 S := '';
 For I := 0 to Pred(tvSaleSettling.DataController.Controller.SelectedRecordCount) do
  Begin
   tvSaleSettling.DataController.Controller.SelectedRecords[I].Focused := True;
   S := S+ibdsSaleSettlingID.AsString+','
  End;
 S := Copy(S,1,Pred(Length(S)));
 ibsLocalAux := TIBSQL.Create(Nil);
 ibsLocalAux.Database := ibdsMainSales.Database;
 ibsLocalAux.Transaction := ibdsMainSales.Transaction;
 ibsLocalAux.SQL.Clear;
 ibsLocalAux.SQL.Add('update SALE_SETTLING SS set SS.BUY_PRIMARY_ID='+IntToStr(ID)+' where SS.ID in ('+S+')');
 ibsLocalAux.ExecQuery;
 trMain.Commit;
 ibsLocalAux.Free;
 ibdsSuplayers.Open;
 ibdsPrimaryForBuying.Open;
 ibdsPrimaryBodyForBuying.Open;
 ibdsSaleSettling.Open
end;

procedure TfrmMagicPurchase.grdSuplayersFocusedViewChanged(
  Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
begin
 If (AFocusedView=tvSuplayers) then
  Begin
   sbDeleteInvoice.Tag := 1;
   sbAddInvoice.Tag := 2
  End
 else
  If (AFocusedView.PatternGridView=tvPrimaryForBuying) then
   Begin
    sbDeleteInvoice.Tag := 3;
    sbAddInvoice.Tag := 3
   End
  else
   Begin
    sbDeleteInvoice.Tag := 2;
    sbAddInvoice.Tag := 3
   End
end;

procedure TfrmMagicPurchase.ibdsSuplayersAfterOpen(DataSet: TDataSet);
 var ibsIncome, ibsTmpIncome : TIBSQL;

 procedure SQLInitialise(var ibs : TIBSQL; SQLString : String);
 begin
  ibs := TIBSQL.Create(Nil);
  ibs.Database := ibdsMainSales.Database;
  ibs.Transaction := ibdsMainSales.Transaction;
  ibs.SQL.Clear;
  ibs.SQL.Add(SQLString);
  ibs.GenerateParamNames := True;
 end;

begin
 SQLInitialise(ibsTmpIncome,'select sum(PFB.AMOUNT) AMOUNT from PRIMARY_FOR_BUYING PFB where (PFB.PRIMARY_TOVAR_INCOME_HEADER_ID is null) and (PFB.INVOICE_ID=:INVOICE_ID)');
 SQLInitialise(ibsIncome,'select sum(PTIH.AMOUNT) AMOUNT from PRIMARY_FOR_BUYING PFB, PRIMARY_TOVAR_INCOME_HEADER PTIH where (PFB.INVOICE_ID=:INVOICE_ID) and (PTIH.CLOSED=0) and (PTIH.ID=PFB.PRIMARY_TOVAR_INCOME_HEADER_ID)');
 With ibdsSuplayers do
  Begin
   DisableControls;
   First;
   While NOT Eof do
    Begin
     ibsIncome.ParamByName('INVOICE_ID').AsInt64 := ibdsSuplayersINVOICE_ID.AsLargeInt;
     ibsIncome.ExecQuery;
     Edit;
     ibdsSuplayersSALDO_GOODS.Value := ibdsSuplayersSALDO_GOODS.AsFloat+ibsIncome.FieldByName('AMOUNT').AsDouble;
     ibsIncome.Close;
     ibsTmpIncome.ParamByName('INVOICE_ID').AsInt64 := ibdsSuplayersINVOICE_ID.AsLargeInt;
     ibsTmpIncome.ExecQuery;
     ibdsSuplayersSALDO_GOODS.Value := ibdsSuplayersSALDO_GOODS.AsFloat+ibsTmpIncome.FieldByName('AMOUNT').AsDouble;
     ibsTmpIncome.Close;
     Next
    End;
   First;
   EnableControls;
  End;
 sbApplyInvoice.Enabled := False;
 sbCancelInvoice.Enabled := False;
 ibsTmpIncome.Free; ibsIncome.Free
end;

procedure TfrmMagicPurchase.tvPrimaryForBuyingDblClick(Sender: TObject);
 var ibsLocalAux : TIBSQL;
begin
 If (MessageDlg('Создать приходную накладную на основе текущей временной приходной накладной?',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   If (frmMain.FindComponent('frmNaklIn')=nil) then
    Begin
     Nakl_In_ID := -1;
     frmNaklIn := TfrmNaklIn.Create(frmMain)
    End;
   If NOT (frmNaklIn.sbApplyPrimaryTovarIncomeList.Enabled) then
    Begin
     If (frmNaklIn.PageControl1.ActivePageIndex<>1) then
      frmNaklIn.PageControl1.ActivePageIndex := 1;
     frmNaklIn.PageControl1Change(frmNaklIn.PageControl1);
     frmNaklIn.sbAddPrimaryTovarIncome.Click;
     ibdsPrimaryForBuying.Edit;
     ibdsPrimaryForBuyingPRIMARY_TOVAR_INCOME_HEADER_ID.AsLargeInt := frmNaklIn.ibdsMainPrimaryTovarIncomeID.AsLargeInt;
     ibdsPrimaryForBuying.Post;
     If not(ibdsPrimaryForBuyingPRIMARY_TOVAR_INCOME_DATE.IsNull) then
      frmNaklIn.ibdsMainPrimaryTovarIncomePRIMARY_DATE.Value := ibdsPrimaryForBuyingPRIMARY_TOVAR_INCOME_DATE.AsDateTime;
     frmNaklIn.ibdsMainPrimaryTovarIncomePARENT_TYPE.Value := ibdsSuplayersIN_OUT.AsInteger;
     frmNaklIn.ibdsMainPrimaryTovarIncomePARENT_ID.Value := ibdsSuplayersINVOICE_ID.AsLargeInt;
     frmNaklIn.ibdsMainPrimaryTovarIncomeENTERPRISE_ID.Value := ibdsSuplayersENTERPRISE_ID.AsLargeInt;
     frmNaklIn.ibdsMainPrimaryTovarIncomeCONTRACTOR_ID.Value := ibdsSuplayersCONTRACTOR_ID.AsLargeInt;
     frmNaklIn.ibdsMainPrimaryTovarIncomeCURRENCY_ID.Value := 0;
     frmNaklIn.ibdsMainPrimaryTovarIncomeCURRENCY_RATE.Value := 1;
     frmNaklIn.ibdsMainPrimaryTovarIncome.Post;
     frmNaklIn.ibdsMainPrimaryTovarIncome.Edit;
     ibsLocalAux := TIBSQL.Create(Nil);
     ibsLocalAux.Database := ibdsMainSales.Database;
     ibsLocalAux.Transaction := trMain;
     ibsLocalAux.SQL.Clear;
     ibsLocalAux.SQL.Add('select SS.ARTICUL_ID, SS.COUNTRY_ID, SS.DECLARATION_NUMBER, SS.AMOUNT, SS.NDS, SS.NSP,');
     ibsLocalAux.SQL.Add('SS.BUY_PRICE');
     ibsLocalAux.SQL.Add('from SALE_SETTLING SS');
     ibsLocalAux.SQL.Add('where (SS.BUY_PRIMARY_ID='+ibdsPrimaryForBuyingID.AsString+')');
     ibsLocalAux.ExecQuery;
     While Not ibsLocalAux.Eof do
      Begin
       frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Append;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyARTICUL_ID.Value := ibsLocalAux.FieldByName('ARTICUL_ID').AsInt64;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyCOUNTRY_ID.Value := ibsLocalAux.FieldByName('COUNTRY_ID').AsInteger;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyDECLARATION_NUMBER.Value := ibsLocalAux.FieldByName('DECLARATION_NUMBER').AsString;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyITEMS_AMOUNT.Value := ibsLocalAux.FieldByName('AMOUNT').AsDouble;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyNDS.Value := ibsLocalAux.FieldByName('NDS').AsDouble;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyNSP.Value := ibsLocalAux.FieldByName('NSP').AsDouble;
       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPRICE.Value := ibsLocalAux.FieldByName('BUY_PRICE').AsDouble;       frmNaklIn.ibdsMainPrimaryTovarIncomeBodyPRICE.Value := ibsLocalAux.FieldByName('BUY_PRICE').AsDouble;
       ibsLocalAux.Next
      End;
     ibsLocalAux.Close;
     ibsLocalAux.Free
    End;
   frmNaklIn.Show;
   If (frmNaklIn.ibdsMainPrimaryTovarIncomeBody.State in [dsEdit, dsInsert]) then
    frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Post
  End;
end;

end.
