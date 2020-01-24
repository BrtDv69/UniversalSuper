unit Requests;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, IBSQL, IBDatabase, cxControls, cxPC, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, ExtCtrls, DB, IBCustomDataSet,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGraphics, cxContainer, cxEdit,
  cxTextEdit, cxMemo, cxDBEdit, StdCtrls, RzPanel, RzSplit, cxMaskEdit,
  cxDropDownEdit, cxSpinEdit, cxTimeEdit, cxLabel, cxDBLabel, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSplitter, cxCheckBox,
  cxDBData, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage;

type
  TfrmRequests = class(TfrmLike)
    PageControl1: TcxPageControl;
    tsRequestsList: TcxTabSheet;
    tsRequest: TcxTabSheet;
    tvRequestsList: TcxGridDBTableView;
    lvRequestsList: TcxGridLevel;
    grdRequestsList: TcxGrid;
    Panel4: TPanel;
    sbCancelRequestsList: TSpeedButton;
    sbApplyRequestsList: TSpeedButton;
    sbDeleteRequestsList: TSpeedButton;
    sbLastRequestsList: TSpeedButton;
    sbNextRequestsList: TSpeedButton;
    sbPriorRequestsList: TSpeedButton;
    sbFirstRequestsList: TSpeedButton;
    sbFilterRequestsList: TSpeedButton;
    sbClose: TSpeedButton;
    sbRefreshRequestsList: TSpeedButton;
    sbPrintRequestsList: TSpeedButton;
    ibdsMainRequestsList: TIBDataSet;
    dsMainRequestsList: TDataSource;
    ibdsMainRequestsListID: TIntegerField;
    ibdsMainRequestsListSTORE_NAME: TIBStringField;
    ibdsMainRequestsListCONTRACTOR_NAME: TIBStringField;
    ibdsMainRequestsListMASTER_NAME: TIBStringField;
    ibdsMainRequestsListNUMBER_PREFIX: TIBStringField;
    ibdsMainRequestsListNUMBER: TIntegerField;
    ibdsMainRequestsListNUMBER_SUFFIX: TIBStringField;
    ibdsMainRequestsListREQUEST_TIMESTAMP: TDateTimeField;
    ibdsMainRequestsListCLOSED: TIntegerField;
    ibdsMainRequestsListREQUEST_END_TIMESTAMP: TDateTimeField;
    ibdsMainRequestsListREQUEST_DONE_TIMESTAMP: TDateTimeField;
    ibdsMainRequestsListEXECUTOR_ID: TLargeintField;
    ibdsMainRequestsListTESTER_ID: TLargeintField;
    ibdsMainRequestsListCOMMENTS: TIBStringField;
    tvRequestsListSTORE_NAME: TcxGridDBColumn;
    tvRequestsListCONTRACTOR_NAME: TcxGridDBColumn;
    tvRequestsListMASTER_NAME: TcxGridDBColumn;
    tvRequestsListNUMBER: TcxGridDBColumn;
    tvRequestsListREQUEST_TIMESTAMP: TcxGridDBColumn;
    tvRequestsListCLOSED: TcxGridDBColumn;
    tvRequestsListREQUEST_END_TIMESTAMP: TcxGridDBColumn;
    tvRequestsListREQUEST_DONE_TIMESTAMP: TcxGridDBColumn;
    tvRequestsListEXECUTOR_ID: TcxGridDBColumn;
    tvRequestsListTESTER_ID: TcxGridDBColumn;
    tvRequestsListCOMMENTS: TcxGridDBColumn;
    ibdsPersons: TIBDataSet;
    ibdsPersonsSURNAME: TIBStringField;
    ibdsPersonsSECOND_NAME: TIBStringField;
    ibdsPersonsShortFIO: TStringField;
    dsPersons: TDataSource;
    ibdsPersonsID: TLargeintField;
    GridPopupMenu: TcxGridPopupMenu;
    ibdsMainRequest: TIBDataSet;
    dsMainRequest: TDataSource;
    ibdsMainRequestID: TIntegerField;
    ibdsMainRequestINVOICE_BODY_ID: TLargeintField;
    ibdsMainRequestCRC32_SET: TIntegerField;
    ibdsMainRequestSECURITY_LEVEL: TIntegerField;
    ibdsMainRequestNUMBER_PREFIX: TIBStringField;
    ibdsMainRequestNUMBER: TIntegerField;
    ibdsMainRequestNUMBER_SUFFIX: TIBStringField;
    ibdsMainRequestREQUEST_TIMESTAMP: TDateTimeField;
    ibdsMainRequestCLOSED: TIntegerField;
    ibdsMainRequestREQUEST_END_TIMESTAMP: TDateTimeField;
    ibdsMainRequestREQUEST_DONE_TIMESTAMP: TDateTimeField;
    ibdsMainRequestCOMMENTS: TIBStringField;
    ibdsMainRequestBody: TIBDataSet;
    dsMainRequestBody: TDataSource;
    ibdsMainRequestBodyID: TIntegerField;
    ibdsMainRequestBodyREQUEST_HEADER_ID: TIntegerField;
    ibdsMainRequestBodyARTICUL_ID: TLargeintField;
    ibdsMainRequestBodyAMOUNT: TFloatField;
    ibdsMainRequestBodyCOMMENTS: TIBStringField;
    ibsWhite: TIBSQL;
    pnlTools: TPanel;
    sbCancelRequest: TSpeedButton;
    sbApplyRequest: TSpeedButton;
    sbDeleteRequest: TSpeedButton;
    SpeedButton21: TSpeedButton;
    sbRefreshRequest: TSpeedButton;
    sbPrintRequest: TSpeedButton;
    sbShowComments: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlComments: TRzSizePanel;
    Label39: TLabel;
    dbmComments: TcxDBMemo;
    Label23: TLabel;
    cxDBPopupEdit1: TcxDBPopupEdit;
    pnlNumber: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    ibdsMainRequestNumberStr: TStringField;
    lblManager: TLabel;
    Label4: TLabel;
    ibdsMainRequestMASTER_NAME: TIBStringField;
    ibdsMainRequestCONTRACTOR_NAME: TIBStringField;
    Label3: TLabel;
    Label6: TLabel;
    deRequestStartDate: TcxDateEdit;
    deRequestDoneDate: TcxDateEdit;
    deRequestEndDate: TcxDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    teRequestStartTime: TcxTimeEdit;
    teRequestDoneTime: TcxTimeEdit;
    teRequestEndTime: TcxTimeEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lcbExecutor: TcxDBLookupComboBox;
    lcbTester: TcxDBLookupComboBox;
    Label15: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    ibdsStores: TIBDataSet;
    dsStores: TDataSource;
    ibdsStoresFULL_NAME: TIBStringField;
    lblContractor: TLabel;
    Panel3: TPanel;
    grdSerials: TcxGrid;
    tvSerials: TcxGridDBTableView;
    lvSerials: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    grdRequestBody: TcxGrid;
    tvRequestBody: TcxGridDBTableView;
    tvRequestBodyARTICUL_ID: TcxGridDBColumn;
    tvRequestBodyPACKS_AMOUNT: TcxGridDBColumn;
    tvRequestBodyCOMMENTS: TcxGridDBColumn;
    lvRequestBody: TcxGridLevel;
    cxDBCheckBox1: TcxDBCheckBox;
    ibdsMainRequestBLACK: TIntegerField;
    ibdsMainRequestINVOICE_CRC32_SET: TIntegerField;
    ibsAux: TIBSQL;
    pnlMessage: TPanel;
    trLock: TIBTransaction;
    ibdsStoresID: TLargeintField;
    ibdsMainRequestENTERPRISE_STORE_ID: TIntegerField;
    ibdsMainRequestEXECUTOR_ID: TIntegerField;
    ibdsMainRequestTESTER_ID: TIntegerField;
    ibdsMainRequestsListINVOICE_NUMBER_PREFIX: TIBStringField;
    ibdsMainRequestsListINVOICE_NUMBER: TIntegerField;
    ibdsMainRequestsListINVOICE_NUMBER_SUFFIX: TIBStringField;
    tvRequestsListINVOICE_NUMBER: TcxGridDBColumn;
    ibdsMainRequestBodySerials: TIBDataSet;
    dsMainRequestBodySerials: TDataSource;
    ibdsMainRequestBodySerialsREQUEST_BODY_ID: TIntegerField;
    ibdsMainRequestBodySerialsPRIMARY_TOVAR_OUTCOME_BODY_ID: TLargeintField;
    ibdsSerials: TIBDataSet;
    dsSerials: TDataSource;
    ibdsSerialsID: TLargeintField;
    ibdsSerialsSTROKE_CODE: TIBStringField;
    ibdsSerialsARTICUL_ID: TLargeintField;
    tvSerialsSERIAL_ID: TcxGridDBColumn;
    ibdsMainRequestBodySerialsSERIAL_ID: TIntegerField;
    tvSerialsREQUEST_BODY_ID: TcxGridDBColumn;
    ibdsPersonsNAME: TIBStringField;
    procedure ibdsMainRequestsListNUMBERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ibdsPersonsCalcFields(DataSet: TDataSet);
    procedure tvRequestsListCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure tvRequestsListDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: String);
    procedure sbFirstRequestsListClick(Sender: TObject);
    procedure sbPriorRequestsListClick(Sender: TObject);
    procedure sbNextRequestsListClick(Sender: TObject);
    procedure sbLastRequestsListClick(Sender: TObject);
    procedure sbDeleteRequestsListClick(Sender: TObject);
    procedure sbRefreshRequestsListClick(Sender: TObject);
    procedure sbFilterRequestsListClick(Sender: TObject);
    procedure sbPrintRequestsListClick(Sender: TObject);
    procedure ibdsMainRequestBeforeOpen(DataSet: TDataSet);
    procedure PageControl1PageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure ibdsMainRequestBodyBeforeOpen(DataSet: TDataSet);
    procedure ibdsMainRequestsListUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainRequestCalcFields(DataSet: TDataSet);
    procedure ibdsMainRequestAfterOpen(DataSet: TDataSet);
    procedure ibdsMainRequestUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainRequestBodyUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainRequestNewRecord(DataSet: TDataSet);
    procedure ibdsMainRequestBodyNewRecord(DataSet: TDataSet);
    procedure sbDeleteRequestClick(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure sbApplyRequestsListClick(Sender: TObject);
    procedure sbCancelRequestsListClick(Sender: TObject);
    procedure sbApplyRequestClick(Sender: TObject);
    procedure sbCancelRequestClick(Sender: TObject);
    procedure sbRefreshRequestClick(Sender: TObject);
    procedure sbPrintRequestClick(Sender: TObject);
    procedure sbShowCommentsClick(Sender: TObject);
    procedure deRequestStartDatePropertiesChange(Sender: TObject);
    procedure deRequestEndDatePropertiesChange(Sender: TObject);
    procedure deRequestDoneDatePropertiesChange(Sender: TObject);
    procedure teRequestStartTimePropertiesChange(Sender: TObject);
    procedure teRequestEndTimePropertiesChange(Sender: TObject);
    procedure teRequestDoneTimePropertiesChange(Sender: TObject);
    procedure dsMainRequestStateChange(Sender: TObject);
    procedure ibdsMainRequestsListAfterDelete(DataSet: TDataSet);
    procedure ibdsMainRequestsListAfterScroll(DataSet: TDataSet);
    procedure ibdsMainRequestAfterDelete(DataSet: TDataSet);
    procedure grdRequestBodyEnter(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure grdRequestBodyFocusedViewChanged(Sender: TcxCustomGrid;
      APrevFocusedView, AFocusedView: TcxCustomGridView);
    procedure ibdsMainRequestsListINVOICE_NUMBERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ibdsMainRequestBodySerialsNewRecord(DataSet: TDataSet);
    procedure ibdsMainRequestBodySerialsSERIAL_IDChange(Sender: TField);
    procedure ibdsMainRequestBodySerialsUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainRequestBodySerialsAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure OpenAll;
    procedure StteChange(Suf: String; Enabled: Boolean);
    procedure GenerateSelectMainRequestsList(WhereSqlMainRequestsList: String);
    procedure frReportGetValue(const ParName: String; var ParValue: Variant);
  public
    { Public declarations }
  end;

var
  frmRequests: TfrmRequests;

implementation

uses DM, Main, Misk, DateUtils, NaklOut;

{$R *.dfm}

procedure TfrmRequests.ibdsMainRequestsListNUMBERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 Text := ibdsMainRequestsListNUMBER_PREFIX.AsString+ibdsMainRequestsListNUMBER.AsString+
         ibdsMainRequestsListNUMBER_SUFFIX.AsString
end;

procedure TfrmRequests.ibdsPersonsCalcFields(DataSet: TDataSet);
begin
 ibdsPersonsShortFIO.Value := ibdsPersonsSURNAME.AsString+' '+Copy(ibdsPersonsNAME.AsString,1,1)+'. '+Copy(ibdsPersonsSECOND_NAME.AsString,1,1)+'.'
end;

procedure TfrmRequests.tvRequestsListCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmRequests.FormCreate(Sender: TObject);
var ki : Integer;
begin
 FName := 'Заказы на сборку';
 cxSplitter1.CloseSplitter;
 inherited;
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
    End;
   ibdsMainRequest.SelectSQL[5] := '';
  End;
 If (Request_ID=0) then
  PageControl1.ActivePageIndex := 0
 else
  PageControl1.ActivePageIndex := 1;
 OpenAll
end;

procedure TfrmRequests.tvRequestsListDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: String);
begin
 GenerateSelectMainRequestsList(AFilterText)
end;

procedure TfrmRequests.GenerateSelectMainRequestsList(WhereSqlMainRequestsList: String);
 var I: Integer;
begin
 WhereSqlMainRequestsList := ReplaceStr(WhereSqlMainRequestsList,'<>','!=');
 WhereSqlMainRequestsList := ReplaceStr(WhereSqlMainRequestsList,' = NULL',' is NULL');
 WhereSqlMainRequestsList := ReplaceStr(WhereSqlMainRequestsList,'STORE_NAME','S.NAME');
 WhereSqlMainRequestsList := ReplaceStr(WhereSqlMainRequestsList,'CONTRACTOR_NAME','C.NAME');
 WhereSqlMainRequestsList := ReplaceStr(WhereSqlMainRequestsList,'MASTER_NAME','P.SURNAME||'#39' '#39'||P.NAME||'#39' '#39'||P.SECOND_NAME');
 WhereSqlMainRequestsList := ReplaceStr(WhereSqlMainRequestsList,'INVOICE_NUMBER','IH.NUMBER');
 WhereSqlMainRequestsList := ReplaceStr(WhereSqlMainRequestsList,'NUMBER','RH.NUMBER');
 For I := Pred(ibdsMainRequestsList.SelectSQL.Count) downto 9 do
  ibdsMainRequestsList.SelectSQL.Delete(I);
 If (WhereSqlMainRequestsList<>'') and (tvRequestsList.DataController.Filter.Active) then
  ibdsMainRequestsList.SelectSQL.Add('and '+WhereSqlMainRequestsList);
 ibdsMainRequestsList.Open
end;

procedure TfrmRequests.OpenAll;
begin
 If NOT (trMain.InTransaction) then
  trMain.StartTransaction;
 ibdsPersons.Open;
 If (PageControl1.ActivePageIndex=0) then
  Begin
   ibdsMainRequestsList.Open;
   ibdsMainRequestBodySerials.Close;
   ibdsMainRequestBody.Close;
   ibdsMainRequest.Close;
   ibdsStores.Close;
   ibdsSerials.Close;
   GridPopupMenu.Grid := grdRequestsList;
  End
 else
  Begin
   ibdsStores.Open;
   ibdsMainRequest.Open;
   ibdsMainRequestBody.Open;
   ibdsSerials.Open;
   ibdsMainRequestBodySerials.Open;
   GridPopupMenu.Grid := grdRequestBody
  End
end;

procedure TfrmRequests.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
begin
 For k := 0 to Pred(ComponentCount) do
  If (Components[k].Name='sbApply'+Suf) or
     (Components[k].Name='sbCancel'+Suf) then
   (Components[k] as TControl).Enabled := Enabled;
 For k := 0 to Pred(PageControl1.PageCount) do
  If (PageControl1.Pages[k].Name<>'ts'+Suf) then
   PageControl1.Pages[k].Enabled := NOT Enabled
end;

procedure TfrmRequests.sbFirstRequestsListClick(Sender: TObject);
begin
 ibdsMainRequestsList.First
end;

procedure TfrmRequests.sbPriorRequestsListClick(Sender: TObject);
begin
 ibdsMainRequestsList.Prior
end;

procedure TfrmRequests.sbNextRequestsListClick(Sender: TObject);
begin
 ibdsMainRequestsList.Next
end;

procedure TfrmRequests.sbLastRequestsListClick(Sender: TObject);
begin
 ibdsMainRequestsList.Last
end;

procedure TfrmRequests.sbDeleteRequestsListClick(Sender: TObject);
begin
 If (MessageDlg('Хотите удалить заказ?',mtConfirmation,[mbNo,mbYes],0)=mrYes) then
  ibdsMainRequestsList.Delete
end;

procedure TfrmRequests.sbRefreshRequestsListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainRequestsList.Bookmark;
 trMain.Commit;
 OpenAll;
 try
  ibdsMainRequestsList.Bookmark := BookMark
 except
 end
end;

procedure TfrmRequests.sbFilterRequestsListClick(Sender: TObject);
begin
 If ((Sender as TSpeedButton).Down) then
  tvRequestsList.Filtering.RunCustomizeDialog(Nil)
 else
  tvRequestsList.DataController.Filter.Clear
end;

procedure TfrmRequests.sbPrintRequestsListClick(Sender: TObject);
begin
{ frmDM.frReport1.OnGetValue := frReportGetValue;
 sbPrintClick((Sender as TSpeedButton), ibsAux, ibdsMainRequestsList)}
end;

procedure TfrmRequests.frReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
 If (ParName='Заказчик') then
  ParValue := ibdsMainRequestCONTRACTOR_NAME.AsString;
 If (ParName='Номер') then
  ParValue := ibdsMainRequestNumberStr.AsString;
 If (ParName='Менеджер') then
  ParValue := ibdsMainRequestMASTER_NAME.AsString;
 If (ParName='Дата выдачи заказа') then
  ParValue := deRequestStartDate.Date;
 If (ParName='Время выдачи заказа') then
  ParValue := teRequestStartTime.Time;
 If (ParName='Дата срока выполнения') then
  ParValue := deRequestEndDate.EditText;
 If (ParName='Время срока выполнения') then
  ParValue := teRequestEndTime.Time;
 If (ParName='Дата исполнения') then
  ParValue := deRequestDoneDate.EditText;
 If (ParName='Время исполнения') then
  ParValue := teRequestDoneTime.Time;
 If (ParName='Собрал') then
  ParValue := lcbExecutor.Text;
 If (ParName='Проверил') then
  ParValue := lcbTester.Text;
 If (ParName='Комментарии заказа') then
  ParValue := ibdsMainRequestCOMMENTS.AsString;
 If (ParName='Наименование позиции') then
  ParValue := frmDM.ibdsArticuls.Lookup('ID',ibdsMainRequestBodyARTICUL_ID.AsString,'NAME');
 If (ParName='Количество') then
  ParValue := ibdsMainRequestBodyAMOUNT.Value;
 If (ParName='Серийные номера') then
  ParValue := '';
 If (ParName='Комментарии позиции') then
  ParValue := ibdsMainRequestBodyCOMMENTS.AsString
end;


procedure TfrmRequests.ibdsMainRequestBeforeOpen(DataSet: TDataSet);
begin
 ibdsMainRequest.ParamByName('ID').AsInteger := Request_ID
end;

procedure TfrmRequests.PageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
 If (PageControl1.ActivePage=tsRequestsList) and (Request_ID=0) then
  Request_ID := ibdsMainRequestsListID.AsInteger;
 If (PageControl1.ActivePage=tsRequest) then
  Request_ID := 0;
 AllowChange := True
end;

procedure TfrmRequests.PageControl1Change(Sender: TObject);
begin
 OpenAll
end;

procedure TfrmRequests.ibdsMainRequestBodyBeforeOpen(DataSet: TDataSet);
begin
 (Dataset as TIBDataSet).ParamByName('ID').AsInteger := ibdsMainRequestID.AsInteger
end;

procedure TfrmRequests.ibdsMainRequestsListUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   ibsWhite.SQL.AddStrings(ibdsMainRequestsList.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainRequestsListID.OldValue);
   ibsWhite.ExecQuery
  End;
 UpdateAction := uaApply
end;

procedure TfrmRequests.ibdsMainRequestCalcFields(DataSet: TDataSet);
begin
 If (ibdsMainRequestNUMBER.Value<>0) then
  ibdsMainRequestNumberStr.Value := ibdsMainRequestNUMBER_PREFIX.AsString+ibdsMainRequestNUMBER.AsString+ibdsMainRequestNUMBER_SUFFIX.AsString
 else
  ibdsMainRequestNumberStr.Value := 'Новый'
end;

procedure TfrmRequests.ibdsMainRequestAfterOpen(DataSet: TDataSet);
begin
 If (ibdsMainRequest.RecordCount<>0) then
  Begin
   lblManager.Caption := 'Менеджер: '+ibdsMainRequestMASTER_NAME.AsString;
   lblContractor.Caption := 'Заказчик: '+ibdsMainRequestCONTRACTOR_NAME.AsString;
   deRequestStartDate.Date := DateOf(ibdsMainRequestREQUEST_TIMESTAMP.AsDateTime);
   teRequestStartTime.Time := TimeOf(ibdsMainRequestREQUEST_TIMESTAMP.AsDateTime);
   If NOT(ibdsMainRequestREQUEST_END_TIMESTAMP.IsNull) then
    Begin
     deRequestEndDate.Date := DateOf(ibdsMainRequestREQUEST_END_TIMESTAMP.AsDateTime);
     teRequestEndTime.Time := TimeOf(ibdsMainRequestREQUEST_END_TIMESTAMP.AsDateTime);
    End;
   If NOT(ibdsMainRequestREQUEST_DONE_TIMESTAMP.IsNull) then
    Begin
     deRequestDoneDate.Date := DateOf(ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsDateTime);
     teRequestDoneTime.Time := TimeOf(ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsDateTime);
    End
  End
end;

procedure TfrmRequests.ibdsMainRequestUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 If (UpdateKind=ukInsert) or
    (YearOf(ibdsMainRequestREQUEST_TIMESTAMP.OldValue)<>YearOf(ibdsMainRequestREQUEST_TIMESTAMP.NewValue)) then
  Begin
   pnlMessage.Show;
   Application.ProcessMessages;
   If NOT (trLock.InTransaction) then
    trLock.StartTransaction;
   pnlMessage.Hide;
   Application.ProcessMessages;
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select max(RH.NUMBER) NUMBER from REQUEST_HEADERS RH where (RH.REQUEST_TIMESTAMP>'#39+FormatDateTime('01.01.yyyy',ibdsMainRequestREQUEST_TIMESTAMP.Value)+#39') and (RH.REQUEST_TIMESTAMP<'#39+FormatDateTime('01.01.yyyy',IncYear(ibdsMainRequestREQUEST_TIMESTAMP.Value))+#39')');
   ibsAux.ExecQuery;
   ibdsMainRequest.Edit;
   If (ibsAux.RecordCount=0) then
    ibdsMainRequestNUMBER.Value := 1
   else
    ibdsMainRequestNUMBER.Value := ibsAux.FieldByName('NUMBER').AsInteger+1;
   ibsAux.Close;
   ibdsMainRequest.Post
  End;
 If (Black) then
  If (ibdsMainRequestBLACK.AsInteger=0) then
   Begin
    Case UpdateKind of
     ukModify: ibsWhite.SQL.AddStrings(ibdsMainRequest.ModifySQL);
     ukInsert: ibsWhite.SQL.AddStrings(ibdsMainRequest.InsertSQL);
     ukDelete: ibsWhite.SQL.AddStrings(ibdsMainRequest.DeleteSQL)
    End;
   ibsWhite.GenerateParamNames := True;
   If (ibsWhite.ParamByName('CLOSED')<>nil) then
    ibsWhite.ParamByName('CLOSED').Value := ibdsMainRequestCLOSED.AsVariant;
   If (ibsWhite.ParamByName('COMMENTS')<>nil) then
    ibsWhite.ParamByName('COMMENTS').Value := ibdsMainRequestCOMMENTS.AsVariant;
   If (ibsWhite.ParamByName('CRC32_SET')<>nil) then
    ibsWhite.ParamByName('CRC32_SET').Value := ibdsMainRequestCRC32_SET.AsVariant;
   If (ibsWhite.ParamByName('NUMBER')<>nil) then
    ibsWhite.ParamByName('NUMBER').Value := ibdsMainRequestNUMBER.AsVariant;
   If (ibsWhite.ParamByName('NUMBER_PREFIX')<>nil) then
    ibsWhite.ParamByName('NUMBER_PREFIX').Value := ibdsMainRequestNUMBER_PREFIX.AsVariant;
   If (ibsWhite.ParamByName('NUMBER_SUFFIX')<>nil) then
    ibsWhite.ParamByName('NUMBER_SUFFIX').Value := ibdsMainRequestNUMBER_SUFFIX.AsVariant;
   If (ibsWhite.ParamByName('REQUEST_DONE_TIMESTAMP')<>nil) then
    ibsWhite.ParamByName('REQUEST_DONE_TIMESTAMP').Value := ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsVariant;
   If (ibsWhite.ParamByName('REQUEST_END_TIMESTAMP')<>nil) then
    ibsWhite.ParamByName('REQUEST_END_TIMESTAMP').Value := ibdsMainRequestREQUEST_END_TIMESTAMP.AsVariant;
   If (ibsWhite.ParamByName('REQUEST_TIMESTAMP')<>nil) then
    ibsWhite.ParamByName('REQUEST_TIMESTAMP').Value := ibdsMainRequestREQUEST_TIMESTAMP.AsVariant;
   If (ibsWhite.ParamByName('SECURITY_LEVEL')<>nil) then
    ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsMainRequestSECURITY_LEVEL.AsVariant;
   ibsWhite.ParamByName('ENTERPRISE_STORE_ID').Value := ibdsMainRequestENTERPRISE_STORE_ID.Value;
   If (ibsWhite.ParamByName('INVOICE_BODY_ID')<>nil) then
    ibsWhite.ParamByName('INVOICE_BODY_ID').AsInt64 := ibdsMainRequestINVOICE_BODY_ID.Value;
   If (ibsWhite.ParamByName('ID')<>nil) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainRequestID.Value;
   ibsWhite.ParamByName('EXECUTOR_ID').Value := ibdsMainRequestEXECUTOR_ID.Value;
   ibsWhite.ParamByName('TESTER_ID').Value := ibdsMainRequestTESTER_ID.Value;
   If (ibsWhite.ParamByName('OLD_ID')<>nil) then
   ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainRequestID.OldValue);
   ibsWhite.ExecQuery
   End;
 UpdateAction := uaApply
end;

procedure TfrmRequests.ibdsMainRequestBodyUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 If (Black) then
  If (ibdsMainRequestBLACK.AsInteger=0) then
   Begin
    Case UpdateKind of
     ukModify: ibsWhite.SQL.AddStrings(ibdsMainRequestBody.ModifySQL);
     ukInsert: ibsWhite.SQL.AddStrings(ibdsMainRequestBody.InsertSQL);
     ukDelete: ibsWhite.SQL.AddStrings(ibdsMainRequestBody.DeleteSQL)
    End;
   ibsWhite.GenerateParamNames := True;
   If (ibsWhite.ParamByName('AMOUNT')<>nil) then
    ibsWhite.ParamByName('AMOUNT').Value := ibdsMainRequestBodyAMOUNT.AsVariant;
   If (ibsWhite.ParamByName('COMMENTS')<>nil) then
    ibsWhite.ParamByName('COMMENTS').Value := ibdsMainRequestBodyCOMMENTS.AsVariant;
   If (ibsWhite.ParamByName('ARTICUL_ID')<>nil) then
    ibsWhite.ParamByName('ARTICUL_ID').AsInt64 := ibdsMainRequestBodyARTICUL_ID.Value;
   If (ibsWhite.ParamByName('ID')<>nil) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainRequestBodyID.Value;
   If (ibsWhite.ParamByName('REQUEST_HEADER_ID')<>nil) then
    ibsWhite.ParamByName('REQUEST_HEADER_ID').AsInt64 := ibdsMainRequestBodyREQUEST_HEADER_ID.Value;
   If (ibsWhite.ParamByName('OLD_ID')<>nil) then
   ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainRequestBodyID.OldValue);
   ibsWhite.ExecQuery
   End;
 UpdateAction := uaApply
end;

procedure TfrmRequests.ibdsMainRequestNewRecord(DataSet: TDataSet);
begin
 ibdsMainRequestSECURITY_LEVEL.Value := 1;
 ibdsMainRequestNUMBER_PREFIX.AsString := '';
 ibdsMainRequestNUMBER_SUFFIX.AsString := '';
 ibdsMainRequestCLOSED.Value := 0;
 ibdsMainRequestNUMBER.Value := 0;
 deRequestStartDate.Date := Today;
 teRequestStartTime.Time := RecodeSecond(Time,0);
 ibdsMainRequestID.Value := GetNewID(ibsGen_ID,'GEN_REQUEST_HEADERS_ID');
 Request_ID := ibdsMainRequestID.Value
end;

procedure TfrmRequests.ibdsMainRequestBodyNewRecord(DataSet: TDataSet);
begin
 ibdsMainRequestBodyID.Value := GetNewID(ibsGen_ID,'GEN_REQUEST_BODIES_ID');
 ibdsMainRequestBodyREQUEST_HEADER_ID.Value := ibdsMainRequestID.Value
end;

procedure TfrmRequests.sbDeleteRequestClick(Sender: TObject);
begin
 If (dbmComments.DataBinding.DataSource=dsMainRequestBody) then
  Begin
   If (MessageDlg('Хотите удалить позицию заказа?',mtConfirmation,[mbNo,mbYes],0)=mrYes) then
    (grdRequestBody.FocusedView as TcxGridDBTableView).DataController.DataSource.DataSet.Delete
  End
 else
   If (MessageDlg('Хотите удалить заказ?',mtConfirmation,[mbNo,mbYes],0)=mrYes) then
    ibdsMainRequest.Delete
end;

procedure TfrmRequests.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmRequests.sbApplyRequestsListClick(Sender: TObject);
 var BookMark : String;
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   PostIfNeeded(ibdsMainRequestsList);
   BookMark := ibdsMainRequestsList.Bookmark;
   ibdsMainRequestsList.ApplyUpdates;
   trMain.Commit;
   OpenAll;
   StteChange('RequestsList', False)
  End;
 ibdsMainRequestsList.Bookmark := BookMark
end;

procedure TfrmRequests.sbCancelRequestsListClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   ibdsMainRequestsList.CancelUpdates;
   StteChange('RequestsList', False)
  End
end;

procedure TfrmRequests.sbApplyRequestClick(Sender: TObject);
begin
 PostIfNeeded(ibdsMainRequest);
 PostIfNeeded(ibdsMainRequestBody);
 PostIfNeeded(ibdsMainRequestBodySerials);
 SetCRC32_Set(ibdsMainRequest,ibdsMainRequestBody,'REQUEST_HEADER_ID');
 ibdsMainRequest.ApplyUpdates;
 ibdsMainRequestBody.ApplyUpdates;
 ibdsMainRequestBodySerials.ApplyUpdates;
 trMain.Commit;
 OpenAll;
 StteChange('Request', False);
 If (trLock.InTransaction) then
  trLock.Commit
end;

procedure TfrmRequests.sbCancelRequestClick(Sender: TObject);
begin
 If (trLock.InTransaction) then
  trLock.Commit;
 trMain.RollbackRetaining;
 StteChange('Request', False)
end;

procedure TfrmRequests.sbRefreshRequestClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainRequestsList.Bookmark;
 trMain.Commit;
 OpenAll;
 try
  ibdsMainRequestsList.Bookmark := BookMark
 except
 end
end;

procedure TfrmRequests.sbPrintRequestClick(Sender: TObject);
begin
 frmDM.frReport1.OnGetValue := frReportGetValue;
 sbPrintClick((Sender as TSpeedButton), ibsAux, ibdsMainRequestBody)
end;

procedure TfrmRequests.sbShowCommentsClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlComments.RestoreHotSpot
 else
  pnlComments.CloseHotSpot
end;

procedure TfrmRequests.deRequestStartDatePropertiesChange(Sender: TObject);
begin
 If (ibdsMainRequest.Active) and
    (ibdsMainRequestREQUEST_TIMESTAMP.AsDateTime<>deRequestStartDate.Date+TimeOf(ibdsMainRequestREQUEST_TIMESTAMP.AsDateTime)) then
  Begin
   If NOT (ibdsMainRequest.State in [dsInsert, dsEdit]) then
    ibdsMainRequest.Edit;
   ibdsMainRequestREQUEST_TIMESTAMP.AsDateTime := deRequestStartDate.Date+TimeOf(ibdsMainRequestREQUEST_TIMESTAMP.AsDateTime)
  End 
end;

procedure TfrmRequests.deRequestEndDatePropertiesChange(Sender: TObject);
begin
 If (ibdsMainRequest.Active) and
    (ibdsMainRequestREQUEST_END_TIMESTAMP.AsDateTime<>deRequestEndDate.Date+TimeOf(ibdsMainRequestREQUEST_END_TIMESTAMP.AsDateTime)) then
  Begin
   If NOT (ibdsMainRequest.State in [dsInsert, dsEdit]) then
    ibdsMainRequest.Edit;
   ibdsMainRequestREQUEST_END_TIMESTAMP.AsDateTime := deRequestEndDate.Date+TimeOf(ibdsMainRequestREQUEST_END_TIMESTAMP.AsDateTime)
  End
end;

procedure TfrmRequests.deRequestDoneDatePropertiesChange(Sender: TObject);
begin
 If (ibdsMainRequest.Active) and
    (ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsDateTime<>deRequestDoneDate.Date+TimeOf(ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsDateTime)) then
  Begin
   If NOT (ibdsMainRequest.State in [dsInsert, dsEdit]) then
    ibdsMainRequest.Edit;
   ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsDateTime := deRequestDoneDate.Date+TimeOf(ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsDateTime)
  End
end;

procedure TfrmRequests.teRequestStartTimePropertiesChange(Sender: TObject);
begin
 If (ibdsMainRequest.Active) and
    (ibdsMainRequestREQUEST_TIMESTAMP.AsDateTime<>DateOf(ibdsMainRequestREQUEST_TIMESTAMP.AsDateTime)+teRequestStartTime.Time) then
  Begin
   If NOT (ibdsMainRequest.State in [dsInsert, dsEdit]) then
    ibdsMainRequest.Edit;
   ibdsMainRequestREQUEST_TIMESTAMP.AsDateTime := DateOf(ibdsMainRequestREQUEST_TIMESTAMP.AsDateTime)+teRequestStartTime.Time
  End
end;

procedure TfrmRequests.teRequestEndTimePropertiesChange(Sender: TObject);
begin
 If (ibdsMainRequest.Active) and
    (ibdsMainRequestREQUEST_END_TIMESTAMP.AsDateTime<>DateOf(ibdsMainRequestREQUEST_END_TIMESTAMP.AsDateTime)+teRequestEndTime.Time) then
  Begin
   If NOT (ibdsMainRequest.State in [dsInsert, dsEdit]) then
    ibdsMainRequest.Edit;
   ibdsMainRequestREQUEST_END_TIMESTAMP.AsDateTime := DateOf(ibdsMainRequestREQUEST_END_TIMESTAMP.AsDateTime)+teRequestEndTime.Time
  End
end;

procedure TfrmRequests.teRequestDoneTimePropertiesChange(Sender: TObject);
begin
 If (ibdsMainRequest.Active) and
    (ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsDateTime<>DateOf(ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsDateTime)+teRequestDoneTime.Time) then
  Begin
   If NOT (ibdsMainRequest.State in [dsInsert, dsEdit]) then
    ibdsMainRequest.Edit;
   ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsDateTime := DateOf(ibdsMainRequestREQUEST_DONE_TIMESTAMP.AsDateTime)+teRequestDoneTime.Time
  End
end;

procedure TfrmRequests.dsMainRequestStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('Request', True)
  else
   StteChange('Request', ibdsMainRequest.UpdatesPending or ibdsMainRequestBody.UpdatesPending or ibdsMainRequestBodySerials.UpdatesPending)
end;

procedure TfrmRequests.ibdsMainRequestsListAfterDelete(DataSet: TDataSet);
begin
 StteChange('RequestsList', True)
end;

procedure TfrmRequests.ibdsMainRequestsListAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,'RequestsList');
end;

procedure TfrmRequests.ibdsMainRequestAfterDelete(DataSet: TDataSet);
begin
 StteChange('Request', True)
end;

procedure TfrmRequests.grdRequestBodyEnter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := ((Sender as TcxGrid).FocusedView as TcxGridDBTableView).DataController.DataSource
end;

procedure TfrmRequests.Panel2Enter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := dsMainRequest
end;

procedure TfrmRequests.grdRequestBodyFocusedViewChanged(
  Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
begin
 dbmComments.DataBinding.DataSource := ((Sender as TcxGrid).FocusedView as TcxGridDBTableView).DataController.DataSource
end;

procedure TfrmRequests.ibdsMainRequestsListINVOICE_NUMBERGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
 Text := ibdsMainRequestsListINVOICE_NUMBER_PREFIX.AsString+ibdsMainRequestsListINVOICE_NUMBER.AsString+
         ibdsMainRequestsListINVOICE_NUMBER_SUFFIX.AsString
end;

procedure TfrmRequests.ibdsMainRequestBodySerialsNewRecord(
  DataSet: TDataSet);
begin
 If (frmMain.FindComponent('frmNaklOut')=nil) then
  Begin
   MessageDlg('Не открыта расходная накладная!',mtError,[mbOK],0);
   ibdsMainRequestBodySerials.Cancel
  End
end;

procedure TfrmRequests.ibdsMainRequestBodySerialsSERIAL_IDChange(
  Sender: TField);
begin
 ibdsMainRequestBody.Locate('ARTICUL_ID',ibdsSerials.Lookup('ID',ibdsMainRequestBodySerialsSERIAL_ID.AsString,'ARTICUL_ID'),[]);
 ibdsMainRequestBodySerialsREQUEST_BODY_ID.Value := ibdsMainRequestBodyID.Value;
 ibdsMainRequestBodySerialsPRIMARY_TOVAR_OUTCOME_BODY_ID.Value :=
       frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Lookup('ARTICUL_ID',ibdsSerials.Lookup('ID',ibdsMainRequestBodySerialsSERIAL_ID.AsString,'ARTICUL_ID'),'ID')
end;

procedure TfrmRequests.ibdsMainRequestBodySerialsUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
 var Cmt: string;
begin
 ibsAux.SQL.Clear;
 Case UpdateKind of
  ukInsert: ibsAux.SQL.Add('insert into SERIALS_BY_PRIMARY_OUTCOME_BODY (SERIAL_ID,PRIMARY_TOVAR_OUTCOME_BODY_ID) values ('+ibdsMainRequestBodySerialsSERIAL_ID.AsString+','+ibdsMainRequestBodySerialsPRIMARY_TOVAR_OUTCOME_BODY_ID.AsString+')');
  ukModify: ibsAux.SQL.Add('update SERIALS_BY_PRIMARY_OUTCOME_BODY set SERIAL_ID='+ibdsMainRequestBodySerialsSERIAL_ID.AsString+', PRIMARY_TOVAR_OUTCOME_BODY_ID='+ibdsMainRequestBodySerialsPRIMARY_TOVAR_OUTCOME_BODY_ID.AsString);
  ukDelete: ibsAux.SQL.Add('delete from SERIALS_BY_PRIMARY_OUTCOME_BODY where SERIAL_ID='+VarToStr(ibdsMainRequestBodySerialsSERIAL_ID.OldValue)+' and PRIMARY_TOVAR_OUTCOME_BODY_ID='+VarToStr(ibdsMainRequestBodySerialsPRIMARY_TOVAR_OUTCOME_BODY_ID.OldValue))
 end;
 ibsAux.ExecQuery;
 If (UpdateKind in [ukInsert,ukModify]) then
  Begin
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select COMMENTS from PRIMARY_TOVAR_OUTCOME_BODY where ID='+ibdsMainRequestBodySerialsPRIMARY_TOVAR_OUTCOME_BODY_ID.AsString);
   ibsAux.ExecQuery;
   Cmt := ibsAux.FieldByName('COMMENTS').AsString;
   ibsAux.Close;
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('update PRIMARY_TOVAR_OUTCOME_BODY set COMMENTS='#39+Cmt+' '+VarToStr(ibdsSerials.Lookup('ID',ibdsMainRequestBodySerialsSERIAL_ID.AsString,'STROKE_CODE'))+' в '+ibdsMainRequestNumberStr.AsString+' от '+FormatDateTime('dd.mm.yyyy hh:nn',ibdsMainRequestREQUEST_TIMESTAMP.Value)+';'+#39' where ID='+ibdsMainRequestBodySerialsPRIMARY_TOVAR_OUTCOME_BODY_ID.AsString);
   try
    ibsAux.ExecQuery
   except
   end 
  End;
 UpdateAction := uaApply
end;

procedure TfrmRequests.ibdsMainRequestBodySerialsAfterScroll(
  DataSet: TDataSet);
begin
 ibdsMainRequestBody.Locate('ID',ibdsMainRequestBodySerialsREQUEST_BODY_ID.Value,[])
end;

procedure TfrmRequests.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Request_ID := 0;
 inherited;
end;

end.
