unit BuysPlanning;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBSQL, IBDatabase, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls,
  Db, IBCustomDataSet;

type
  TfrmBuysPlanning = class(TfrmLike)
    Panel4: TPanel;
    sbLastPrimaryTovarOutcomeList: TSpeedButton;
    sbNextPrimaryTovarOutcomeList: TSpeedButton;
    sbPriorPrimaryTovarOutcomeList: TSpeedButton;
    sbFirstPrimaryTovarOutcomeList: TSpeedButton;
    sbSearchPrimaryTovarOutcomeList: TSpeedButton;
    sbClose: TSpeedButton;
    sbPrintPrimaryTovarOutcomeList: TSpeedButton;
    wwDBGrid1: TwwDBGrid;
    ibdsMainPrimaryTovarOutcomeList: TIBDataSet;
    dsMainPrimaryTovarOutcomeList: TDataSource;
    ibdsMainPrimaryTovarOutcomeListNAME: TIBStringField;
    ibdsMainPrimaryTovarOutcomeListMAX_LAST_BUY_PRICE: TFloatField;
    ibdsMainPrimaryTovarOutcomeListTOTAL_REAL: TFloatField;
    ibdsMainPrimaryTovarOutcomeListMIN_AMOUNT: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuysPlanning: TfrmBuysPlanning;

implementation

uses DM;

{$R *.DFM}

end.
