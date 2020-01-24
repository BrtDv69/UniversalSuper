unit CompositVed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Buttons, IBSQL, IBDatabase,
  fcTreeView, StdCtrls, wwdblook, wwcheckbox, wwdbdatetimepicker, Db,
  IBCustomDataSet, FR_Class, Menus;

type
  TfrmCompositVed = class(TfrmLike)
    Panel4: TPanel;
    sbLastCompositVed: TSpeedButton;
    sbNextCompositVed: TSpeedButton;
    sbPriorCompositVed: TSpeedButton;
    sbFirstCompositVed: TSpeedButton;
    sbCloseCompositVed: TSpeedButton;
    Panel2: TPanel;
    Panel9: TPanel;
    sbRefreshCompositVed: TSpeedButton;
    Splitter1: TSplitter;
    Panel1: TPanel;
    fcTreeView1: TfcTreeView;
    edType: TwwDBLookupCombo;
    deDateStart: TwwDBDateTimePicker;
    Label1: TLabel;
    ibdsInvoiceTypes: TIBDataSet;
    ibdsInvoiceTypesID: TLargeintField;
    ibdsInvoiceTypesNAME: TIBStringField;
    ibdsBalansGrouped: TIBDataSet;
    ibdsBalans: TIBDataSet;
    ibdsBalansGroupedNAME: TIBStringField;
    ibdsBalansGroupedAMOUNT: TFloatField;
    ibdsBalansGroupedSALDO_GOODS: TFloatField;
    ibdsBalansGroupedSALDO_MANY: TFloatField;
    Panel3: TPanel;
    dbgGrouped: TwwDBGrid;
    Panel5: TPanel;
    lblNotGoods: TLabel;
    lblNotMany: TLabel;
    lblItogo: TLabel;
    dsBalansGrouped: TDataSource;
    dsBalans: TDataSource;
    ibdsInvoiceTypesIN_OUT: TIntegerField;
    ibdsBalansGroupedSYMBOL: TIBStringField;
    ibdsBalansGroupedDECIMALS: TSmallintField;
    ibdsBalansGroupedAmountFmt: TStringField;
    ibdsBalansGroupedSaldo_GoodsFmt: TStringField;
    ibdsBalansGroupedSaldo_ManyFmt: TStringField;
    wwExpandButton1: TwwExpandButton;
    dbgDetails: TwwDBGrid;
    ibdsBalansGroupedCONTRACTOR_ID: TLargeintField;
    ibdsBalansNAME: TIBStringField;
    ibdsBalansSYMBOL: TIBStringField;
    ibdsBalansDECIMALS: TSmallintField;
    ibdsBalansAMOUNT: TFloatField;
    ibdsBalansSALDO_GOODS: TFloatField;
    ibdsBalansSALDO_MANY: TFloatField;
    ibdsBalansNUMBER_STR: TIBStringField;
    ibdsBalansINVOICE_DATE: TDateField;
    ibdsBalansAmountFmt: TStringField;
    ibdsBalansSaldo_GoodsFmt: TStringField;
    ibdsBalansSaldo_ManyFmt: TStringField;
    sbPrint: TSpeedButton;
    ibdsBalansAMOUNT_FMT: TStringField;
    ibdsTotals: TIBDataSet;
    ibdsTotalsSYMBOL: TIBStringField;
    ibdsTotalsDECIMALS: TSmallintField;
    ibdsTotalsAMOUNT: TFloatField;
    ibdsTotalsSALDO_GOODS: TFloatField;
    ibdsTotalsSALDO_MANY: TFloatField;
    ibdsTotalsUN_PAYED: TFloatField;
    ibdsTotalsUN_DISPACHED: TFloatField;
    ibdsTotalsID: TLargeintField;
    ibdsBalansGroupedID: TLargeintField;
    ibdsBalansID: TLargeintField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ibdsBalansINVOICE_ID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure sbCloseCompositVedClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fcTreeView1Deletion(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode);
    procedure fcTreeView1Expanding(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; var AllowExpansion: Boolean);
    procedure fcTreeView1ToggleCheckbox(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode);
    procedure fcTreeView1CalcNodeAttributes(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; State: TfcItemStates);
    procedure ibdsInvoiceTypesBeforeOpen(DataSet: TDataSet);
    procedure deDateStartChange(Sender: TObject);
    procedure sbRefreshCompositVedClick(Sender: TObject);
    procedure ibdsInvoiceTypesBeforeClose(DataSet: TDataSet);
    procedure ibdsBalansGroupedCalcFields(DataSet: TDataSet);
    procedure edTypeCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure dbgGroupedUpdateFooter(Sender: TObject);
    procedure ibdsBalansGroupedBeforeClose(DataSet: TDataSet);
    procedure wwExpandButton1AfterCollapse(Sender: TObject);
    procedure wwExpandButton1BeforeExpand(Sender: TObject);
    procedure ibdsBalansCalcFields(DataSet: TDataSet);
    procedure ibdsBalansBeforeClose(DataSet: TDataSet);
    procedure sbPrintClick(Sender: TObject);
    procedure ibdsBalansGroupedAfterOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure fcTreeView1MouseUp(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    procedure GenerateTree(Node: TfcTreeNode);
    procedure OpenDataSets;
    procedure GenerateBalansGrouped;
    procedure GenerateBalans;
    function GetWhere : String;
  public
    { Public declarations }
  end;

type
  PItemRec = ^ItemRec;
  ItemRec = Record
   Id    : Int64;
   Parent: Int64;
   Enterprise: Int64;
   IType : Byte;
  end;

var
  frmCompositVed: TfrmCompositVed;

implementation

uses DM, Misk, Main, Invoice;

{$R *.DFM}

var Level : Integer = -3;
    Calculated : Boolean = False;
    BookMarkInvoiceTypes : String = '';
    AllMenegers, AllEnterprises, AllGroups : Boolean;
    WhereBalans, EnterprisesNotInGroupsChecked, MenegersChecked, MenegersUnChecked, EnterprisesChecked, EnterprisesUnChecked : String;
    MenegersCheckedCount, MenegersUnCheckedCount, EnterprisesCheckedCount, EnterprisesUnCheckedCount : Integer;

procedure TfrmCompositVed.FormCreate(Sender: TObject);
 var ki : Integer;
     TmpNode : TfcTreeNode;
begin
 FName := 'Расчеты с контрагентами';
 inherited;
 If NOT (Black) then
  Begin
   ki := 0;
   While (ki<=Pred(ComponentCount)) do
    Begin
     If (Components[ki] is TIBDataSet) and
        ((Components[ki] as TIBDataSet).Database=frmDM.dbMain) then
      (Components[ki] as TIBDataSet).Database := frmDM.dbWhite;
     If (Components[ki] is TIBSQL) and
        ((Components[ki] as TIBSQL).Database=frmDM.dbMain) then
      (Components[ki] as TIBSQL).Database := frmDM.dbWhite;
     If (Components[ki].Tag=99) then
      Components[ki].Free
     else
      Inc(ki)
    End
  End;
 trMain.StartTransaction;
 OpenDataSets;
 GenerateTree(Nil);
 fcTreeView1.FullExpand;
 fcTreeView1.Items[4].Collapse(False);
 TmpNode := fcTreeView1.Items[4].GetNextSibling.GetFirstChild;
 While Not (TmpNode=nil) do
  Begin
   TmpNode.Collapse(False);
   TmpNode := TmpNode.GetNextSibling
  End; 
 fcTreeView1.Selected := fcTreeView1.Items[0];
 fcTreeView1.OnExpanding := nil
end;

procedure TfrmCompositVed.sbCloseCompositVedClick(Sender: TObject);
begin
 Close
end;

procedure TfrmCompositVed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Calculated := False;
 inherited
end;

procedure TfrmCompositVed.GenerateTree(Node: TfcTreeNode);
 var R : PItemRec;
     NewNode : TfcTreeNode;
     S : String;
begin
 If (Node=nil) then
  Begin
   fcTreeView1.Items.Clear;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Включать сбалансированные');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.Enterprise := 0;
   R^.IType := 0;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Включать не сбалансированные');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.Enterprise := 0;
   R^.IType := 0;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Включать с нулевым балансом');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.Enterprise := 0;
   R^.IType := 0;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Группировать');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.Enterprise := 0;
   R^.IType := 0;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Оформил');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   NewNode.HasChildren := True;
   New(R);
   NewNode.Data := R;
   R^.Id := -1;
   R^.Parent := 0;
   R^.Enterprise := -1;
   R^.IType := 3;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Все предприятия');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   NewNode.HasChildren := True;
   New(R);
   NewNode.Data := R;
   R^.Id := -1;
   R^.Parent := 0;
   R^.Enterprise := -1;
   R^.IType := 0
  End
 else
  Begin
   ibsGridsSetup.SQL.Clear;
   Node.DeleteChildren;
   Case PItemRec(Node.Data)^.IType of
    0 : Begin
         ibsGridsSetup.SQL.Add('select E.ID, E.NAME from ENTERPRISES E where NOT (E.ID=-1) order by 2');
         ibsGridsSetup.ExecQuery;
         While not (ibsGridsSetup.EOF) do
          Begin
           NewNode := fcTreeView1.Items.AddChild(Node, ibsGridsSetup.FieldByName('NAME').asString);
           NewNode.CheckboxType := tvctCheckbox;
           NewNode.Checked := True;
           NewNode.HasChildren := True;
           New(R);
           NewNode.Data := R;
           R^.Id := ibsGridsSetup.FieldByName('ID').AsInt64;
           R^.Parent := PItemRec(Node.Data)^.Id;
           R^.Enterprise := ibsGridsSetup.FieldByName('ID').AsInt64;
           R^.IType := 1;
           ibsGridsSetup.Next
          End;
         ibsGridsSetup.Close
        End;
    1 : Begin
         NewNode := fcTreeView1.Items.AddChild(Node, 'Не включенные в группы');
         NewNode.CheckboxType := tvctCheckbox;
         NewNode.Checked := True;
         NewNode.HasChildren := False;
         New(R);
         NewNode.Data := R;
         R^.Id := 0;
         R^.Parent := PItemRec(Node.Data)^.Id;
         R^.Enterprise := PItemRec(Node.Data)^.Enterprise;
         R^.IType := 2;
         ibsGridsSetup.SQL.Add('select CT.ID, CT.NAME, CT.CHIELD_COUNT');
         ibsGridsSetup.SQL.Add('from CONTRACTOR_TYPES CT');
         ibsGridsSetup.SQL.Add('where ((CT.ENTERPRISE_ID='+IntToStr(PItemRec(Node.Data)^.Enterprise)+') or (CT.ENTERPRISE_ID=-1)) and (CT.PARENT_ID is null) order by 2');
         ibsGridsSetup.ExecQuery;
         While not (ibsGridsSetup.EOF) do
          Begin
           NewNode := fcTreeView1.Items.AddChild(Node, ibsGridsSetup.FieldByName('NAME').asString);
           NewNode.CheckboxType := tvctCheckbox;
           NewNode.Checked := True;
           NewNode.HasChildren := (ibsGridsSetup.FieldByName('CHIELD_COUNT').AsInt64 > 0);
           New(R);
           NewNode.Data := R;
           R^.Id := ibsGridsSetup.FieldByName('ID').AsInt64;
           R^.Parent := PItemRec(Node.Data)^.Id;
           R^.Enterprise := PItemRec(Node.Data)^.Enterprise;
           R^.IType := 2;
           ibsGridsSetup.Next
          End;
         ibsGridsSetup.Close
        End;
    2 : Begin
         NewNode := fcTreeView1.Items.AddChild(Node, 'Не включенные в группы');
         NewNode.CheckboxType := tvctCheckbox;
         NewNode.Checked := True;
         NewNode.HasChildren := False;
         New(R);
         NewNode.Data := R;
         R^.Id := PItemRec(Node.Data)^.Id;
         R^.Parent := PItemRec(Node.Data)^.Id;
         R^.Enterprise := PItemRec(Node.Data)^.Enterprise;
         R^.IType := 2;
         ibsGridsSetup.SQL.Add('select CT.ID, CT.NAME, CT.CHIELD_COUNT');
         ibsGridsSetup.SQL.Add('from CONTRACTOR_TYPES CT');
         ibsGridsSetup.SQL.Add('where (CT.PARENT_ID='+IntToStr(PItemRec(Node.Data)^.Id)+') order by 2');
         ibsGridsSetup.ExecQuery;
         While not (ibsGridsSetup.EOF) do
          Begin
           NewNode := fcTreeView1.Items.AddChild(Node, ibsGridsSetup.FieldByName('NAME').asString);
           NewNode.CheckboxType := tvctCheckbox;
           NewNode.Checked := True;
           NewNode.HasChildren := (ibsGridsSetup.FieldByName('CHIELD_COUNT').AsInt64 > 0);
           New(R);
           NewNode.Data := R;
           R^.Id := ibsGridsSetup.FieldByName('ID').AsInt64;
           R^.Parent := PItemRec(Node.Data)^.Id;
           R^.Enterprise := PItemRec(Node.Data)^.Enterprise;
           R^.IType := 2;
           ibsGridsSetup.Next
          End;
         ibsGridsSetup.Close
        End;
    3 : Begin
         ibsGridsSetup.SQL.Add('select distinct IH.MASTER_ID ,P.SURNAME, P.NAME, P.SECOND_NAME');
         ibsGridsSetup.SQL.Add('from INVOICE_HEADER IH, PERSONS P');
         ibsGridsSetup.SQL.Add('where (IH.CLOSED=0) and (IH.MASTER_ID=P.ID)');
         ibsGridsSetup.SQL.Add('order by 2, 3, 4');
         ibsGridsSetup.ExecQuery;
         While not (ibsGridsSetup.EOF) do
          Begin
           S := ibsGridsSetup.FieldByName('SURNAME').asString+' ';
           If (ibsGridsSetup.FieldByName('NAME').asString<>'') then
            S := S+ibsGridsSetup.FieldByName('NAME').asString[1]+'.';
           If (ibsGridsSetup.FieldByName('SECOND_NAME').asString<>'') then
            S := S+ibsGridsSetup.FieldByName('SECOND_NAME').asString[1]+'.';
           NewNode := fcTreeView1.Items.AddChild(Node, S);
           NewNode.CheckboxType := tvctCheckbox;
           NewNode.Checked := True;
           NewNode.HasChildren := False;
           New(R);
           NewNode.Data := R;
           R^.Id := ibsGridsSetup.FieldByName('MASTER_ID').AsInt64;
           R^.Parent := PItemRec(Node.Data)^.Id;
           R^.Enterprise := 0;
           R^.IType := 3;
           ibsGridsSetup.Next
          End;
         ibsGridsSetup.Close
        End
   End
  End
end;

procedure TfrmCompositVed.fcTreeView1Deletion(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode);
begin
 Dispose(PItemRec(Node.Data))
end;

procedure TfrmCompositVed.fcTreeView1Expanding(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; var AllowExpansion: Boolean);
begin
 GenerateTree(Node)
end;

procedure TfrmCompositVed.fcTreeView1ToggleCheckbox(
  TreeView: TfcCustomTreeView; Node: TfcTreeNode);
var TmpNode : TfcTreeNode;
    AllChecked : Boolean;
    k : Integer;
begin
 If (Node=fcTreeView1.Items[0]) or (Node=fcTreeView1.Items[1]) or (Node=fcTreeView1.Items[2]) then
  Calculated := False;
 ibdsBalansGrouped.Close;
 ibdsBalans.Close;
 If (edType.Text<>'') then
  sbRefreshCompositVed.Enabled := True;
 If (Level=-3) then
  Level := Node.Level;
 If (Node.HasChildren) and NOT (Node.Level<Level) then
  Begin
   TmpNode := Node.GetFirstChild;
   While (TmpNode<>nil) do
    Begin
     TmpNode.Checked := Node.Checked;
     TmpNode := Node.GetNextChild(TmpNode)
    End
  End;
 If (Node.Parent<>Nil) and NOT (Node.Level>Level) then
  If (Node.Checked) then
   Begin
    AllChecked := True;
    TmpNode := Node.Parent.GetFirstChild;
    While (TmpNode<>nil) do
     Begin
      AllChecked := AllChecked and TmpNode.Checked;
      TmpNode := TmpNode.GetNextSibling
     End;
    Node.Parent.Checked := True
   End
  else
   Begin
    k := 0;
    TmpNode := Node.Parent.GetFirstChild;
    While (TmpNode<>nil) do
     Begin
      If (TmpNode.Checked) then
       Inc(k);
      TmpNode := TmpNode.GetNextSibling
     End;
    Node.Parent.Checked := (k>0)
   End;
 If (Level=Node.Level) then
  Level := -3
end;

procedure TfrmCompositVed.fcTreeView1CalcNodeAttributes(
  TreeView: TfcCustomTreeView; Node: TfcTreeNode; State: TfcItemStates);
var TmpNode : TfcTreeNode;
    ExistGrayed : Boolean;
begin
 If (Node.HasChildren) and (Node.Checked) then
  Begin
   ExistGrayed := False;
   TmpNode := Node.GetFirstChild;
   While (TmpNode<>nil) do
    Begin
     ExistGrayed := ExistGrayed or TmpNode.Grayed or NOT TmpNode.Checked;
     TmpNode := Node.GetNextChild(TmpNode)
    End;
   Node.Grayed := ExistGrayed
  End
 else
  Node.Grayed := False
end;

procedure TfrmCompositVed.ibdsInvoiceTypesBeforeOpen(DataSet: TDataSet);
begin
 (DataSet as TIBDataSet).ParamByName('PERSON_ID').Value := PersonID
end;

procedure TfrmCompositVed.OpenDataSets;
begin
 ibdsInvoiceTypes.Open;
 If (BookMarkInvoiceTypes<>'') then
  Begin
   ibdsInvoiceTypes.Bookmark := BookMarkInvoiceTypes;
   edType.Text := ibdsInvoiceTypesNAME.AsString
  End;
 If Calculated then
  Begin
   If (fcTreeView1.Items[3].Checked) then
    Begin
     dbgDetails.OnUpdateFooter := nil;
     GenerateBalansGrouped;
     ibdsBalans.Close;
     ibdsBalans.DataSource := dsBalansGrouped;
     ibdsBalansGrouped.Open;
     wwExpandButton1.Enabled := True;
     dbgGrouped.Visible := True;
     dbgDetails.Visible := False;
     dbgDetails.Align := alNone;
     dbgDetails.Options := dbgDetails.Options-[dgShowFooter];
     GenerateBalans;
     dbgDetails.UseTFields := True
    End
   else
    Begin
     ibdsBalans.DataSource := nil;
     GenerateBalans;
     dbgDetails.UseTFields := False;
     wwExpandButton1.Enabled := False;
     dbgDetails.Parent := Panel3;
     dbgGrouped.Visible := False;
     dbgDetails.Align := alClient;
     dbgDetails.Visible := True;
     dbgDetails.Options := dbgDetails.Options+[dgShowFooter];
     ibdsBalans.Open;
     If NOT Assigned(dbgDetails.OnUpdateFooter) then
      Begin
       dbgDetails.OnUpdateFooter := dbgGroupedUpdateFooter;
       dbgGroupedUpdateFooter(dbgDetails)
      End 
    End
  End
end;

procedure TfrmCompositVed.deDateStartChange(Sender: TObject);
begin
 Calculated := False;
 If (fcTreeView1.Items[3].Checked) then
  ibdsBalansGrouped.Close
 else
  ibdsBalans.Close;
 If (edType.Text<>'') then
  sbRefreshCompositVed.Enabled := True
end;

procedure TfrmCompositVed.sbRefreshCompositVedClick(Sender: TObject);
begin
 If NOT Calculated then
  Begin
   ibsGridsSetup.SQL.Clear;
   ibsGridsSetup.SQL.Add('select * from GET_OPEN_INVOICES_BALANS(:START, :ID, :INCLUDE_BALANSED, :INCLUDE_UNBALANSED, :INCLUDE_ZERO)');
   ibsGridsSetup.GenerateParamNames := True;
   ibsGridsSetup.ParamByName('START').AsDate := deDateStart.Date;
   ibsGridsSetup.ParamByName('ID').AsInt64 := ibdsInvoiceTypesID.AsLargeInt;
   If (fcTreeView1.Items[0].Checked) then
    ibsGridsSetup.ParamByName('INCLUDE_BALANSED').AsInteger := 1
   else
    ibsGridsSetup.ParamByName('INCLUDE_BALANSED').AsInteger := 0;
   If (fcTreeView1.Items[1].Checked) then
    ibsGridsSetup.ParamByName('INCLUDE_UNBALANSED').AsInteger := 1
   else
    ibsGridsSetup.ParamByName('INCLUDE_UNBALANSED').AsInteger := 0;
   If (fcTreeView1.Items[2].Checked) then
    ibsGridsSetup.ParamByName('INCLUDE_ZERO').AsInteger := 1
   else
    ibsGridsSetup.ParamByName('INCLUDE_ZERO').AsInteger := 0;
   ibsGridsSetup.ExecQuery;
   trMain.Commit;
   Calculated := True;
   trMain.StartTransaction
  End;
 OpenDataSets
end;

function TfrmCompositVed.GetWhere : String;
 var GroupsChecked, GroupsUnChecked : String;
     TmpNode, TmpChildNode : TfcTreeNode;
     GroupsCheckedCount, GroupsUnCheckedCount : Integer;
     Level : Integer;
begin
 Result := '';
 AllMenegers := True;
 AllEnterprises := True;
 AllGroups := True;
 MenegersCheckedCount := 0; MenegersUnCheckedCount := 0;
 EnterprisesCheckedCount := 0; EnterprisesUnCheckedCount := 0;
 GroupsCheckedCount := 0; GroupsUnCheckedCount := 0;
 EnterprisesNotInGroupsChecked := '';
 MenegersChecked := ''; MenegersUnChecked := '';
 EnterprisesChecked := ''; EnterprisesUnChecked := '';
 TmpNode := fcTreeView1.Items[3].GetNextSibling;
 If (TmpNode.Grayed) then //Оформил
  Begin
   AllMenegers := False;
   TmpNode := fcTreeView1.Items[3].GetNextSibling.GetFirstChild;
   While (TmpNode<>nil) do
    Begin
     If (TmpNode.Checked) then
      Begin
       MenegersChecked := MenegersChecked+IntToStr(PItemRec(TmpNode.Data)^.ID)+',';
       Inc(MenegersCheckedCount)
      End
     else
      Begin
       MenegersUnChecked := MenegersUnChecked+IntToStr(PItemRec(TmpNode.Data)^.ID)+',';
       Inc(MenegersUnCheckedCount)
      End;
     TmpNode := fcTreeView1.Items[3].GetNextSibling.GetNextChild(TmpNode)
    End
  End;
 TmpNode := fcTreeView1.Items[3].GetNextSibling.GetNextSibling;
 If (TmpNode.Grayed) then //Предприятия
  Begin
   TmpNode := fcTreeView1.Items[3].GetNextSibling.GetNextSibling.GetFirstChild;
   While (TmpNode<>nil) do
    Begin
     If (TmpNode.Checked) then
      Begin
       EnterprisesChecked := EnterprisesChecked+IntToStr(PItemRec(TmpNode.Data)^.ID)+',';
       Inc(EnterprisesCheckedCount);
       If (TmpNode.Grayed) then
        Begin
         Level := TmpNode.Level;
         TmpChildNode := TmpNode.GetNext;
         If (TmpChildNode.Checked) then
          EnterprisesNotInGroupsChecked := EnterprisesNotInGroupsChecked+IntToStr(PItemRec(TmpChildNode.Data)^.Enterprise)+',';
         TmpChildNode := TmpChildNode.GetNext;
         While (TmpChildNode<>nil) and (TmpChildNode.Level>Level) do
          Begin
           If NOT(TmpChildNode.HasChildren) then
            If (TmpChildNode.Checked) then
             Begin
              GroupsChecked := GroupsChecked+IntToStr(PItemRec(TmpChildNode.Data)^.ID)+',';
              Inc(GroupsCheckedCount)
             End
            else
             Begin
              Inc(GroupsUnCheckedCount);
              AllGroups := False;
              GroupsUnChecked := GroupsUnChecked+IntToStr(PItemRec(TmpChildNode.Data)^.ID)+','
             End;
           TmpChildNode := TmpChildNode.GetNext
          End
        End
      End
     else
      Begin
       Inc(EnterprisesUnCheckedCount);
       EnterprisesUnChecked := EnterprisesUnChecked+IntToStr(PItemRec(TmpNode.Data)^.ID)+',';
       AllEnterprises := False
      End;
     TmpNode := TmpNode.GetNextSibling
    End
  End;
 If NOT (AllMenegers) then
  If (MenegersCheckedCount<MenegersUnCheckedCount) then
   Result := Result+'and (IH.MASTER_ID in ('+Copy(MenegersChecked,1,Pred(Length(MenegersChecked)))+'))'
  else
   Result := Result+'and NOT(IH.MASTER_ID in ('+Copy(MenegersUnChecked,1,Pred(Length(MenegersUnChecked)))+'))';
 If (EnterprisesNotInGroupsChecked<>'') then
  EnterprisesNotInGroupsChecked := Copy(EnterprisesNotInGroupsChecked,1,Pred(Length(EnterprisesNotInGroupsChecked)));
 If NOT (AllEnterprises) then
  If (EnterprisesCheckedCount<EnterprisesUnCheckedCount) then
   Result := Result+'and (IH.ENTERPRISE_ID in ('+Copy(EnterprisesChecked,1,Pred(Length(EnterprisesChecked)))+'))'
  else
   Result := Result+'and NOT(IH.ENTERPRISE_ID in ('+Copy(EnterprisesUnChecked,1,Pred(Length(EnterprisesUnChecked)))+'))';
 If NOT (AllGroups) then
  If (GroupsCheckedCount<GroupsUnCheckedCount) and (GroupsCheckedCount>0) then
   Result := Result+'and (CTI.CONTRACTOR_ID=C.ID) and (CTI.TYPE_ID in ('+Copy(GroupsChecked,1,Pred(Length(GroupsChecked)))+'))'
  else
   Result := Result+'and (CTI.CONTRACTOR_ID=C.ID) and NOT(CTI.TYPE_ID in ('+Copy(GroupsUnChecked,1,Pred(Length(GroupsUnChecked)))+'))'
end;

procedure TfrmCompositVed.GenerateBalansGrouped;
 var k : Integer;
begin
 WhereBalans := GetWhere;
 If (ibdsInvoiceTypesIN_OUT.AsInteger=2) then
  ibdsBalansGrouped.SelectSQL[0] := 'select C.NAME, CUR.ID, CUR.SYMBOL, CUR.DECIMALS_IN DECIMALS, SUM(TOIB.AMOUNT) AMOUNT, SUM(TOIB.SALDO_GOODS) SALDO_GOODS, -SUM(TOIB.SALDO_MANY) SALDO_MANY, IH.CONTRACTOR_ID'
 else
  ibdsBalansGrouped.SelectSQL[0] := 'select C.NAME, CUR.ID, CUR.SYMBOL, CUR.DECIMALS_OUT DECIMALS, SUM(TOIB.AMOUNT) AMOUNT, -SUM(TOIB.SALDO_GOODS) SALDO_GOODS, SUM(TOIB.SALDO_MANY) SALDO_MANY, IH.CONTRACTOR_ID';
 If (AllGroups) then
  ibdsBalansGrouped.SelectSQL[1] := 'from CURRENCY CUR, CONTRACTORS C, INVOICE_HEADER IH, TMP_OPEN_INVOICES_BALANS TOIB'
 else
  ibdsBalansGrouped.SelectSQL[1] := 'from CURRENCY CUR, CONTRACTORS C, CONTRACTOR_TYPES_INCLUDE CTI, INVOICE_HEADER IH, TMP_OPEN_INVOICES_BALANS TOIB';
 For k := Pred(ibdsBalansGrouped.SelectSQL.Count) downto 3 do
  ibdsBalansGrouped.SelectSQL.Delete(k);
 ibdsBalansGrouped.SelectSQL.Add(WhereBalans);
 ibdsBalansGrouped.SelectSQL.Add('group by C.NAME, CUR.ID, CUR.SYMBOL,');
 If (ibdsInvoiceTypesIN_OUT.AsInteger=2) then
  ibdsBalansGrouped.SelectSQL.Add('CUR.DECIMALS_IN, IH.CONTRACTOR_ID')
 else
  ibdsBalansGrouped.SelectSQL.Add('CUR.DECIMALS_OUT, IH.CONTRACTOR_ID');
 If (EnterprisesNotInGroupsChecked<>'') then
  Begin
   ibdsBalansGrouped.SelectSQL.Add('union');
   ibdsBalansGrouped.SelectSQL.Add(ibdsBalansGrouped.SelectSQL[0]);
   ibdsBalansGrouped.SelectSQL.Add('from CURRENCY CUR, CONTRACTORS C, INVOICE_HEADER IH, TMP_OPEN_INVOICES_BALANS TOIB');
   ibdsBalansGrouped.SelectSQL.Add(ibdsBalansGrouped.SelectSQL[2]);
   ibdsBalansGrouped.SelectSQL.Add('and (IH.ENTERPRISE_ID in ('+EnterprisesNotInGroupsChecked+')) and');
   ibdsBalansGrouped.SelectSQL.Add('NOT EXISTS(select * from CONTRACTOR_TYPES_INCLUDE CTI where (CTI.CONTRACTOR_ID=C.ID))');
   If NOT (AllMenegers) then
    If (MenegersCheckedCount<MenegersUnCheckedCount) then
     ibdsBalansGrouped.SelectSQL.Add('and (IH.MASTER_ID in ('+Copy(MenegersChecked,1,Pred(Length(MenegersChecked)))+'))')
    else
     ibdsBalansGrouped.SelectSQL.Add('and NOT(IH.MASTER_ID in ('+Copy(MenegersUnChecked,1,Pred(Length(MenegersUnChecked)))+'))');
   If NOT (AllEnterprises) then
    If (EnterprisesCheckedCount<EnterprisesUnCheckedCount) then
     ibdsBalansGrouped.SelectSQL.Add('and (IH.ENTERPRISE_ID in ('+Copy(EnterprisesChecked,1,Pred(Length(EnterprisesChecked)))+'))')
    else
     ibdsBalansGrouped.SelectSQL.Add('and NOT(IH.ENTERPRISE_ID in ('+Copy(EnterprisesUnChecked,1,Pred(Length(EnterprisesUnChecked)))+'))');
   ibdsBalansGrouped.SelectSQL.Add('group by C.NAME, CUR.ID, CUR.SYMBOL,');
   If (ibdsInvoiceTypesIN_OUT.AsInteger=2) then
    ibdsBalansGrouped.SelectSQL.Add('CUR.DECIMALS_IN, IH.CONTRACTOR_ID')
   else
    ibdsBalansGrouped.SelectSQL.Add('CUR.DECIMALS_OUT, IH.CONTRACTOR_ID');
  End;
 ibdsBalansGrouped.SelectSQL.Add('order by 1, 2')
end;

procedure TfrmCompositVed.ibdsInvoiceTypesBeforeClose(DataSet: TDataSet);
begin
 BookMarkInvoiceTypes := ibdsInvoiceTypes.Bookmark
end;

procedure TfrmCompositVed.ibdsBalansGroupedCalcFields(DataSet: TDataSet);
begin
 ibdsBalansGroupedAmountFmt.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsBalansGroupedDECIMALS.AsInteger)+AnsiLowerCase(ibdsBalansGroupedSYMBOL.AsString),ibdsBalansGroupedAMOUNT.AsFloat);
 ibdsBalansGroupedSaldo_GoodsFmt.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsBalansGroupedDECIMALS.AsInteger)+AnsiLowerCase(ibdsBalansGroupedSYMBOL.AsString),ibdsBalansGroupedSALDO_GOODS.AsFloat);
 ibdsBalansGroupedSaldo_ManyFmt.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsBalansGroupedDECIMALS.AsInteger)+AnsiLowerCase(ibdsBalansGroupedSYMBOL.AsString),ibdsBalansGroupedSALDO_MANY.AsFloat)
end;

procedure TfrmCompositVed.edTypeCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 Calculated := False;
 If (fcTreeView1.Items[3].Checked) then
  ibdsBalansGrouped.Close
 else
  ibdsBalans.Close;
 sbRefreshCompositVed.Enabled := True 
end;

procedure TfrmCompositVed.dbgGroupedUpdateFooter(Sender: TObject);
 var CurrencyFmt : String;
     Changed : Boolean;
     BookMark : String;
begin
 If (ibdsInvoiceTypesIN_OUT.AsInteger=2) then
  ibdsTotals.SelectSQL[0] := ('select CUR.ID, CUR.SYMBOL, CUR.DECIMALS_IN DECIMALS, cast(0 as DOUBLE PRECISION) AMOUNT,')
 else
  ibdsTotals.SelectSQL[0] := ('select CUR.ID, CUR.SYMBOL, CUR.DECIMALS_OUT DECIMALS, cast(0 as DOUBLE PRECISION) AMOUNT,');
 (Sender as TwwDBGrid).ColumnByName('AmountFmt').FooterValue := '';
 (Sender as TwwDBGrid).ColumnByName('Saldo_ManyFmt').FooterValue := '';
 (Sender as TwwDBGrid).ColumnByName('Saldo_GoodsFmt').FooterValue := '';
 lblNotGoods.Caption := '               Недоотгружено: ';
 lblNotMany.Caption := '                 Недооплачено: ';
 lblItogo.Caption := 'Итого по предприятию: ';
 ibdsTotals.Open;
 (Sender as TwwDBGrid).OnUpdateFooter := Nil;
 ibdsBalans.DisableControls;
 If (ibdsBalans.DataSource=nil) then
  Begin
   Changed := False;
   BookMark := ibdsBalans.Bookmark;
   ibdsBalans.FetchAll;
   ibdsBalans.First
  End
 else
  Begin
   Changed := True;
   ibdsBalans.Close;
   ibdsBalans.DataSource := nil;
   GenerateBalans;
   ibdsBalans.Open;
   ibdsBalans.FetchAll;
   ibdsBalans.First
  End;
 While NOT (ibdsBalans.Eof) do
  Begin
   If (ibdsTotalsID.AsLargeInt<>ibdsBalansID.AsLargeInt) then
    ibdsTotals.Locate('ID',ibdsBalansID.AsString,[]);
   If (ibdsTotals.State<>dsEdit) then
    ibdsTotals.Edit;
   ibdsTotalsAMOUNT.AsFloat := ibdsTotalsAMOUNT.AsFloat+ibdsBalansAMOUNT.AsFloat;
   ibdsTotalsSALDO_GOODS.AsFloat := ibdsTotalsSALDO_GOODS.AsFloat+ibdsBalansSALDO_GOODS.AsFloat;
   ibdsTotalsSALDO_MANY.AsFloat := ibdsTotalsSALDO_MANY.AsFloat+ibdsBalansSALDO_MANY.AsFloat;
   // недоотгружено
   If (ibdsBalansSALDO_GOODS.AsFloat<ibdsBalansSALDO_MANY.AsFloat) then
    ibdsTotalsUN_DISPACHED.AsFloat := ibdsTotalsUN_DISPACHED.AsFloat-ibdsBalansSALDO_GOODS.AsFloat+ibdsBalansSALDO_MANY.AsFloat;
   // недооплачено
   If (ibdsBalansSALDO_GOODS.AsFloat>ibdsBalansSALDO_MANY.AsFloat) then
    ibdsTotalsUN_PAYED.AsFloat := ibdsTotalsUN_PAYED.AsFloat+ibdsBalansSALDO_GOODS.AsFloat-ibdsBalansSALDO_MANY.AsFloat;
   ibdsBalans.Next
  End; 
 If (ibdsTotals.State=dsEdit) then
  ibdsTotals.Post;
 ibdsTotals.First; 
 While NOT (ibdsTotals.Eof) do
  Begin
   CurrencyFmt := '#,##0.'+StringOfChar('0',ibdsTotalsDECIMALS.AsInteger)+AnsiLowerCase(ibdsTotalsSYMBOL.AsString);
   (Sender as TwwDBGrid).ColumnByName('AmountFmt').FooterValue := (Sender as TwwDBGrid).ColumnByName('AmountFmt').FooterValue+FormatFloat(CurrencyFmt,ibdsTotalsAMOUNT.AsFloat)+#13#10;
   (Sender as TwwDBGrid).ColumnByName('Saldo_ManyFmt').FooterValue := (Sender as TwwDBGrid).ColumnByName('Saldo_ManyFmt').FooterValue+FormatFloat(CurrencyFmt,ibdsTotalsSALDO_MANY.AsFloat)+#13#10;
   (Sender as TwwDBGrid).ColumnByName('Saldo_GoodsFmt').FooterValue := (Sender as TwwDBGrid).ColumnByName('Saldo_GoodsFmt').FooterValue+FormatFloat(CurrencyFmt,ibdsTotalsSALDO_GOODS.AsFloat)+#13#10;
   If (ibdsInvoiceTypesIN_OUT.AsInteger=2) then
    CurrencyFmt := FormatFloat('#,##0.'+StringOfChar('0',ibdsTotalsDECIMALS.AsInteger)+AnsiLowerCase(ibdsTotalsSYMBOL.AsString),ibdsTotalsSALDO_MANY.AsFloat-ibdsTotalsSaldo_Goods.AsFloat)
   else
    CurrencyFmt := FormatFloat('#,##0.'+StringOfChar('0',ibdsTotalsDECIMALS.AsInteger)+AnsiLowerCase(ibdsTotalsSYMBOL.AsString),ibdsTotalsSALDO_GOODS.AsFloat-ibdsTotalsSaldo_Many.AsFloat);
   lblItogo.Caption := lblItogo.Caption+StringOfChar('_',17-Length(CurrencyFmt))+CurrencyFmt+'; ';
   CurrencyFmt := FormatFloat('#,##0.'+StringOfChar('0',ibdsTotalsDECIMALS.AsInteger)+AnsiLowerCase(ibdsTotalsSYMBOL.AsString),ibdsTotalsUN_DISPACHED.AsFloat);
   lblNotGoods.Caption := lblNotGoods.Caption+StringOfChar('_',17-Length(CurrencyFmt))+CurrencyFmt+'; ';
   CurrencyFmt := FormatFloat('#,##0.'+StringOfChar('0',ibdsTotalsDECIMALS.AsInteger)+AnsiLowerCase(ibdsTotalsSYMBOL.AsString),ibdsTotalsUN_PAYED.AsFloat);
   lblNotMany.Caption := lblNotMany.Caption+StringOfChar('_',17-Length(CurrencyFmt))+CurrencyFmt+'; ';
   ibdsTotals.Next
  End;
 (Sender as TwwDBGrid).ColumnByName('AmountFmt').FooterValue := Copy((Sender as TwwDBGrid).ColumnByName('AmountFmt').FooterValue,1,Length((Sender as TwwDBGrid).ColumnByName('AmountFmt').FooterValue)-2);
 (Sender as TwwDBGrid).ColumnByName('Saldo_ManyFmt').FooterValue := Copy((Sender as TwwDBGrid).ColumnByName('Saldo_ManyFmt').FooterValue,1,Length((Sender as TwwDBGrid).ColumnByName('Saldo_ManyFmt').FooterValue)-2);
 (Sender as TwwDBGrid).ColumnByName('Saldo_GoodsFmt').FooterValue := Copy((Sender as TwwDBGrid).ColumnByName('Saldo_GoodsFmt').FooterValue,1,Length((Sender as TwwDBGrid).ColumnByName('Saldo_GoodsFmt').FooterValue)-2);
 (Sender as TwwDBGrid).FooterHeight := 22*ibdsTotals.RecordCount;
 ibdsTotals.Close;
 lblItogo.Caption := Copy(lblItogo.Caption,1,Length(lblItogo.Caption)-2);
 lblNotGoods.Caption := Copy(lblNotGoods.Caption,1,Length(lblNotGoods.Caption)-2);
 lblNotMany.Caption := Copy(lblNotMany.Caption,1,Length(lblNotMany.Caption)-2);
 If (Changed) then
  Begin
   ibdsBalans.Close;
   ibdsBalans.DataSource := dsBalansGrouped;
   GenerateBalans;
   ibdsBalans.Open
  End
 else
  ibdsBalans.Bookmark := BookMark;
 ibdsBalans.EnableControls;
 (Sender as TwwDBGrid).OnUpdateFooter := dbgGroupedUpdateFooter
end;

procedure TfrmCompositVed.ibdsBalansGroupedBeforeClose(DataSet: TDataSet);
begin
 If (fcTreeView1.Items[3].Checked) then
  Begin
   lblNotGoods.Caption := '               Недоотгружено: ';
   lblNotMany.Caption := '                 Недооплачено: ';
   lblItogo.Caption := 'Итого по предприятию: ';
   sbRefreshCompositVed.Enabled := True
  End
end;

procedure TfrmCompositVed.GenerateBalans;
 var k : Integer;
begin
 WhereBalans := GetWhere;
 If (ibdsInvoiceTypesIN_OUT.AsInteger=2) then
  ibdsBalans.SelectSQL[0] := 'select C.NAME, CUR.ID, CUR.SYMBOL, CUR.DECIMALS_IN DECIMALS, TOIB.AMOUNT, TOIB.SALDO_GOODS SALDO_GOODS, -TOIB.SALDO_MANY SALDO_MANY, IH.NUMBER_PREFIX||cast(IH.NUMBER as varchar(30))||IH.NUMBER_SUFFIX NUMBER_STR, IH.INVOICE_DATE, IH.ID INVOICE_ID'
 else
  ibdsBalans.SelectSQL[0] := 'select C.NAME, CUR.ID, CUR.SYMBOL, CUR.DECIMALS_OUT DECIMALS, TOIB.AMOUNT, -TOIB.SALDO_GOODS SALDO_GOODS, TOIB.SALDO_MANY SALDO_MANY, IH.NUMBER_PREFIX||cast(IH.NUMBER as varchar(30))||IH.NUMBER_SUFFIX NUMBER_STR, IH.INVOICE_DATE, IH.ID INVOICE_ID';
 If (AllGroups) then
  ibdsBalans.SelectSQL[1] := 'from CURRENCY CUR, CONTRACTORS C, INVOICE_HEADER IH, TMP_OPEN_INVOICES_BALANS TOIB'
 else
  ibdsBalans.SelectSQL[1] := 'from CURRENCY CUR, CONTRACTORS C, INVOICE_HEADER IH, TMP_OPEN_INVOICES_BALANS TOIB, CONTRACTOR_TYPES_INCLUDE CTI';
 If (ibdsBalans.DataSource=nil) then
  ibdsBalans.SelectSQL[2] := 'where (TOIB.CREATOR=current_user) and (TOIB.INVOICE_ID=IH.ID) and (C.ID=IH.CONTRACTOR_ID) and (CUR.ID=IH.CURRENCY_ID)'
 else
  ibdsBalans.SelectSQL[2] := 'where (TOIB.CREATOR=current_user) and (TOIB.INVOICE_ID=IH.ID) and (C.ID=IH.CONTRACTOR_ID) and (CUR.ID=IH.CURRENCY_ID) and (IH.CONTRACTOR_ID=:CONTRACTOR_ID) and (CUR.SYMBOL=:SYMBOL)';
 For k := Pred(ibdsBalans.SelectSQL.Count) downto 3 do
  ibdsBalans.SelectSQL.Delete(k);
 ibdsBalans.SelectSQL.Add(WhereBalans);
  If (EnterprisesNotInGroupsChecked<>'') then
  Begin
   ibdsBalans.SelectSQL.Add('union');
   ibdsBalans.SelectSQL.Add(ibdsBalans.SelectSQL[0]);
   ibdsBalans.SelectSQL.Add('from CURRENCY CUR, CONTRACTORS C, INVOICE_HEADER IH, TMP_OPEN_INVOICES_BALANS TOIB');
   ibdsBalans.SelectSQL.Add(ibdsBalans.SelectSQL[2]);
   ibdsBalans.SelectSQL.Add('and (IH.ENTERPRISE_ID in ('+EnterprisesNotInGroupsChecked+')) and');
   ibdsBalans.SelectSQL.Add('NOT EXISTS(select * from CONTRACTOR_TYPES_INCLUDE CTI where (CTI.CONTRACTOR_ID=C.ID))');
   If NOT (AllMenegers) then
    If (MenegersCheckedCount<MenegersUnCheckedCount) then
     ibdsBalans.SelectSQL.Add('and (IH.MASTER_ID in ('+Copy(MenegersChecked,1,Pred(Length(MenegersChecked)))+'))')
    else
     ibdsBalans.SelectSQL.Add('and NOT(IH.MASTER_ID in ('+Copy(MenegersUnChecked,1,Pred(Length(MenegersUnChecked)))+'))');
   If NOT (AllEnterprises) then
    If (EnterprisesCheckedCount<EnterprisesUnCheckedCount) then
     ibdsBalans.SelectSQL.Add('and (IH.ENTERPRISE_ID in ('+Copy(EnterprisesChecked,1,Pred(Length(EnterprisesChecked)))+'))')
    else
     ibdsBalans.SelectSQL.Add('and NOT(IH.ENTERPRISE_ID in ('+Copy(EnterprisesUnChecked,1,Pred(Length(EnterprisesUnChecked)))+'))')
  End;
 ibdsBalans.SelectSQL.Add('order by 1, 2, 8, 7')
end;

procedure TfrmCompositVed.wwExpandButton1AfterCollapse(Sender: TObject);
begin
 ibdsBalans.Close
end;

procedure TfrmCompositVed.wwExpandButton1BeforeExpand(Sender: TObject);
begin
 dbgDetails.Width := dbgGrouped.Width-wwExpandButton1.Left-29;
 ibdsBalans.Open
end;

procedure TfrmCompositVed.ibdsBalansCalcFields(DataSet: TDataSet);
begin
 ibdsBalansAmountFmt.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsBalansDECIMALS.AsInteger)+AnsiLowerCase(ibdsBalansSYMBOL.AsString),ibdsBalansAMOUNT.AsFloat);
 ibdsBalansSaldo_GoodsFmt.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsBalansDECIMALS.AsInteger)+AnsiLowerCase(ibdsBalansSYMBOL.AsString),ibdsBalansSALDO_GOODS.AsFloat);
 ibdsBalansSaldo_ManyFmt.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsBalansDECIMALS.AsInteger)+AnsiLowerCase(ibdsBalansSYMBOL.AsString),ibdsBalansSALDO_MANY.AsFloat)
end;

procedure TfrmCompositVed.ibdsBalansBeforeClose(DataSet: TDataSet);
begin
 If NOT (fcTreeView1.Items[3].Checked) then
  Begin
   lblNotGoods.Caption := '               Недоотгружено: ';
   lblNotMany.Caption := '                 Недооплачено: ';
   lblItogo.Caption := 'Итого по предприятию: ';
   sbRefreshCompositVed.Enabled := True
  End
end;

procedure TfrmCompositVed.sbPrintClick(Sender: TObject);
begin
 If (fcTreeView1.Items[3].Checked) then
  sbPrint.Tag := 1
 else
  sbPrint.Tag := 0;
 frVariables.Clear;
 frVariables['Фильтр'] := 'Состояние '+ibdsInvoiceTypesNAME.AsString+' на '+FormatDateTime('dd.mm.yyyy г.',deDateStart.Date);
 frVariables['Фильтр2'] := 'Включены счета: ';
 If (fcTreeView1.Items[0].Checked) then
  frVariables['Фильтр2'] := frVariables['Фильтр2']+'Сбалансированные; ';
 If (fcTreeView1.Items[1].Checked) then
  frVariables['Фильтр2'] := frVariables['Фильтр2']+'Не сбалансированные; ';
 If (fcTreeView1.Items[0].Checked) then
  frVariables['Фильтр2'] := frVariables['Фильтр2']+'C нулевым балансом; ';
 frVariables['Фильтр2'] := Copy(frVariables['Фильтр2'],1,Length(frVariables['Фильтр2'])-2);
 frVariables['Всего недоотгружено'] := lblNotGoods.Caption;
 frVariables['Всего недооплачено'] := lblNotMany.Caption;
 frVariables['Всего'] := lblItogo.Caption;
 Misk.sbPrintClick((Sender as TSpeedButton), ibsGridsSetup, ibdsBalansGrouped)
end;

procedure TfrmCompositVed.ibdsBalansGroupedAfterOpen(DataSet: TDataSet);
begin
 sbRefreshCompositVed.Enabled := False;
 sbPrint.Enabled := True
end;

procedure TfrmCompositVed.N1Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmInvoiceOut')=nil) then
  Begin
   TempIn_Out := 1;
   Invoice_ID := ibdsBalansINVOICE_ID.AsLargeInt;
   frmInvoiceOut := TfrmInvoice.Create(frmMain);
   frmInvoiceOut.Name := 'frmInvoiceOut'
  End
 else
  Begin
   If (frmInvoiceOut.PageControl1.ActivePageIndex<>1) then
    frmInvoiceOut.PageControl1.ActivePageIndex := 1;
   frmInvoiceOut.ibdsMainInvoice.Close;
   frmInvoiceOut.ibdsMainInvoice.ParamByName('ID').AsInt64 := ibdsBalansINVOICE_ID.AsLargeInt;
   frmInvoiceOut.ibdsMainInvoice.Open
  End;
 frmInvoiceOut.Show
end;

procedure TfrmCompositVed.fcTreeView1MouseUp(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
 If (Node.DisplayRect(True).Top<=Y) and (Node.DisplayRect(True).Bottom>=Y) and
    (Node.DisplayRect(True).Left<=X) and (Node.DisplayRect(True).Right>=X) then
  Node.Checked := NOT Node.Checked
end;

end.
