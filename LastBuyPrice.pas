unit LastBuyPrice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, IBCustomDataSet, IBDataBase;

type
  TfrmLastBuyPrice = class(TForm)
    dbgAccountBody: TwwDBGrid;
    ibdsLastBuyPrice: TIBDataSet;
    ibdsLastBuyPriceCLOSE_DATE: TDateField;
    ibdsLastBuyPricePRICE: TFloatField;
    ibdsLastBuyPriceSYMBOL: TIBStringField;
    ibdsLastBuyPriceDECIMALS_IN: TSmallintField;
    dsLastBuyPrice: TDataSource;
    ibdsLastBuyPricePRICE_FMT: TStringField;
    procedure ibdsLastBuyPriceCalcFields(DataSet: TDataSet);
    procedure Run(Transaction : TIBTransaction; DataSource : TDataSource; Store_ID : Largeint);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLastBuyPrice: TfrmLastBuyPrice;

implementation

uses DM;

{$R *.DFM}

procedure TfrmLastBuyPrice.ibdsLastBuyPriceCalcFields(DataSet: TDataSet);
begin
 ibdsLastBuyPricePRICE_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsLastBuyPriceDECIMALS_IN.AsInteger),ibdsLastBuyPricePRICE.AsFloat)
end;

procedure TfrmLastBuyPrice.Run(Transaction : TIBTransaction; DataSource : TDataSource; Store_ID : Largeint);
begin
 If (ibdsLastBuyPrice.Active) then
  ibdsLastBuyPrice.Close;
 If (ibdsLastBuyPrice.Transaction<>Transaction) then
  ibdsLastBuyPrice.Transaction := Transaction;
 ibdsLastBuyPrice.DataSource := DataSource;
 ibdsLastBuyPrice.ParamByName('STORE_ID').AsInt64 := Store_ID;
 ibdsLastBuyPrice.Open
end;

procedure TfrmLastBuyPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree
end;

end.
