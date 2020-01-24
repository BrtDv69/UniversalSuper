unit ContragOborotHistory;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, IBSQL, IBDatabase, fcTreeView, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, Buttons, TeeProcs, TeEngine, Chart, DBChart, StdCtrls,
  wwdbdatetimepicker, Mask, wwdbedit, Wwdotdot, Wwdbcomb, Db,
  IBCustomDataSet, Series, TeeTools, Menus;

type
  TfrmContragOborotHistory = class(TfrmLike)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    fcTreeView1: TfcTreeView;
    Panel4: TPanel;
    sbLastCompositVed: TSpeedButton;
    sbNextCompositVed: TSpeedButton;
    sbPriorCompositVed: TSpeedButton;
    sbFirstCompositVed: TSpeedButton;
    sbCloseCompositVed: TSpeedButton;
    sbRefreshCompositVed: TSpeedButton;
    sbPrint: TSpeedButton;
    Panel1: TPanel;
    dbgGrouped: TwwDBGrid;
    Splitter2: TSplitter;
    TabSheet2: TTabSheet;
    deDateStart: TwwDBDateTimePicker;
    deDateStop: TwwDBDateTimePicker;
    edPeriodYears: TwwDBEdit;
    edPeriodMonths: TwwDBEdit;
    edPeriodDays: TwwDBEdit;
    ibdsMainContragentHistory: TIBDataSet;
    ibdsMainContragentHistoryMAIN_MANAGER_ID: TLargeintField;
    ibdsMainContragentHistoryMAIN_MANAGER_NAME: TIBStringField;
    ibdsMainContragentHistoryCONTRACTOR_ID: TLargeintField;
    ibdsMainContragentHistoryNAME: TIBStringField;
    ibdsMainContragentHistoryINVOICE_AMOUNT: TFloatField;
    ibdsMainContragentHistoryOUT_AMOUNT: TFloatField;
    ibdsMainContragentHistoryIN_AMOUNT: TFloatField;
    ibdsMainContragentHistoryIN_MANY_AMOUNT: TFloatField;
    ibdsMainContragentHistoryOUT_MANY_AMOUNT: TFloatField;
    dsMainContragentHistory: TDataSource;
    PopupMenu1: TPopupMenu;
    nDrawAll: TMenuItem;
    nDrawSelected: TMenuItem;
    chrtMain: TChart;
    ChartTool1: TMarksTipTool;
    procedure FormCreate(Sender: TObject);
    procedure GenerateTree(Node: TfcTreeNode);
    procedure fcTreeView1CalcNodeAttributes(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; State: TfcItemStates);
    procedure fcTreeView1Deletion(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode);
    procedure fcTreeView1DrawText(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; ARect: TRect; AItemState: TfcItemStates;
      var DefaultDrawing: Boolean);
    procedure fcTreeView1Expanding(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; var AllowExpansion: Boolean);
    procedure fcTreeView1MouseUp(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure fcTreeView1ToggleCheckbox(TreeView: TfcCustomTreeView;
      Node: TfcTreeNode);
    procedure edPeriodYearsEnter(Sender: TObject);
    procedure sbRefreshCompositVedClick(Sender: TObject);
    procedure sbCloseCompositVedClick(Sender: TObject);
    procedure deDateStartChange(Sender: TObject);
    procedure dbgGroupedCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure dbgGroupedCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgGroupedTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure dbgGroupedUpdateFooter(Sender: TObject);
    procedure ibdsMainContragentHistoryAfterOpen(DataSet: TDataSet);
    procedure nDrawAllClick(Sender: TObject);
    procedure nDrawSelectedClick(Sender: TObject);
    procedure dbgGroupedRowChanged(Sender: TObject);
    procedure dbgGroupedKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function GetWhereMainContragentHistory: String;
    procedure GenerateSelectMainContragentHistory;
    procedure DrawGraphs;
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
  frmContragOborotHistory: TfrmContragOborotHistory;

implementation

uses DM, Misk;

{$R *.DFM}
var Calculated : Boolean = False;
    Level : Integer = -3;

    OrderByMainContragentHistory  : String = ' 4 asc';
    WhereSqlMainContragentHistory : String = '';

procedure TfrmContragOborotHistory.GenerateTree(Node: TfcTreeNode);
 var R : PItemRec;
     NewNode : TfcTreeNode;
     S : String;
begin
 If (Node=nil) then
  Begin
   fcTreeView1.Items.Clear;
   NewNode := fcTreeView1.Items.AddChild(Node, 'C');
   NewNode.CheckboxType := tvctNone;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.Enterprise := 0;
   R^.IType := -1;
   NewNode := fcTreeView1.Items.AddChild(Node, 'По');
   NewNode.CheckboxType := tvctNone;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.Enterprise := 0;
   R^.IType := -1;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Период группировки');
   NewNode.CheckboxType := tvctNone;
   NewNode.HasChildren := True;
   New(R);
   NewNode.Data := R;
   R^.Id := 0;
   R^.Parent := 0;
   R^.Enterprise := 0;
   R^.IType := -2;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Менеджеры');
   NewNode.CheckboxType := tvctCheckbox;
   NewNode.Checked := True;
   NewNode.HasChildren := True;
   New(R);
   NewNode.Data := R;
   R^.Id := -1;
   R^.Parent := 0;
   R^.Enterprise := -1;
   R^.IType := 3;
   NewNode := fcTreeView1.Items.AddChild(Node, 'Предприятия');
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
    -2: Begin
         NewNode := fcTreeView1.Items.AddChild(Node, 'Год');
         NewNode.CheckboxType := tvctCheckbox;
         NewNode.Checked := False;
         NewNode.HasChildren := False;
         New(R);
         NewNode.Data := R;
         R^.Id := 0;
         R^.Parent := PItemRec(Node.Data)^.Id;
         R^.Enterprise := -1;
         R^.IType := -1;
         NewNode := fcTreeView1.Items.AddChild(Node, 'Месяц');
         NewNode.CheckboxType := tvctCheckbox;
         NewNode.Checked := True;
         NewNode.HasChildren := False;
         New(R);
         NewNode.Data := R;
         R^.Id := 0;
         R^.Parent := PItemRec(Node.Data)^.Id;
         R^.Enterprise := -1;
         R^.IType := -1;
         NewNode := fcTreeView1.Items.AddChild(Node, 'День');
         NewNode.CheckboxType := tvctCheckbox;
         NewNode.Checked := False;
         NewNode.HasChildren := False;
         New(R);
         NewNode.Data := R;
         R^.Id := 0;
         R^.Parent := PItemRec(Node.Data)^.Id;
         R^.Enterprise := -1;
         R^.IType := -1
        End;
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
         NewNode := fcTreeView1.Items.AddChild(Node, 'Группы товара');
         NewNode.CheckboxType := tvctCheckbox;
         NewNode.Checked := True;
         NewNode.HasChildren := True;
         New(R);
         NewNode.Data := R;
         R^.Id := -1;
         R^.Parent := PItemRec(Node.Data)^.Id;
         R^.Enterprise := PItemRec(Node.Data)^.Enterprise;
         R^.IType := 4;
         NewNode := fcTreeView1.Items.AddChild(Node, 'Контрагенты');
         NewNode.CheckboxType := tvctCheckbox;
         NewNode.Checked := True;
         NewNode.HasChildren := True;
         New(R);
         NewNode.Data := R;
         R^.Id := 0;
         R^.Parent := PItemRec(Node.Data)^.Id;
         R^.Enterprise := PItemRec(Node.Data)^.Enterprise;
         R^.IType := 5
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
         NewNode := fcTreeView1.Items.AddChild(Node, 'Контрагенты не имеющие личных менеджеров');
         NewNode.CheckboxType := tvctCheckbox;
         NewNode.Checked := True;
         NewNode.HasChildren := False;
         New(R);
         NewNode.Data := R;
         R^.Id := 0;
         R^.Parent := PItemRec(Node.Data)^.Id;
         R^.Enterprise := 0;
         R^.IType := 3;
         ibsGridsSetup.SQL.Add('select distinct C.MAIN_MANAGER_ID ,P.SURNAME, P.NAME, P.SECOND_NAME from CONTRACTORS C, PERSONS P where (P.ID=C.MAIN_MANAGER_ID) order by 2, 3, 4');
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
        End;
    4 : Begin
         NewNode := fcTreeView1.Items.AddChild(Node, 'Не включенные в группы');
         NewNode.CheckboxType := tvctCheckbox;
         NewNode.Checked := True;
         NewNode.HasChildren := False;
         New(R);
         NewNode.Data := R;
         R^.Id := PItemRec(Node.Data)^.Id;
         R^.Parent := PItemRec(Node.Data)^.Id;
         R^.Enterprise := PItemRec(Node.Data)^.Enterprise;
         R^.IType := 4;
         ibsGridsSetup.SQL.Add('select a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, count(aa.id) CHIELD_GROUPS_COUNT');
         ibsGridsSetup.SQL.Add('from ARTICULS a left OUTER JOIN articuls aa on');
         ibsGridsSetup.SQL.Add('((a.id=aa.parent_id) and (aa.item_type=0))');
         ibsGridsSetup.SQL.Add('where ((A.ENTERPRISE_ID=-1) or (A.ENTERPRISE_ID='+IntToStr(PItemRec(Node.Data)^.Enterprise)+')) and (a.PARENT_ID='+IntToStr(PItemRec(Node.Data)^.ID)+') and (a.ITEM_TYPE=0)');
         ibsGridsSetup.SQL.Add('group by a.ID, a.NAME, a.PARENT_ID, a.CHIELD_COUNT, a.ITEM_TYPE');
         ibsGridsSetup.SQL.Add('order by a.NAME asc');
         ibsGridsSetup.ExecQuery;
         While not (ibsGridsSetup.EOF) do
          Begin
           NewNode := fcTreeView1.Items.AddChild(Node, ibsGridsSetup.FieldByName('NAME').asString);
           NewNode.CheckboxType := tvctCheckbox;
           NewNode.Checked := True;
           NewNode.HasChildren := (ibsGridsSetup.FieldByName('CHIELD_GROUPS_COUNT').AsInteger > 0);
           New(R);
           NewNode.Data := R;
           R^.Id := ibsGridsSetup.FieldByName('ID').AsInt64;
           R^.Parent := ibsGridsSetup.FieldByName('PARENT_ID').AsInt64;
           R^.Enterprise := 0;
           R^.IType := 4;
           ibsGridsSetup.Next
          End;
         ibsGridsSetup.Close
        End;
    5 : Begin
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
        End
   End
  End
end;

procedure TfrmContragOborotHistory.FormCreate(Sender: TObject);
 var TmpNode : TfcTreeNode;
begin
 FName := 'Анализ контрагентов';
 inherited;
 trMain.StartTransaction;
 deDateStart.Date := IncMonth(Date,-12);
 deDateStop.Date := Date;
 GenerateTree(Nil);
 fcTreeView1.FullExpand;
 fcTreeView1.Items[6].Collapse(False);
 TmpNode := fcTreeView1.Items[6].GetNextSibling.GetFirstChild;
 While Not (TmpNode=nil) do
  Begin
   TmpNode.Collapse(True);
   TmpNode := TmpNode.GetNextSibling
  End;
 fcTreeView1.Selected := fcTreeView1.Items[0];
 fcTreeView1.OnExpanding := nil;
 edPeriodYears.Text := '1';
 edPeriodMonths.Text := '1';
 edPeriodDays.Text := '7'
end;

procedure TfrmContragOborotHistory.fcTreeView1CalcNodeAttributes(
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

procedure TfrmContragOborotHistory.fcTreeView1Deletion(
  TreeView: TfcCustomTreeView; Node: TfcTreeNode);
begin
 Dispose(PItemRec(Node.Data))
end;

procedure TfrmContragOborotHistory.fcTreeView1DrawText(
  TreeView: TfcCustomTreeView; Node: TfcTreeNode; ARect: TRect;
  AItemState: TfcItemStates; var DefaultDrawing: Boolean);
begin
 deDateStart.Visible := (fcTreeView1.Items[0].DisplayRect(True).Top>=0);
 deDateStop.Visible := (fcTreeView1.Items[1].DisplayRect(True).Top>=0);
 edPeriodYears.Visible := (fcTreeView1.Items[3].DisplayRect(True).Top>=0);
 edPeriodMonths.Visible := (fcTreeView1.Items[4].DisplayRect(True).Top>=0);
 edPeriodDays.Visible := (fcTreeView1.Items[5].DisplayRect(True).Top>=0);
 If (Node=fcTreeView1.Items[0]) then
  Begin
   deDateStart.Parent := fcTreeView1;
   SetWindowPos(deDateStart.Handle, // handle
                     HWND_TOP, // change z-order
                     ARect.Right+
                     fcTreeView1.Canvas.TextWidth('По')-
                     fcTreeView1.Canvas.TextWidth('С'), // left
                     ARect.Top-2, // top
                     deDateStart.Width, // width
                     ARect.Bottom-ARect.Top+2, // height
                     SWP_SHOWWINDOW+SWP_NOZORDER)
  End;
 If (Node=fcTreeView1.Items[1]) then
  Begin
   deDateStop.Parent := fcTreeView1;
   SetWindowPos(deDateStop.Handle, // handle
                     HWND_TOP, // change z-order
                     ARect.Right, // left
                     ARect.Top-2, // top
                     deDateStop.Width, // width
                     ARect.Bottom-ARect.Top+2, // height
                     SWP_SHOWWINDOW+SWP_NOZORDER)
  End;
 If (Node=fcTreeView1.Items[3]) then
  Begin
   edPeriodYears.Parent := fcTreeView1;
   SetWindowPos(edPeriodYears.Handle, // handle
                     HWND_TOP, // change z-order
                     ARect.Right+2+
                     fcTreeView1.Canvas.TextWidth('Месяц')-
                     fcTreeView1.Canvas.TextWidth('Год'), // left
                     ARect.Top-2, // top
                     edPeriodYears.Width, // width
                     ARect.Bottom-ARect.Top+2, // height
                     SWP_SHOWWINDOW+SWP_NOZORDER)
  End;
 If (Node=fcTreeView1.Items[4]) then
  Begin
   edPeriodMonths.Parent := fcTreeView1;
   SetWindowPos(edPeriodMonths.Handle, // handle
                     HWND_TOP, // change z-order
                     ARect.Right+2, // left
                     ARect.Top-2, // top
                     edPeriodMonths.Width, // width
                     ARect.Bottom-ARect.Top+2, // height
                     SWP_SHOWWINDOW+SWP_NOZORDER)
  End;
 If (Node=fcTreeView1.Items[5]) then
  Begin
   edPeriodDays.Parent := fcTreeView1;
   SetWindowPos(edPeriodDays.Handle, // handle
                     HWND_TOP, // change z-order
                     ARect.Right+2+
                     fcTreeView1.Canvas.TextWidth('Месяц')-
                     fcTreeView1.Canvas.TextWidth('День'), // left
                     ARect.Top-2, // top
                     edPeriodDays.Width, // width
                     ARect.Bottom-ARect.Top+2, // height
                     SWP_SHOWWINDOW+SWP_NOZORDER)
  End 
end;

procedure TfrmContragOborotHistory.fcTreeView1Expanding(
  TreeView: TfcCustomTreeView; Node: TfcTreeNode;
  var AllowExpansion: Boolean);
begin
 GenerateTree(Node)
end;

procedure TfrmContragOborotHistory.fcTreeView1MouseUp(
  TreeView: TfcCustomTreeView; Node: TfcTreeNode; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 If (Node<>Nil) and (Node.DisplayRect(True).Top<=Y) and (Node.DisplayRect(True).Bottom>=Y) and
    (Node.DisplayRect(True).Left<=X) and (Node.DisplayRect(True).Right>=X) then
  Node.Checked := NOT Node.Checked
end;

procedure TfrmContragOborotHistory.fcTreeView1ToggleCheckbox(
  TreeView: TfcCustomTreeView; Node: TfcTreeNode);
var TmpNode : TfcTreeNode;
    k : Integer;
begin
 If (fcTreeView1.Items.Count<7) then
  exit;
 If (Node=fcTreeView1.Items[3]) or (Node=fcTreeView1.Items[4]) or
    (Node=fcTreeView1.Items[5]) then
  Begin
   Calculated := False;
   If (Node.Checked) then
    Begin
     If (Node<>fcTreeView1.Items[3]) and (fcTreeView1.Items[3].Checked=Node.Checked) then
      fcTreeView1.Items[3].Checked := Not Node.Checked;
     If (Node<>fcTreeView1.Items[4]) and (fcTreeView1.Items[4].Checked=Node.Checked) then
      fcTreeView1.Items[4].Checked := Not Node.Checked;
     If (Node<>fcTreeView1.Items[5]) and (fcTreeView1.Items[5].Checked=Node.Checked) then
      fcTreeView1.Items[5].Checked := Not Node.Checked
    End
   else
    If Not ((fcTreeView1.Items[3].Checked) or
            (fcTreeView1.Items[4].Checked) or (fcTreeView1.Items[5].Checked)) then
     Node.Checked := True
  End;
 edPeriodYears.Enabled := fcTreeView1.Items[3].Checked;
 edPeriodMonths.Enabled := fcTreeView1.Items[4].Checked;
 edPeriodDays.Enabled := fcTreeView1.Items[5].Checked;
// ibdsGarantGrouped.Close;
// ibdsGarant.Close;
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
   Node.Parent.Checked := True
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

procedure TfrmContragOborotHistory.edPeriodYearsEnter(Sender: TObject);
begin
 If NOT (fcTreeView1.Items[(Sender as TComponent).Tag].Checked) then
  fcTreeView1.Items[(Sender as TComponent).Tag].Checked := True
end;

procedure TfrmContragOborotHistory.sbRefreshCompositVedClick(
  Sender: TObject);
 var StartDate, StopDate : TDate;
begin
 If Not (Calculated) then
  Begin
   ibsGen_ID.SQL.Clear;
   ibsGen_ID.SQL.Add('delete from TMP_CONTRAGENT_HISTORY where (CREATOR=current_user)');
   ibsGen_ID.ExecQuery;
   ibsGen_ID.SQL.Clear;
   ibsGen_ID.SQL.Add('select * from GET_CONTRAGENT_HISTORY(:START_DATE,:STOP_DATE)');
   ibsGen_ID.GenerateParamNames := True;
   StartDate := deDateStart.Date;
   While (StartDate<deDateStop.Date) do
    Begin
     If (fcTreeView1.Items[3].Checked) then
      StopDate := IncMonth(StartDate,StrToInt(edPeriodYears.Text)*12)-1;
     If (fcTreeView1.Items[4].Checked) then
      StopDate := IncMonth(StartDate,StrToInt(edPeriodMonths.Text))-1;
     If (fcTreeView1.Items[5].Checked) then
      StopDate := StartDate+StrToInt(edPeriodDays.Text)-1;
     ibsGen_ID.ParamByName('START_DATE').AsDate := StartDate;
     ibsGen_ID.ParamByName('STOP_DATE').AsDate := StopDate;
     ibsGen_ID.ExecQuery;
     ibsGen_ID.Close;
     StartDate := StopDate+1
    End;
   try
    trMain.Commit
   except
    trMain.Rollback;
    MessageDlg('Ошибка первичных расчетов.',mtError,[mbOK],0);
    Exit
   end;
   trMain.StartTransaction;
   Calculated := True
  End;
 GenerateSelectMainContragentHistory;
 ibdsMainContragentHistory.Open;

end;

procedure TfrmContragOborotHistory.sbCloseCompositVedClick(
  Sender: TObject);
begin
 Close
end;

procedure TfrmContragOborotHistory.GenerateSelectMainContragentHistory;
 var k : Integer;
begin
 WhereSqlMainContragentHistory := GetWhereMainContragentHistory;
 For k := Pred(ibdsMainContragentHistory.SelectSQL.Count) downto 8 do
  ibdsMainContragentHistory.SelectSQL.Delete(k);
 If (WhereSqlMainContragentHistory<>'') then
  ibdsMainContragentHistory.SelectSQL.Add('where ('+WhereSqlMainContragentHistory+')');
 ibdsMainContragentHistory.SelectSQL.Add('group by TCH.MAIN_MANAGER_ID, P.SURNAME, P.NAME, P.SECOND_NAME,TCH.CONTRACTOR_ID, C.NAME');
 ibdsMainContragentHistory.SelectSQL.Add('order by'+OrderByMainContragentHistory)
end;

function TfrmContragOborotHistory.GetWhereMainContragentHistory: String;
 var MainNode, TmpNode : TfcTreeNode;
     Checked, UnChecked, InEnterpriseSelect : String;
     CheckedCount, UnCheckedCount : Integer;
     NotInGroup : Boolean;

procedure CountNode(Node : TfcTreeNode);
Begin
 If (Node.Checked) then
  Begin
   Checked := Checked+IntToStr(PItemRec(Node.Data)^.ID)+',';
   Inc(CheckedCount)
  End
 else
  Begin
   UnChecked := UnChecked+IntToStr(PItemRec(Node.Data)^.ID)+',';
   Inc(UnCheckedCount)
  End
end;

begin
 Result := '';
//Менеджеры
 TmpNode := fcTreeView1.Items[6].GetFirstChild;
 CheckedCount := 0; UnCheckedCount := 0;
 Checked := ''; UnChecked := '';
 While (TmpNode<>nil) do
  Begin
   CountNode(TmpNode);
   TmpNode := fcTreeView1.Items[6].GetNextChild(TmpNode)
  End;
 If (UnCheckedCount>0) then
  If (UnCheckedCount>=CheckedCount) then
   Result := Result+' and (TCH.MAIN_MANAGER_ID in ('+Copy(Checked,1,Pred(Length(Checked)))+'))'
  else
   Result := Result+' and NOT(TCH.MAIN_MANAGER_ID in ('+Copy(UnChecked,1,Pred(Length(UnChecked)))+'))';
//Артикулы
 MainNode := fcTreeView1.Items[6].GetNextSibling.GetFirstChild;
 InEnterpriseSelect := '';
 While (MainNode<>Nil) do
  Begin
   If (MainNode.Checked) then
    Begin
     TmpNode := MainNode.GetFirstChild.GetFirstChild;
     Level := MainNode.GetFirstChild.Level;
     CheckedCount := 0; UnCheckedCount := 0;
     Checked := ''; UnChecked := '';
     While (TmpNode<>nil) and (TmpNode.Level>Level) do
      Begin
       CountNode(TmpNode);
       TmpNode := TmpNode.GetNext
      End;
     If (UnCheckedCount>0) then
      Begin
       If (UnCheckedCount>=CheckedCount) then
        InEnterpriseSelect := InEnterpriseSelect+' or ((TCH.ENTERPRISE_ID='+IntToStr(PItemRec(MainNode.Data)^.ID)+') and (TCH.ARTICUL_PARENT_ID in ('+Copy(Checked,1,Pred(Length(Checked)))+')))'
       else
        InEnterpriseSelect := InEnterpriseSelect+' or ((TCH.ENTERPRISE_ID='+IntToStr(PItemRec(MainNode.Data)^.ID)+') and Not(TCH.ARTICUL_PARENT_ID in ('+Copy(UnChecked,1,Pred(Length(UnChecked)))+')))'
      End
    End;
   MainNode := MainNode.GetNextSibling
  End;
  If (InEnterpriseSelect<>'') then
   Result := Result+' and ('+Copy(InEnterpriseSelect,5,Length(InEnterpriseSelect)-4)+')';
//Типы контрагентов
 MainNode := fcTreeView1.Items[6].GetNextSibling.GetFirstChild;
 InEnterpriseSelect := '';
 While (MainNode<>Nil) do
  Begin
   If (MainNode.Checked) then
    Begin
     TmpNode := MainNode.GetFirstChild;
     TmpNode := TmpNode.GetNextChild(TmpNode).GetFirstChild;
     Level := MainNode.GetFirstChild.Level;
     CheckedCount := 0; UnCheckedCount := 0;
     Checked := ''; UnChecked := '';
     NotInGroup := TmpNode.Checked;
     TmpNode := TmpNode.GetNext;
     While (TmpNode<>nil) and (TmpNode.Level>Level) do
      Begin
       CountNode(TmpNode);
       TmpNode := TmpNode.GetNext
      End;
     If (UnCheckedCount>0) then
      Begin
       If (UnCheckedCount>=CheckedCount) then
        InEnterpriseSelect := InEnterpriseSelect+' or ((TCH.ENTERPRISE_ID='+IntToStr(PItemRec(MainNode.Data)^.ID)+') and (TCH.CONTRACTOR_ID in (select CTI.CONTRACTOR_ID from CONTRACTOR_TYPES_INCLUDE CTI where (CTI.TYPE_ID in ('+Copy(Checked,1,Pred(Length(Checked)))+')))))'
       else
        InEnterpriseSelect := InEnterpriseSelect+' or ((TCH.ENTERPRISE_ID='+IntToStr(PItemRec(MainNode.Data)^.ID)+') and NOT(TCH.CONTRACTOR_ID in (select CTI.CONTRACTOR_ID from CONTRACTOR_TYPES_INCLUDE CTI where (CTI.TYPE_ID in ('+Copy(Checked,1,Pred(Length(Checked)))+')))))';
       If (NotInGroup) then
        InEnterpriseSelect := InEnterpriseSelect+'or ((TCH.ENTERPRISE_ID='+IntToStr(PItemRec(MainNode.Data)^.ID)+') and Not(exists(select * from CONTRACTOR_TYPES_INCLUDE CTI, CONTRACTOR_TYPES CT where (CT.ENTERPRISE_ID='+IntToStr(PItemRec(MainNode.Data)^.ID)+') and (CT.ID=CTI.TYPE_ID) and (CTI.CONTRACTOR_ID=TCH.CONTRACTOR_ID))))'
      End
    End;
   MainNode := MainNode.GetNextSibling
  End;
 If (InEnterpriseSelect<>'') then
  Result := Result+' and ('+Copy(InEnterpriseSelect,5,Length(InEnterpriseSelect)-4)+')';
//Предприятия
 MainNode := fcTreeView1.Items[6].GetNextSibling.GetFirstChild;
 While (MainNode<>Nil) do
  Begin
   If (MainNode.Checked) then
    If (Pos('TCH.ENTERPRISE_ID='+IntToStr(PItemRec(MainNode.Data)^.ID),Result)=0) then
     Result := Result+' or (TCH.ENTERPRISE_ID='+IntToStr(PItemRec(MainNode.Data)^.ID)+')';
   MainNode := MainNode.GetNextSibling
  End;
 If (Copy(Result,1,4)=' and') then
  Result := Copy(Result,6,Length(Result)-5);
 If (Copy(Result,1,3)=' or') then
  Result := Copy(Result,5,Length(Result)-4)
end;

procedure TfrmContragOborotHistory.deDateStartChange(Sender: TObject);
begin
 Calculated := False
end;

procedure TfrmContragOborotHistory.dbgGroupedCalcTitleAttributes(
  Sender: TObject; AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
  wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainContragentHistory)
end;

procedure TfrmContragOborotHistory.dbgGroupedCalcTitleImage(
  Sender: TObject; Field: TField;
  var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainContragentHistory);
end;

procedure TfrmContragOborotHistory.dbgGroupedTitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainContragentHistory, (GetKeyState(VK_CONTROL)<0),
                          nil, nil, GenerateSelectMainContragentHistory);
end;

procedure TfrmContragOborotHistory.dbgGroupedUpdateFooter(Sender: TObject);
 var k : Integer;
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select');
 For k := 2 to ibdsMainContragentHistory.SelectSQL.Count-3 do
  ibsGen_ID.SQL.Add(ibdsMainContragentHistory.SelectSQL[k]);
 ibsGen_ID.ExecQuery;
 dbgGrouped.ColumnByName('INVOICE_AMOUNT').FooterValue := FormatFloat(ibdsMainContragentHistoryINVOICE_AMOUNT.DisplayFormat,ibsGen_ID.FieldByName('INVOICE_AMOUNT').AsDouble);
 dbgGrouped.ColumnByName('OUT_AMOUNT').FooterValue := FormatFloat(ibdsMainContragentHistoryOUT_AMOUNT.DisplayFormat,ibsGen_ID.FieldByName('OUT_AMOUNT').AsDouble);
 dbgGrouped.ColumnByName('IN_AMOUNT').FooterValue := FormatFloat(ibdsMainContragentHistoryIN_AMOUNT.DisplayFormat,ibsGen_ID.FieldByName('IN_AMOUNT').AsDouble);
 dbgGrouped.ColumnByName('IN_MANY_AMOUNT').FooterValue := FormatFloat(ibdsMainContragentHistoryIN_MANY_AMOUNT.DisplayFormat,ibsGen_ID.FieldByName('IN_MANY_AMOUNT').AsDouble);
 dbgGrouped.ColumnByName('OUT_MANY_AMOUNT').FooterValue := FormatFloat(ibdsMainContragentHistoryOUT_MANY_AMOUNT.DisplayFormat,ibsGen_ID.FieldByName('OUT_MANY_AMOUNT').AsDouble);
 ibsGen_ID.Close
end;

procedure TfrmContragOborotHistory.ibdsMainContragentHistoryAfterOpen(
  DataSet: TDataSet);
begin
 nDrawAll.Click
end;

procedure TfrmContragOborotHistory.DrawGraphs;
 var InvoiceAmount, OutAmount, InAmount, InManyAmount, OutManyAmount : TBarSeries;
     StartDate, StopDate : TDate;
     InvoiceAmountActive, OutAmountActive, InAmountActive, InManyAmountActive, OutManyAmountActive : Boolean;
begin
 If (chrtMain.SeriesList.Count>0) then
  Begin
   InvoiceAmountActive := chrtMain.SeriesList[0].Active;
   InManyAmountActive := chrtMain.SeriesList[1].Active;
   OutAmountActive := chrtMain.SeriesList[2].Active;
   InAmountActive := chrtMain.SeriesList[3].Active;
   If (chrtMain.SeriesList[4]<>nil) then
    OutManyAmountActive := chrtMain.SeriesList[4].Active
  End
 else
  Begin
   InvoiceAmountActive := True;
   OutAmountActive := True;
   InAmountActive := True;
   InManyAmountActive := True;
   OutManyAmountActive := True
  End;
 chrtMain.RemoveAllSeries;
 chrtMain.Legend.LegendStyle := lsSeries;
 chrtMain.Legend.CheckBoxes := True;
 chrtMain.Legend.Alignment := laBottom;
// chrtMain.Tools[0].
 InvoiceAmount := TBarSeries.Create(chrtMain);
 InvoiceAmount.ParentChart := chrtMain;
 InvoiceAmount.Marks.Visible := False;
 InvoiceAmount.Title := 'Выписано';
 InvoiceAmount.SeriesColor := clWhite;
 InManyAmount := TBarSeries.Create(chrtMain);
 InManyAmount.ParentChart := chrtMain;
 InManyAmount.Marks.Visible := False;
 InManyAmount.Title := 'Оплачено';
 InManyAmount.SeriesColor := clGreen;
 OutAmount := TBarSeries.Create(chrtMain);
 OutAmount.ParentChart := chrtMain;
 OutAmount.Marks.Visible := False;
 OutAmount.Title := 'Отгружено';
 OutAmount.SeriesColor := clBlue;
 InAmount := TBarSeries.Create(chrtMain);
 InAmount.ParentChart := chrtMain;
 InAmount.Marks.Visible := False;
 InAmount.Title := 'Возврат';
 InAmount.SeriesColor := clYellow;
 OutManyAmount := TBarSeries.Create(chrtMain);
 OutManyAmount.ParentChart := chrtMain;
 OutManyAmount.Marks.Visible := False;
 OutManyAmount.Title := 'Г/О';
 OutManyAmount.SeriesColor := $00604080;
 ibsGridsSetup.ExecQuery;
 StartDate := deDateStart.Date;
 While (StartDate<deDateStop.Date) do
  Begin
   If (fcTreeView1.Items[3].Checked) then
    StopDate := IncMonth(StartDate,StrToInt(edPeriodYears.Text)*12)-1;
   If (fcTreeView1.Items[4].Checked) then
    StopDate := IncMonth(StartDate,StrToInt(edPeriodMonths.Text))-1;
   If (fcTreeView1.Items[5].Checked) then
    StopDate := StartDate+StrToInt(edPeriodDays.Text)-1;
   If (StartDate<=ibsGridsSetup.FieldByName('AVERAGE_DATE').AsDate) and
      (ibsGridsSetup.FieldByName('AVERAGE_DATE').AsDate<=StopDate) then
    Begin
     InvoiceAmount.Add(ibsGridsSetup.FieldByName('INVOICE_AMOUNT').AsDouble,FormatDateTime('mmmm yyyy',ibsGridsSetup.FieldByName('AVERAGE_DATE').AsDate));
     OutAmount.Add(ibsGridsSetup.FieldByName('OUT_AMOUNT').AsDouble,FormatDateTime('mmmm yyyy',ibsGridsSetup.FieldByName('AVERAGE_DATE').AsDate));
     InAmount.Add(ibsGridsSetup.FieldByName('IN_AMOUNT').AsDouble,FormatDateTime('mmmm yyyy',ibsGridsSetup.FieldByName('AVERAGE_DATE').AsDate));
     InManyAmount.Add(ibsGridsSetup.FieldByName('IN_MANY_AMOUNT').AsDouble,FormatDateTime('mmmm yyyy',ibsGridsSetup.FieldByName('AVERAGE_DATE').AsDate));
     OutManyAmount.Add(ibsGridsSetup.FieldByName('OUT_MANY_AMOUNT').AsDouble,FormatDateTime('mmmm yyyy',ibsGridsSetup.FieldByName('AVERAGE_DATE').AsDate));
     ibsGridsSetup.Next
    End
   else
    Begin
     InvoiceAmount.Add(0,FormatDateTime('mmmm yyyy',StartDate+(StopDate-StartDate)/2));
     OutAmount.Add(0,FormatDateTime('mmmm yyyy',StartDate+(StopDate-StartDate)/2));
     InAmount.Add(0,FormatDateTime('mmmm yyyy',StartDate+(StopDate-StartDate)/2));
     InManyAmount.Add(0,FormatDateTime('mmmm yyyy',StartDate+(StopDate-StartDate)/2));
     OutManyAmount.Add(0,FormatDateTime('mmmm yyyy',StartDate+(StopDate-StartDate)/2))
    End;
   StartDate := StopDate+1
  End;
 ibsGridsSetup.Close;
 If (PersonID=5047) then
  chrtMain.RemoveSeries(OutManyAmount);
 InvoiceAmount.Active := InvoiceAmountActive;
 OutAmount.Active := OutAmountActive;
 InAmount.Active := InAmountActive;
 InManyAmount.Active := InManyAmountActive;
 OutManyAmount.Active := OutManyAmountActive
end;

procedure TfrmContragOborotHistory.nDrawAllClick(Sender: TObject);
 var k : Integer;
begin
 nDrawAll.Checked := True;
 ibsGridsSetup.Close;
 ibsGridsSetup.SQL.Clear;
 ibsGridsSetup.SQL.Add('select TCH.AVERAGE_DATE,');
 For k := 2 to ibdsMainContragentHistory.SelectSQL.Count-3 do
  ibsGridsSetup.SQL.Add(ibdsMainContragentHistory.SelectSQL[k]);
 ibsGridsSetup.SQL.Add('group by TCH.AVERAGE_DATE order by 1');
 ibsGridsSetup.GenerateParamNames := True;
 chrtMain.Title.Text.Clear;
 chrtMain.Title.Text.Add('Общие графики');
 DrawGraphs
end;

procedure TfrmContragOborotHistory.nDrawSelectedClick(Sender: TObject);
 var k : Integer;
     S : String;
begin
 nDrawSelected.Checked := True;
 ibsGridsSetup.Close;
 S := '';
 If (dbgGrouped.SelectedList.Count>0) then
  Begin
   ibdsMainContragentHistory.DisableControls;
   For k := 0 to Pred(dbgGrouped.SelectedList.Count) do
    Begin
     ibdsMainContragentHistory.GotoBookmark(dbgGrouped.SelectedList.Items[k]);
     S := S+', '+ibdsMainContragentHistoryCONTRACTOR_ID.AsString
    End;
   ibdsMainContragentHistory.EnableControls 
  End
 else
  S := S+', '+ibdsMainContragentHistoryCONTRACTOR_ID.AsString;
 If (S<>'') then
  S := Copy(S,3,Length(S)-2);
 ibsGridsSetup.SQL.Clear;
 ibsGridsSetup.SQL.Add('select TCH.AVERAGE_DATE,');
 For k := 2 to ibdsMainContragentHistory.SelectSQL.Count-3 do
  ibsGridsSetup.SQL.Add(ibdsMainContragentHistory.SelectSQL[k]);
 If (S<>'') then
  ibsGridsSetup.SQL.Add('and (TCH.CONTRACTOR_ID in ('+S+'))');
 ibsGridsSetup.SQL.Add('group by TCH.AVERAGE_DATE order by 1');
 ibsGridsSetup.GenerateParamNames := True;
 chrtMain.Title.Text.Clear;
 chrtMain.Title.Text.Add('Выборочные графики');
 DrawGraphs
end;

procedure TfrmContragOborotHistory.dbgGroupedRowChanged(Sender: TObject);
begin
 If (GetKeyState(VK_CONTROL)>=0) and (GetKeyState(VK_SHIFT)>=0) then
  dbgGrouped.UnselectAll
end;

procedure TfrmContragOborotHistory.dbgGroupedKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If (Key=VK_RETURN) then
  nDrawSelected.Click
end;

end.
