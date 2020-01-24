unit ComplectDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, DB,
  IBCustomDataSet;

type
  TfrmComplectDetails = class(TForm)
    dbgComplectDetails: TcxGrid;
    tvCompounds: TcxGridDBTableView;
    tvComposition: TcxGridDBTableView;
    glCompounds: TcxGridLevel;
    glComposition: TcxGridLevel;
    ibdsCompounds: TIBDataSet;
    dsCompounds: TDataSource;
    ibdsComposition: TIBDataSet;
    dsComposition: TDataSource;
    ibdsCompoundsNAME: TIBStringField;
    ibdsCompoundsREAL_AMOUNT: TFloatField;
    ibdsCompoundsWHITE_AMOUNT: TFloatField;
    ibdsCompoundsCRC32_SET: TIntegerField;
    ibdsCompositionNAME: TIBStringField;
    ibdsCompositionAMOUNT: TFloatField;
    tvCompoundsNAME: TcxGridDBColumn;
    tvCompoundsREAL_AMOUNT: TcxGridDBColumn;
    tvCompoundsWHITE_AMOUNT: TcxGridDBColumn;
    tvCompositionNAME: TcxGridDBColumn;
    tvCompositionAMOUNT: TcxGridDBColumn;
    ibdsCompositionCRC32_SET: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComplectDetails: TfrmComplectDetails;

implementation

uses Tovar, DM, Main;

{$R *.dfm}

end.
