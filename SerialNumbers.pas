unit SerialNumbers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, StdCtrls, Mask, wwdbedit,
  Db, IBCustomDataSet;

type
  TfrmSerialNumbers = class(TForm)
    Panel10: TPanel;
    sbCancelSerialNumber: TSpeedButton;
    sbApplySerialNumber: TSpeedButton;
    sbDeleteSerialNumber: TSpeedButton;
    sbAddSerialNumber: TSpeedButton;
    sbClose: TSpeedButton;
    sbPrintSerialNumber: TSpeedButton;
    sbShowComments: TSpeedButton;
    Panel1: TPanel;
    pnlComments: TPanel;
    Label11: TLabel;
    wwDBEdit12: TwwDBEdit;
    dbgSerials: TwwDBGrid;
    spl: TSplitter;
    sbCloneSerialNumber: TSpeedButton;
    ibdsSerialNumbers: TIBDataSet;
    ibdsSerialNumbersID: TLargeintField;
    ibdsSerialNumbersPRIMARY_TOVAR_INCOME_BODY_ID: TLargeintField;
    ibdsSerialNumbersLOCATION_TYPE: TIntegerField;
    ibdsSerialNumbersLOCATION_ID: TLargeintField;
    ibdsSerialNumbersPRIMARY_TOVAR_BODY_ID: TLargeintField;
    ibdsSerialNumbersSTROKE_CODE: TIBStringField;
    ibdsSerialNumbersCRC_STROKE_CODE: TIntegerField;
    ibdsSerialNumbersLOCAL_STROKE_CODE: TIBStringField;
    ibdsSerialNumbersLOCAL_CRC_STROKE_CODE: TIntegerField;
    ibdsSerialNumbersCOMMENTS: TIBStringField;
    dsSerialNumbers: TDataSource;
    procedure sbCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbShowCommentsClick(Sender: TObject);
    procedure sbAddSerialNumberClick(Sender: TObject);
    procedure sbCloneSerialNumberClick(Sender: TObject);
    procedure ibdsSerialNumbersAfterOpen(DataSet: TDataSet);
    procedure dsSerialNumbersStateChange(Sender: TObject);
    procedure ibdsSerialNumbersAfterDelete(DataSet: TDataSet);
    procedure sbDeleteSerialNumberClick(Sender: TObject);
    procedure ibdsSerialNumbersBeforeClose(DataSet: TDataSet);
    procedure ibdsSerialNumbersNewRecord(DataSet: TDataSet);
    procedure sbApplySerialNumberClick(Sender: TObject);
    procedure sbCancelSerialNumberClick(Sender: TObject);
    procedure ibdsSerialNumbersBeforePost(DataSet: TDataSet);
    procedure ibdsSerialNumbersBeforeInsert(DataSet: TDataSet);
    procedure dbgSerialsDrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
  private
    { Private declarations }
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
  end;

var
  frmSerialNumbers: TfrmSerialNumbers;

implementation

uses NaklIn, DM, Misk;

{$R *.DFM}

var SerialNumber, LocalSerialNumber : String[80];

procedure TfrmSerialNumbers.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmSerialNumbers.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree
end;

procedure TfrmSerialNumbers.sbShowCommentsClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  Begin
   pnlComments.Show;
   spl.Show
  End
 else
  Begin
   pnlComments.Hide;
   spl.Hide
  End
end;

procedure TfrmSerialNumbers.sbAddSerialNumberClick(Sender: TObject);
begin
 ibdsSerialNumbers.Append;
 If (sbCloneSerialNumber.Down) then
  Begin
   ibdsSerialNumbersSTROKE_CODE.AsString := SerialNumber;
   ibdsSerialNumbersLOCAL_STROKE_CODE.AsString := LocalSerialNumber
  End
end;

procedure TfrmSerialNumbers.sbCloneSerialNumberClick(Sender: TObject);
begin
 If (ibdsSerialNumbersSTROKE_CODE.AsString='') then
  sbCloneSerialNumber.Down := False;
 If (sbCloneSerialNumber.Down) then
  Begin
   SerialNumber := ibdsSerialNumbersSTROKE_CODE.AsString;
   LocalSerialNumber := ibdsSerialNumbersLOCAL_STROKE_CODE.AsString
  End
end;

procedure TfrmSerialNumbers.ibdsSerialNumbersAfterOpen(DataSet: TDataSet);
begin
 StteChange(False)
end;

procedure TfrmSerialNumbers.dsSerialNumbersStateChange(Sender: TObject);
begin
 If (dsSerialNumbers.State in [dsEdit,dsInsert]) then
  StteChange(True)
 else
  StteChange(ibdsSerialNumbers.UpdatesPending)
end;

procedure TfrmSerialNumbers.ibdsSerialNumbersAfterDelete(
  DataSet: TDataSet);
begin
 StteChange(True)
end;

procedure TfrmSerialNumbers.StteChange(Enabled: Boolean);
begin
 If (frmSerialNumbers<>nil) then
  Begin
   sbApplySerialNumber.Enabled := Enabled;
   sbCancelSerialNumber.Enabled := Enabled;
   sbDeleteSerialNumber.Enabled := (ibdsSerialNumbers.RecordCount>0);
   sbCloneSerialNumber.Enabled := sbDeleteSerialNumber.Enabled
  End
end;

procedure TfrmSerialNumbers.sbDeleteSerialNumberClick(Sender: TObject);
begin
 ibdsSerialNumbers.Delete
end;

procedure TfrmSerialNumbers.ibdsSerialNumbersBeforeClose(
  DataSet: TDataSet);
begin
 If (sbApplySerialNumber.Enabled) then
  Case MessageDlg('Имеются несохраненные изменения. Сохранить?', mtConfirmation, [mbYes,mbNo,mbCancel],0) of
   mrYes: sbApplySerialNumber.Click;
   mrNo: sbCancelSerialNumber.Click;
   mrCancel: Exit
  End
end;

procedure TfrmSerialNumbers.ibdsSerialNumbersNewRecord(DataSet: TDataSet);
begin
 frmNaklIn.ibsGen_ID.SQL.Clear;
 frmNaklIn.ibsGen_ID.SQL.Add('select gen_id(GEN_SERIAL_NUMBERS_ID,1) from rdb$database');
 frmNaklIn.ibsGen_ID.ExecQuery;
 ibdsSerialNumbersID.Value := frmNaklIn.ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 frmNaklIn.ibsGen_ID.Close;
 ibdsSerialNumbersPRIMARY_TOVAR_INCOME_BODY_ID.Value := ibdsSerialNumbers.ParamByName('ID').AsInt64;
 ibdsSerialNumbersPRIMARY_TOVAR_BODY_ID.Value := ibdsSerialNumbers.ParamByName('ID').AsInt64;
 ibdsSerialNumbersLOCATION_ID.Value := frmNaklIn.ibdsMainPrimaryTovarIncomeENTERPRISE_STORE_ID.AsLargeInt;
 If (ibdsSerialNumbers.RecordCount>0) then
  dbgSerials.SelectedIndex := 0
end;

procedure TfrmSerialNumbers.sbApplySerialNumberClick(Sender: TObject);
begin
 If (ibdsSerialNumbers.State in [dsEdit,dsInsert]) then
  ibdsSerialNumbers.Post;
 try
  ibdsSerialNumbers.ApplyUpdates;
  frmNaklIn.trMain.CommitRetaining;
  StteChange(False)
 except
  frmNaklIn.trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end
end;

procedure TfrmSerialNumbers.sbCancelSerialNumberClick(Sender: TObject);
begin
 ibdsSerialNumbers.CancelUpdates;
 StteChange(False)
end;

procedure TfrmSerialNumbers.ibdsSerialNumbersBeforePost(DataSet: TDataSet);
begin
 ibdsSerialNumbersCRC_STROKE_CODE.Value := MyCRC32(ibdsSerialNumbersSTROKE_CODE.AsString);
 ibdsSerialNumbersLOCAL_CRC_STROKE_CODE.Value :=MyCRC32(ibdsSerialNumbersLOCAL_STROKE_CODE.AsString)
end;

procedure TfrmSerialNumbers.ibdsSerialNumbersBeforeInsert(
  DataSet: TDataSet);
begin
 If (ibdsSerialNumbers.RecordCount>=frmNaklIn.ibdsMainPrimaryTovarIncomeBodyItogo.Value) then
  Abort
end;

procedure TfrmSerialNumbers.dbgSerialsDrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
begin
 Canvas.TextOut(2,FooterCellRect.Top+2, IntToStr(ibdsSerialNumbers.RecordCount)+' из '+FormatFloat('#,0',frmNaklIn.ibdsMainPrimaryTovarIncomeBodyItogo.Value))
end;

end.
