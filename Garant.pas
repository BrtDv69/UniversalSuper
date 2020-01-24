unit Garant;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Buttons, IBSQL, IBDatabase,
  fcTreeView, StdCtrls, wwdblook, wwcheckbox, wwdbdatetimepicker, Db,
  IBCustomDataSet, FR_Class, Menus, Variants;

type
  TfrmGarant = class(TfrmLike)
    Panel4: TPanel;
    sbLastCompositVed: TSpeedButton;
    sbNextCompositVed: TSpeedButton;
    sbPriorCompositVed: TSpeedButton;
    sbFirstCompositVed: TSpeedButton;
    sbCloseCompositVed: TSpeedButton;
    Panel2: TPanel;
    sbRefreshCompositVed: TSpeedButton;
    ibdsGarantGrouped: TIBDataSet;
    ibdsGarant: TIBDataSet;
    ibdsGarantGroupedNAME: TIBStringField;
    ibdsGarantGroupedAMOUNT: TFloatField;
    dsGarantGrouped: TDataSource;
    dsGarant: TDataSource;
    ibdsGarantGroupedSYMBOL: TIBStringField;
    ibdsGarantGroupedDECIMALS: TSmallintField;
    ibdsGarantNAME: TIBStringField;
    ibdsGarantSYMBOL: TIBStringField;
    ibdsGarantDECIMALS: TSmallintField;
    ibdsGarantAMOUNT: TFloatField;
    ibdsGarantNUMBER_STR: TIBStringField;
    ibdsGarantINVOICE_DATE: TDateField;
    sbPrint: TSpeedButton;
    ibdsTotals: TIBDataSet;
    ibdsTotalsSYMBOL: TIBStringField;
    ibdsTotalsDECIMALS: TSmallintField;
    ibdsTotalsAMOUNT: TFloatField;
    ibdsTotalsID: TLargeintField;
    ibdsGarantGroupedID: TLargeintField;
    ibdsGarantID: TLargeintField;
    fcTreeView1: TfcTreeView;
    deDateStart: TwwDBDateTimePicker;
    Splitter1: TSplitter;
    ibdsGarantGroupedGARANT_AMOUNT: TFloatField;
    ibdsGarantGroupedGARANT_PAID: TFloatField;
    ibdsGarantGroupedGARANT_FOR_PAYMENT: TFloatField;
    ibdsGarantGroupedCONTRAGENT_DEBTS: TFloatField;
    ibdsGarantGroupedCONTRAGENT_PAYMENTS: TFloatField;
    ibdsGarantGroupedAmount_Fmt: TStringField;
    ibdsGarantGroupedGARANT_FOR_PAY: TFloatField;
    ibdsGarantGroupedGarant_Amount_Fmt: TStringField;
    ibdsGarantGroupedGarant_Paid_Fmt: TStringField;
    ibdsGarantGroupedGarant_For_Pay_Fmt: TStringField;
    ibdsGarantGroupedGarant_For_Payment_Fmt: TStringField;
    ibdsGarantGroupedContragent_Debts_Fmt: TStringField;
    ibdsGarantGroupedContragent_Payments_Fmt: TStringField;
    ibdsGarantGARANT_AMOUNT: TFloatField;
    ibdsGarantGARANT_PAID: TFloatField;
    ibdsGarantGARANT_FOR_PAY: TFloatField;
    ibdsGarantGARANT_FOR_PAYMENT: TFloatField;
    ibdsGarantCONTRAGENT_DEBTS: TFloatField;
    ibdsGarantCONTRAGENT_PAYMENTS: TFloatField;
    ibdsGarantAmount_Fmt: TStringField;
    ibdsGarantGarant_Amount_Fmt: TStringField;
    ibdsGarantGarant_Paid_Fmt: TStringField;
    ibdsGarantGarant_For_Pay_Fmt: TStringField;
    ibdsGarantGarant_For_Payment_Fmt: TStringField;
    ibdsGarantContragent_Debts_Fmt: TStringField;
    ibdsGarantContragent_Payments_Fmt: TStringField;
    ibdsTotalsGARANT_AMOUNT: TFloatField;
    ibdsTotalsGARANT_PAID: TFloatField;
    ibdsTotalsGARANT_FOR_PAY: TFloatField;
    ibdsTotalsGARANT_FOR_PAYMENT: TFloatField;
    ibdsTotalsCONTRAGENT_DEBTS: TFloatField;
    ibdsTotalsCONTRAGENT_PAYMENTS: TFloatField;
    ibdsGarantGroupedCONTRACTOR_ID: TLargeintField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ibdsGarantINVOICE_ID: TLargeintField;
    dbgDetails: TwwDBGrid;
    wwExpandButton1: TwwExpandButton;
    dbgGrouped: TwwDBGrid;
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
    procedure deDateStartChange(Sender: TObject);
    procedure sbRefreshCompositVedClick(Sender: TObject);
    procedure ibdsGarantGroupedCalcFields(DataSet: TDataSet);
    procedure dbgGroupedUpdateFooter(Sender: TObject);
    procedure ibdsGarantGroupedBeforeClose(DataSet: TDataSet);
    procedure wwExpandButton1AfterCollapse(Sender: TObject);
    procedure wwExpandButton1BeforeExpand(Sender: TObject);
    procedure ibdsGarantCalcFields(DataSet: TDataSet);
    procedure ibdsGarantBeforeClose(DataSet: TDataSet);
    procedure sbPrintClick(Sender: TObject);
    procedure ibdsGarantGroupedAfterOpen(DataSet: TDataSet);
    procedure dbgDetailsCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure dbgDetailsCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgDetailsTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure N1Click(Sender: TObject);
    procedure fcTreeView1DrawText(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; ARect: TRect; AItemState: TfcItemStates;
      var DefaultDrawing: Boolean);
    procedure deDateStartEnter(Sender: TObject);
    procedure fcTreeView1MouseUp(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    procedure GenerateTree(Node: TfcTreeNode);
    procedure OpenDataSets;
    procedure GenerateGarantGrouped;
    procedure GenerateGarant;
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
   IType : Shortint;
  end;

var
  frmGarant: TfrmGarant;

implementation

uses DM, Misk, Main, Invoice;

{$R *.DFM}

var Level : Integer = -3;
    Calculated : Boolean = False;
    BookMarkInvoiceTypes : String = '';
    AllMenegers, AllEnterprises, AllGroups : Boolean;
    WhereGarant, EnterprisesNotInGroupsChecked, MenegersChecked, MenegersUnChecked, EnterprisesChecked, EnterprisesUnChecked : String;
    MenegersCheckedCount, MenegersUnCheckedCount, EnterprisesCheckedCount, EnterprisesUnCheckedCount : Integer;

    OrderByGarantGrouped  : String = ' 2 asc, 3 asc';
    OrderByGarant         : String = ' 1 asc, 2 asc, 13 asc, 12 asc';

procedure TfrmGarant.FormCreate(Sender: TObject);
 var TmpNode : TfcTreeNode;
begin
 FName := 'Гарантийное обслуживание';
 inherited;
 trMain.StartTransaction;
 OpenDataSets;
 GenerateTree(Nil);
 fcTreeView1.FullExpand;
 fcTreeView1.Items[3].Collapse(False);
 TmpNode := fcTreeView1.Items[3].GetNextSibling.GetFirstChild;
 While Not (TmpNode=nil) do
  Begin
   TmpNode.Collapse(False);
   TmpNode := TmpNode.GetNextSibling
  End;
 fcTreeView1.Selected := fcTreeView1.Items[0];
 fcTreeView1.OnExpanding := nil;
 deDateStart.Date := Date
end;

procedure TfrmGarant.sbCloseCompositVedClick(Sender: TObject);
begin
 Close
end;

procedure TfrmGarant.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Calculated := False;
 inherited
end;

procedure TfrmGarant.GenerateTree(Node: TfcTreeNode);
 var R : PItemRec;
     NewNode : TfcTreeNode;
     S : String;
begin
 If (Node=nil) then
  Begin
   fcTreeView1.Items.Clear;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Текущее состояние');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.Enterprise := 0;
   R^.IType := -1;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Входящее на ');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := False;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.Enterprise := 0;
   R^.IType := -1;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Группировать');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.Enterprise := 0;
   R^.IType := -1;
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

procedure TfrmGarant.fcTreeView1Deletion(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode);
begin
 Dispose(PItemRec(Node.Data))
end;

procedure TfrmGarant.fcTreeView1Expanding(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; var AllowExpansion: Boolean);
begin
 GenerateTree(Node)
end;

procedure TfrmGarant.fcTreeView1ToggleCheckbox(
  TreeView: TfcCustomTreeView; Node: TfcTreeNode); 
var TmpNode : TfcTreeNode;
    AllChecked : Boolean;
    k : Integer;
begin
 If (fcTreeView1.Items.Count<3) then
  exit;
 If (Node=fcTreeView1.Items[0]) or (Node=fcTreeView1.Items[1]) then
  Begin
   Calculated := False;
   If (Node=fcTreeView1.Items[0]) then
    Begin
     If (fcTreeView1.Items[1].Checked<>NOT Node.Checked) then
      fcTreeView1.Items[1].Checked := NOT Node.Checked
    End
   else
    Begin
     If (fcTreeView1.Items[0].Checked<>NOT Node.Checked) then
      fcTreeView1.Items[0].Checked := NOT Node.Checked
    End
  End;
 ibdsGarantGrouped.Close;
 ibdsGarant.Close;
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

procedure TfrmGarant.fcTreeView1CalcNodeAttributes(
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

procedure TfrmGarant.OpenDataSets;
begin
 If Calculated then
  Begin
   If (fcTreeView1.Items[2].Checked) then
    Begin
     wwExpandButton1.Grid := dbgDetails;
     dbgDetails.OnUpdateFooter := nil;
     GenerateGarantGrouped;
     ibdsGarant.Close;
     ibdsGarant.DataSource := dsGarantGrouped;
     ibdsGarantGrouped.Open;
     wwExpandButton1.Enabled := True;
     dbgGrouped.Show;
     dbgDetails.Hide;
     dbgDetails.Align := alNone;
     dbgDetails.Options := dbgDetails.Options-[dgShowFooter];
     GenerateGarant;
     ibdsGarantNAME.Visible := False
//     dbgDetails.UseTFields := True
    End
   else
    Begin
     wwExpandButton1.Grid := Nil;
     ibdsGarant.DataSource := nil;
     GenerateGarant;
     ibdsGarantNAME.Visible := True;
//     dbgDetails.UseTFields := False;
     wwExpandButton1.Enabled := False;
     dbgDetails.Parent := Panel2;
     dbgDetails.Show;
     dbgGrouped.Hide;
     dbgDetails.Align := alClient;
     dbgDetails.Options := dbgDetails.Options+[dgShowFooter];
     ibdsGarant.Open;
     If NOT Assigned(dbgDetails.OnUpdateFooter) then
      Begin
       dbgDetails.OnUpdateFooter := dbgGroupedUpdateFooter;
       dbgGroupedUpdateFooter(dbgDetails)
      End
    End
  End
end;

procedure TfrmGarant.deDateStartChange(Sender: TObject);
begin
 Calculated := False;
 If (fcTreeView1.Items[2].Checked) then
  ibdsGarantGrouped.Close
 else
  ibdsGarant.Close;
end;

procedure TfrmGarant.sbRefreshCompositVedClick(Sender: TObject);
begin
 If NOT Calculated then
  Begin
   ibsGridsSetup.SQL.Clear;
   ibsGridsSetup.SQL.Add('select * from GET_OPEN_INVOICES_GARANT_BALANS(:START)');
   ibsGridsSetup.GenerateParamNames := True;
   If (fcTreeView1.Items[0].Checked) then
    ibsGridsSetup.ParamByName('START').AsVariant := Null
   else
    ibsGridsSetup.ParamByName('START').AsDate := deDateStart.Date;
   ibsGridsSetup.ExecQuery;
   trMain.Commit;
   Calculated := True;
   trMain.StartTransaction
  End;
 OpenDataSets
end;

function TfrmGarant.GetWhere : String;
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
 TmpNode := fcTreeView1.Items[2].GetNextSibling;
 If (TmpNode.Grayed) then //Оформил
  Begin
   AllMenegers := False;
   TmpNode := fcTreeView1.Items[2].GetNextSibling.GetFirstChild;
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
     TmpNode := fcTreeView1.Items[2].GetNextSibling.GetNextChild(TmpNode)
    End
  End;
 TmpNode := fcTreeView1.Items[2].GetNextSibling.GetNextSibling;
 If (TmpNode.Grayed) then //Предприятия
  Begin
   TmpNode := fcTreeView1.Items[2].GetNextSibling.GetNextSibling.GetFirstChild;
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

procedure TfrmGarant.GenerateGarantGrouped;
 var k : Integer;
begin
 WhereGarant := GetWhere;
 ibdsGarantGrouped.SelectSQL[0] := 'select IH.CONTRACTOR_ID, C.NAME, CUR.ID, CUR.SYMBOL, CUR.DECIMALS_OUT DECIMALS, SUM(TOIGB.AMOUNT) AMOUNT, SUM(TOIGB.GARANT_AMOUNT) GARANT_AMOUNT, SUM(TOIGB.GARANT_PAID) GARANT_PAID, SUM(TOIGB.GARANT_AMOUNT-TOIGB.GARANT_PAID) GARANT_FOR_PAY,'+' SUM(TOIGB.GARANT_FOR_PAYMENT) GARANT_FOR_PAYMENT, SUM(TOIGB.CONTRAGENT_DEBTS) CONTRAGENT_DEBTS, SUM(TOIGB.CONTRAGENT_PAYMENTS) CONTRAGENT_PAYMENTS';
 If (AllGroups) then
  ibdsGarantGrouped.SelectSQL[1] := 'from CURRENCY CUR, CONTRACTORS C, INVOICE_HEADER IH, TMP_OPEN_INVOICES_GARANT_BALANS TOIGB'
 else
  ibdsGarantGrouped.SelectSQL[1] := 'from CURRENCY CUR, CONTRACTORS C, CONTRACTOR_TYPES_INCLUDE CTI, INVOICE_HEADER IH, TMP_OPEN_INVOICES_GARANT_BALANS TOIGB';
 For k := Pred(ibdsGarantGrouped.SelectSQL.Count) downto 3 do
  ibdsGarantGrouped.SelectSQL.Delete(k);
 ibdsGarantGrouped.SelectSQL.Add(WhereGarant);
 ibdsGarantGrouped.SelectSQL.Add('group by C.NAME, CUR.ID, CUR.SYMBOL,');
 ibdsGarantGrouped.SelectSQL.Add('CUR.DECIMALS_OUT, IH.CONTRACTOR_ID');
 If (EnterprisesNotInGroupsChecked<>'') then
  Begin
   ibdsGarantGrouped.SelectSQL.Add('union');
   ibdsGarantGrouped.SelectSQL.Add(ibdsGarantGrouped.SelectSQL[0]);
   ibdsGarantGrouped.SelectSQL.Add('from CURRENCY CUR, CONTRACTORS C, INVOICE_HEADER IH, TMP_OPEN_INVOICES_GARANT_BALANS TOIGB');
   ibdsGarantGrouped.SelectSQL.Add(ibdsGarantGrouped.SelectSQL[2]);
   ibdsGarantGrouped.SelectSQL.Add('and (IH.ENTERPRISE_ID in ('+EnterprisesNotInGroupsChecked+')) and');
   ibdsGarantGrouped.SelectSQL.Add('NOT EXISTS(select * from CONTRACTOR_TYPES_INCLUDE CTI where (CTI.CONTRACTOR_ID=C.ID))');
   If NOT (AllMenegers) then
    If (MenegersCheckedCount<MenegersUnCheckedCount) then
     ibdsGarantGrouped.SelectSQL.Add('and (IH.MASTER_ID in ('+Copy(MenegersChecked,1,Pred(Length(MenegersChecked)))+'))')
    else
     ibdsGarantGrouped.SelectSQL.Add('and NOT(IH.MASTER_ID in ('+Copy(MenegersUnChecked,1,Pred(Length(MenegersUnChecked)))+'))');
   If NOT (AllEnterprises) then
    If (EnterprisesCheckedCount<EnterprisesUnCheckedCount) then
     ibdsGarantGrouped.SelectSQL.Add('and (IH.ENTERPRISE_ID in ('+Copy(EnterprisesChecked,1,Pred(Length(EnterprisesChecked)))+'))')
    else
     ibdsGarantGrouped.SelectSQL.Add('and NOT(IH.ENTERPRISE_ID in ('+Copy(EnterprisesUnChecked,1,Pred(Length(EnterprisesUnChecked)))+'))');
   ibdsGarantGrouped.SelectSQL.Add('group by C.NAME, CUR.ID, CUR.SYMBOL,');
   ibdsGarantGrouped.SelectSQL.Add('CUR.DECIMALS_OUT, IH.CONTRACTOR_ID');
  End;
 ibdsGarantGrouped.SelectSQL.Add('order by'+OrderByGarantGrouped)
end;

procedure TfrmGarant.ibdsGarantGroupedCalcFields(DataSet: TDataSet);
 var FormatStr : String;
begin
 FormatStr := '#,##0.'+StringOfChar('0',ibdsGarantGroupedDECIMALS.AsInteger)+AnsiLowerCase(ibdsGarantGroupedSYMBOL.AsString);
 ibdsGarantGroupedAmount_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGroupedAMOUNT.AsFloat);
 ibdsGarantGroupedGarant_Amount_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGroupedGARANT_AMOUNT.AsFloat);
 ibdsGarantGroupedGarant_Paid_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGroupedGARANT_PAID.AsFloat);
 ibdsGarantGroupedGarant_For_Pay_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGroupedGARANT_FOR_PAY.AsFloat);
 ibdsGarantGroupedGarant_For_Payment_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGroupedGARANT_FOR_PAYMENT.AsFloat);
 ibdsGarantGroupedContragent_Debts_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGroupedCONTRAGENT_DEBTS.AsFloat);
 ibdsGarantGroupedContragent_Payments_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGroupedCONTRAGENT_PAYMENTS.AsFloat);
end;

procedure TfrmGarant.dbgGroupedUpdateFooter(Sender: TObject);
 var CurrencyFmt : String;
     Changed : Boolean;
     BookMark : String;
begin
 (Sender as TwwDBGrid).ColumnByName('Amount_Fmt').FooterValue := '';
 (Sender as TwwDBGrid).ColumnByName('Garant_Amount_Fmt').FooterValue := '';
 (Sender as TwwDBGrid).ColumnByName('Garant_Paid_Fmt').FooterValue := '';
 (Sender as TwwDBGrid).ColumnByName('Garant_For_Pay_Fmt').FooterValue := '';
 (Sender as TwwDBGrid).ColumnByName('Garant_For_Payment_Fmt').FooterValue := '';
 (Sender as TwwDBGrid).ColumnByName('Contragent_Debts_Fmt').FooterValue := '';
 (Sender as TwwDBGrid).ColumnByName('Contragent_Payments_Fmt').FooterValue := '';
 ibdsTotals.Open;
 (Sender as TwwDBGrid).OnUpdateFooter := Nil;
 ibdsGarant.DisableControls;
 If (ibdsGarant.DataSource=nil) then
  Begin
   Changed := False;
   BookMark := ibdsGarant.Bookmark;
   ibdsGarant.FetchAll;
   ibdsGarant.First
  End
 else
  Begin
   Changed := True;
   ibdsGarant.Close;
   ibdsGarant.DataSource := nil;
   GenerateGarant;
   ibdsGarant.Open;
   ibdsGarant.FetchAll;
   ibdsGarant.First
  End;
 While NOT (ibdsGarant.Eof) do
  Begin
   If (ibdsTotalsID.AsLargeInt<>ibdsGarantID.AsLargeInt) then
    ibdsTotals.Locate('ID',ibdsGarantID.AsString,[]);
   If (ibdsTotals.State<>dsEdit) then
    ibdsTotals.Edit;
   ibdsTotalsAMOUNT.AsFloat := ibdsTotalsAMOUNT.AsFloat+ibdsGarantAMOUNT.AsFloat;
   ibdsTotalsGARANT_AMOUNT.AsFloat := ibdsTotalsGARANT_AMOUNT.AsFloat+ibdsGarantGARANT_AMOUNT.AsFloat;
   ibdsTotalsGARANT_PAID.AsFloat := ibdsTotalsGARANT_PAID.AsFloat+ibdsGarantGARANT_PAID.AsFloat;
   ibdsTotalsGARANT_FOR_PAY.AsFloat := ibdsTotalsGARANT_FOR_PAY.AsFloat+ibdsGarantGARANT_FOR_PAY.AsFloat;
   ibdsTotalsGARANT_FOR_PAYMENT.AsFloat := ibdsTotalsGARANT_FOR_PAYMENT.AsFloat+ibdsGarantGARANT_FOR_PAYMENT.AsFloat;
   ibdsTotalsCONTRAGENT_DEBTS.AsFloat := ibdsTotalsCONTRAGENT_DEBTS.AsFloat+ibdsGarantCONTRAGENT_DEBTS.AsFloat;
   ibdsTotalsCONTRAGENT_PAYMENTS.AsFloat := ibdsTotalsCONTRAGENT_PAYMENTS.AsFloat+ibdsGarantCONTRAGENT_PAYMENTS.AsFloat;
   ibdsGarant.Next
  End;
 If (ibdsTotals.State=dsEdit) then
  ibdsTotals.Post;
 ibdsTotals.First;
 While NOT (ibdsTotals.Eof) do
  Begin
   CurrencyFmt := '#,##0.'+StringOfChar('0',ibdsTotalsDECIMALS.AsInteger)+AnsiLowerCase(ibdsTotalsSYMBOL.AsString);
   (Sender as TwwDBGrid).ColumnByName('Amount_Fmt').FooterValue := (Sender as TwwDBGrid).ColumnByName('Amount_Fmt').FooterValue+FormatFloat(CurrencyFmt,ibdsTotalsAMOUNT.AsFloat)+#13#10;
   (Sender as TwwDBGrid).ColumnByName('Garant_Amount_Fmt').FooterValue := (Sender as TwwDBGrid).ColumnByName('Garant_Amount_Fmt').FooterValue+FormatFloat(CurrencyFmt,ibdsTotalsGARANT_AMOUNT.AsFloat)+#13#10;
   (Sender as TwwDBGrid).ColumnByName('Garant_Paid_Fmt').FooterValue := (Sender as TwwDBGrid).ColumnByName('Garant_Paid_Fmt').FooterValue+FormatFloat(CurrencyFmt,ibdsTotalsGARANT_PAID.AsFloat)+#13#10;
   (Sender as TwwDBGrid).ColumnByName('Garant_For_Pay_Fmt').FooterValue := (Sender as TwwDBGrid).ColumnByName('Garant_For_Pay_Fmt').FooterValue+FormatFloat(CurrencyFmt,ibdsTotalsGARANT_FOR_PAY.AsFloat)+#13#10;
   (Sender as TwwDBGrid).ColumnByName('Garant_For_Payment_Fmt').FooterValue := (Sender as TwwDBGrid).ColumnByName('Garant_For_Payment_Fmt').FooterValue+FormatFloat(CurrencyFmt,ibdsTotalsGARANT_FOR_PAYMENT.AsFloat)+#13#10;
   (Sender as TwwDBGrid).ColumnByName('Contragent_Debts_Fmt').FooterValue := (Sender as TwwDBGrid).ColumnByName('Contragent_Debts_Fmt').FooterValue+FormatFloat(CurrencyFmt,ibdsTotalsCONTRAGENT_DEBTS.AsFloat)+#13#10;
   (Sender as TwwDBGrid).ColumnByName('Contragent_Payments_Fmt').FooterValue := (Sender as TwwDBGrid).ColumnByName('Contragent_Payments_Fmt').FooterValue+FormatFloat(CurrencyFmt,ibdsTotalsCONTRAGENT_PAYMENTS.AsFloat)+#13#10;
   ibdsTotals.Next
  End;
 (Sender as TwwDBGrid).ColumnByName('Amount_Fmt').FooterValue := Copy((Sender as TwwDBGrid).ColumnByName('Amount_Fmt').FooterValue,1,Length((Sender as TwwDBGrid).ColumnByName('Amount_Fmt').FooterValue)-2);
 (Sender as TwwDBGrid).ColumnByName('Garant_Amount_Fmt').FooterValue := Copy((Sender as TwwDBGrid).ColumnByName('Garant_Amount_Fmt').FooterValue,1,Length((Sender as TwwDBGrid).ColumnByName('Garant_Amount_Fmt').FooterValue)-2);
 (Sender as TwwDBGrid).ColumnByName('Garant_Paid_Fmt').FooterValue := Copy((Sender as TwwDBGrid).ColumnByName('Garant_Paid_Fmt').FooterValue,1,Length((Sender as TwwDBGrid).ColumnByName('Garant_Paid_Fmt').FooterValue)-2);
 (Sender as TwwDBGrid).ColumnByName('Garant_For_Pay_Fmt').FooterValue := Copy((Sender as TwwDBGrid).ColumnByName('Garant_For_Pay_Fmt').FooterValue,1,Length((Sender as TwwDBGrid).ColumnByName('Garant_For_Pay_Fmt').FooterValue)-2);
 (Sender as TwwDBGrid).ColumnByName('Garant_For_Payment_Fmt').FooterValue := Copy((Sender as TwwDBGrid).ColumnByName('Garant_For_Payment_Fmt').FooterValue,1,Length((Sender as TwwDBGrid).ColumnByName('Garant_For_Payment_Fmt').FooterValue)-2);
 (Sender as TwwDBGrid).ColumnByName('Contragent_Debts_Fmt').FooterValue := Copy((Sender as TwwDBGrid).ColumnByName('Contragent_Debts_Fmt').FooterValue,1,Length((Sender as TwwDBGrid).ColumnByName('Contragent_Debts_Fmt').FooterValue)-2);
 (Sender as TwwDBGrid).ColumnByName('Contragent_Payments_Fmt').FooterValue := Copy((Sender as TwwDBGrid).ColumnByName('Contragent_Payments_Fmt').FooterValue,1,Length((Sender as TwwDBGrid).ColumnByName('Contragent_Payments_Fmt').FooterValue)-2);
 (Sender as TwwDBGrid).FooterHeight := 22*ibdsTotals.RecordCount;
 ibdsTotals.Close;
 If (Changed) then
  Begin
   ibdsGarant.Close;
   ibdsGarant.DataSource := dsGarantGrouped;
   GenerateGarant;
   ibdsGarant.Open
  End
 else
  ibdsGarant.Bookmark := BookMark;
 ibdsGarant.EnableControls;
 (Sender as TwwDBGrid).OnUpdateFooter := dbgGroupedUpdateFooter
end;

procedure TfrmGarant.ibdsGarantGroupedBeforeClose(DataSet: TDataSet);
begin
 If (ibdsGarant.DataSource=dsGarantGrouped) then
  sbRefreshCompositVed.Enabled := True
end;

procedure TfrmGarant.GenerateGarant;
 var k : Integer;
begin
 WhereGarant := GetWhere;
 ibdsGarant.SelectSQL[0] := 'select C.NAME, CUR.ID, CUR.SYMBOL, CUR.DECIMALS_OUT DECIMALS, TOIGB.AMOUNT, TOIGB.GARANT_AMOUNT, TOIGB.GARANT_PAID, TOIGB.GARANT_AMOUNT-TOIGB.GARANT_PAID GARANT_FOR_PAY,'+' TOIGB.GARANT_FOR_PAYMENT, TOIGB.CONTRAGENT_DEBTS, TOIGB.CONTRAGENT_PAYMENTS, IH.NUMBER_PREFIX||cast(IH.NUMBER as varchar(30))||IH.NUMBER_SUFFIX NUMBER_STR, IH.INVOICE_DATE, IH.ID INVOICE_ID';
 If (AllGroups) then
  ibdsGarant.SelectSQL[1] := 'from CURRENCY CUR, CONTRACTORS C, INVOICE_HEADER IH, TMP_OPEN_INVOICES_GARANT_BALANS TOIGB'
 else
  ibdsGarant.SelectSQL[1] := 'from CURRENCY CUR, CONTRACTORS C, INVOICE_HEADER IH, TMP_OPEN_INVOICES_GARANT_BALANS TOIGB, CONTRACTOR_TYPES_INCLUDE CTI';
 If (ibdsGarant.DataSource=nil) then
  ibdsGarant.SelectSQL[2] := 'where (TOIGB.CREATOR=current_user) and (TOIGB.INVOICE_ID=IH.ID) and (C.ID=IH.CONTRACTOR_ID) and (CUR.ID=IH.CURRENCY_ID)'
 else
  ibdsGarant.SelectSQL[2] := 'where (TOIGB.CREATOR=current_user) and (TOIGB.INVOICE_ID=IH.ID) and (C.ID=IH.CONTRACTOR_ID) and (CUR.ID=IH.CURRENCY_ID) and (IH.CONTRACTOR_ID=:CONTRACTOR_ID) and (CUR.SYMBOL=:SYMBOL)';
 For k := Pred(ibdsGarant.SelectSQL.Count) downto 3 do
  ibdsGarant.SelectSQL.Delete(k);
 ibdsGarant.SelectSQL.Add(WhereGarant);
  If (EnterprisesNotInGroupsChecked<>'') then
  Begin
   ibdsGarant.SelectSQL.Add('union');
   ibdsGarant.SelectSQL.Add(ibdsGarant.SelectSQL[0]);
   ibdsGarant.SelectSQL.Add('from CURRENCY CUR, CONTRACTORS C, INVOICE_HEADER IH, TMP_OPEN_INVOICES_GARANT_BALANS TOIGB');
   ibdsGarant.SelectSQL.Add(ibdsGarant.SelectSQL[2]);
   ibdsGarant.SelectSQL.Add('and (IH.ENTERPRISE_ID in ('+EnterprisesNotInGroupsChecked+')) and');
   ibdsGarant.SelectSQL.Add('NOT EXISTS(select * from CONTRACTOR_TYPES_INCLUDE CTI where (CTI.CONTRACTOR_ID=C.ID))');
   If NOT (AllMenegers) then
    If (MenegersCheckedCount<MenegersUnCheckedCount) then
     ibdsGarant.SelectSQL.Add('and (IH.MASTER_ID in ('+Copy(MenegersChecked,1,Pred(Length(MenegersChecked)))+'))')
    else
     ibdsGarant.SelectSQL.Add('and NOT(IH.MASTER_ID in ('+Copy(MenegersUnChecked,1,Pred(Length(MenegersUnChecked)))+'))');
   If NOT (AllEnterprises) then
    If (EnterprisesCheckedCount<EnterprisesUnCheckedCount) then
     ibdsGarant.SelectSQL.Add('and (IH.ENTERPRISE_ID in ('+Copy(EnterprisesChecked,1,Pred(Length(EnterprisesChecked)))+'))')
    else
     ibdsGarant.SelectSQL.Add('and NOT(IH.ENTERPRISE_ID in ('+Copy(EnterprisesUnChecked,1,Pred(Length(EnterprisesUnChecked)))+'))')
  End;
 ibdsGarant.SelectSQL.Add('order by'+OrderByGarant)
end;

procedure TfrmGarant.wwExpandButton1AfterCollapse(Sender: TObject);
begin
 ibdsGarant.Close
end;

procedure TfrmGarant.wwExpandButton1BeforeExpand(Sender: TObject);
begin
 dbgDetails.Width := dbgGrouped.Width-wwExpandButton1.Left-29;
 ibdsGarant.Open
end;

procedure TfrmGarant.ibdsGarantCalcFields(DataSet: TDataSet);
 var FormatStr : String;
begin
 FormatStr := '#,##0.'+StringOfChar('0',ibdsGarantDECIMALS.AsInteger)+AnsiLowerCase(ibdsGarantSYMBOL.AsString);
 ibdsGarantAmount_Fmt.Value := FormatFloat(FormatStr,ibdsGarantAMOUNT.AsFloat);
 ibdsGarantGarant_Amount_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGARANT_AMOUNT.AsFloat);
 ibdsGarantGarant_Paid_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGARANT_PAID.AsFloat);
 ibdsGarantGarant_For_Pay_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGARANT_FOR_PAY.AsFloat);
 ibdsGarantGarant_For_Payment_Fmt.Value := FormatFloat(FormatStr,ibdsGarantGARANT_FOR_PAYMENT.AsFloat);
 ibdsGarantContragent_Debts_Fmt.Value := FormatFloat(FormatStr,ibdsGarantCONTRAGENT_DEBTS.AsFloat);
 ibdsGarantContragent_Payments_Fmt.Value := FormatFloat(FormatStr,ibdsGarantCONTRAGENT_PAYMENTS.AsFloat);
end;

procedure TfrmGarant.ibdsGarantBeforeClose(DataSet: TDataSet);
begin
 If (ibdsGarant.DataSource=nil) then
  sbRefreshCompositVed.Enabled := True
end;

procedure TfrmGarant.sbPrintClick(Sender: TObject);
begin
 If (fcTreeView1.Items[2].Checked) then
  sbPrint.Tag := 1
 else
  sbPrint.Tag := 0;
 frVariables.Clear;
 frVariables['Фильтр'] := 'Состояние на '+FormatDateTime('dd.mm.yyyy г.',deDateStart.Date);
 Misk.sbPrintClick((Sender as TSpeedButton), ibsGridsSetup, ibdsGarantGrouped)
end;

procedure TfrmGarant.ibdsGarantGroupedAfterOpen(DataSet: TDataSet);
begin
 sbRefreshCompositVed.Enabled := False;
 sbPrint.Enabled := True
end;

procedure TfrmGarant.dbgDetailsCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
  var RealFieldName : String;
begin
 If (UpperCase(Copy(AFieldName,Length(AFieldName)-3,4))='_FMT') then
  RealFieldName := Copy(AFieldName,1,Length(AFieldName)-4)
 else
  RealFieldName := AFieldName;
 Case (Sender as TComponent).Tag of
  0: wwDBGridCalcTitleAttributes(Sender, AFieldName, RealFieldName, AFont, ABrush, ATitleAlignment, OrderByGarantGrouped);
  1: wwDBGridCalcTitleAttributes(Sender, AFieldName, RealFieldName, AFont, ABrush, ATitleAlignment, OrderByGarant)
 End
end;

procedure TfrmGarant.dbgDetailsCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
  var RealFieldName : String;
      RealField : TField;
begin
 If (UpperCase(Copy(Field.FieldName,Length(Field.FieldName)-3,4))='_FMT') then
  RealFieldName := Copy(Field.FieldName,1,Length(Field.FieldName)-4)
 else
  RealFieldName := Field.FieldName;
 RealField := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(RealFieldName);
 Case (Sender as TComponent).Tag of
  0: wwDBGridCalcTitleImage(Sender, RealField, TitleImageAttributes, OrderByGarantGrouped);
  1: wwDBGridCalcTitleImage(Sender, RealField, TitleImageAttributes, OrderByGarant)
 End
end;

procedure TfrmGarant.dbgDetailsTitleButtonClick(Sender: TObject;
  AFieldName: String);
  var RealFieldName : String;
begin
 If (UpperCase(Copy(AFieldName,Length(AFieldName)-3,4))='_FMT') then
  RealFieldName := Copy(AFieldName,1,Length(AFieldName)-4)
 else
  RealFieldName := AFieldName;
 Case (Sender as TComponent).Tag of
  0: wwDBGridTitleButtonClick(Sender, RealFieldName, OrderByGarantGrouped, (GetKeyState(VK_CONTROL)<0),
                              nil, nil, GenerateGarantGrouped);
  1: wwDBGridTitleButtonClick(Sender, RealFieldName, OrderByGarant, (GetKeyState(VK_CONTROL)<0),
                              nil, nil, GenerateGarant)
 End
end;

procedure TfrmGarant.N1Click(Sender: TObject);
begin
 If (frmMain.FindComponent('frmInvoiceOut')=nil) then
  Begin
   TempIn_Out := 1;
   Invoice_ID := ibdsGarantINVOICE_ID.AsLargeInt;
   frmInvoiceOut := TfrmInvoice.Create(frmMain);
   frmInvoiceOut.Name := 'frmInvoiceOut'
  End
 else
  Begin
   If (frmInvoiceOut.PageControl1.ActivePageIndex<>1) then
    frmInvoiceOut.PageControl1.ActivePageIndex := 1;
   frmInvoiceOut.ibdsMainInvoice.Close;
   frmInvoiceOut.ibdsMainInvoice.ParamByName('ID').AsInt64 := ibdsGarantINVOICE_ID.AsLargeInt;
   frmInvoiceOut.ibdsMainInvoice.Open
  End;
 frmInvoiceOut.Show
end;

procedure TfrmGarant.fcTreeView1DrawText(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; ARect: TRect; AItemState: TfcItemStates;
  var DefaultDrawing: Boolean);
begin
 deDateStart.Visible := (fcTreeView1.Items[1].DisplayRect(True).Top>=0);
 If (Node=fcTreeView1.Items[1]) then
  Begin
   deDateStart.Parent := fcTreeView1;
   SetWindowPos(deDateStart.Handle, // handle
                     HWND_TOP, // change z-order
                     ARect.Right, // left
                     ARect.Top-2, // top
                     deDateStart.Width, // width
                     deDateStart.Height, // height
                     SWP_SHOWWINDOW);
  End
end;

procedure TfrmGarant.deDateStartEnter(Sender: TObject);
begin
 If NOT (fcTreeView1.Items[1].Checked) then
  fcTreeView1.Items[1].Checked := True
end;

procedure TfrmGarant.fcTreeView1MouseUp(TreeView: TfcCustomTreeView;
  Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
 If (Node<>Nil) and (Node.DisplayRect(True).Top<=Y) and (Node.DisplayRect(True).Bottom>=Y) and
    (Node.DisplayRect(True).Left<=X) and (Node.DisplayRect(True).Right>=X) then
  Node.Checked := NOT Node.Checked
end;

end.
