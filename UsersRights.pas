unit UsersRights;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, wwdbdatetimepicker, Buttons, wwdblook, StdCtrls, Mask, wwdbedit,
  DBCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, wwDataInspector,
  fcdbtreeview, IBSQL, IBDatabase, Db, IBCustomDataSet, wwcheckbox,
  IBServices, fcTreeView, Menus, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, Variants,
  cxGridCustomView, cxGrid, RzTreeVw, cxContainer, cxEdit, cxTextEdit,
  cxMemo, cxDBEdit, RzPanel, RzSplit, cxGraphics, cxGridDBDataDefinitions,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBar;

type
  TfrmUsersRights = class(TfrmLike)
    ibdsMainUsersList: TIBDataSet;
    dsMainUsersList: TDataSource;
    ibsWhite: TIBSQL;
    ibdsMainUsersListID: TIntegerField;
    ibdsMainUsersListPERSON_ID: TLargeintField;
    ibdsMainUsersListUSER_NAME: TIBStringField;
    ibdsMainUsersListSECURITY_LEVEL: TIntegerField;
    ibdsPersons: TIBDataSet;
    ibdsPersonsID: TLargeintField;
    ibdsMainUsersListVALID: TIntegerField;
    ibdsRoles: TIBDataSet;
    ibdsRolesROLE_NAME: TIBStringField;
    ibsAux: TIBSQL;
    srvUsers: TIBSecurityService;
    ibdsMainUsersListPERSON_NAME: TIBStringField;
    ibdsPersonsPERSON_NAME: TIBStringField;
    ibdsMainUsersListFULL_USER_NAME: TIBStringField;
    ibdsMainUsersListUSER_ROLE: TIBStringField;
    ibdsMainUsersListB_USER_PASSWORD: TIBStringField;
    ibdsMainUsersListW_USER_PASSWORD: TIBStringField;
    ibdsMainUserRightsForInvoice: TIBDataSet;
    dsMainUserRightsForInvoice: TDataSource;
    ibdsMainUserRightsForInvoiceINVOICE_SETUP_ID: TLargeintField;
    ibdsMainUserRightsForInvoiceIN_OUT: TIntegerField;
    ibdsMainUserRightsForInvoiceNAME: TIBStringField;
    ibdsMainUserRightsForInvoiceSECURITY_LEVEL: TIntegerField;
    ibdsMainUserRightsForInvoiceBLACK: TIntegerField;
    ibdsMainUserRightsForInvoiceSEE_IN_LIST: TIntegerField;
    ibdsMainUserRightsForInvoiceCREATE_RIGHT: TIntegerField;
    ibdsMainUserRightsForInvoiceUPDATE_RIGHT: TIntegerField;
    ibdsMainUserRightsForInvoiceDELETE_RIGHT: TIntegerField;
    ibdsMainUserRightsForInvoiceCLOSE_RIGHT: TIntegerField;
    ibdsMainUserRightsForInvoiceWORKING_A: TIntegerField;
    ibdsMainUserRightsForInvoiceUSER_ID: TIntegerField;
    ibdsMainUserRightsForPrimary: TIBDataSet;
    dsMainUserRightsForPrimary: TDataSource;
    ibdsMainUserRightsForPrimaryUSER_ID: TIntegerField;
    ibdsMainUserRightsForPrimaryPRIMARY_SETUP_ID: TLargeintField;
    ibdsMainUserRightsForPrimaryIN_OUT: TIntegerField;
    ibdsMainUserRightsForPrimaryMOVEMENT_TYPE: TIntegerField;
    ibdsMainUserRightsForPrimaryNAME: TIBStringField;
    ibdsMainUserRightsForPrimarySECURITY_LEVEL: TIntegerField;
    ibdsMainUserRightsForPrimaryBLACK: TIntegerField;
    ibdsMainUserRightsForPrimarySEE_IN_LIST: TIntegerField;
    ibdsMainUserRightsForPrimaryCREATE_RIGHT: TIntegerField;
    ibdsMainUserRightsForPrimaryUPDATE_RIGHT: TIntegerField;
    ibdsMainUserRightsForPrimaryDELETE_RIGHT: TIntegerField;
    ibdsMainUserRightsForPrimaryCLOSE_RIGHT: TIntegerField;
    ibdsMainUserRightsForPrimaryWORKING_A: TIntegerField;
    ibdsMainUserRightsForInvoiceOWN_ONLY: TIntegerField;
    ibdsMainUserRightsForPrimaryOWN_ONLY: TIntegerField;
    PageControl1: TPageControl;
    tsUsers: TTabSheet;
    Panel1: TPanel;
    dbgUsers: TwwDBGrid;
    Panel2: TPanel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    dbeFullUserName: TwwDBEdit;
    dbeWhitePswd: TwwDBEdit;
    dbeBlackPswd: TwwDBEdit;
    lcRole: TwwDBLookupCombo;
    lcPersonName: TwwDBLookupCombo;
    Panel4: TPanel;
    sbCancelUsers: TSpeedButton;
    sbApplyUsers: TSpeedButton;
    sbDeleteUsers: TSpeedButton;
    sbAddUsers: TSpeedButton;
    sbLastUsers: TSpeedButton;
    sbNextUsers: TSpeedButton;
    sbPriorUsers: TSpeedButton;
    sbFirstUsers: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    tsUserRightsForInvoice: TTabSheet;
    tsUserRightsForPrimary: TTabSheet;
    dbgUserRightsForInvoice: TwwDBGrid;
    Panel3: TPanel;
    sbCancelUserRightsForInvoice: TSpeedButton;
    sbApplyUserRightsForInvoice: TSpeedButton;
    sbLastUserRightsForInvoice: TSpeedButton;
    sbNextUserRightsForInvoice: TSpeedButton;
    sbPriorUserRightsForInvoice: TSpeedButton;
    sbFirstUserRightsForInvoice: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Panel5: TPanel;
    sbCancelUserRightsForPrimary: TSpeedButton;
    sbApplyUserRightsForPrimary: TSpeedButton;
    sbLastUserRightsForPrimary: TSpeedButton;
    sbNextUserRightsForPrimary: TSpeedButton;
    sbPriorUserRightsForPrimary: TSpeedButton;
    sbFirstUserRightsForPrimary: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    tvInvoices: TfcTreeView;
    ibdsMainUserRightsForInvoiceUR_BLACK: TIntegerField;
    ibdsMainUserRightsForPrimaryUR_BLACK: TIntegerField;
    pmCheck: TPopupMenu;
    CheckAll: TMenuItem;
    UnCheckAll: TMenuItem;
    ibdsMainUserRightsForPrimaryUR_FAKE: TIntegerField;
    tsVarious: TTabSheet;
    dbcbGO: TwwCheckBox;
    Panel6: TPanel;
    sbCancelVarious: TSpeedButton;
    sbApplyVarious: TSpeedButton;
    SpeedButton8: TSpeedButton;
    pnlReasonTypes: TRzSizePanel;
    dbmComments: TcxDBMemo;
    trReasonTypes: TRzTreeView;
    dbgPrimary: TcxGrid;
    tvPrimary: TcxGridDBTableView;
    tvPrimaryNAME: TcxGridDBColumn;
    tvPrimarySEE_IN_LIST: TcxGridDBColumn;
    tvPrimaryOWN_ONLY: TcxGridDBColumn;
    tvPrimaryCREATE_RIGHT: TcxGridDBColumn;
    tvPrimaryUPDATE_RIGHT: TcxGridDBColumn;
    tvPrimaryDELETE_RIGHT: TcxGridDBColumn;
    glPrimary: TcxGridLevel;
    Splitter2: TSplitter;
    tvPrimaryCLOSE_RIGHT: TcxGridDBColumn;
    tvPrimaryUR_BLACK: TcxGridDBColumn;
    tvPrimaryUR_FAKE: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    RzSizePanel1: TRzSizePanel;
    trUserVisibles: TRzCheckTree;
    ibdsUserVisibles: TIBDataSet;
    ibdsUserVisiblesUSER_ID: TIntegerField;
    ibdsUserVisiblesOBJECT_NAME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure sbFirstUsersClick(Sender: TObject);
    procedure sbPriorUsersClick(Sender: TObject);
    procedure sbNextUsersClick(Sender: TObject);
    procedure sbLastUsersClick(Sender: TObject);
    procedure sbAddUsersClick(Sender: TObject);
    procedure sbDeleteUsersClick(Sender: TObject);
    procedure sbCancelUsersClick(Sender: TObject);
    procedure sbApplyUsersClick(Sender: TObject);
    procedure ibdsMainUsersListAfterScroll(DataSet: TDataSet);
    procedure dsMainUsersListStateChange(Sender: TObject);
    procedure ibdsMainUsersListNewRecord(DataSet: TDataSet);
    procedure ibdsMainUsersListUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure dbeWhitePswdKeyPress(Sender: TObject; var Key: Char);
    procedure ibdsMainUsersListAfterOpen(DataSet: TDataSet);
    procedure lcPersonNameCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainUserRightsForInvoiceNAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ibdsMainUserRightsForInvoiceBeforeClose(DataSet: TDataSet);
    procedure ibdsMainUserRightsForInvoiceUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainUserRightsForPrimaryNAMEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ibdsMainUserRightsForPrimaryUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainUserRightsForInvoiceSEE_IN_LISTChange(
      Sender: TField);
    procedure ibdsMainUserRightsForPrimarySEE_IN_LISTChange(
      Sender: TField);
    procedure tvInvoicesChange(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode);
    procedure dbgUserRightsForInvoiceCalcCellColors(Sender: TObject;
      Field: TField; State: TGridDrawState; Highlight: Boolean;
      AFont: TFont; ABrush: TBrush);
    procedure PageControl1Change(Sender: TObject);
    procedure dsMainUserRightsForInvoiceStateChange(Sender: TObject);
    procedure sbFirstUserRightsForInvoiceClick(Sender: TObject);
    procedure sbPriorUserRightsForInvoiceClick(Sender: TObject);
    procedure sbNextUserRightsForInvoiceClick(Sender: TObject);
    procedure sbLastUserRightsForInvoiceClick(Sender: TObject);
    procedure sbApplyUserRightsForInvoiceClick(Sender: TObject);
    procedure sbCancelUserRightsForInvoiceClick(Sender: TObject);
    procedure ibdsMainUserRightsForInvoiceAfterScroll(DataSet: TDataSet);
    procedure ibdsMainUserRightsForInvoiceWORKING_AChange(Sender: TField);
    procedure ibdsMainUserRightsForInvoiceOWN_ONLYChange(Sender: TField);
    procedure tvInvoicesDeletion(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode);
    procedure sbFirstUserRightsForPrimaryClick(Sender: TObject);
    procedure sbPriorUserRightsForPrimaryClick(Sender: TObject);
    procedure sbNextUserRightsForPrimaryClick(Sender: TObject);
    procedure sbLastUserRightsForPrimaryClick(Sender: TObject);
    procedure sbApplyUserRightsForPrimaryClick(Sender: TObject);
    procedure sbCancelUserRightsForPrimaryClick(Sender: TObject);
    procedure ibdsMainUserRightsForPrimaryBeforeClose(DataSet: TDataSet);
    procedure dsMainUserRightsForPrimaryStateChange(Sender: TObject);
    procedure ibdsMainUserRightsForPrimaryOWN_ONLYChange(Sender: TField);
    procedure ibdsMainUserRightsForPrimaryWORKING_AChange(Sender: TField);
    procedure CheckAllClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sbCancelVariousClick(Sender: TObject);
    procedure sbApplyVariousClick(Sender: TObject);
    procedure dbcbGOClick(Sender: TObject);
    procedure tvPrimaryCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure trReasonTypesChange(Sender: TObject; Node: TTreeNode);
    procedure trUserVisiblesDeletion(Sender: TObject; Node: TTreeNode);
    procedure trUserVisiblesStateChange(Sender: TObject; Node: TTreeNode;
      NewState: TRzCheckState);
    procedure ibdsUserVisiblesAfterPost(DataSet: TDataSet);
    procedure ibdsUserVisiblesUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
    procedure FillUserInfo;
    procedure GenerateTreeInvoices;
    procedure GenerateSelectUserRightsForInvoice;
    procedure GenerateSelectUserRightsForPrimary;
    procedure FillOutVariousRights;
    procedure GenerateTree(Node: TTreeNode; ItemLinks: TdxBarItemLinks);
  public
    { Public declarations }
  end;

type
  PItemRec = ^ItemRec;
  ItemRec = Record
   Id    : Integer;
   Parent: Integer;
   IType : Byte;
  end;

var
  frmUsersRights: TfrmUsersRights;

implementation

uses DM, Misk, Main;

{$R *.DFM}

type
  PItemTag = ^String;

var SysDBAPwd : String;
    Scroll : Boolean = False;

procedure TfrmUsersRights.FormCreate(Sender: TObject);
begin
 FName := 'Доступ пользователей';
 inherited;
 trMain.StartTransaction;
 trUserVisibles.Items.Clear;
 GenerateTree(Nil,frmMain.dxBarManager.MainMenuBar.ItemLinks);
 trUserVisibles.FullExpand;
 trUserVisibles.Selected := trUserVisibles.Items[0];
 ibdsPersons.Open;
 ibdsRoles.Open;
 ibdsUserVisibles.Open;
 ibdsMainUsersList.Open;
 PageControl1.ActivePageIndex := 0;
 GenerateTreeInvoices;
 GenerateReasonsTree(trReasonTypes);
 Caption := 'Настройки доступа пользователей = '+ibdsMainUsersListPERSON_NAME.AsString+' ='
end;

procedure TfrmUsersRights.SpeedButton10Click(Sender: TObject);
begin
 Close
end;

procedure TfrmUsersRights.sbFirstUsersClick(Sender: TObject);
begin
 ibdsMainUsersList.First
end;

procedure TfrmUsersRights.sbPriorUsersClick(Sender: TObject);
begin
 ibdsMainUsersList.Prior
end;

procedure TfrmUsersRights.sbNextUsersClick(Sender: TObject);
begin
 ibdsMainUsersList.Next
end;

procedure TfrmUsersRights.sbLastUsersClick(Sender: TObject);
begin
 ibdsMainUsersList.Last
end;

procedure TfrmUsersRights.sbAddUsersClick(Sender: TObject);
begin
 ibdsMainUsersList.Append
end;

procedure TfrmUsersRights.sbDeleteUsersClick(Sender: TObject);
begin
 ibdsMainUsersList.Delete;
 StteChange('Users', True)
end;

procedure TfrmUsersRights.sbCancelUsersClick(Sender: TObject);
begin
 ibdsMainUsersList.CancelUpdates;
 StteChange('Users', False)
end;

procedure TfrmUsersRights.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
     ActivePage: TTabSheet;
begin
 If (frmUsersRights<>nil) then
  Begin
   ActivePage := PageControl1.ActivePage;
   For k := 0 to Pred(frmUsersRights.ComponentCount) do
    Begin
     If (Components[k].Name='sbApply'+Suf) or
        (Components[k].Name='sbCancel'+Suf) then
      (Components[k] as TControl).Enabled := Enabled;
     If (Components[k].Name='sbDelete'+Suf) then
      (Components[k] as TControl).Enabled := (ibdsMainUsersList.RecordCount>0);
     If (Components[k] is TTabSheet) and
        (Components[k].Name<>'ts'+Suf) then
      (Components[k] as TTabSheet).TabVisible := NOT Enabled
    End;
   PageControl1.ActivePage := ActivePage
  End
end;

procedure TfrmUsersRights.sbApplyUsersClick(Sender: TObject);
 var ServerName : String;
     Protocol : TProtocol;
begin
 try
  If (SysDBAPwd='') then
   InputQuery('Введите пароль','Пароль администратора баз данных:',SysDBAPwd);
  GetServer(ServerName,Protocol);
  srvUsers.ServerName := ServerName;
  srvUsers.Protocol := Protocol;
  srvUsers.Params.Clear;
  srvUsers.Params.Add('user_name=SYSDBA');
  srvUsers.Params.Add('password='+SysDBAPwd);
  try
   srvUsers.Active := True;
  except
   SysDBAPwd := '';
   MessageDlg('Неверный пароль администратора баз данных! Изменения сохранены не будут!',mtError,[mbOK],0);
   srvUsers.Active := False;
   Exit
  end;
  srvUsers.Active := False;
  ibdsMainUsersList.ApplyUpdates;
  ibdsUserVisibles.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Users', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end
end;

procedure TfrmUsersRights.ibdsMainUsersListAfterScroll(DataSet: TDataSet);
 var k : Integer;
begin
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,'Users');
 Caption := 'Настройки доступа пользователей = '+ibdsMainUsersListPERSON_NAME.AsString+' =';
 Scroll := True;
 With trUserVisibles do
  Begin
   For k := 0 to Pred(Items.Count) do
    If ibdsUserVisibles.Locate('USER_ID;OBJECT_NAME',VarArrayOf([ibdsMainUsersListID.Value,PItemTag(Items[k].Data)^]),[]) and
       NOT(trUserVisibles.Items[k].HasChildren) then
     ItemState[k] := csChecked
    else
     ItemState[k] := csUnchecked
  End;
 Scroll := False
end;

procedure TfrmUsersRights.dsMainUsersListStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('Users', True)
  else
   StteChange('Users', (ibdsMainUsersList.UpdatesPending or
                        ibdsMainUserRightsForInvoice.UpdatesPending or
                        ibdsMainUserRightsForPrimary.UpdatesPending));
end;

procedure TfrmUsersRights.FillUserInfo;
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select U.FULL_USER_NAME, U.USER_ROLE from USERS U');
 ibsGen_ID.SQL.Add('where (U.ID='+ibdsMainUsersListID.AsString+')');
 ibsGen_ID.ExecQuery;
 ibdsMainUsersListFULL_USER_NAME.AsString := ibsGen_ID.FieldByName('FULL_USER_NAME').AsString;
 ibdsMainUsersListB_USER_PASSWORD.AsString := '********';
 ibdsMainUsersListW_USER_PASSWORD.AsString := '********';
 ibdsMainUsersListUSER_ROLE.AsString := ibsGen_ID.FieldByName('USER_ROLE').AsString;
 ibsGen_ID.Close
end;

procedure TfrmUsersRights.ibdsMainUsersListNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_USERS_ID,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainUsersListID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInteger;
 ibsGen_ID.Close;
 ibdsMainUsersListSECURITY_LEVEL.Value := 1;
 ibdsMainUsersListValid.Value := 1;
 ibdsMainUsersListFULL_USER_NAME.Value := '';
 ibdsMainUsersListW_USER_PASSWORD.Value := '';
 ibdsMainUsersListB_USER_PASSWORD.Value := '';
 ibdsMainUsersListUSER_ROLE.Value := ''
end;

procedure TfrmUsersRights.ibdsMainUsersListUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
 var OldFullUserName, OldRole, OldUserNameWhite, OldUserNameBlack, UserNameWhite, UserNameBlack : String;
begin
 If (Black) then
  UserNameBlack := GetName(True, ibdsMainUsersListID.AsString+ibdsMainUsersListFULL_USER_NAME.AsString,31);
 UserNameWhite := GetName(False, ibdsMainUsersListID.AsString+ibdsMainUsersListFULL_USER_NAME.AsString,31);
 Case UpdateKind of
  ukInsert: Begin
             ibdsMainUsersList.Edit;
             ibdsMainUsersListUSER_NAME.Value := UserNameBlack;
             ibsWhite.SQL.Clear;
             ibsWhite.SQL.AddStrings(ibdsMainUsersList.InsertSQL);
             ibsWhite.GenerateParamNames := True;
             ibsWhite.ParamByName('ID').Value := ibdsMainUsersListID.asVariant;
             ibsWhite.ParamByName('PERSON_ID').AsInt64 := ibdsMainUsersListPERSON_ID.AsLargeInt;
             ibsWhite.ParamByName('USER_NAME').Value := UserNameWhite;
             ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsMainUsersListSECURITY_LEVEL.AsVariant;
             ibsWhite.ParamByName('VALID').Value := ibdsMainUsersListVALID.AsVariant;
             ibsWhite.ExecQuery;
             ibsWhite.Close;
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('insert into USERS (ID, FULL_USER_NAME, FULL_USER_PASSWORD,');
             ibsGen_ID.SQL.Add('USER_NAME, USER_PASSWORD, USER_ROLE, VALID) values');
             ibsGen_ID.SQL.Add('(:ID, :FULL_USER_NAME, :FULL_USER_PASSWORD,');
             ibsGen_ID.SQL.Add(':USER_NAME, :USER_PASSWORD, :USER_ROLE, :VALID)');
             ibsGen_ID.GenerateParamNames := True;
             ibsGen_ID.ParamByName('ID').Value := ibdsMainUsersListID.asVariant;
             ibsGen_ID.ParamByName('FULL_USER_NAME').Value := ibdsMainUsersListFULL_USER_NAME.AsString;
             ibsGen_ID.ParamByName('FULL_USER_PASSWORD').Value := GetName(True,'psw'+ibdsMainUsersListB_USER_PASSWORD.AsString,20);
             ibsGen_ID.ParamByName('USER_NAME').Value := UserNameBlack;
             ibsGen_ID.ParamByName('USER_PASSWORD').Value := GetName(True,ibdsMainUsersListB_USER_PASSWORD.AsString,8);
             ibsGen_ID.ParamByName('USER_ROLE').Value := ibdsMainUsersListUSER_ROLE.AsString;
             ibsGen_ID.ParamByName('VALID').Value := ibdsMainUsersListVALID.AsString;
             ibsGen_ID.ExecQuery;
             ibsGen_ID.Close;                                                         
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('insert into USERS (FULL_USER_NAME, FULL_USER_PASSWORD,');
             ibsGen_ID.SQL.Add('USER_NAME, USER_PASSWORD, USER_ROLE, VALID) values');
             ibsGen_ID.SQL.Add('(:FULL_USER_NAME, :FULL_USER_PASSWORD,');
             ibsGen_ID.SQL.Add(':USER_NAME, :USER_PASSWORD, :USER_ROLE, :VALID)');
             ibsGen_ID.GenerateParamNames := True;
             ibsGen_ID.ParamByName('FULL_USER_NAME').Value := ibdsMainUsersListFULL_USER_NAME.AsString;
             ibsGen_ID.ParamByName('FULL_USER_PASSWORD').Value := GetName(False,'psw'+ibdsMainUsersListW_USER_PASSWORD.AsString,20);
             ibsGen_ID.ParamByName('USER_NAME').Value := UserNameWhite;
             ibsGen_ID.ParamByName('USER_PASSWORD').Value := GetName(False,ibdsMainUsersListW_USER_PASSWORD.AsString,8);
             ibsGen_ID.ParamByName('USER_ROLE').Value := ibdsMainUsersListUSER_ROLE.AsString;
             ibsGen_ID.ParamByName('VALID').Value := ibdsMainUsersListVALID.AsString;
             ibsGen_ID.ExecQuery;
             ibsGen_ID.Close;
             ibsAux.SQL.Clear;
             ibsAux.SQL.Add('grant '+ibdsMainUsersListUSER_ROLE.AsString+' to "'+UserNameBlack+'"');
             ibsAux.ExecQuery;
             ibsWhite.SQL.Clear;
             ibsWhite.SQL.Add('grant '+ibdsMainUsersListUSER_ROLE.AsString+' to "'+UserNameBlack+'"');
             ibsWhite.ExecQuery;
             ibsWhite.SQL.Clear;
             ibsWhite.SQL.Add('grant '+ibdsMainUsersListUSER_ROLE.AsString+' to "'+UserNameWhite+'"');
             ibsWhite.ExecQuery;
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('grant '+ibdsMainUsersListUSER_ROLE.AsString+' to "'+UserNameBlack+'"');
             ibsGen_ID.ExecQuery;
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('grant '+ibdsMainUsersListUSER_ROLE.AsString+' to "'+UserNameWhite+'"');
             ibsGen_ID.ExecQuery;
             UpdateAction := uaApply;
             srvUsers.SecurityAction := ActionAddUser;
             srvUsers.UserName := UserNameBlack;
             srvUsers.Password := GetName(True,GetName(True,ibdsMainUsersListB_USER_PASSWORD.AsString,8),8);
             srvUsers.Active := True;
             srvUsers.AddUser;
             srvUsers.Active := False;
             srvUsers.UserName := UserNameWhite;
             srvUsers.Password := GetName(False,GetName(False,ibdsMainUsersListW_USER_PASSWORD.AsString,8),8);
             srvUsers.Active := True;
             srvUsers.AddUser;
             srvUsers.Active := False
            End;
  ukModify: Begin
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('select U.FULL_USER_NAME, U.USER_ROLE from USERS U where (U.ID='+ibdsMainUsersListID.AsString+')');
             ibsGen_ID.ExecQuery;
             OldFullUserName := ibsGen_ID.FieldByName('FULL_USER_NAME').AsString;
             If (Black) then
              OldUserNameBlack := GetName(True, ibdsMainUsersListID.AsString+OldFullUserName,31);
             OldUserNameWhite := GetName(False, ibdsMainUsersListID.AsString+OldFullUserName,31);
             OldRole := ibsGen_ID.FieldByName('USER_ROLE').AsString;
             ibsGen_ID.Close;
             ibdsMainUsersList.Edit;
             ibdsMainUsersListUSER_NAME.Value := UserNameBlack;
             ibsWhite.SQL.Clear;
             ibsWhite.SQL.AddStrings(ibdsMainUsersList.ModifySQL);
             ibsWhite.GenerateParamNames := True;
             ibsWhite.ParamByName('OLD_ID').Value := ibdsMainUsersListID.asVariant;
             ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsMainUsersListSECURITY_LEVEL.AsVariant;
             ibsWhite.ParamByName('VALID').Value := ibdsMainUsersListVALID.AsVariant;
             ibsWhite.ExecQuery;
             ibsWhite.Close;
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('update USERS  set FULL_USER_NAME = :FULL_USER_NAME,');
             If (ibdsMainUsersListB_USER_PASSWORD.AsString<>'********') then
              Begin
               ibsGen_ID.SQL.Add('FULL_USER_PASSWORD = :FULL_USER_PASSWORD,');
               ibsGen_ID.SQL.Add('USER_PASSWORD = :USER_PASSWORD,')
              End; 
             ibsGen_ID.SQL.Add('USER_ROLE = :USER_ROLE, VALID = :VALID');
             ibsGen_ID.SQL.Add('where (ID = :ID)');
             ibsGen_ID.GenerateParamNames := True;
             ibsGen_ID.ParamByName('ID').Value := ibdsMainUsersListID.asVariant;
             ibsGen_ID.ParamByName('FULL_USER_NAME').Value := ibdsMainUsersListFULL_USER_NAME.AsString;
             If (ibdsMainUsersListB_USER_PASSWORD.AsString<>'********') then
              Begin
               ibsGen_ID.ParamByName('FULL_USER_PASSWORD').Value := GetName(True,'psw'+ibdsMainUsersListB_USER_PASSWORD.AsString,20);
               ibsGen_ID.ParamByName('USER_PASSWORD').Value := GetName(True,ibdsMainUsersListB_USER_PASSWORD.AsString,8)
              End;
             ibsGen_ID.ParamByName('USER_ROLE').Value := ibdsMainUsersListUSER_ROLE.AsString;
             ibsGen_ID.ParamByName('VALID').Value := ibdsMainUsersListVALID.AsString;
             ibsGen_ID.ExecQuery;
             ibsGen_ID.Close;
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('update USERS  set FULL_USER_NAME = :FULL_USER_NAME,');
             If (ibdsMainUsersListW_USER_PASSWORD.AsString<>'********') then
              Begin
               ibsGen_ID.SQL.Add('FULL_USER_PASSWORD = :FULL_USER_PASSWORD,');
               ibsGen_ID.SQL.Add('USER_PASSWORD = :USER_PASSWORD,')
              End; 
             ibsGen_ID.SQL.Add('USER_ROLE = :USER_ROLE, VALID = :VALID');
             ibsGen_ID.SQL.Add('where (ID!=:ID) and (FULL_USER_NAME = :OLD_FULL_USER_NAME)');
             ibsGen_ID.GenerateParamNames := True;
             ibsGen_ID.ParamByName('ID').Value := ibdsMainUsersListID.asVariant;
             ibsGen_ID.ParamByName('FULL_USER_NAME').Value := ibdsMainUsersListFULL_USER_NAME.AsString;
             ibsGen_ID.ParamByName('OLD_FULL_USER_NAME').Value := OldFullUserName;
             If (ibdsMainUsersListW_USER_PASSWORD.AsString<>'********') then
              Begin
               ibsGen_ID.ParamByName('FULL_USER_PASSWORD').Value := GetName(False,'psw'+ibdsMainUsersListW_USER_PASSWORD.AsString,20);
               ibsGen_ID.ParamByName('USER_PASSWORD').Value := GetName(False,ibdsMainUsersListW_USER_PASSWORD.AsString,8)
              End; 
             ibsGen_ID.ParamByName('USER_ROLE').Value := ibdsMainUsersListUSER_ROLE.AsString;
             ibsGen_ID.ParamByName('VALID').Value := ibdsMainUsersListVALID.AsString;
             ibsGen_ID.ExecQuery;
             ibsGen_ID.Close;
             If (OldRole<>ibdsMainUsersListUSER_ROLE.AsString) then
              Begin
               ibsAux.SQL.Clear;
               ibsAux.SQL.Add('revoke '+OldRole+' from "'+OldUserNameBlack+'"');
               ibsAux.ExecQuery;
               ibsWhite.SQL.Clear;
               ibsWhite.SQL.Add('revoke '+OldRole+' from "'+OldUserNameBlack+'"');
               ibsWhite.ExecQuery;
               ibsWhite.SQL.Clear;
               ibsWhite.SQL.Add('revoke '+OldRole+' from "'+OldUserNameWhite+'"');
               ibsWhite.ExecQuery;
               ibsGen_ID.SQL.Clear;
               ibsGen_ID.SQL.Add('revoke '+OldRole+' from "'+OldUserNameBlack+'"');
               ibsGen_ID.ExecQuery;
               ibsGen_ID.SQL.Clear;
               ibsGen_ID.SQL.Add('revoke '+OldRole+' from "'+OldUserNameWhite+'"');
               ibsGen_ID.ExecQuery;
               ibsAux.SQL.Clear;
               ibsAux.SQL.Add('grant '+ibdsMainUsersListUSER_ROLE.AsString+' to "'+OldUserNameBlack+'"');
               ibsAux.ExecQuery;
               ibsWhite.SQL.Clear;
               ibsWhite.SQL.Add('grant '+ibdsMainUsersListUSER_ROLE.AsString+' to "'+OldUserNameBlack+'"');
               ibsWhite.ExecQuery;
               ibsWhite.SQL.Clear;
               ibsWhite.SQL.Add('grant '+ibdsMainUsersListUSER_ROLE.AsString+' to "'+OldUserNameWhite+'"');
               ibsWhite.ExecQuery;
               ibsGen_ID.SQL.Clear;
               ibsGen_ID.SQL.Add('grant '+ibdsMainUsersListUSER_ROLE.AsString+' to "'+OldUserNameBlack+'"');
               ibsGen_ID.ExecQuery;
               ibsGen_ID.SQL.Clear;
               ibsGen_ID.SQL.Add('grant '+ibdsMainUsersListUSER_ROLE.AsString+' to "'+OldUserNameWhite+'"');
               ibsGen_ID.ExecQuery
              End;
             UpdateAction := uaApply;
             If (ibdsMainUsersListB_USER_PASSWORD.AsString<>'********') then
              Begin
               ibsAux.SQL.Clear;
               ibsAux.SQL.Add('select U.USER_NAME from USERS U where (U.ID='+ibdsMainUsersListID.AsString+')');
               ibsAux.ExecQuery;
               If (ibsAux.RecordCount>0) then
                Begin
                 srvUsers.SecurityAction := ActionModifyUser;
                 srvUsers.UserName := ibsAux.FieldByName('USER_NAME').AsString;
                 srvUsers.Password := GetName(True,GetName(True,ibdsMainUsersListB_USER_PASSWORD.AsString,8),8);
                 srvUsers.Active := True;
                 srvUsers.ModifyUser;
                 srvUsers.Active := False
                End;
               ibsAux.Close
              End;
             If (ibdsMainUsersListW_USER_PASSWORD.AsString<>'********') then
              Begin
               ibsWhite.SQL.Clear;
               ibsWhite.SQL.Add('select U.USER_NAME from USERS U where (U.ID='+ibdsMainUsersListID.AsString+')');
               ibsWhite.ExecQuery;
               If (ibsWhite.RecordCount>0) then
                Begin
                 srvUsers.SecurityAction := ActionModifyUser;
                 srvUsers.UserName := ibsWhite.FieldByName('USER_NAME').AsString;
                 srvUsers.Password := GetName(False,GetName(False,ibdsMainUsersListW_USER_PASSWORD.AsString,8),8);
                 srvUsers.Active := True;
                 srvUsers.ModifyUser;
                 srvUsers.Active := False
                End;
              ibsWhite.Close
             End
            End;
  ukDelete: Begin
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('select U.FULL_USER_NAME, U.USER_ROLE from USERS U where (U.ID='+ibdsMainUsersListID.AsString+')');
             ibsGen_ID.ExecQuery;
             OldFullUserName := ibsGen_ID.FieldByName('FULL_USER_NAME').AsString;
             OldRole := ibsGen_ID.FieldByName('USER_ROLE').AsString;
             ibsGen_ID.Close;
             ibsWhite.SQL.Clear;
             ibsWhite.SQL.AddStrings(ibdsMainUsersList.DeleteSQL);
             ibsWhite.GenerateParamNames := True;
             ibsWhite.ParamByName('OLD_ID').Value := ibdsMainUsersListID.AsInteger;
             ibsWhite.ExecQuery;
             ibsWhite.Close;
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('delete from USERS');
             ibsGen_ID.SQL.Add('where (FULL_USER_NAME = :OLD_FULL_USER_NAME)');
             ibsGen_ID.GenerateParamNames := True;
             ibsGen_ID.ParamByName('OLD_FULL_USER_NAME').Value := OldFullUserName;
             ibsGen_ID.ExecQuery;
             ibsGen_ID.Close;
             ibsAux.SQL.Clear;
             If (Black) then
              OldUserNameBlack := GetName(True, ibdsMainUsersListID.AsString+OldFullUserName,31);
             OldUserNameWhite := GetName(False, ibdsMainUsersListID.AsString+OldFullUserName,31);
             ibsAux.SQL.Add('revoke '+OldRole+' from "'+OldUserNameBlack+'"');
             ibsAux.ExecQuery;
             ibsWhite.SQL.Clear;
             ibsWhite.SQL.Add('revoke '+OldRole+' from "'+OldUserNameBlack+'"');
             ibsWhite.ExecQuery;
             ibsWhite.SQL.Clear;
             ibsWhite.SQL.Add('revoke '+OldRole+' from "'+OldUserNameWhite+'"');
             ibsWhite.ExecQuery;
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('revoke '+OldRole+' from "'+OldUserNameBlack+'"');
             ibsGen_ID.ExecQuery;
             ibsGen_ID.SQL.Clear;
             ibsGen_ID.SQL.Add('revoke '+OldRole+' from "'+OldUserNameWhite+'"');
             ibsGen_ID.ExecQuery;
             UpdateAction := uaApply;
             srvUsers.SecurityAction := ActionDeleteUser;
             srvUsers.UserName := UserNameBlack;
             srvUsers.Active := True;
             srvUsers.DeleteUser;
             srvUsers.Active := False;
             srvUsers.UserName := UserNameWhite;
             srvUsers.Active := True;
             srvUsers.DeleteUser;
             srvUsers.Active := False;
            End;
 end;
end;

procedure TfrmUsersRights.dbeWhitePswdKeyPress(Sender: TObject;
  var Key: Char);
begin
 StteChange('Users', True)
end;

procedure TfrmUsersRights.ibdsMainUsersListAfterOpen(DataSet: TDataSet);
begin
 ibdsMainUsersList.DisableControls;
 While NOT (ibdsMainUsersList.Eof) do
  Begin
   ibdsMainUsersList.Edit;
   FillUserInfo;
   ibdsMainUsersList.Next
  End;
 ibdsMainUsersList.First;
 ibdsMainUsersList.EnableControls
end;

procedure TfrmUsersRights.lcPersonNameCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 if (modified) then
  Begin
   ibdsMainUsersListPERSON_ID.Value := ibdsPersonsID.AsLargeInt;
   ibdsMainUsersListPERSON_NAME.Value := ibdsPersonsPERSON_NAME.AsString;
   lcPersonName.Text := ibdsPersonsPERSON_NAME.AsString
  End
end;

procedure TfrmUsersRights.ibdsMainUserRightsForInvoiceNAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
 var S : String;
begin
 If NOT (ibdsMainUserRightsForInvoiceNAME.IsNull) then
  Begin
   S := ibdsMainUserRightsForInvoiceNAME.AsString;
   Case ibdsMainUserRightsForInvoiceIN_OUT.AsInteger of
    1 : Text := 'Расход/';
    2 : Text := 'Приход/';
    3 : Text := 'Внутреннее/'
   End;
   AnsiLCase(S,2,Length(S)-1);
   Text := Text+S+'/Доступ '+ibdsMainUserRightsForInvoiceSECURITY_LEVEL.AsString;
   If (Black) then
    Case ibdsMainUserRightsForInvoiceBLACK.AsInteger of
     0 : Text := Text+'/ О';
     1 : Text := Text+'/ H/О'
    End
  End
end;

procedure TfrmUsersRights.ibdsMainUserRightsForInvoiceBeforeClose(
  DataSet: TDataSet);
begin
 If ((DataSet as TIBDataSet).UpdatesPending) then
  Case MessageDlg('Имеются несохраненные изменения. Сохранить?', mtConfirmation, [mbYes,mbNo],0) of
   mrYes: sbApplyUserRightsForInvoice.Click;
   mrNo: sbCancelUserRightsForInvoice.Click
  End
end;

procedure TfrmUsersRights.ibdsMainUserRightsForInvoiceUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 ibsAux.SQL.Clear;
 ibsWhite.SQL.Clear;
 If (ibdsMainUserRightsForInvoiceSEE_IN_LIST.AsInteger=1) then
  If (ibdsMainUserRightsForInvoiceUSER_ID.IsNull) then
   Begin
    ibsAux.SQL.Add('insert into USER_RIGHTS_FOR_INVOICE (USER_ID, INVOICE_SETUP_ID, SEE_IN_LIST, OWN_ONLY,');
    ibsAux.SQL.Add('CREATE_RIGHT, UPDATE_RIGHT, DELETE_RIGHT, CLOSE_RIGHT, BLACK, WORKING_A) values');
    ibsAux.SQL.Add('(:USER_ID, :INVOICE_SETUP_ID, :SEE_IN_LIST, :OWN_ONLY, :CREATE_RIGHT, :UPDATE_RIGHT,');
    ibsAux.SQL.Add(':DELETE_RIGHT, :CLOSE_RIGHT, :BLACK, :WORKING_A)');
    ibsAux.GenerateParamNames := True;
    ibsAux.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
    ibsAux.ParamByName('INVOICE_SETUP_ID').AsInt64 := ibdsMainUserRightsForInvoiceINVOICE_SETUP_ID.AsLargeInt;
    ibsAux.ParamByName('SEE_IN_LIST').AsInteger := ibdsMainUserRightsForInvoiceSEE_IN_LIST.AsInteger;
    ibsAux.ParamByName('OWN_ONLY').AsInteger := ibdsMainUserRightsForInvoiceOWN_ONLY.AsInteger;
    ibsAux.ParamByName('CREATE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceCREATE_RIGHT.AsInteger;
    ibsAux.ParamByName('UPDATE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceUPDATE_RIGHT.AsInteger;
    ibsAux.ParamByName('DELETE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceDELETE_RIGHT.AsInteger;
    ibsAux.ParamByName('CLOSE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceCLOSE_RIGHT.AsInteger;
    ibsAux.ParamByName('BLACK').AsInteger := ibdsMainUserRightsForInvoiceUR_BLACK.AsInteger;
    ibsAux.ParamByName('WORKING_A').AsInteger := ibdsMainUserRightsForInvoiceWORKING_A.AsInteger;
    ibsAux.ExecQuery;
    If (ibdsMainUserRightsForInvoiceUR_BLACK.AsInteger=0) then
     Begin
      ibsWhite.SQL.Add('insert into USER_RIGHTS_FOR_INVOICE (USER_ID, INVOICE_SETUP_ID, SEE_IN_LIST, OWN_ONLY,');
      ibsWhite.SQL.Add('CREATE_RIGHT, UPDATE_RIGHT, DELETE_RIGHT, CLOSE_RIGHT) values');
      ibsWhite.SQL.Add('(:USER_ID, :INVOICE_SETUP_ID, :SEE_IN_LIST, :OWN_ONLY, :CREATE_RIGHT, :UPDATE_RIGHT,');
      ibsWhite.SQL.Add(':DELETE_RIGHT, :CLOSE_RIGHT)');
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
      ibsWhite.ParamByName('INVOICE_SETUP_ID').AsInt64 := ibdsMainUserRightsForInvoiceINVOICE_SETUP_ID.AsLargeInt;
      ibsWhite.ParamByName('SEE_IN_LIST').AsInteger := ibdsMainUserRightsForInvoiceSEE_IN_LIST.AsInteger;
      ibsWhite.ParamByName('OWN_ONLY').AsInteger := ibdsMainUserRightsForInvoiceOWN_ONLY.AsInteger;
      ibsWhite.ParamByName('CREATE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceCREATE_RIGHT.AsInteger;
      ibsWhite.ParamByName('UPDATE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceUPDATE_RIGHT.AsInteger;
      ibsWhite.ParamByName('DELETE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceDELETE_RIGHT.AsInteger;
      ibsWhite.ParamByName('CLOSE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceCLOSE_RIGHT.AsInteger;
      ibsWhite.ExecQuery
     End
   End
  else
   Begin
    ibsAux.SQL.Add('update USER_RIGHTS_FOR_INVOICE set');
    ibsAux.SQL.Add('OWN_ONLY = :OWN_ONLY, CREATE_RIGHT = :CREATE_RIGHT, UPDATE_RIGHT = :UPDATE_RIGHT,');
    ibsAux.SQL.Add('DELETE_RIGHT = :DELETE_RIGHT, CLOSE_RIGHT = :CLOSE_RIGHT,');
    ibsAux.SQL.Add('WORKING_A = :WORKING_A');
    ibsAux.SQL.Add('where (USER_ID=:USER_ID) and (INVOICE_SETUP_ID=:INVOICE_SETUP_ID) and (BLACK=:BLACK)');
    ibsAux.GenerateParamNames := True;
    ibsAux.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
    ibsAux.ParamByName('INVOICE_SETUP_ID').AsInt64 := ibdsMainUserRightsForInvoiceINVOICE_SETUP_ID.AsLargeInt;
    ibsAux.ParamByName('OWN_ONLY').AsInteger := ibdsMainUserRightsForInvoiceOWN_ONLY.AsInteger;
    ibsAux.ParamByName('CREATE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceCREATE_RIGHT.AsInteger;
    ibsAux.ParamByName('UPDATE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceUPDATE_RIGHT.AsInteger;
    ibsAux.ParamByName('DELETE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceDELETE_RIGHT.AsInteger;
    ibsAux.ParamByName('CLOSE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceCLOSE_RIGHT.AsInteger;
    ibsAux.ParamByName('BLACK').AsInteger := ibdsMainUserRightsForInvoiceUR_BLACK.AsInteger;
    ibsAux.ParamByName('WORKING_A').AsInteger := ibdsMainUserRightsForInvoiceWORKING_A.AsInteger;
    ibsAux.ExecQuery;
    If (ibdsMainUserRightsForInvoiceUR_BLACK.AsInteger=0) then
     Begin
      ibsWhite.SQL.Add('update USER_RIGHTS_FOR_INVOICE set');
      ibsWhite.SQL.Add('OWN_ONLY = :OWN_ONLY, CREATE_RIGHT = :CREATE_RIGHT, UPDATE_RIGHT = :UPDATE_RIGHT,');
      ibsWhite.SQL.Add('DELETE_RIGHT = :DELETE_RIGHT, CLOSE_RIGHT = :CLOSE_RIGHT');
      ibsWhite.SQL.Add('where (USER_ID=:USER_ID) and (INVOICE_SETUP_ID=:INVOICE_SETUP_ID)');
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
      ibsWhite.ParamByName('INVOICE_SETUP_ID').AsInt64 := ibdsMainUserRightsForInvoiceINVOICE_SETUP_ID.AsLargeInt;
      ibsWhite.ParamByName('OWN_ONLY').AsInteger := ibdsMainUserRightsForInvoiceOWN_ONLY.AsInteger;
      ibsWhite.ParamByName('CREATE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceCREATE_RIGHT.AsInteger;
      ibsWhite.ParamByName('UPDATE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceUPDATE_RIGHT.AsInteger;
      ibsWhite.ParamByName('DELETE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceDELETE_RIGHT.AsInteger;
      ibsWhite.ParamByName('CLOSE_RIGHT').AsInteger := ibdsMainUserRightsForInvoiceCLOSE_RIGHT.AsInteger;
      ibsWhite.ExecQuery
     End
   End
  else
   If NOT(ibdsMainUserRightsForInvoiceUSER_ID.IsNull) then
    Begin
     ibsAux.SQL.Add('delete from USER_RIGHTS_FOR_INVOICE');
     ibsAux.SQL.Add('where (USER_ID=:USER_ID) and (INVOICE_SETUP_ID=:INVOICE_SETUP_ID) and (BLACK=:BLACK)');
     ibsAux.GenerateParamNames := True;
     ibsAux.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
     ibsAux.ParamByName('INVOICE_SETUP_ID').AsInt64 := ibdsMainUserRightsForInvoiceINVOICE_SETUP_ID.AsLargeInt;
     ibsAux.ParamByName('BLACK').AsInteger := ibdsMainUserRightsForInvoiceUR_BLACK.AsInteger;
     ibsAux.ExecQuery;
     If (ibdsMainUserRightsForInvoiceUR_BLACK.AsInteger=0) then
      Begin
       ibsWhite.SQL.Add('delete from USER_RIGHTS_FOR_INVOICE');
       ibsWhite.SQL.Add('where (USER_ID=:USER_ID) and (INVOICE_SETUP_ID=:INVOICE_SETUP_ID)');
       ibsWhite.GenerateParamNames := True;
       ibsWhite.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
       ibsWhite.ParamByName('INVOICE_SETUP_ID').AsInt64 := ibdsMainUserRightsForInvoiceINVOICE_SETUP_ID.AsLargeInt;
       ibsWhite.ExecQuery
      End;
    End;
 UpdateAction := uaApplied
end;

procedure TfrmUsersRights.ibdsMainUserRightsForPrimaryNAMEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
 var S : String;
begin
 If (ibdsMainUserRightsForPrimaryNAME.IsNull) then
  Exit;
 Case ibdsMainUserRightsForPrimaryIN_OUT.AsInteger of
  1 : Text := 'Расход/';
  2 : Text := 'Приход/';
  3 : Text := 'Внутреннее/'
 End;
 Case ibdsMainUserRightsForPrimaryMOVEMENT_TYPE.AsInteger of
  0 : Text := Text+'Обычный/';
  1 : Text := Text+'Наличные деньги/';
  2 : Text := Text+'Безналичные деньги/';
  3 : Text := Text+'Реализация/';
  4 : Text := Text+'Бартер/';
  5 : Text := Text+'Переброс/';
  6 : Text := Text+'Возврат/'
 End;
 S := ibdsMainUserRightsForPrimaryNAME.AsString;
 AnsiLCase(S,2,Length(S)-1);
 Text := Text+S+'/Доступ '+ibdsMainUserRightsForPrimarySECURITY_LEVEL.AsString;
 If (Black) then
  Case ibdsMainUserRightsForPrimaryBLACK.AsInteger of
   0 : Text := Text+'/ О';
   1 : Text := Text+'/ H/О'
  End
end;

procedure TfrmUsersRights.ibdsMainUserRightsForPrimaryUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 ibsAux.SQL.Clear;
 ibsWhite.SQL.Clear;
 If (ibdsMainUserRightsForPrimarySEE_IN_LIST.AsInteger=1) then
  If (ibdsMainUserRightsForPrimaryUSER_ID.IsNull) then
   Begin
    ibsAux.SQL.Add('insert into USER_RIGHTS_FOR_PRIMARY (USER_ID, PRIMARY_SETUP_ID, SEE_IN_LIST, OWN_ONLY,');
    ibsAux.SQL.Add('CREATE_RIGHT, UPDATE_RIGHT, DELETE_RIGHT, CLOSE_RIGHT');
    If (Black) then
     ibsAux.SQL.Add(', BLACK, FAKE, WORKING_A');
    ibsAux.SQL.Add(') values');
    ibsAux.SQL.Add('(:USER_ID, :PRIMARY_SETUP_ID, :SEE_IN_LIST, :OWN_ONLY, :CREATE_RIGHT, :UPDATE_RIGHT,');
    ibsAux.SQL.Add(':DELETE_RIGHT, :CLOSE_RIGHT');
    If (Black) then
     ibsAux.SQL.Add(', :BLACK, :FAKE, :WORKING_A');
    ibsAux.SQL.Add(')');
    ibsAux.GenerateParamNames := True;
    ibsAux.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
    ibsAux.ParamByName('PRIMARY_SETUP_ID').AsInt64 := ibdsMainUserRightsForPrimaryPRIMARY_SETUP_ID.AsLargeInt;
    ibsAux.ParamByName('SEE_IN_LIST').AsInteger := ibdsMainUserRightsForPrimarySEE_IN_LIST.AsInteger;
    ibsAux.ParamByName('OWN_ONLY').AsInteger := ibdsMainUserRightsForPrimaryOWN_ONLY.AsInteger;
    ibsAux.ParamByName('CREATE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryCREATE_RIGHT.AsInteger;
    ibsAux.ParamByName('UPDATE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryUPDATE_RIGHT.AsInteger;
    ibsAux.ParamByName('DELETE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryDELETE_RIGHT.AsInteger;
    ibsAux.ParamByName('CLOSE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryCLOSE_RIGHT.AsInteger;
    If (Black) then
     Begin
      ibsAux.ParamByName('BLACK').AsInteger := ibdsMainUserRightsForPrimaryUR_BLACK.AsInteger;
      ibsAux.ParamByName('FAKE').AsInteger := ibdsMainUserRightsForPrimaryUR_FAKE.AsInteger;
      ibsAux.ParamByName('WORKING_A').AsInteger := ibdsMainUserRightsForPrimaryWORKING_A.AsInteger
     End;
    ibsAux.ExecQuery;
    If (Black) and (ibdsMainUserRightsForPrimaryUR_BLACK.AsInteger=0) and
       (ibdsMainUserRightsForPrimaryUR_FAKE.AsInteger=0) then
     Begin
      ibsWhite.SQL.Add('insert into USER_RIGHTS_FOR_PRIMARY (USER_ID, PRIMARY_SETUP_ID, SEE_IN_LIST, OWN_ONLY,');
      ibsWhite.SQL.Add('CREATE_RIGHT, UPDATE_RIGHT, DELETE_RIGHT, CLOSE_RIGHT) values');
      ibsWhite.SQL.Add('(:USER_ID, :PRIMARY_SETUP_ID, :SEE_IN_LIST, :OWN_ONLY, :CREATE_RIGHT, :UPDATE_RIGHT,');
      ibsWhite.SQL.Add(':DELETE_RIGHT, :CLOSE_RIGHT)');
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
      ibsWhite.ParamByName('PRIMARY_SETUP_ID').AsInt64 := ibdsMainUserRightsForPrimaryPRIMARY_SETUP_ID.AsLargeInt;
      ibsWhite.ParamByName('SEE_IN_LIST').AsInteger := ibdsMainUserRightsForPrimarySEE_IN_LIST.AsInteger;
      ibsWhite.ParamByName('OWN_ONLY').AsInteger := ibdsMainUserRightsForPrimaryOWN_ONLY.AsInteger;
      ibsWhite.ParamByName('CREATE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryCREATE_RIGHT.AsInteger;
      ibsWhite.ParamByName('UPDATE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryUPDATE_RIGHT.AsInteger;
      ibsWhite.ParamByName('DELETE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryDELETE_RIGHT.AsInteger;
      ibsWhite.ParamByName('CLOSE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryCLOSE_RIGHT.AsInteger;
      ibsWhite.ExecQuery
     End
   End
  else
   Begin
    ibsAux.SQL.Add('update USER_RIGHTS_FOR_PRIMARY set');
    ibsAux.SQL.Add('OWN_ONLY = :OWN_ONLY, CREATE_RIGHT = :CREATE_RIGHT, UPDATE_RIGHT = :UPDATE_RIGHT,');
    ibsAux.SQL.Add('DELETE_RIGHT = :DELETE_RIGHT, CLOSE_RIGHT = :CLOSE_RIGHT,');
    ibsAux.SQL.Add('WORKING_A = :WORKING_A');
    ibsAux.SQL.Add('where (USER_ID=:USER_ID) and (PRIMARY_SETUP_ID=:PRIMARY_SETUP_ID)');
    If (Black) then
     ibsAux.SQL.Add('and (BLACK=:BLACK) and (FAKE=:FAKE)');
    ibsAux.GenerateParamNames := True;
    ibsAux.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
    ibsAux.ParamByName('PRIMARY_SETUP_ID').AsInt64 := ibdsMainUserRightsForPrimaryPRIMARY_SETUP_ID.AsLargeInt;
    ibsAux.ParamByName('OWN_ONLY').AsInteger := ibdsMainUserRightsForPrimaryOWN_ONLY.AsInteger;
    ibsAux.ParamByName('CREATE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryCREATE_RIGHT.AsInteger;
    ibsAux.ParamByName('UPDATE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryUPDATE_RIGHT.AsInteger;
    ibsAux.ParamByName('DELETE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryDELETE_RIGHT.AsInteger;
    ibsAux.ParamByName('CLOSE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryCLOSE_RIGHT.AsInteger;
    If (Black) then
     Begin
      ibsAux.ParamByName('BLACK').AsInteger := ibdsMainUserRightsForPrimaryUR_BLACK.AsInteger;
      ibsAux.ParamByName('FAKE').AsInteger := ibdsMainUserRightsForPrimaryUR_FAKE.AsInteger;
      ibsAux.ParamByName('WORKING_A').AsInteger := ibdsMainUserRightsForPrimaryWORKING_A.AsInteger
     End;
    ibsAux.ExecQuery;
    If (Black) and (ibdsMainUserRightsForPrimaryUR_BLACK.AsInteger=0) and
       (ibdsMainUserRightsForPrimaryUR_FAKE.AsInteger=0) then
     Begin
      ibsWhite.SQL.Add('update USER_RIGHTS_FOR_PRIMARY set');
      ibsWhite.SQL.Add('OWN_ONLY = :OWN_ONLY, CREATE_RIGHT = :CREATE_RIGHT, UPDATE_RIGHT = :UPDATE_RIGHT,');
      ibsWhite.SQL.Add('DELETE_RIGHT = :DELETE_RIGHT, CLOSE_RIGHT = :CLOSE_RIGHT');
      ibsWhite.SQL.Add('where (USER_ID=:USER_ID) and (PRIMARY_SETUP_ID=:PRIMARY_SETUP_ID)');
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
      ibsWhite.ParamByName('PRIMARY_SETUP_ID').AsInt64 := ibdsMainUserRightsForPrimaryPRIMARY_SETUP_ID.AsLargeInt;
      ibsWhite.ParamByName('OWN_ONLY').AsInteger := ibdsMainUserRightsForPrimaryOWN_ONLY.AsInteger;
      ibsWhite.ParamByName('CREATE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryCREATE_RIGHT.AsInteger;
      ibsWhite.ParamByName('UPDATE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryUPDATE_RIGHT.AsInteger;
      ibsWhite.ParamByName('DELETE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryDELETE_RIGHT.AsInteger;
      ibsWhite.ParamByName('CLOSE_RIGHT').AsInteger := ibdsMainUserRightsForPrimaryCLOSE_RIGHT.AsInteger;
      ibsWhite.ExecQuery
     End
   End
  else
   If NOT(ibdsMainUserRightsForPrimaryUSER_ID.IsNull) then
    Begin
     ibsAux.SQL.Add('delete from USER_RIGHTS_FOR_PRIMARY');
     ibsAux.SQL.Add('where (USER_ID=:USER_ID) and (PRIMARY_SETUP_ID=:PRIMARY_SETUP_ID)');
     If (Black) then
      ibsAux.SQL.Add('and (BLACK=:BLACK) and (FAKE=:FAKE)');
     ibsAux.GenerateParamNames := True;
     ibsAux.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
     ibsAux.ParamByName('PRIMARY_SETUP_ID').AsInt64 := ibdsMainUserRightsForPrimaryPRIMARY_SETUP_ID.AsLargeInt;
     If (Black) then
      Begin
       ibsAux.ParamByName('FAKE').AsInteger := ibdsMainUserRightsForPrimaryUR_FAKE.AsInteger;
       ibsAux.ParamByName('BLACK').AsInteger := ibdsMainUserRightsForPrimaryUR_BLACK.AsInteger
      End;
     ibsAux.ExecQuery;
     If (Black) and (ibdsMainUserRightsForPrimaryUR_BLACK.AsInteger=0) and
        (ibdsMainUserRightsForPrimaryUR_FAKE.AsInteger=0) then
      Begin
       ibsWhite.SQL.Add('delete from USER_RIGHTS_FOR_PRIMARY');
       ibsWhite.SQL.Add('where (USER_ID=:USER_ID) and (PRIMARY_SETUP_ID=:PRIMARY_SETUP_ID)');
       ibsWhite.GenerateParamNames := True;
       ibsWhite.ParamByName('USER_ID').AsInteger := ibdsMainUsersListID.AsInteger;
       ibsWhite.ParamByName('PRIMARY_SETUP_ID').AsInt64 := ibdsMainUserRightsForPrimaryPRIMARY_SETUP_ID.AsLargeInt;
       ibsWhite.ExecQuery
      End;
    End;
 UpdateAction := uaApplied
end;

procedure TfrmUsersRights.ibdsMainUserRightsForInvoiceSEE_IN_LISTChange(
  Sender: TField);
begin
 If (ibdsMainUserRightsForInvoiceSEE_IN_LIST.AsInteger=0) then
  ibdsMainUserRightsForInvoiceOWN_ONLY.Value := 0
end;

procedure TfrmUsersRights.ibdsMainUserRightsForPrimarySEE_IN_LISTChange(
  Sender: TField);
begin
 If (ibdsMainUserRightsForPrimarySEE_IN_LIST.AsInteger=0) then
  ibdsMainUserRightsForPrimaryOWN_ONLY.Value := 0
end;

procedure TfrmUsersRights.GenerateTreeInvoices;
 var R : PItemRec;
     NewNode : TfcTreeNode;
begin
 tvInvoices.Items.Clear;
 NewNode := tvInvoices.Items.AddChild(Nil, 'Документы на');
 NewNode.CheckboxType := tvctNone;
 New(R);
 NewNode.Data := R;
 R^.Id := 0;
 R^.Parent := -1;
 R^.IType := 0;
 NewNode := tvInvoices.Items.AddChild(tvInvoices.Items[0], 'Приход');
 NewNode.CheckboxType := tvctNone;
 New(R);
 NewNode.Data := R;
 R^.Id := 2;
 R^.Parent := 0;
 R^.IType := 2;
 NewNode := tvInvoices.Items.AddChild(tvInvoices.Items[0], 'Расход');
 NewNode.CheckboxType := tvctNone;
 New(R);
 NewNode.Data := R;
 R^.Id := 1;
 R^.Parent := 0;
 R^.IType := 1;
 NewNode := tvInvoices.Items.AddChild(tvInvoices.Items[0], 'Внутреннее');
 NewNode.CheckboxType := tvctNone;
 New(R);
 NewNode.Data := R;
 R^.Id := 3;
 R^.Parent := 0;
 R^.IType := 3;
 tvInvoices.FullExpand;
 tvInvoices.Selected := tvInvoices.Items[0] 
end;

procedure TfrmUsersRights.GenerateSelectUserRightsForInvoice;
begin
 ibdsMainUserRightsForInvoice.SelectSQL.Clear;
 ibdsMainUserRightsForInvoice.SelectSQL.Add('select URI.USER_ID, InvS.ID INVOICE_SETUP_ID, InvS.IN_OUT,');
 ibdsMainUserRightsForInvoice.SelectSQL.Add('InvS.NAME, InvS.SECURITY_LEVEL,');
 If (Black) then
  ibdsMainUserRightsForInvoice.SelectSQL.Add('InvS.BLACK,');
 ibdsMainUserRightsForInvoice.SelectSQL.Add('URI.SEE_IN_LIST, URI.OWN_ONLY,');
 ibdsMainUserRightsForInvoice.SelectSQL.Add('URI.CREATE_RIGHT, URI.UPDATE_RIGHT, URI.DELETE_RIGHT, URI.CLOSE_RIGHT');
 If (Black) then
  ibdsMainUserRightsForInvoice.SelectSQL.Add(', cast(0 as integer) as UR_BLACK, URI.WORKING_A');
 ibdsMainUserRightsForInvoice.SelectSQL.Add('from INVOICE_SETUP InvS left outer join USER_RIGHTS_FOR_INVOICE URI on');
 ibdsMainUserRightsForInvoice.SelectSQL.Add('(URI.USER_ID=:ID) and');
 If (Black) then
  ibdsMainUserRightsForInvoice.SelectSQL.Add('(URI.BLACK=0) and');
 ibdsMainUserRightsForInvoice.SelectSQL.Add('(URI.INVOICE_SETUP_ID=InvS.ID)');
 If (Black) then
  ibdsMainUserRightsForInvoice.SelectSQL.Add('where (InvS.BLACK=0)');
 If (tvInvoices.Selected.Level>0) then
  If (Black) then
   ibdsMainUserRightsForInvoice.SelectSQL.Add(' and (InvS.IN_OUT='+IntToStr(PItemRec(tvInvoices.Selected.Data)^.IType)+')')
  else
   ibdsMainUserRightsForInvoice.SelectSQL.Add('where (InvS.IN_OUT='+IntToStr(PItemRec(tvInvoices.Selected.Data)^.IType)+')');
 If (Black) then
  Begin
   ibdsMainUserRightsForInvoice.SelectSQL.Add('union');
   ibdsMainUserRightsForInvoice.SelectSQL.Add('select URI.USER_ID, InvS.ID INVOICE_SETUP_ID, InvS.IN_OUT,');
   ibdsMainUserRightsForInvoice.SelectSQL.Add('InvS.NAME, InvS.SECURITY_LEVEL, InvS.BLACK, URI.SEE_IN_LIST, URI.OWN_ONLY,');
   ibdsMainUserRightsForInvoice.SelectSQL.Add('URI.CREATE_RIGHT, URI.UPDATE_RIGHT, URI.DELETE_RIGHT,');
   ibdsMainUserRightsForInvoice.SelectSQL.Add('URI.CLOSE_RIGHT, cast(1 as integer) as UR_BLACK, URI.WORKING_A');
   ibdsMainUserRightsForInvoice.SelectSQL.Add('from INVOICE_SETUP InvS left outer join USER_RIGHTS_FOR_INVOICE URI on');
   ibdsMainUserRightsForInvoice.SelectSQL.Add('(URI.USER_ID=:ID) and (URI.BLACK=1) and');
   ibdsMainUserRightsForInvoice.SelectSQL.Add('(URI.INVOICE_SETUP_ID=InvS.ID)');
   If (tvInvoices.Selected.Level>0) then
    ibdsMainUserRightsForInvoice.SelectSQL.Add('where (InvS.IN_OUT='+IntToStr(PItemRec(tvInvoices.Selected.Data)^.IType)+')');
  End;
 ibdsMainUserRightsForInvoice.SelectSQL.Add('order by 3, 6, 5, 4, 13')
end;

procedure TfrmUsersRights.tvInvoicesChange(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode);
begin
 ibdsMainUserRightsForInvoice.Close;
 GenerateSelectUserRightsForInvoice;
 If (PageControl1.ActivePage=tsUserRightsForInvoice) then
  ibdsMainUserRightsForInvoice.Open
end;

procedure TfrmUsersRights.dbgUserRightsForInvoiceCalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
 If NOT(Highlight) and (Black) then
  Begin
   ABrush.Color := clWindow;
   If (Field.DataSet.FieldByName('UR_BLACK').AsInteger=1) then
    ABrush.Color := ColorBlack
  End
end;

procedure TfrmUsersRights.PageControl1Change(Sender: TObject);
begin
 ibdsMainUserRightsForInvoice.Active := (PageControl1.ActivePage=tsUserRightsForInvoice);
 ibdsMainUserRightsForPrimary.Active := (PageControl1.ActivePage=tsUserRightsForPrimary);
 If (PageControl1.ActivePage=tsVarious) then
  FillOutVariousRights
end;

procedure TfrmUsersRights.dsMainUserRightsForInvoiceStateChange(
  Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('UserRightsForInvoice', True)
  else
   StteChange('UserRightsForInvoice', ibdsMainUserRightsForInvoice.UpdatesPending);
end;

procedure TfrmUsersRights.sbFirstUserRightsForInvoiceClick(
  Sender: TObject);
begin
 ibdsMainUserRightsForInvoice.First
end;

procedure TfrmUsersRights.sbPriorUserRightsForInvoiceClick(
  Sender: TObject);
begin
 ibdsMainUserRightsForInvoice.Prior
end;

procedure TfrmUsersRights.sbNextUserRightsForInvoiceClick(Sender: TObject);
begin
 ibdsMainUserRightsForInvoice.Next
end;

procedure TfrmUsersRights.sbLastUserRightsForInvoiceClick(Sender: TObject);
begin
 ibdsMainUserRightsForInvoice.Last
end;

procedure TfrmUsersRights.sbApplyUserRightsForInvoiceClick(
  Sender: TObject);
 var BookMark : String;
begin
 try
  ibdsMainUserRightsForInvoice.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('UserRightsForInvoice', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0);
  Exit
 end;
 BookMark := ibdsMainUserRightsForInvoice.Bookmark;
 ibdsMainUserRightsForInvoice.DisableControls;
 ibdsMainUserRightsForInvoice.Close;
 ibdsMainUserRightsForInvoice.Open;
 ibdsMainUserRightsForInvoice.Bookmark := BookMark;
 ibdsMainUserRightsForInvoice.EnableControls
end;

procedure TfrmUsersRights.sbCancelUserRightsForInvoiceClick(
  Sender: TObject);
begin
 ibdsMainUserRightsForInvoice.CancelUpdates;
 StteChange('UserRightsForInvoice', False)
end;

procedure TfrmUsersRights.ibdsMainUserRightsForInvoiceAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,DataSet.Owner as TForm,Copy(DataSet.Name,9,Length(DataSet.Name)-8))
end;

procedure TfrmUsersRights.ibdsMainUserRightsForInvoiceWORKING_AChange(
  Sender: TField);
begin
 If (ibdsMainUserRightsForInvoiceUR_BLACK.AsInteger=0) and
    (ibdsMainUserRightsForInvoiceWORKING_A.AsInteger=1) then
  ibdsMainUserRightsForInvoiceWORKING_A.AsInteger := 0
end;

procedure TfrmUsersRights.ibdsMainUserRightsForInvoiceOWN_ONLYChange(
  Sender: TField);
begin
 If (ibdsMainUserRightsForInvoiceSEE_IN_LIST.AsInteger=0) and
    (ibdsMainUserRightsForInvoiceOWN_ONLY.AsInteger=1) then
  ibdsMainUserRightsForInvoiceOWN_ONLY.Value := 0
end;

procedure TfrmUsersRights.tvInvoicesDeletion(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode);
begin
 Dispose(PItemRec(Node.Data))
end;

procedure TfrmUsersRights.GenerateSelectUserRightsForPrimary;
 var S : String;
begin
 ibdsMainUserRightsForPrimary.SelectSQL.Clear;
 ibdsMainUserRightsForPrimary.SelectSQL.Add('select URP.USER_ID, PS.ID PRIMARY_SETUP_ID, PS.IN_OUT, PS.MOVEMENT_TYPE,');
 ibdsMainUserRightsForPrimary.SelectSQL.Add('PS.NAME, PS.SECURITY_LEVEL,');
 If (Black) then
  ibdsMainUserRightsForPrimary.SelectSQL.Add('PS.BLACK,');
 ibdsMainUserRightsForPrimary.SelectSQL.Add('URP.SEE_IN_LIST, URP.OWN_ONLY,');
 ibdsMainUserRightsForPrimary.SelectSQL.Add('URP.CREATE_RIGHT, URP.UPDATE_RIGHT, URP.DELETE_RIGHT,');
 ibdsMainUserRightsForPrimary.SelectSQL.Add('URP.CLOSE_RIGHT');
 If (Black) then
  ibdsMainUserRightsForPrimary.SelectSQL.Add(', cast(0 as integer) as UR_BLACK, cast(1 as integer) as UR_FAKE, URP.WORKING_A');
 ibdsMainUserRightsForPrimary.SelectSQL.Add('from PRIMARY_SETUP PS left outer join USER_RIGHTS_FOR_PRIMARY URP on');
 ibdsMainUserRightsForPrimary.SelectSQL.Add('(URP.USER_ID=:ID) and');
 If (Black) then
  ibdsMainUserRightsForPrimary.SelectSQL.Add('(URP.BLACK=0) and (URP.FAKE=1) and');
 ibdsMainUserRightsForPrimary.SelectSQL.Add('(URP.PRIMARY_SETUP_ID=PS.ID)');
 S := '';
 If (Black) then
  S := ' and (PS.BLACK=0) and (PS.MOVEMENT_TYPE_NEW=0)';
 If (trReasonTypes.Selected<>nil) then
  Begin
   S := S+' and (PS.REASON_TYPE='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.ReasonType)+')';
   If (PReasonsRec(trReasonTypes.Selected.Data)^.MovementType<>-1) then
    S := S+' and (PS.MOVEMENT_TYPE_NEW='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.MovementType)+')';
   If (PReasonsRec(trReasonTypes.Selected.Data)^.PaymentType<>-1) then
    S := S+' and (PS.PAYMENT_TYPE='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.PaymentType)+')';
   If (PReasonsRec(trReasonTypes.Selected.Data)^.InOut<>-1) then
    S := S+' and (PS.IN_OUT='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.InOut)+')'
  End;
{ Case tvPrimary1.Selected.Level of
  1: S := S+' and (PS.IN_OUT='+IntToStr(PItemRec(tvPrimary1.Selected.Data)^.ID)+')';
  2: S := S+' and (PS.IN_OUT='+IntToStr(PItemRec(tvPrimary1.Selected.Data)^.Parent)+') and (PS.MOVEMENT_TYPE='+IntToStr(PItemRec(tvPrimary1.Selected.Data)^.ID)+')'
 end;}
 If (S<>'') then
  Begin
   S := Copy(S,6,Length(S)-5);
   ibdsMainUserRightsForPrimary.SelectSQL.Add('where '+S)
  End;
 If (Black) then
  Begin
   ibdsMainUserRightsForPrimary.SelectSQL.Add('union');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('select URP.USER_ID, PS.ID PRIMARY_SETUP_ID, PS.IN_OUT, PS.MOVEMENT_TYPE,');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('PS.NAME, PS.SECURITY_LEVEL,');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('PS.BLACK,');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('URP.SEE_IN_LIST, URP.OWN_ONLY,');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('URP.CREATE_RIGHT, URP.UPDATE_RIGHT, URP.DELETE_RIGHT,');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('URP.CLOSE_RIGHT');
   ibdsMainUserRightsForPrimary.SelectSQL.Add(', cast(0 as integer) as UR_BLACK, cast(0 as integer) as UR_FAKE, URP.WORKING_A');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('from PRIMARY_SETUP PS left outer join USER_RIGHTS_FOR_PRIMARY URP on');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('(URP.USER_ID=:ID) and (URP.BLACK=0) and (URP.FAKE=0) and (URP.PRIMARY_SETUP_ID=PS.ID)');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('where (PS.BLACK=0)');
   If (trReasonTypes.Selected<>nil) then
    Begin
     S := ' and (PS.REASON_TYPE='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.ReasonType)+')';
     If (PReasonsRec(trReasonTypes.Selected.Data)^.MovementType<>-1) then
      S := S+' and (PS.MOVEMENT_TYPE_NEW='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.MovementType)+')';
     If (PReasonsRec(trReasonTypes.Selected.Data)^.PaymentType<>-1) then
      S := S+' and (PS.PAYMENT_TYPE='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.PaymentType)+')';
     If (PReasonsRec(trReasonTypes.Selected.Data)^.InOut<>-1) then
      S := S+' and (PS.IN_OUT='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.InOut)+')';
     ibdsMainUserRightsForPrimary.SelectSQL.Add(S)
    End;
{   Case tvPrimary1.Selected.Level of
    1: ibdsMainUserRightsForPrimary.SelectSQL.Add(' and (PS.IN_OUT='+IntToStr(PItemRec(tvPrimary1.Selected.Data)^.ID)+')');
    2: ibdsMainUserRightsForPrimary.SelectSQL.Add(' and (PS.IN_OUT='+IntToStr(PItemRec(tvPrimary1.Selected.Data)^.Parent)+') and (PS.MOVEMENT_TYPE='+IntToStr(PItemRec(tvPrimary1.Selected.Data)^.ID)+')')
   end;}
   ibdsMainUserRightsForPrimary.SelectSQL.Add('union');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('select URP.USER_ID, PS.ID PRIMARY_SETUP_ID, PS.IN_OUT, PS.MOVEMENT_TYPE,');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('PS.NAME, PS.SECURITY_LEVEL,');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('PS.BLACK,');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('URP.SEE_IN_LIST, URP.OWN_ONLY,');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('URP.CREATE_RIGHT, URP.UPDATE_RIGHT, URP.DELETE_RIGHT,');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('URP.CLOSE_RIGHT');
   ibdsMainUserRightsForPrimary.SelectSQL.Add(', cast(1 as integer) as UR_BLACK, cast(0 as integer) as UR_FAKE, URP.WORKING_A');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('from PRIMARY_SETUP PS left outer join USER_RIGHTS_FOR_PRIMARY URP on');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('(URP.USER_ID=:ID) and (URP.BLACK=1) and (URP.FAKE=0) and (URP.PRIMARY_SETUP_ID=PS.ID)');
   ibdsMainUserRightsForPrimary.SelectSQL.Add('where (PS.PAYMENT_TYPE!=2)');
   If (trReasonTypes.Selected<>nil) then
    Begin
     S := ' and (PS.REASON_TYPE='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.ReasonType)+')';
     If (PReasonsRec(trReasonTypes.Selected.Data)^.MovementType<>-1) then
      S := S+' and (PS.MOVEMENT_TYPE_NEW='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.MovementType)+')';
     If (PReasonsRec(trReasonTypes.Selected.Data)^.PaymentType<>-1) then
      S := S+' and (PS.PAYMENT_TYPE='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.PaymentType)+')';
     If (PReasonsRec(trReasonTypes.Selected.Data)^.InOut<>-1) then
      S := S+' and (PS.IN_OUT='+IntToStr(PReasonsRec(trReasonTypes.Selected.Data)^.InOut)+')';
     ibdsMainUserRightsForPrimary.SelectSQL.Add(S)
    End;
{   Case tvPrimary1.Selected.Level of
    1: ibdsMainUserRightsForPrimary.SelectSQL.Add(' and (PS.IN_OUT='+IntToStr(PItemRec(tvPrimary1.Selected.Data)^.ID)+')');
    2: ibdsMainUserRightsForPrimary.SelectSQL.Add(' and (PS.IN_OUT='+IntToStr(PItemRec(tvPrimary1.Selected.Data)^.Parent)+') and (PS.MOVEMENT_TYPE='+IntToStr(PItemRec(tvPrimary1.Selected.Data)^.ID)+')')
   end}
  End;
 ibdsMainUserRightsForPrimary.SelectSQL.Add('order by 3, 7, 6, 5, 14, 15 desc')
end;

procedure TfrmUsersRights.sbFirstUserRightsForPrimaryClick(
  Sender: TObject);
begin
 ibdsMainUserRightsForPrimary.First
end;

procedure TfrmUsersRights.sbPriorUserRightsForPrimaryClick(
  Sender: TObject);
begin
 ibdsMainUserRightsForPrimary.Prior
end;

procedure TfrmUsersRights.sbNextUserRightsForPrimaryClick(Sender: TObject);
begin
 ibdsMainUserRightsForPrimary.Next
end;

procedure TfrmUsersRights.sbLastUserRightsForPrimaryClick(Sender: TObject);
begin
 ibdsMainUserRightsForPrimary.Last
end;

procedure TfrmUsersRights.sbApplyUserRightsForPrimaryClick(
  Sender: TObject);
 var BookMark : String;
begin
 try
  ibdsMainUserRightsForPrimary.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('UserRightsForPrimary', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0);
  Exit  
 end;
 BookMark := ibdsMainUserRightsForPrimary.Bookmark;
 ibdsMainUserRightsForPrimary.DisableControls;
 ibdsMainUserRightsForPrimary.Close;
 ibdsMainUserRightsForPrimary.Open;
 ibdsMainUserRightsForPrimary.Bookmark := BookMark;
 ibdsMainUserRightsForPrimary.EnableControls
end;

procedure TfrmUsersRights.sbCancelUserRightsForPrimaryClick(
  Sender: TObject);
begin
 ibdsMainUserRightsForPrimary.CancelUpdates;
 StteChange('UserRightsForPrimary', False)
end;

procedure TfrmUsersRights.ibdsMainUserRightsForPrimaryBeforeClose(
  DataSet: TDataSet);
begin
 If ((DataSet as TIBDataSet).UpdatesPending) then
  Case MessageDlg('Имеются несохраненные изменения. Сохранить?', mtConfirmation, [mbYes,mbNo],0) of
   mrYes: sbApplyUserRightsForPrimary.Click;
   mrNo: sbCancelUserRightsForPrimary.Click
  End
end;

procedure TfrmUsersRights.dsMainUserRightsForPrimaryStateChange(
  Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('UserRightsForPrimary', True)
  else
   StteChange('UserRightsForPrimary', ibdsMainUserRightsForPrimary.UpdatesPending);
end;

procedure TfrmUsersRights.ibdsMainUserRightsForPrimaryOWN_ONLYChange(
  Sender: TField);
begin
 If (ibdsMainUserRightsForPrimarySEE_IN_LIST.AsInteger=0) and
    (ibdsMainUserRightsForPrimaryOWN_ONLY.AsInteger=1) then
  ibdsMainUserRightsForPrimaryOWN_ONLY.Value := 0
end;

procedure TfrmUsersRights.ibdsMainUserRightsForPrimaryWORKING_AChange(
  Sender: TField);
begin
 If (ibdsMainUserRightsForPrimaryUR_BLACK.AsInteger=0) and
    (ibdsMainUserRightsForPrimaryWORKING_A.AsInteger=1) then
  ibdsMainUserRightsForPrimaryWORKING_A.AsInteger := 0
end;

procedure TfrmUsersRights.CheckAllClick(Sender: TObject);
 var DataSet : TIBDataSet;
     Field : TField;
     BookMark : String;
begin
 If (PageControl1.ActivePage=tsUserRightsForPrimary) then
  Begin
   DataSet := ibdsMainUserRightsForPrimary;
   Field := tvPrimary.DataController.GetItemField(tvPrimary.Controller.FocusedColumnIndex)
  End
 else
  Begin
   DataSet := ibdsMainUserRightsForInvoice;
   Field := dbgUserRightsForInvoice.GetActiveField
  End;
 BookMark := DataSet.Bookmark;
 DataSet.First;
 While NOT (DataSet.Eof) do
  Begin
   If ((Field.FieldName='SEE_IN_LIST') or
       (Field.DataSet.FieldByName('SEE_IN_LIST').AsInteger=1)) and
      (Field.AsInteger<>(Sender as TMenuItem).Tag) then
    Begin
     DataSet.Edit;
     Field.AsInteger := (Sender as TMenuItem).Tag
    End;
   DataSet.Next
  End;
 try
  DataSet.Bookmark := BookMark
 finally
 end
end;

procedure TfrmUsersRights.FormDestroy(Sender: TObject);
begin
 Caption := 'Настройки доступа пользователей';
 inherited
end;

procedure TfrmUsersRights.FillOutVariousRights;
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select URV.RIGHT_NAME from USER_RIGHTS_VARIOUS URV where (URV.USER_ID='+ibdsMainUsersListID.AsString+')');
 dbcbGO.Tag := 0;
 dbcbGO.Checked := False;
 ibsAux.ExecQuery;
 While NOT (ibsAux.Eof) do
  Begin
   If (ibsAux.FieldByName('RIGHT_NAME').AsString=VariousRightForGO) then
    Begin
     dbcbGO.Tag := 1;
     dbcbGO.Checked := True
    End;
   ibsAux.Next
  End;
 ibsAux.Close
end;

procedure TfrmUsersRights.sbCancelVariousClick(Sender: TObject);
begin
 FillOutVariousRights
end;

procedure TfrmUsersRights.sbApplyVariousClick(Sender: TObject);
begin
 If (MyBoolToInt(dbcbGO.Checked)<>dbcbGO.Tag) then
  If (dbcbGO.Tag=0) then
   Begin
    ibsAux.SQL.Clear;
    ibsAux.SQL.Add('insert into USER_RIGHTS_VARIOUS (USER_ID,RIGHT_NAME) values ('+ibdsMainUsersListID.AsString+','#39+VariousRightForGO+#39')');
    ibsAux.ExecQuery
   End
  else
   Begin
    ibsAux.SQL.Clear;
    ibsAux.SQL.Add('delete from USER_RIGHTS_VARIOUS URV where (URV.USER_ID='+ibdsMainUsersListID.AsString+') and (URV.RIGHT_NAME='#39+VariousRightForGO+#39')');
    ibsAux.ExecQuery
   End;
 try
  trMain.CommitRetaining;
  StteChange('Various', False);
  FillOutVariousRights
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0);
  Exit
 end
end;

procedure TfrmUsersRights.dbcbGOClick(Sender: TObject);
 var Changed : Boolean;
     k : Integer;
begin
 Changed := False;
 For k := 0 to Pred(tsVarious.ControlCount) do
  If (tsVarious.Controls[k] is TwwCheckBox) then
   If (MyBoolToInt((tsVarious.Controls[k] as TwwCheckBox).Checked)<>(tsVarious.Controls[k] as TwwCheckBox).Tag) then
    Begin
     Changed := True;
     Break
    End;
 StteChange('Various', Changed)
end;

procedure TfrmUsersRights.tvPrimaryCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If NOT(Assigned((AViewInfo.Item.DataBinding as TcxGridItemDBDataBinding).Field)) or
    (AViewInfo.Item as TcxGridColumn).IsPreview then
  Exit;
 If (Black) then
  Begin
   If NOT(AviewInfo.Selected) then
    Begin
     ACanvas.Font.Style := [];
     ACanvas.Brush.Color := clWindow;
     If (VarAsType(Sender.DataController.Values[AViewInfo.RecordViewInfo.Index, tvPrimaryUR_BLACK.Index], varShortInt)=1) then
      ACanvas.Brush.Color := ColorBlack;
    End;  
   If (VarAsType(Sender.DataController.Values[AViewInfo.RecordViewInfo.Index, tvPrimaryUR_FAKE.Index], varShortInt)=1) then
    ACanvas.Font.Style := ACanvas.Font.Style+StyleBlack;
  End
end;

procedure TfrmUsersRights.trReasonTypesChange(Sender: TObject;
  Node: TTreeNode);
begin
 ibdsMainUserRightsForPrimary.Close;
 GenerateSelectUserRightsForPrimary;
 If (PageControl1.ActivePage=tsUserRightsForPrimary) then
  ibdsMainUserRightsForPrimary.Open
end;

procedure TfrmUsersRights.GenerateTree(Node: TTreeNode; ItemLinks: TdxBarItemLinks);
 var R : PItemTag;
     NewNode : TTreeNode;
     k : Integer;
begin
 For k := 0 to Pred(ItemLinks.AvailableItemCount) do
  Begin
   NewNode := trUserVisibles.Items.AddChild(Node, ItemLinks.AvailableItems[k].Caption);
   New(R);
   NewNode.Data := R;
   R^ := ItemLinks.BarManager.MainForm.Name+'.'+ItemLinks.AvailableItems[k].Item.Name;
   If (ItemLinks.AvailableItems[k].Item is TdxBarSubItem) then
    GenerateTree(NewNode,(ItemLinks.AvailableItems[k].Item as TdxBarSubItem).ItemLinks)
  End;
end;

procedure TfrmUsersRights.trUserVisiblesDeletion(Sender: TObject;
  Node: TTreeNode);
begin
 Dispose(PItemTag(Node.Data))
end;

procedure TfrmUsersRights.trUserVisiblesStateChange(Sender: TObject;
  Node: TTreeNode; NewState: TRzCheckState);
begin
 If Not Scroll then
  If (NewState in [csChecked,csPartiallyChecked]) then
   Begin
    If NOT ibdsUserVisibles.Locate('USER_ID;OBJECT_NAME',VarArrayOf([ibdsMainUsersListID.Value,PItemTag(Node.Data)^]),[]) then
     Begin
      ibdsUserVisibles.Insert;
      ibdsUserVisiblesUSER_ID.Value := ibdsMainUsersListID.AsInteger;
      ibdsUserVisiblesOBJECT_NAME.Value := PItemTag(Node.Data)^;
      ibdsUserVisibles.Post
     End
   End
  else
   If ibdsUserVisibles.Locate('USER_ID;OBJECT_NAME',VarArrayOf([ibdsMainUsersListID.Value,PItemTag(Node.Data)^]),[]) then
    ibdsUserVisibles.Delete
end;

procedure TfrmUsersRights.ibdsUserVisiblesAfterPost(DataSet: TDataSet);
begin
 StteChange('Users', ibdsUserVisibles.UpdatesPending)
end;

procedure TfrmUsersRights.ibdsUserVisiblesUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 If (Black) then
  Begin
   ibsWhite.Close;
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsUserVisibles.InsertSQL);
    ukDelete: ibsWhite.SQL.AddStrings(ibdsUserVisibles.DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   ibsWhite.ParamByName('USER_ID').Value := ibdsUserVisiblesUSER_ID.Value;
   ibsWhite.ParamByName('OBJECT_NAME').Value := ibdsUserVisiblesOBJECT_NAME.Value;
   ibsWhite.ExecQuery
  End;
 UpdateAction := uaApply
end;

end.
