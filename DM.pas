unit DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBDatabase, DBTables, IBServices, ImgList, IBSQL, FR_Desgn,
  IBCustomDataSet, XLSExport, FR_E_RTF, FR_E_CSV, FR_Class, FR_E_TXT,
  FR_DSet, FR_DBSet, IBEvents, ExtCtrls, dxBar, LbCipher, LbString,
  frFunction;

type
  TMyFunctionLibrary = class(TfrFunctionLibrary)
  public
    constructor Create; override;
    procedure DoFunction(FNo: Integer; p1, p2, p3: Variant;
      var val: Variant); override;
  end;

type
  TfrmDM = class(TDataModule)
    dbWhite: TIBDatabase;
    dbMain: TIBDatabase;
    dbGenerators: TIBDatabase;
    ImageList2: TImageList;
    trUser: TIBTransaction;
    ibsUser: TIBSQL;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    frDBDataSet2: TfrDBDataSet;
    frTextExport1: TfrTextExport;
    frCSVExport1: TfrCSVExport;
    frRTFExport1: TfrRTFExport;
    frXLSExport1: TfrXLSExport;
    trMain: TIBTransaction;
    ibsGen_ID: TIBSQL;
    ibsWhite: TIBSQL;
    ibdsReport: TIBDataSet;
    ibdsReportID: TIntegerField;
    ibdsReportBLACK: TIntegerField;
    ibdsReportREPORT_NAME: TIBStringField;
    ibdsReportREPORT: TBlobField;
    ibdsShow: TIBDataSet;
    ibdsShowID: TIntegerField;
    ibdsShowFORM_NAME: TIBStringField;
    ibdsShowREPORT_ID: TIntegerField;
    frDesigner1: TfrDesigner;
    opd: TSaveDialog;
    trReferences: TIBTransaction;
    ibdsArticuls: TIBDataSet;
    ibdsArticulsID: TLargeintField;
    ibdsArticulsARTICUL: TIBStringField;
    ibdsArticulsNAME: TIBStringField;
    ibdsArticulsUNITS: TIBStringField;
    ibdsArticulsNDS: TFloatField;
    dsArticuls: TDataSource;
    IBEvents: TIBEvents;
    tmEventBlinking: TTimer;
    frAddFunctionLibrary1: TfrAddFunctionLibrary;
    ibdsArticulsGUARANTEE_PERIOD: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure frDesigner1SaveReport(Report: TfrReport;
      var ReportName: String; SaveAs: Boolean; var Saved: Boolean);
    procedure ibdsReportUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsShowUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure opdTypeChange(Sender: TObject);
    procedure IBEventsEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tmEventBlinkingTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDM: TfrmDM;
  MyFunctionLibrary: TMyFunctionLibrary;
  
implementation

uses Misk, Invoice, Main;

{$R *.DFM}
                                                                             

procedure TfrmDM.DataModuleCreate(Sender: TObject);
var Key256 : TKey256;
    S : String;

     procedure CleanUpTree(ItemLinks: TdxBarItemLinks);
           var k : Integer;
     begin
      For k := Pred(ItemLinks.AvailableItemCount) downto 0  do
       If (Pos(';'+ItemLinks.BarManager.MainForm.Name+'.'+ItemLinks.AvailableItems[k].Item.Name+';',S)=0) then
        ItemLinks.Items[k].Item.Free
       else
        If (ItemLinks.Items[k].Item is TdxBarSubItem) then
         CleanUpTree((ItemLinks.Items[k].Item as TdxBarSubItem).ItemLinks)
     end;

begin
 GenerateLMDKey(Key256, SizeOf(Key256), '¬ЎлмyWІО=`бюЪ БєyX†f0“Ъвљ 845098yhfjb hJLUGLI,. ., **&*^#');
 dbWhite.Params.Clear;
 dbWhite.Params.AddStrings(DefParams);
 dbWhite.DatabaseName := RDLEncryptStringCBCEx(Path1, Key256, 32, False);
 dbGenerators.Params.Clear;
 dbGenerators.Params.AddStrings(DefParams);
 dbGenerators.DatabaseName := RDLEncryptStringCBCEx(Path2, Key256, 32, False);
 If (Black) then
  Begin
   dbMain.Params.Clear;
   dbMain.Params.AddStrings(DefParamsBlack);
   dbMain.DatabaseName := RDLEncryptStringCBCEx(Path3, Key256, 32, False);
   dbMain.Open;
   IBEvents.Database := dbMain;
   trUser.StartTransaction;
   ibsUser.SQL.Clear;
   ibsUser.SQL.Add('select U.PERSON_ID, U.SECURITY_LEVEL from USERS U where (U.USER_NAME='#39+Copy(dbMain.Params[0],11,Length(dbMain.Params[0])-10)+#39')');
   ibsUser.ExecQuery;
   PersonID := ibsUser.FieldByName('PERSON_ID').AsInteger;
   SecurityLevel := ibsUser.FieldByName('SECURITY_LEVEL').AsInteger;
   trUser.Commit
  End;
 dbWhite.Open;
 dbGenerators.Open;
 If NOT (Black) then
  Begin
   IBEvents.Database := dbWhite;
   trUser.DefaultDatabase := dbWhite;
   ibsUser.Database := dbWhite;
   trUser.StartTransaction;
   ibsUser.SQL.Clear;
   ibsUser.SQL.Add('select U.PERSON_ID, U.SECURITY_LEVEL from USERS U where (U.USER_NAME='#39+Copy(dbWhite.Params[0],11,Length(dbWhite.Params[0])-10)+#39')');
   ibsUser.ExecQuery;
   PersonID := ibsUser.FieldByName('PERSON_ID').AsInteger;
   SecurityLevel := ibsUser.FieldByName('SECURITY_LEVEL').AsInteger;
   trUser.Commit;
  End;
 With IBEvents do
  Begin
   UnRegisterEvents;
   Events.Add('ARTICULS');
   RegisterEvents
  End;
 trMain.DefaultDatabase := nil;
 If (Black) then
  trMain.AddDatabase(dbMain);
 trMain.AddDatabase(dbWhite);
 trMain.AddDatabase(dbGenerators);
 trReferences.DefaultDatabase := nil;
 If (Black) then
  Begin
   trReferences.AddDatabase(dbMain);
   ibdsArticuls.Database := dbMain
  End
 else
  Begin
   trReferences.AddDatabase(dbWhite);
   ibdsArticuls.Database := dbWhite
  End;
 trReferences.StartTransaction;
 ibdsArticuls.Open;
 ibdsArticuls.FetchAll;
 If (UserRole<>'ADMINS') and (PersonID<>0) then
  Begin
   ibsUser := TIBSQL.Create(Nil);
   ibsUser.Database := ibdsArticuls.Database;
   ibsUser.Transaction := trReferences;
   ibsUser.SQL.Clear;
   ibsUser.SQL.Add('select UV.OBJECT_NAME from USERS U, USER_VISIBLES UV where (UPPER(U.USER_NAME)=current_user) and (U.ID=UV.USER_ID)');
   ibsUser.ExecQuery;
   S := ';';
   While NOT (ibsUser.Eof) do
    Begin
     S := S+ibsUser.Fields[0].AsString+';';
     ibsUser.Next
    End;
   ibsUser.Close;
   ibsUser.Free;
   CleanUpTree(frmMain.dxBarManager.MainMenuBar.ItemLinks)
  End;
 frRegisterFunctionLibrary(TMyFunctionLibrary);
 MyFunctionLibrary := TMyFunctionLibrary.Create;
 frAddFunctionDesc(MyFunctionLibrary,'SUMPROPIS', 'Прочие', 'SUMPROPIS(<Число1>,<Строка>,<Число2>)/Возвращает <Число1> прописью используя <Строка> = <1Единица измерения|2Единицы измерения|5Единиц измерения> и <Число2> как род единицы измерения (1-муж, 2-жен)');
 LoadKeyboardLayout('00000419', KLF_ACTIVATE)
end;                                                                          

procedure TfrmDM.frDesigner1SaveReport(Report: TfrReport;
  var ReportName: String; SaveAs: Boolean; var Saved: Boolean);
 var S : String;
begin
 If (SaveAs) then
  Begin
   If (opd.Execute) then
    Begin
     S := ExtractFileExt(opd.FileName);
     If (S<>'.'+opd.DefaultExt) then
      Begin
       S := '.'+opd.DefaultExt;
       opd.FileName := ChangeFileExt(opd.FileName,S)
      End;
     If (S='.frf') then
      Report.SaveToFile(opd.FileName)
     else
      If (S='.frp') then
       Report.SavePreparedReport(opd.FileName)
      else
       If (S='.frt') then
        Report.SaveTemplate(opd.FileName,nil,nil)
    End
  End
 else
  Begin
   If NOT (ibdsReport.State in [dsInsert, dsEdit]) then
    ibdsReport.Edit;
   Report.SaveToBlobField(ibdsReportREPORT);
   try
    ibdsReport.ApplyUpdates;
    If (ibdsShow.Active) then
     ibdsShow.ApplyUpdates;
    trMain.CommitRetaining
   except
    trMain.RollbackRetaining;
    MessageDlg('Ошибка сохранения, последние изменения сохранены не были.', mtError, [mbOK],0)
   end;
   Saved := True
  End
end;

procedure TfrmDM.ibdsReportUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 ibsWhite.SQL.Clear;
 Case UpdateKind of
  ukInsert: ibsWhite.SQL.AddStrings(ibdsReport.InsertSQL);
  ukModify: ibsWhite.SQL.AddStrings(ibdsReport.ModifySQL);
  ukDelete: ibsWhite.SQL.AddStrings(ibdsReport.DeleteSQL)
 End;
 If (UpdateKind in [ukInsert, ukModify]) then
  Begin
   ibsWhite.ParamByName('REPORT_NAME').Value := ibdsReportREPORT_NAME.Value;
   ibsWhite.ParamByName('BLACK').Value := ibdsReportBLACK.Value;
   ibsWhite.ParamByName('REPORT').Value := ibdsReportREPORT.Value
  End;
 If (UpdateKind=ukInsert) then
  ibsWhite.ParamByName('ID').AsInteger := ibdsReportID.Value
 else
  ibsWhite.ParamByName('OLD_ID').Value := ibdsReportID.OldValue;
 ibsWhite.ExecQuery;
 UpdateAction := uaApply
end;

procedure TfrmDM.ibdsShowUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 ibsWhite.SQL.Clear;
 Case UpdateKind of
  ukInsert: ibsWhite.SQL.AddStrings(ibdsShow.InsertSQL);
  ukModify: ibsWhite.SQL.AddStrings(ibdsShow.ModifySQL);
  ukDelete: ibsWhite.SQL.AddStrings(ibdsShow.DeleteSQL)
 End;
 If (UpdateKind in [ukInsert, ukModify]) then
  Begin
   ibsWhite.ParamByName('FORM_NAME').Value := ibdsShowFORM_NAME.Value;
   ibsWhite.ParamByName('REPORT_ID').Value := ibdsShowREPORT_ID.Value
  End;
 If (UpdateKind=ukInsert) then
  ibsWhite.ParamByName('ID').AsInteger := ibdsShowID.Value
 else
  ibsWhite.ParamByName('OLD_ID').Value := ibdsShowID.OldValue;
 ibsWhite.ExecQuery;
 UpdateAction := uaApply
end;

procedure TfrmDM.opdTypeChange(Sender: TObject);
begin
 Case opd.FilterIndex of
  1 : opd.DefaultExt := 'frf';
  2 : opd.DefaultExt := 'frp';
  3 : opd.DefaultExt := 'frf'
 End
end;

procedure TfrmDM.IBEventsEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
var  tmpBtn : TdxBarButton;
  AItemLink : TdxBarItemLink;
begin
 If (frmMain.FindComponent('bbRefreash')=nil) then
  Begin
   tmpBtn := TdxBarButton.Create(frmMain);
   With tmpBtn do
    Begin
     Caption := 'Обновить справочники';
     Hint := 'Вам необходимо обновить справочники, нажмите для обновления.';
     ButtonStyle := bsChecked;
     PaintStyle := psCaption;
     OnClick := frmMain.BBRefreashClick;
     frmMain.dxBarManager.Bars[2].LockUpdate := True;
     AItemLink := frmMain.dxBarManager.Bars[2].ItemLinks.Add;
     AItemLink.Item := tmpBtn;
     AItemLink.Item.Name := 'bbRefreash';
     frmMain.dxBarManager.Bars[2].LockUpdate := False
    end;
   If (EventName='ARTICULS') then
    tmEventBlinking.Enabled := True;
  End
end;

procedure TfrmDM.DataModuleDestroy(Sender: TObject);
begin
 frUnRegisterFunctionLibrary(TMyFunctionLibrary);
 IBEvents.UnregisterEvents
end;

procedure TfrmDM.tmEventBlinkingTimer(Sender: TObject);
begin
 With (frmMain.FindComponent('bbRefreash') as TdxBarButton) do
  Down := Not Down
end;

constructor TMyFunctionLibrary.Create;
begin
 inherited Create;
 With List do
  Add('SUMPROPIS');
end;

procedure TMyFunctionLibrary.DoFunction(FNo: Integer; p1, p2, p3: Variant;
  var val: Variant);
 var cTxt,cTxt1,cTxt2,cTxt3 : String;
begin
 cTxt := frParser.Calc(p2);
 cTxt1 := Copy(cTxt,1,Pred(Pos('|',cTxt)));
 cTxt := Copy(cTxt,Succ(Pos('|',cTxt)),Length(cTxt));
 cTxt2 := Copy(cTxt,1,Pred(Pos('|',cTxt)));
 cTxt3 := Copy(cTxt,Succ(Pos('|',cTxt)),Length(cTxt));
 Val := ' ';
 Case FNo of
  0: Val := CurrencyToStr(frParser.Calc(p1), cTxt1,cTxt2,cTxt3, frParser.Calc(p3));
 end;
end;

end.
