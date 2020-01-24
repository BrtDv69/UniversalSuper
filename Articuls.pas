unit Articuls;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, fcdbtreeview, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  StdCtrls, Mask, wwdbedit, IBDatabase, Db, wwdblook, Wwdotdot, Wwdbcomb,
  DBCtrls, ComCtrls, IBSQL, IBCustomDataSet, ImgList, wwclearbuttongroup,
  wwradiogroup, Menus, Variants, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDBEdit;

type
 TObjProcedure = procedure of object;

type
  TfrmArticuls = class(TfrmLike)
    Panel4: TPanel;
    sbCancel: TSpeedButton;
    sbApply: TSpeedButton;
    sbDelete: TSpeedButton;
    sbAdd: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrior: TSpeedButton;
    sbFirst: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    sbDetail: TSpeedButton;
    Panel1: TPanel;
    pnlDetail: TPanel;
    Label16: TLabel;
    wwDBEdit11: TwwDBEdit;
    Label1: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label3: TLabel;
    Label2: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit3: TwwDBEdit;
    dbeName: TwwDBEdit;
    Label4: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label6: TLabel;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    ibdsMain: TIBDataSet;
    ibsWhite: TIBSQL;
    dsMain: TDataSource;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesNAME: TIBStringField;
    ibdsEnterprisesID: TLargeintField;
    ibdsMainID: TLargeintField;
    ibdsMainENTERPRISE_ID: TLargeintField;
    ibdsMainENTERPRISE_NAME: TIBStringField;
    ibdsMainITEM_TYPE: TIntegerField;
    ibdsMainPARENT_ID: TLargeintField;
    ibdsMainPARENT_NAME: TIBStringField;
    ibdsMainNAME: TIBStringField;
    ibdsMainUNITS: TIBStringField;
    ibdsMainNDS: TFloatField;
    ibdsMainCOMMENTS: TIBStringField;
    ibdsGroups: TIBDataSet;
    ibdsGroupsID: TLargeintField;
    ibdsGroupsNAME: TIBStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    ibdsMainARTICUL: TIBStringField;
    ibsChild: TIBSQL;
    ibdsTree: TIBDataSet;
    ibdsTreeID: TLargeintField;
    ibdsTreePARENT_ID: TLargeintField;
    ibdsTreeNAME: TIBStringField;
    ImageList1: TImageList;
    ibdsMainCHIELD_COUNT: TLargeintField;
    Panel2: TPanel;
    pnlComplect: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    sbAddSet: TSpeedButton;
    sbDeleteSet: TSpeedButton;
    sbApplySet: TSpeedButton;
    sbCancelSet: TSpeedButton;
    Panel6: TPanel;
    sbComplect: TSpeedButton;
    ibdsSets: TIBDataSet;
    ibdsSetsID: TLargeintField;
    ibdsSetsSET_ARTICUL_ID: TLargeintField;
    ibdsSetsNAME: TIBStringField;
    ibdsSetsPART_ARTICUL_ID: TLargeintField;
    ibdsSetsAMOUNT: TFloatField;
    dsSets: TDataSource;
    ibdsSetsITEM_TYPE: TIntegerField;
    wwRadioGroup1: TwwRadioGroup;
    Label8: TLabel;
    wwDBGrid2: TwwDBGrid;
    sbCopy: TSpeedButton;
    ibsAux: TIBSQL;
    ibdsArticuls: TIBDataSet;
    ibdsArticulsNAME: TIBStringField;
    ibdsArticulsID: TLargeintField;
    ibdsArticulsARTICUL: TIBStringField;
    wwDBLookupCombo8: TwwDBLookupCombo;
    Panel3: TPanel;
    pnlFilter: TPanel;
    sbFilter: TSpeedButton;
    dbeFilter: TwwDBEdit;
    wwDBGrid1: TwwDBGrid;
    ibdsSearch: TIBDataSet;
    ibdsSearchITEM_TYPE: TIntegerField;
    ibdsSearchNAME: TIBStringField;
    dsSearch: TDataSource;
    ibdsLocateItem: TIBDataSet;
    ibdsLocateItemID: TLargeintField;
    ibdsSearchID: TLargeintField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    lblGuarantee: TLabel;
    edGuarantee: TcxDBMaskEdit;
    ibdsMainGUARANTEE_PERIOD_STR: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure sbDetailClick(Sender: TObject);
    procedure ibdsMainAfterScroll(DataSet: TDataSet);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure ibdsMainNewRecord(DataSet: TDataSet);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1CreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure TreeView1Deletion(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure TreeView1Changing(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure dsMainDataChange(Sender: TObject; Field: TField);
    procedure ibdsMainBeforePost(DataSet: TDataSet);
    procedure TreeView1GetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure sbComplectClick(Sender: TObject);
    procedure ibdsSetsNewRecord(DataSet: TDataSet);
    procedure ibdsSetsUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure sbAddSetClick(Sender: TObject);
    procedure sbDeleteSetClick(Sender: TObject);
    procedure dsSetsStateChange(Sender: TObject);
    procedure sbCancelSetClick(Sender: TObject);
    procedure sbApplySetClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid2CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure sbFilterClick(Sender: TObject);
    procedure sbCopyClick(Sender: TObject);
    procedure wwDBLookupCombo8CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid1CalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure ibdsSearchAfterScroll(DataSet: TDataSet);
    procedure LocateItem;
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    function GetWhere: String;
    procedure GenerateSelectMain;
    procedure GenerateSelectSets;
    procedure StteChange(Enabled: Boolean);
    procedure SetStteChange(Enabled: Boolean);
    procedure GenerateTree(Node: TTreeNode);
  public
    { Public declarations }
    LookUpProcedureUpdate : TObjProcedure;
    LookUpProcedureInsert : TObjProcedure;
  end;

type
  PItemRec = ^ItemRec;
  ItemRec = Record
   Id    : Int64;
   Parent: Int64;
   CCount: Int64;
   ITYPE : Byte;
  end;

var
  frmArticuls: TfrmArticuls;

implementation

uses Misk, DM, SearchArticuls, GoodInfo;

{$R *.DFM}

var
  OrderBy : String = ' 9 asc';
  OrderBySets : String = ' 3 asc';
  WhereSql : String = '(A.PARENT_ID=:PARENT_ID) and';
  GenerateSQLNode : TTreeNode;

procedure TfrmArticuls.FormCreate(Sender: TObject);
begin
 FName := 'Артикулы';
 inherited;
 If NOT (Black) then
  Begin
   ibdsMain.Database := frmDM.dbWhite;
   ibdsEnterprises.Database := frmDM.dbWhite;
   ibdsGroups.Database := frmDM.dbWhite;
   ibsChild.Database := frmDM.dbWhite;
   ibdsTree.Database := frmDM.dbWhite;
   ibdsSets.Database := frmDM.dbWhite;
   ibsAux.Database := frmDM.dbWhite
  End;
 trMain.StartTransaction;
 ibdsEnterprises.Open;
 GenerateTree(Nil);
 TreeView1.Items[0].Expand(False);
 ibdsGroups.Open;
 If ((GetSetUpParam(ibdsMain.Database, ibdsMain.Transaction, '-1', '-1', 'USE_GUARANTEE_PERIOD')<>1)) then
  Begin
   lblGuarantee.Free;
   edGuarantee.Free
  End 
end;

procedure TfrmArticuls.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmArticuls := nil
end;

procedure TfrmArticuls.sbDetailClick(Sender: TObject);
begin
 pnlDetail.Visible := sbDetail.Down
end;

procedure TfrmArticuls.ibdsMainAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmArticuls,'');
 If (TreeView1.Selected<>nil) then
  sbComplect.Enabled := (PItemRec(TreeView1.Selected.Data)^.ITYPE=1) or (ibdsMainITEM_TYPE.AsInteger=1) or
                        (sbComplect.Down);
 sbCopy.Enabled := sbComplect.Enabled
end;

procedure TfrmArticuls.StteChange(Enabled: Boolean);
begin
 sbApply.Enabled := Enabled;
 sbCancel.Enabled := Enabled
end;

procedure TfrmArticuls.SetStteChange(Enabled: Boolean);
begin
 sbApplySet.Enabled := Enabled;
 sbCancelSet.Enabled := Enabled
end;

function TfrmArticuls.GetWhere: String;
begin
 If (GenerateSQLNode<>nil) and (PItemRec(GenerateSQLNode.Data)^.ITYPE=1) then
  Result := '(S.SET_ARTICUL_ID=:PARENT_ID) and'
 else
  Result := '(A.PARENT_ID=:PARENT_ID) and'
end;

procedure TfrmArticuls.GenerateSelectMain;
begin
 WhereSql := GetWhere;
 ibdsMain.SelectSQL.Clear;
 If (GenerateSQLNode<>nil) and (PItemRec(GenerateSQLNode.Data)^.ITYPE=1) then
  Begin
   ibdsMain.SelectSQL.Add('select A.ID, A.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME, A.ITEM_TYPE,');
   ibdsMain.SelectSQL.Add('A.PARENT_ID, A2.NAME PARENT_NAME, A.CHIELD_COUNT, A.ARTICUL, A.NAME,');
   ibdsMain.SelectSQL.Add('A.UNITS, A.NDS, A.COMMENTS, A.GUARANTEE_PERIOD_STR');
   ibdsMain.SelectSQL.Add('from ARTICULS A, ENTERPRISES E, ARTICULS A2, SETS S');
   ibdsMain.SelectSQL.Add('where '+WhereSQL+' (S.PART_ARTICUL_ID=A.ID) and');
   ibdsMain.SelectSQL.Add('(A.ENTERPRISE_ID=E.ID) and (A.PARENT_ID=A2.ID)');
   ibdsMain.SelectSQL.Add('order by'+OrderBy)
  End
 else
  Begin
   ibdsMain.SelectSQL.Add('select A.ID, A.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME, A.ITEM_TYPE,');
   ibdsMain.SelectSQL.Add('A.PARENT_ID, A2.NAME PARENT_NAME, A.CHIELD_COUNT, A.ARTICUL, A.NAME,');
   ibdsMain.SelectSQL.Add('A.UNITS, A.NDS, A.COMMENTS, A.GUARANTEE_PERIOD_STR');
   ibdsMain.SelectSQL.Add('from ARTICULS A, ENTERPRISES E, ARTICULS A2');
   ibdsMain.SelectSQL.Add('where '+WhereSQL+' (A.ENTERPRISE_ID=E.ID) and (A.PARENT_ID=A2.ID)');
   ibdsMain.SelectSQL.Add('order by'+OrderBy)
  End;
 If (GenerateSQLNode<>nil) then
  ibdsMain.ParamByName('PARENT_ID').AsInt64 := PItemRec(GenerateSQLNode.Data)^.ID
end;

procedure TfrmArticuls.sbFirstClick(Sender: TObject);
begin
 ibdsMain.First
end;

procedure TfrmArticuls.sbPriorClick(Sender: TObject);
begin
 ibdsMain.Prior
end;

procedure TfrmArticuls.sbNextClick(Sender: TObject);
begin
 ibdsMain.Next
end;

procedure TfrmArticuls.sbLastClick(Sender: TObject);
begin
 ibdsMain.Last
end;

procedure TfrmArticuls.sbAddClick(Sender: TObject);
begin
 ibdsMain.Insert;
 If NOT (pnlDetail.Visible) then
  Begin
   sbDetail.Down := True;
   pnlDetail.Visible := True
  End;
 dbeName.SetFocus
end;

procedure TfrmArticuls.sbDeleteClick(Sender: TObject);
begin
 ibdsMain.Delete;
 StteChange(True)
end;

procedure TfrmArticuls.sbCancelClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMain.Bookmark;
 ibdsMain.CancelUpdates;
 StteChange(False);
 try
  ibdsMain.Bookmark := BookMark
 except
 end
end;

procedure TfrmArticuls.sbApplyClick(Sender: TObject);
 var BookMark : Largeint;
     k : Integer;
begin
 BookMark := ibdsMainID.AsLargeInt;
 try
  ibdsMain.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False);
  ibdsTree.ParamByName('ID').AsInt64 := PItemRec(TreeView1.Selected.Data)^.ID;
  ibdsEnterprises.Close;
  ibdsGroups.Close;
  ibdsEnterprises.Open;
  ibdsGroups.Open;
  TreeView1.Items.Clear;
  GenerateTree(Nil);
  TreeView1.Items[0].Expand(False);
  ibdsTree.Open;
  ibdsTree.Last;
  While Not (ibdsTree.Bof) do
   Begin
    For k := 0 to Pred(TreeView1.Items.Count) do
     If (TreeView1.Items[k].Text=ibdsTreeNAME.Value) then
      Begin
       TreeView1.Selected := TreeView1.Items[k];
       TreeView1.Items[k].Expand(False);
       Break
      End;
    ibdsTree.Prior
   End;
  ibdsTree.Close
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMain.Locate('ID',IntToStr(BookMark),[])
 except
 end
end;

procedure TfrmArticuls.dsMainStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange(True)
 else
  StteChange(ibdsMain.UpdatesPending)
end;

procedure TfrmArticuls.ibdsMainNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_ARTICULS,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainENTERPRISE_ID.Value := -1;
 ibdsMainENTERPRISE_NAME.Value := 'ВСЕ ПРЕДПРИЯТИЯ';
 If (ibdsMain.ParamByName('Parent_ID').IsNull) then
  ibdsMainPARENT_ID.AsVariant := Null
 else
  ibdsMainPARENT_ID.Value := ibdsMain.ParamByName('Parent_ID').AsInt64;
 ibdsMainPARENT_NAME.Value := TreeView1.Selected.Text;
 ibdsMainITEM_TYPE.Value := 3;
 ibdsMainNDS.Value := 18
end;

procedure TfrmArticuls.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderBy)
end;

procedure TfrmArticuls.wwDBGrid1CreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height;
end;

procedure TfrmArticuls.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
// Key := MyUpCase(Key)
end;

procedure TfrmArticuls.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderBy, (GetKeyState(VK_CONTROL)<0),
                          sbApply, sbCancel, GenerateSelectMain);
end;

procedure TfrmArticuls.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainENTERPRISE_ID.Value := ibdsEnterprisesID.Value
end;

procedure TfrmArticuls.ibdsMainUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukModify, ukInsert:
     Begin
      If (UpdateKind=ukModify) then
       ibsWhite.SQL.AddStrings(ibdsMain.ModifySQL)
      else
       ibsWhite.SQL.AddStrings(ibdsMain.InsertSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainENTERPRISE_ID.Value;
      ibsWhite.ParamByName('ITEM_TYPE').Value := ibdsMainITEM_TYPE.AsVariant;
      If (ibdsMainPARENT_ID.IsNull) then
       ibsWhite.ParamByName('PARENT_ID').Value := null
      else
       ibsWhite.ParamByName('PARENT_ID').AsInt64 := ibdsMainPARENT_ID.Value;
      ibsWhite.ParamByName('ARTICUL').Value := ibdsMainARTICUL.AsVariant;
      ibsWhite.ParamByName('NAME').Value := ibdsMainNAME.AsVariant;
      ibsWhite.ParamByName('UNITS').Value := ibdsMainUNITS.AsVariant;
      ibsWhite.ParamByName('NDS').Value := ibdsMainNDS.AsVariant;
      ibsWhite.ParamByName('GUARANTEE_PERIOD_STR').Value := ibdsMainGUARANTEE_PERIOD_STR.AsVariant;
      ibsWhite.ParamByName('COMMENTS').Value := ibdsMainCOMMENTS.AsVariant;
      If (UpdateKind=ukInsert) then
        ibsWhite.ParamByName('ID').AsInt64 := ibdsMainID.Value
      else
       ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainID.Value
     End;
    ukDelete:
     Begin
      ibsWhite.SQL.AddStrings(ibdsMain.DeleteSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainID.Value
     End
   End;
   try
    ibsWhite.ExecQuery
   except
    MessageDlg('Ошибка при сохранении в белой базе. В белую базу данные не попали!',mtError,[mbOK],0)
   end
  End
end;

procedure TfrmArticuls.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  If (ibdsGroupsID.IsNull) then
   ibdsMainPARENT_ID.AsVariant := null
  else
   ibdsMainPARENT_ID.Value := ibdsGroupsID.Value
end;

procedure TfrmArticuls.GenerateTree(Node: TTreeNode);
 var R : PItemRec;
     NewNode : TTreeNode;
begin
 ibsChild.SQL.Clear;
 If (Node=nil) then
  Begin
   ibsChild.SQL.Add('select a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, a.ITEM_TYPE, count(aa.id) CHIELD_GROUPS_COUNT');
   ibsChild.SQL.Add('from ARTICULS a left OUTER JOIN articuls aa on');
   ibsChild.SQL.Add('((a.id=aa.parent_id) and ((aa.item_type=0) or (aa.item_type=1)))');
   ibsChild.SQL.Add('where (a.PARENT_ID IS NULL) and ((a.ITEM_TYPE=0) or (a.ITEM_TYPE=1))');
   ibsChild.SQL.Add('group by a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, a.ITEM_TYPE');
   ibsChild.SQL.Add('order by a.NAME');
  End
 else
  Begin
   ibsChild.SQL.Add('select a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, a.ITEM_TYPE, count(aa.id) CHIELD_GROUPS_COUNT');
   ibsChild.SQL.Add('from ARTICULS a left OUTER JOIN articuls aa on');
   ibsChild.SQL.Add('((a.id=aa.parent_id) and ((aa.item_type=0) or (aa.item_type=1)))');
   ibsChild.SQL.Add('where (a.PARENT_ID='+IntToStr(PItemRec(Node.Data)^.ID)+') and ((a.ITEM_TYPE=0) or (a.ITEM_TYPE=1))');
   ibsChild.SQL.Add('group by a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, a.ITEM_TYPE');
   ibsChild.SQL.Add('order by a.NAME');
   Node.DeleteChildren
  End;
 ibsChild.ExecQuery;
 While not (ibsChild.EOF) do
  Begin
   NewNode := TreeView1.Items.AddChild(Node, ibsChild.FieldByName('NAME').asString);
   New(R);
   NewNode.Data := R;
   R^.Id := ibsChild.FieldByName('ID').AsInt64;
   R^.Parent := ibsChild.FieldByName('PARENT_ID').asInt64;
   R^.CCount := ibsChild.FieldByName('CHIELD_COUNT').asInt64;
   R^.ITYPE := ibsChild.FieldByName('ITEM_TYPE').asInteger;
   NewNode.HasChildren := (ibsChild.FieldByName('CHIELD_GROUPS_COUNT').asInt64 > 0);
   NewNode.ImageIndex := PItemRec(NewNode.Data)^.ITYPE;
   NewNode.SelectedIndex := PItemRec(NewNode.Data)^.ITYPE+2;
   ibsChild.Next
  End;
 ibsChild.Close
end;

procedure TfrmArticuls.TreeView1Deletion(Sender: TObject; Node: TTreeNode);
begin
 Dispose(PItemRec(Node.Data))
end;

procedure TfrmArticuls.TreeView1Expanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
 GenerateTree(Node)
end;

procedure TfrmArticuls.TreeView1Changing(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
 var k : Integer; 
begin
 If (sbApply.Enabled) then
  Begin
   AllowChange := False;
   Case MessageDlg('Имеются несохраненные изменения. Сохранить?', mtConfirmation, [mbYes,mbNo,mbCancel],0) of
    mrYes   : Begin
               k := Node.AbsoluteIndex;
               sbApply.Click;
               TreeView1.Selected := TreeView1.Items[k];
               TreeView1.Items[k].Expand(False)
              End;
    mrNo    : Begin
               AllowChange := True;
               sbCancel.Click;
               ibdsMain.Close;
               GenerateSQLNode := Node;
               GenerateSelectMain;
               ibdsMain.Open
              End;
    mrCancel: Exit
   End
  End
 else
  Begin
   ibdsMain.Close;
   GenerateSQLNode := Node;
   GenerateSelectMain;
   ibdsMain.Open
  End
end;

procedure TfrmArticuls.dsMainDataChange(Sender: TObject; Field: TField);
 var k : Integer;
begin
 For k := 0 to Pred(pnlDetail.ControlCount) do
  If (pnlDetail.Controls[k].Tag=1) then
   pnlDetail.Controls[k].Visible := (ibdsMainITEM_TYPE.Value<>0)
end;

procedure TfrmArticuls.ibdsMainBeforePost(DataSet: TDataSet);
begin
 If (ibdsMainITEM_TYPE.Value=0) then
  Begin
   ibdsMainARTICUL.Value := '';
   ibdsMainUNITS.Value := '';
   ibdsMainNDS.Value := 0
  End
end;

procedure TfrmArticuls.TreeView1GetImageIndex(Sender: TObject;
  Node: TTreeNode);
begin
 If (PItemRec(Node.Data)^.ITYPE=0) then
  If (Node.Expanded) then
   Node.ImageIndex := 2
  else
   Node.ImageIndex := 0
 else
  If (Node.Expanded) then
   Node.ImageIndex := 3
  else
   Node.ImageIndex := 1
end;

procedure TfrmArticuls.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
 If (PItemRec(Node.Data)^.CCount>0) then
  Sender.Canvas.Font.Style := []
 else
  Sender.Canvas.Font.Style := [fsItalic];
 DefaultDraw := True
end;

procedure TfrmArticuls.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 AFont.Color := clWindowText;
 If (ibdsMainITEM_TYPE.IsNull) then
  ABrush.Color := clWindow
 else
  Case ibdsMainITEM_TYPE.Value of
   0 : ABrush.Color := ColorGroups;
   1 : ABrush.Color := ColorComplects;
   2 : ABrush.Color := ColorWorks;
   3 : ABrush.Color := ColorGoods;
   4 : ABrush.Color := ColorMany
  end
end;

procedure TfrmArticuls.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
 GenerateSQLNode := Node;
 sbComplect.Enabled := (PItemRec(Node.Data)^.ITYPE=1) or (ibdsMainITEM_TYPE.AsInteger=1) or
                       (sbComplect.Down);
 sbAdd.Enabled := (PItemRec(Node.Data)^.ITYPE<>1);
 sbDelete.Enabled := (PItemRec(Node.Data)^.ITYPE<>1);
 sbCopy.Enabled := sbComplect.Enabled
end;

procedure TfrmArticuls.sbComplectClick(Sender: TObject);
begin
 If sbComplect.Down then
  Begin
   If (ibdsMainITEM_TYPE.AsInteger=1) then
    Begin
     Label8.Caption := 'Комплект: '+ibdsMainNAME.AsString;
     ibdsSets.ParamByName('ID').AsInt64 := ibdsMainID.AsLargeInt
    End
   else
    Begin
     Label8.Caption := 'Комплект: '+TreeView1.Selected.Text;
     ibdsSets.ParamByName('ID').AsInt64 := PItemRec(TreeView1.Selected.Data)^.Id
    End;
   ibdsArticuls.Open;
   ibdsSets.Open;
   pnlComplect.Show;
   Label8.AutoSize := True
  End
 else
  Begin
   If (sbApplySet.Enabled) then
    Case MessageDlg('Имеются несохраненные изменения. Сохранить?', mtConfirmation, [mbYes,mbNo,mbCancel],0) of
     mrYes: sbApplySet.Click;
     mrNo: sbCancelSet.Click;
     mrCancel: Exit
    End;
   ibdsSets.Close;
   ibdsArticuls.Close;
   pnlComplect.Hide;
   Label8.AutoSize := False;
   sbComplect.Enabled := (PItemRec(TreeView1.Selected.Data)^.ITYPE=1) or (ibdsMainITEM_TYPE.AsInteger=1);
   sbCopy.Enabled := sbComplect.Enabled
  End;
 Splitter2.Visible := pnlComplect.Visible
end;

procedure TfrmArticuls.ibdsSetsNewRecord(DataSet: TDataSet);
begin
 ibdsSetsSET_ARTICUL_ID.Value := ibdsSets.ParamByName('ID').AsInt64;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_SETS,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsSetsID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsSetsPART_ARTICUL_ID.Value := ibdsMainID.Value;
 ibdsSetsNAME.Value := ibdsMainNAME.Value;
 ibdsSetsAMOUNT.Value := 1;
 wwDBGrid2.SetActiveField('Amount')
end;

procedure TfrmArticuls.ibdsSetsUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukModify, ukInsert:
     Begin
      If (UpdateKind=ukModify) then
       ibsWhite.SQL.AddStrings(ibdsSets.ModifySQL)
      else
       ibsWhite.SQL.AddStrings(ibdsSets.InsertSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('AMOUNT').Value := ibdsSetsAMOUNT.AsVariant;
      If (UpdateKind=ukInsert) then
       Begin
        ibsWhite.ParamByName('ID').AsInt64 := ibdsSetsID.Value;
        ibsWhite.ParamByName('SET_ARTICUL_ID').AsInt64 := ibdsSetsSET_ARTICUL_ID.Value;
        ibsWhite.ParamByName('PART_ARTICUL_ID').AsInt64 := ibdsSetsPART_ARTICUL_ID.Value
       End
      else
       Begin
        ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsSetsID.Value;
        ibsWhite.ParamByName('PART_ARTICUL_ID').AsInt64 := ibdsSetsPART_ARTICUL_ID.Value
       End 
     End;
    ukDelete:
     Begin
      ibsWhite.SQL.AddStrings(ibdsSets.DeleteSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsSetsID.Value
     End
   End;
   try
    ibsWhite.ExecQuery
   except
    MessageDlg('Ошибка при сохранении в белой базе. В белую базу данные не попали!',mtError,[mbOK],0)
   end
  End
end;

procedure TfrmArticuls.sbAddSetClick(Sender: TObject);
begin
 If (ibdsMainID.Value=ibdsSets.ParamByName('ID').AsInt64) then
  MessageDlg('Попытка добавить компелект в самого себя.',mtError,[mbOK],0)
 else
  If (ibdsSets.Locate('PART_ARTICUL_ID',VarArrayOf([IntToStr(ibdsMainID.Value)]),[])) then
   wwDBGrid2.SetActiveField('Amount')
  else 
   ibdsSets.Append
end;

procedure TfrmArticuls.sbDeleteSetClick(Sender: TObject);
begin
 ibdsSets.Delete;
 SetStteChange(True)
end;

procedure TfrmArticuls.dsSetsStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  SetStteChange(True)
 else
  SetStteChange(ibdsSets.UpdatesPending)
end;

procedure TfrmArticuls.sbCancelSetClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsSets.Bookmark;
 ibdsSets.Close;
 ibdsSets.Open;
 SetStteChange(False);
 try
  ibdsSets.Bookmark := BookMark
 except
 end
end;

procedure TfrmArticuls.sbApplySetClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsSets.Bookmark;
 try
  ibdsSets.ApplyUpdates;
  trMain.CommitRetaining;
  SetStteChange(False);
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsSets.Bookmark := BookMark
 except
 end
end;

procedure TfrmArticuls.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderBySets, (GetKeyState(VK_CONTROL)<0),
                          sbApplySet, sbCancelSet, GenerateSelectSets);
end;

procedure TfrmArticuls.GenerateSelectSets;
 var ID : Int64;
begin
 ID := ibdsSets.ParamByName('ID').AsInt64;
 ibdsSets.SelectSQL.Clear;
 ibdsSets.SelectSQL.Add('select s.id, s.set_articul_id, a.name, s.part_articul_id, a.item_type, s.amount');
 ibdsSets.SelectSQL.Add('from sets s, articuls a');
 ibdsSets.SelectSQL.Add('where (s.part_articul_id=a.id) and (s.set_articul_id=:id)');
 ibdsSets.SelectSQL.Add('order by'+OrderBySets);
 ibdsSets.ParamByName('ID').AsInt64 := ID
end;

procedure TfrmArticuls.wwDBGrid2CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderBySets)
end;

procedure TfrmArticuls.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 AFont.Color := clWindowText;
 If (ibdsSetsITEM_TYPE.IsNull) then
  ABrush.Color := clWindow
 else
  Case ibdsSetsITEM_TYPE.Value of
   0 : ABrush.Color := ColorGroups;
   1 : ABrush.Color := ColorComplects;
   2 : ABrush.Color := ColorWorks;
   3 : ABrush.Color := ColorGoods;
   4 : ABrush.Color := ColorMany
  end
end;

procedure TfrmArticuls.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedureUpdate) then
  LookUpProcedureUpdate;
 If (Key=vk_F9) and Assigned(LookUpProcedureInsert) then
  LookUpProcedureInsert
end;

procedure TfrmArticuls.wwDBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (ssCtrl in Shift) and (Key in [Ord('F'),Ord('f'),Ord('А'),Ord('а')]) then
  SpeedButton9.Click
end;

procedure TfrmArticuls.SpeedButton9Click(Sender: TObject);
begin
 pnlFilter.Visible := SpeedButton9.Down;
 If (pnlFilter.Visible) then
  dbeFilter.SetFocus
 else
  Begin
   If (frmArticuls.FindComponent('frmSearchArticuls')<>nil) then
    frmSearchArticuls.Free;
   ibdsSearch.Close
  End
end;

procedure TfrmArticuls.sbFilterClick(Sender: TObject);
 var ID : Integer;
begin
 ibdsSearch.Close;
 ibdsSearch.ParamByName('NAME').AsString := AnsiUpperCase(dbeFilter.Text);
 ibdsSearch.Open;
 If (ibdsSearch.RecordCount>0) then
  Begin
   ibdsSearch.Next;
   ID := ibdsSearchID.AsInteger;
   ibdsSearch.Prior;
   If (ibdsSearchID.AsInteger=ID) then
    LocateItem
   else
    Begin
     If (frmArticuls.FindComponent('frmSearchArticuls')=nil) then
      frmSearchArticuls := TfrmSearchArticuls.Create(frmArticuls);
     frmSearchArticuls.Top := frmArticuls.Top;
     frmSearchArticuls.Left := Screen.Width-frmSearchArticuls.Width;
     frmSearchArticuls.wwDBGrid1.DataSource := dsSearch;
     frmSearchArticuls.Show
    End
  End
 else
  MessageDlg('Записей, удовлетворяющих условию не найдено.', mtInformation, [mbOK], 0)
end;

procedure TfrmArticuls.sbCopyClick(Sender: TObject);
 var ENTERPRISE_ID : Largeint;
     ITEM_TYPE : Integer;
     ARTICUL, NAME, UNITS, COMMENTS, GUARANTEE_PERIOD : String;
     NDS : Double;
begin
 If (MessageDlg('Вы хотите скопировать текущий комплект?',mtConfirmation,[mbOK,mbCancel],0)=mrOK) then
  Begin
   ENTERPRISE_ID := ibdsMainENTERPRISE_ID.AsLargeInt;
   ITEM_TYPE := ibdsMainITEM_TYPE.AsInteger;
   ARTICUL := ibdsMainARTICUL.AsString;
   NAME := ibdsMainNAME.AsString;
   UNITS := ibdsMainUNITS.AsString;
   NDS := ibdsMainNDS.AsFloat;
   GUARANTEE_PERIOD := ibdsMainGUARANTEE_PERIOD_STR.AsString;
   COMMENTS := ibdsMainCOMMENTS.AsString;
   ibsAux.SQL.Clear;
   ibsAux.SQL.Add('select a.name, s.part_articul_id, s.amount from sets s, articuls a');
   ibsAux.SQL.Add('where (s.part_articul_id=a.id) and (s.set_articul_id='+ibdsMainID.AsString+')');
   ibdsMain.Append;
   ibdsMainENTERPRISE_ID.Value := ENTERPRISE_ID;
   ibdsMainITEM_TYPE.Value := ITEM_TYPE;
   ibdsMainARTICUL.Value := ARTICUL;
   ibdsMainNAME.Value := NAME;
   ibdsMainUNITS.Value := UNITS;
   ibdsMainNDS.Value := NDS;
   If (GUARANTEE_PERIOD<>'') then
    ibdsMainGUARANTEE_PERIOD_STR.Value := GUARANTEE_PERIOD
   else
    ibdsMainGUARANTEE_PERIOD_STR.AsVariant := Null;
   ibdsMainCOMMENTS.Value := COMMENTS;
   ibdsMain.Post;
   If (sbComplect.Down) then
    Begin
     sbComplect.Down := False;
     sbComplect.Click
    End;
   sbComplect.Down := True;
   sbComplect.Click;
   ibsAux.ExecQuery;
   While NOT (ibsAux.Eof) do
    Begin
     ibdsSets.Append;
     ibdsSetsNAME.Value := ibsAux.FieldByName('name').AsString;
     ibdsSetsPART_ARTICUL_ID.Value := ibsAux.FieldByName('part_articul_id').AsInt64;
     ibdsSetsAMOUNT.Value := ibsAux.FieldByName('amount').AsDouble;
     ibsAux.Next
    End;
   ibsAux.Close;
   If (ibdsSets.State in [dsEdit, dsInsert]) then
    ibdsSets.Post
  End
end;

procedure TfrmArticuls.wwDBLookupCombo8CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsSetsPART_ARTICUL_ID.Value := ibdsArticulsID.Value
end;

procedure TfrmArticuls.wwDBGrid1CalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderBy);
  2: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderBySets);
 end
end;

procedure TfrmArticuls.ibdsSearchAfterScroll(DataSet: TDataSet);
begin
 LocateItem
end;

procedure TfrmArticuls.LocateItem;
 var TmpNode : TTreeNode;
begin
 ibdsMain.Open;
 If NOT (ibdsMain.Locate('ID',ibdsSearchID.AsString,[])) then
  Begin
   TreeView1.Selected := TreeView1.Items[0];
   TreeView1.Selected.Collapse(True);
   TreeView1.Selected.Expand(False);
   ibdsLocateItem.Open;
   ibdsLocateItem.Last;
   While NOT (ibdsLocateItem.Bof) do
    Begin
     If (ibdsLocateItemID.Value<>ibdsSearchID.Value) then
      Begin
       TmpNode := TreeView1.Selected.GetFirstChild;
       While (PItemRec(TmpNode.Data)^.ID<>ibdsLocateItemID.Value) do
        TmpNode := TreeView1.Selected.GetNextChild(TmpNode);
       TreeView1.Selected := TmpNode;
       TreeView1.Selected.Expand(False);
      End
     else
      ibdsMain.Locate('ID',ibdsLocateItemID.AsString,[]);
     ibdsLocateItem.Prior
    End;
   ibdsLocateItem.Close
  End
end;

procedure TfrmArticuls.N1Click(Sender: TObject);
begin
 If ((Sender as TMenuItem).Owner.FindComponent('frmGoodInfo')=nil) then
  frmGoodInfo := TfrmGoodInfo.Create((Sender as TMenuItem).Owner);
 frmGoodInfo.ibdsGoods.Close;
 frmGoodInfo.ibdsReservation.Close;
 If (Black) then
  frmGoodInfo.ibdsGoods.SelectSQL[4] := '(G.ARTICUL_ID=:PART_ARTICUL_ID) and (G.TOTAL_REAL!=0)'
 else
  frmGoodInfo.ibdsGoods.SelectSQL[4] := '(G.ARTICUL_ID=:PART_ARTICUL_ID) and NOT (G.TOTAL=0)';
 frmGoodInfo.ibdsReservation.SelectSQL[4] := 'where (IB.ARTICUL_ID=:PART_ARTICUL_ID) and (IB.INVOICE_ID=IH.ID) and';
 frmGoodInfo.ibdsReservation.SelectSQL[16] := '(S.PART_ARTICUL_ID=:PART_ARTICUL_ID) and (IB.INVOICE_ID=IH.ID) and';
 frmGoodInfo.ibdsGoods.DataSource := dsSets;
 frmGoodInfo.ibdsReservation.DataSource := dsSets;
 frmGoodInfo.ibdsGoods.Open;
 frmGoodInfo.ibdsReservation.Open;
 frmGoodInfo.Show
end;

end.
