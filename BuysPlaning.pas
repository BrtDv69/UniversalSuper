unit BuysPlaning;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, IBSQL, IBDatabase, cxControls, cxPC, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, IBCustomDataSet,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxExportGrid4Link, cxExport, Menus;

type
  TfrmBuysPlaning = class(TfrmLike)
    cxTabControl1: TcxTabControl;
    tvGoods: TcxGridDBTableView;
    glGoods: TcxGridLevel;
    dbgGoods: TcxGrid;
    ibdsMainGoodsReserv: TIBDataSet;
    dsMainGoodsReserv: TDataSource;
    ibdsMainGoodsReservID: TLargeintField;
    ibdsMainGoodsReservIN_SETS: TFloatField;
    ibdsMainGoodsReservTOTAL: TFloatField;
    ibdsMainGoodsReservMIN_AMOUNT: TFloatField;
    ibdsMainGoodsReservLAST_BUY_PRICE: TFloatField;
    ibdsMainGoodsReservFUTURE_INCOME: TFloatField;
    ibdsMainGoodsReservIN_RESERV: TFloatField;
    ibdsMainGoodsReservORDER_AMOUNT: TFloatField;
    ibdsMainGoodsReservORDER_PRICE: TFloatField;
    GridPopupMenu: TcxGridPopupMenu;
    tvGoodsARTICUL_NAME: TcxGridDBColumn;
    tvGoodsSTORE_NAME: TcxGridDBColumn;
    tvGoodsIN_SETS: TcxGridDBColumn;
    tvGoodsTOTAL: TcxGridDBColumn;
    tvGoodsMIN_AMOUNT: TcxGridDBColumn;
    tvGoodsLAST_BUY_PRICE: TcxGridDBColumn;
    tvGoodsIN_RESERV: TcxGridDBColumn;
    tvGoodsORDER_AMOUNT: TcxGridDBColumn;
    tvGoodsORDER_PRICE: TcxGridDBColumn;
    tvGoodsTotalWithSets: TcxGridDBColumn;
    tvGoodsNeedToBuyUpReserv: TcxGridDBColumn;
    tvGoodsNeedToBuyUpReservAndMin: TcxGridDBColumn;
    ibdsContractors: TIBDataSet;
    dsContractors: TDataSource;
    ibdsContractorsNAME: TIBStringField;
    ibdsMainGoodsReservCONTRACTOR_ID: TIntegerField;
    ibdsContractorsID: TIntegerField;
    ibdsMainGoodsReservARTICUL_NAME: TIBStringField;
    ibdsMainGoodsReservSTORE_NAME: TIBStringField;
    ibdsMainInvoicesReserv: TIBDataSet;
    dsMainInvoicesReserv: TDataSource;
    ibdsMainInvoicesReservCONTRACTOR_NAME: TIBStringField;
    ibdsMainInvoicesReservPAYING_PERSENT: TFloatField;
    ibdsMainInvoicesReservPAYING_DATE: TDateField;
    ibdsMainInvoicesReservRESERV_AMOUNT: TFloatField;
    ibdsMainInvoicesReservNUMBER_STR: TIBStringField;
    ibdsMainInvoicesReservINVOICE_DATE: TDateField;
    glInvoices: TcxGridLevel;
    tvInvoices: TcxGridDBTableView;
    tvInvoicesCONTRACTOR_NAME: TcxGridDBColumn;
    tvInvoicesPAYING_PERSENT: TcxGridDBColumn;
    tvInvoicesPAYING_DATE: TcxGridDBColumn;
    tvInvoicesRESERV_AMOUNT: TcxGridDBColumn;
    tvInvoicesNUMBER_STR: TcxGridDBColumn;
    tvInvoicesINVOICE_DATE: TcxGridDBColumn;
    ibdsMainInvoicesReservID: TLargeintField;
    tvGoodsFUTURE_INCOME: TcxGridDBColumn;
    ibdsMainGoodsReservTOTALWITHSETS: TFloatField;
    ibdsMainGoodsReservNEEDTOBUYUPRESERV: TFloatField;
    ibdsMainGoodsReservNEEDTOBUYUPRESERVANDMIN: TFloatField;
    tvGoodsCONTRACTOR_ID: TcxGridDBColumn;
    ibdsMainGoodsReservNeedTotalToBuyUpReserv: TFloatField;
    ibdsMainGoodsReservNeedTotalToBuyUpReservAndMin: TFloatField;
    ibdsMainGoodsReservOrder_Total: TFloatField;
    tvGoodsNeedTotalToBuyUpReserv: TcxGridDBColumn;
    tvGoodsNeedTotalToBuyUpReservAndMin: TcxGridDBColumn;
    tvGoodsOrder_Total: TcxGridDBColumn;
    opd: TOpenDialog;
    ibdsMainInvoicesReservLATEST_DATE: TDateField;
    ibdsMainInvoicesReservCOMMENTS_RESERVATION: TIBStringField;
    tvInvoicesLATEST_DATE: TcxGridDBColumn;
    tvInvoicesCOMMENTS_RESERVATION: TcxGridDBColumn;
    ibdsMainInvoicesReservPRICE: TFloatField;
    tvInvoicesPRICE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure tvGoodsCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure tvInvoicesDataControllerDataModeControllerDetailFirst(
      Sender: TcxDBDataModeController; ADataSet: TDataSet;
      const AMasterDetailKeyFieldNames: String;
      const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
    procedure ibdsMainGoodsReservAfterOpen(DataSet: TDataSet);
    procedure ibdsMainGoodsReservCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tvGoodsDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenAll;
  public
    { Public declarations }
  end;

var
  frmBuysPlaning: TfrmBuysPlaning;

implementation

uses Main, Misk, DM;

{$R *.dfm}

procedure TfrmBuysPlaning.FormCreate(Sender: TObject);
begin
 FName := 'Планирование закупок';
 inherited;
 cxTabControl1.Tabs[1].Enabled := False;
// tvGoods.RestoreFromIniFile(ExtractFilePath(Application.ExeName)+'tvGoods',False);
 OpenAll
end;

procedure TfrmBuysPlaning.OpenAll;
begin
 If (trMain.InTransaction) then
  Begin
   ibdsMainGoodsReserv.Close;
   ibdsContractors.Close
  End
 else
  trMain.StartTransaction;
 ibdsContractors.Open;
 ibdsMainGoodsReserv.Open;
 ibdsMainInvoicesReserv.Open
end;

procedure TfrmBuysPlaning.tvGoodsCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmBuysPlaning.tvInvoicesDataControllerDataModeControllerDetailFirst(
  Sender: TcxDBDataModeController; ADataSet: TDataSet;
  const AMasterDetailKeyFieldNames: String;
  const AMasterDetailKeyValues: Variant; var AReopened: Boolean);
begin
 ADataSet.Close;
 (ADataSet as TIBDataSet).ParamByName('ID').Value := AMasterDetailKeyValues;
 ADataSet.Open
end;

procedure TfrmBuysPlaning.ibdsMainGoodsReservAfterOpen(DataSet: TDataSet);
begin
 ibdsMainGoodsReserv.DisableControls;
 While NOT (ibdsMainGoodsReserv.Eof) do
  Begin
   ibdsMainGoodsReserv.Edit;
   ibdsMainGoodsReservTotalWithSets.Value := ibdsMainGoodsReservTOTAL.AsFloat+ibdsMainGoodsReservIN_SETS.AsFloat;
   ibdsMainGoodsReservNeedToBuyUpReserv.Value := ibdsMainGoodsReservIN_RESERV.AsFloat-ibdsMainGoodsReservTotalWithSets.AsFloat-ibdsMainGoodsReservFUTURE_INCOME.AsFloat;
   ibdsMainGoodsReservNeedToBuyUpReservAndMin.Value := ibdsMainGoodsReservNeedToBuyUpReserv.Value+ibdsMainGoodsReservMIN_AMOUNT.AsFloat;
   If (ibdsMainGoodsReservNeedToBuyUpReserv.Value<0) then
    ibdsMainGoodsReservNeedToBuyUpReserv.Value := 0;
   If (ibdsMainGoodsReservNeedToBuyUpReservAndMin.Value<0) then
    ibdsMainGoodsReservNeedToBuyUpReservAndMin.Value := 0;
   ibdsMainGoodsReserv.Next
  End;
 ibdsMainGoodsReserv.First;
 ibdsMainGoodsReserv.EnableControls
end;

procedure TfrmBuysPlaning.ibdsMainGoodsReservCalcFields(DataSet: TDataSet);
begin
 ibdsMainGoodsReservNeedTotalToBuyUpReserv.AsFloat := ibdsMainGoodsReservLAST_BUY_PRICE.AsFloat*ibdsMainGoodsReservNEEDTOBUYUPRESERV.AsFloat;
 ibdsMainGoodsReservNeedTotalToBuyUpReservAndMin.AsFloat := ibdsMainGoodsReservLAST_BUY_PRICE.AsFloat*ibdsMainGoodsReservNEEDTOBUYUPRESERVANDMIN.AsFloat;
 ibdsMainGoodsReservOrder_Total.AsFloat := ibdsMainGoodsReservORDER_AMOUNT.AsFloat*ibdsMainGoodsReservORDER_PRICE.AsFloat
end;

procedure TfrmBuysPlaning.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
// tvGoods.StoreToIniFile(ExtractFilePath(Application.ExeName)+'tvGoods',True)
end;

procedure TfrmBuysPlaning.tvGoodsDblClick(Sender: TObject);
begin
{ If (GetKeyState(VK_CONTROL)<0) then
  tvGoods.ViewData.Collapse(True)       ГЛЮЧИТ!!!!
 else
  tvGoods.ViewData.Expand(True)}
end;

end.
