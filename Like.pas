unit Like;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButtonGroup, IBDatabase, Db, IBSQL, wwDBGrid, ExtCtrls, ComCtrls, Variants,
  Menus, cxGridPopupMenu, cxGridTableView, cxGridDBTableView, dxBar;

type
  TfrmLike = class(TForm)
    trMain: TIBTransaction;
    ibsGen_ID: TIBSQL;
    ibsGridsSetup: TIBSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure WMGetMinMaxInfo( var Message :TWMGetMinMaxInfo ); message WM_GETMINMAXINFO;
    procedure ExportClick(Sender: TObject);
    procedure NewItemRowSelectorClick(Sender: TObject);
    procedure HeaderAutoHeightClick(Sender: TObject);
    procedure CellAutoHeightClick(Sender: TObject);
    procedure ShowPreView(Sender: TObject);
  public
    { Public declarations }
   FName : String;
  end;

var
  frmLike: TfrmLike;

implementation

uses Main, Misk, DM, cxGrid, ExportOptions;

{$R *.DFM}

procedure TfrmLike.WMGetMinMaxInfo(var Message :TWMGetMinMaxInfo);
 var R: TRect;
begin
 With Message.MinMaxInfo^ do
  Begin
   SystemParametersInfo(SPI_GETWORKAREA,0,@R,0);
   ptMaxSize.X := R.Right-R.Left;
   ptMaxPosition.X := 0;
   ptMaxSize.Y := R.Bottom-frmMain.BoundsRect.Bottom;
   ptMaxPosition.Y := frmMain.BoundsRect.Bottom-R.Top
  end;
 Message.Result := 0;
 Inherited;
end;

procedure TfrmLike.FormCreate(Sender: TObject);
 var k : Integer;
     FMenuItem: TMenuItem;
     Comp : TComponent;
     MemStream : TMemoryStream;
     tmpBtn : TdxBarButton;
begin
 tmpBtn := TdxBarButton.Create(frmMain);
 With tmpBtn do
  Begin
   Caption := FName;
   Hint := FName;
   ButtonStyle := bsChecked;
   PaintStyle := psCaption;
   Tag := Integer(Sender);  {store form in button's tag }
   OnClick := frmMain.TaskBarClick;
   GroupIndex := 1;
   AllowAllUp := False;
   Down := True;
   frmMain.dxBarManager.Bars[2].LockUpdate := True;
   frmMain.dxBarManager.Bars[2].ItemLinks.Add.Item := tmpBtn;
   frmMain.dxBarManager.Bars[2].LockUpdate := False
  end;
 Left := (Screen.Width-Width) div 2;
 trMain.DefaultDatabase := nil;
 If (Black) then
  trMain.AddDatabase(frmDM.dbMain);
 trMain.AddDatabase(frmDM.dbWhite);
 trMain.AddDatabase(frmDM.dbGenerators);
 If (Black) and (PersonID<>0) then
  Begin
   trMain.StartTransaction;
   ibsGridsSetup.SQL.Clear;
   ibsGridsSetup.SQL.Add('select FIELD_NAME, DISPLAY_LABEL, DISPLAY_WIDTH, FIELD_ORDER, IS_SHOWING from GRIDS_SETUP');
   ibsGridsSetup.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
   ibsGridsSetup.ExecQuery;
   While NOT (ibsGridsSetup.Eof) do
    Begin
     For k := 0 to Pred(ComponentCount) do
      If (Components[k].Name=ibsGridsSetup.FieldByName('FIELD_NAME').AsString) then
       Begin
//        (Components[k] as TField).DisplayLabel := ibsGridsSetup.FieldByName('DISPLAY_LABEL').AsString;
        (Components[k] as TField).DisplayWidth := ibsGridsSetup.FieldByName('DISPLAY_WIDTH').AsInteger;
        (Components[k] as TField).Index := ibsGridsSetup.FieldByName('FIELD_ORDER').AsInteger;
//        (Components[k] as TField).Visible := (ibsGridsSetup.FieldByName('IS_SHOWING').Value=1);
        Break
       End;
     ibsGridsSetup.Next
    End;
   ibsGridsSetup.Close;
   ibsGridsSetup.SQL.Clear;
   ibsGridsSetup.SQL.Add('select OBJECT_WIDTH, OBJECT_HEIGHT, OBJECT_STATE, OBJECT_LEFT, OBJECT_TOP from FORMS_SETUP');
   ibsGridsSetup.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39') and (OBJECT_NAME='#39+(Sender as TForm).ClassName+#39')');
   ibsGridsSetup.ExecQuery;
   If (ibsGridsSetup.RecordCount>0) then
    Begin
     If (ibsGridsSetup.FieldByName('OBJECT_WIDTH').AsInteger>10) and
        (ibsGridsSetup.FieldByName('OBJECT_WIDTH').AsInteger<=Screen.Width+20) then
      (Sender as TForm).Width := ibsGridsSetup.FieldByName('OBJECT_WIDTH').AsInteger;
     If (ibsGridsSetup.FieldByName('OBJECT_HEIGHT').AsInteger>10) and
        (ibsGridsSetup.FieldByName('OBJECT_HEIGHT').AsInteger<=Screen.Height+20) then
      (Sender as TForm).Height := ibsGridsSetup.FieldByName('OBJECT_HEIGHT').AsInteger;
     If (ibsGridsSetup.FieldByName('OBJECT_LEFT').AsInteger<Screen.Width-10) then
      (Sender as TForm).Left := ibsGridsSetup.FieldByName('OBJECT_LEFT').AsInteger;
     If (ibsGridsSetup.FieldByName('OBJECT_TOP').AsInteger<Screen.Height-10) then
      (Sender as TForm).Top := ibsGridsSetup.FieldByName('OBJECT_TOP').AsInteger;
     (Sender as TForm).WindowState := ibsGridsSetup.FieldByName('OBJECT_STATE').Value
    End;
   ibsGridsSetup.Close;
   ibsGridsSetup.SQL.Clear;
   ibsGridsSetup.SQL.Add('select OBJECT_NAME, OBJECT_WIDTH, OBJECT_HEIGHT, OBJECT_STATE, OBJECT_LEFT, OBJECT_TOP from FORMS_SETUP');
   ibsGridsSetup.SQL.Add('where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
   ibsGridsSetup.ExecQuery;
   While NOT (ibsGridsSetup.Eof) do
    Begin
     Comp := (Sender as TForm).FindComponent(ibsGridsSetup.FieldByName('OBJECT_NAME').AsString);
     If (Comp<>nil) then
      Begin
{       TSplitter(Comp).Width  := ibsGridsSetup.FieldByName('OBJECT_WIDTH').AsInteger;
       TSplitter(Comp).Height := ibsGridsSetup.FieldByName('OBJECT_HEIGHT').AsInteger;
       TSplitter(Comp).Left := ibsGridsSetup.FieldByName('OBJECT_LEFT').AsInteger;
       TSplitter(Comp).Top := ibsGridsSetup.FieldByName('OBJECT_TOP').AsInteger}
      End;
     ibsGridsSetup.Next
    End;
   trMain.Commit
  End;
 trMain.Active := True;
 ibsGridsSetup.SQL.Clear;
 ibsGridsSetup.SQL.Add('select UT.TUNING from USERS_TUNINGS UT where (UT.USER_NAME=current_user) and (UT.ITEM_NAME=:ITEM_NAME)');
 ibsGridsSetup.GenerateParamNames := True;
 For k := 0 to Pred(ComponentCount) do
  Begin
   If (Components[k] is TcxGridPopupMenu) then
    Begin
     FMenuItem := TMenuItem.Create(Components[k]);
     FMenuItem.Caption := '-';
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Панель ввода новой строки';
     FMenuItem.Checked := ((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).OptionsView.NewItemRow;
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := NewItemRowSelectorClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Автоматический подбор высоты заголовков столбцов';
     FMenuItem.Checked := ((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).OptionsView.HeaderAutoHeight;
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := HeaderAutoHeightClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Автоматический подбор высоты строк';
     FMenuItem.Checked := ((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).OptionsView.CellAutoHeight;
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := CellAutoHeightClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Показывать строку комментариев';
     FMenuItem.Checked := (((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).Preview.Column<>Nil) and (((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).Preview.Visible);
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := ShowPreView;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k]);
     FMenuItem.Caption := '-';
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create((Components[k] as TcxGridPopupMenu));
     FMenuItem.Caption := 'Экспорт';
     FMenuItem.OnClick := ExportClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem)
    End;
   If (Components[k] is TcxGridDBTableView) then
    Begin
     (Components[k] as TcxGridDBTableView).OptionsView.NewItemRowInfoText := 'Новая запись вставляется тут!';
     If (Black) then
      Begin
       ibsGridsSetup.ParamByName('ITEM_NAME').Value := (Components[k] as TcxGridDBTableView).Owner.Name+'\'+Name;
       ibsGridsSetup.ExecQuery;
       If (ibsGridsSetup.RecordCount>0) then
        Begin
         MemStream := TMemoryStream.Create;
         ibsGridsSetup.FieldByName('TUNING').SaveToStream(MemStream);
         MemStream.Position := 0;
         (Components[k] as TcxGridDBTableView).RestoreFromStream(MemStream);
         MemStream.Free
        End;
       ibsGridsSetup.Close;
       ibsGridsSetup.ParamByName('ITEM_NAME').Value := (Components[k] as TcxGridDBTableView).Name+'/Filter';
       ibsGridsSetup.ExecQuery;
       If (ibsGridsSetup.RecordCount>0) then
        Begin
         MemStream := TMemoryStream.Create;
         ibsGridsSetup.FieldByName('TUNING').SaveToStream(MemStream);
         MemStream.Position := 0;
         (Components[k] as TcxGridDBTableView).DataController.Filter.LoadFromStream(MemStream);
         MemStream.Free
        End;
       ibsGridsSetup.Close
      End 
    End
  End;
 trMain.Commit;
end;

procedure TfrmLike.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree
end;

procedure TfrmLike.FormActivate(Sender: TObject);
 var i : Integer;
begin
 With frmMain.dxBarManager.Bars[2].ItemLinks do // TaskBar
  For i := Pred(AvailableItemCount) downto 0 do
   With (AvailableItems[i].Item as TdxBarButton) do
    If (TForm(Tag)=Sender) then
     Begin
      Down := True;
      Break
     End
end;

procedure TfrmLike.FormDestroy(Sender: TObject);
 var k, kg : Integer;
     MemStream : TMemoryStream;
begin
 try
  If (PersonID<>0) and (trMain.InTransaction) and (Black) then
   Begin
    ibsGridsSetup.SQL.Clear;
    ibsGridsSetup.SQL.Add('delete from GRIDS_SETUP where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
    ibsGridsSetup.ExecQuery;
    For k := 0 to Pred(ComponentCount) do
     If (Components[k] is TwwDBGrid) then
      Begin
       ibsGridsSetup.SQL.Clear;
       If ((Components[k] as TwwDBGrid).UseTFields) and
          ((Components[k] as TwwDBGrid).DataSource<> Nil) then
        Begin
         ibsGridsSetup.SQL.Add('insert into GRIDS_SETUP (PERSON_ID, FORM_NAME, FIELD_NAME,');
         ibsGridsSetup.SQL.Add('DISPLAY_LABEL, DISPLAY_WIDTH, FIELD_ORDER, IS_SHOWING)');
         ibsGridsSetup.SQL.Add('values (:PERSON_ID, :FORM_NAME, :FIELD_NAME,');
         ibsGridsSetup.SQL.Add(':DISPLAY_LABEL, :DISPLAY_WIDTH, :FIELD_ORDER, :IS_SHOWING)');
         ibsGridsSetup.GenerateParamNames := True;
         ibsGridsSetup.ParamByName('PERSON_ID').Value := PersonID;
         ibsGridsSetup.ParamByName('FORM_NAME').Value := (Sender as TForm).Caption;
         For kg := 0 to Pred((Components[k] as TwwDBGrid).DataSource.DataSet.FieldCount) do
          Begin
           ibsGridsSetup.ParamByName('FIELD_NAME').Value := (Components[k] as TwwDBGrid).DataSource.DataSet.Fields[kg].Name;
           If (Pos(': ',(Components[k] as TwwDBGrid).DataSource.DataSet.Fields[kg].DisplayLabel)>0) then
            ibsGridsSetup.ParamByName('DISPLAY_LABEL').Value := Copy((Components[k] as TwwDBGrid).DataSource.DataSet.Fields[kg].DisplayLabel,Pos(': ',(Components[k] as TwwDBGrid).DataSource.DataSet.Fields[kg].DisplayLabel)+2,Length((Components[k] as TwwDBGrid).DataSource.DataSet.Fields[kg].DisplayLabel)-Pos(': ',(Components[k] as TwwDBGrid).DataSource.DataSet.Fields[kg].DisplayLabel)-1)
           else
            ibsGridsSetup.ParamByName('DISPLAY_LABEL').Value := (Components[k] as TwwDBGrid).DataSource.DataSet.Fields[kg].DisplayLabel;
           ibsGridsSetup.ParamByName('DISPLAY_WIDTH').Value := (Components[k] as TwwDBGrid).DataSource.DataSet.Fields[kg].DisplayWidth;
           ibsGridsSetup.ParamByName('FIELD_ORDER').Value := (Components[k] as TwwDBGrid).DataSource.DataSet.Fields[kg].Index;
           If ((Components[k] as TwwDBGrid).DataSource.DataSet.Fields[kg].Visible) then
            ibsGridsSetup.ParamByName('IS_SHOWING').Value := 1
           else
            ibsGridsSetup.ParamByName('IS_SHOWING').Value := 0;
           ibsGridsSetup.ExecQuery;
          End
        End
       else
        Begin
         ibsGridsSetup.SQL.Add('insert into GRIDS_SETUP (PERSON_ID, FORM_NAME, FIELD_NAME,');
         ibsGridsSetup.SQL.Add('DISPLAY_LABEL, DISPLAY_WIDTH, FIELD_ORDER, GRID_NAME)');
         ibsGridsSetup.SQL.Add('values (:PERSON_ID, :FORM_NAME, :FIELD_NAME,');
         ibsGridsSetup.SQL.Add(':DISPLAY_LABEL, :DISPLAY_WIDTH, :FIELD_ORDER, :GRID_NAME)');
         ibsGridsSetup.GenerateParamNames := True;
         ibsGridsSetup.ParamByName('PERSON_ID').Value := PersonID;
         ibsGridsSetup.ParamByName('FORM_NAME').Value := (Sender as TForm).Caption;
         ibsGridsSetup.ParamByName('GRID_NAME').Value := (Components[k] as TwwDBGrid).Name;
         For kg := 0 to Pred((Components[k] as TwwDBGrid).FieldCount) do
          Begin
           ibsGridsSetup.ParamByName('FIELD_NAME').Value := (Components[k] as TwwDBGrid).Columns[kg].FieldName;
           If (Pos(': ',(Components[k] as TwwDBGrid).Columns[kg].DisplayLabel)>0) then
            ibsGridsSetup.ParamByName('DISPLAY_LABEL').Value := Copy((Components[k] as TwwDBGrid).Columns[kg].DisplayLabel,Pos(': ',(Components[k] as TwwDBGrid).Columns[kg].DisplayLabel)+2,Length((Components[k] as TwwDBGrid).Columns[kg].DisplayLabel)-Pos(': ',(Components[k] as TwwDBGrid).Columns[kg].DisplayLabel)-1)
           else
            ibsGridsSetup.ParamByName('DISPLAY_LABEL').Value := (Components[k] as TwwDBGrid).Columns[kg].DisplayLabel;
           ibsGridsSetup.ParamByName('DISPLAY_WIDTH').Value := (Components[k] as TwwDBGrid).Columns[kg].DisplayWidth;
           ibsGridsSetup.ParamByName('FIELD_ORDER').Value := kg;
           ibsGridsSetup.ExecQuery;
          End
        End
      End;
    ibsGridsSetup.SQL.Clear;
    ibsGridsSetup.SQL.Add('delete from FORMS_SETUP where (PERSON_ID='+IntToStr(PersonID)+') and (FORM_NAME='#39+(Sender as TForm).Caption+#39')');
    ibsGridsSetup.ExecQuery;
    ibsGridsSetup.SQL.Clear;
    ibsGridsSetup.SQL.Add('insert into FORMS_SETUP (PERSON_ID, FORM_NAME, OBJECT_NAME, OBJECT_WIDTH, OBJECT_HEIGHT,');
    ibsGridsSetup.SQL.Add('OBJECT_STATE, OBJECT_LEFT, OBJECT_TOP) values (:PERSON_ID, :FORM_NAME, :OBJECT_NAME,');
    ibsGridsSetup.SQL.Add(':OBJECT_WIDTH, :OBJECT_HEIGHT, :OBJECT_STATE, :OBJECT_LEFT, :OBJECT_TOP)');
    ibsGridsSetup.GenerateParamNames := True;
    ibsGridsSetup.ParamByName('PERSON_ID').Value := PersonID;
    ibsGridsSetup.ParamByName('FORM_NAME').Value := (Sender as TForm).Caption;
    ibsGridsSetup.ParamByName('OBJECT_NAME').Value := (Sender as TForm).ClassName;
    ibsGridsSetup.ParamByName('OBJECT_WIDTH').Value := (Sender as TForm).Width;
    ibsGridsSetup.ParamByName('OBJECT_HEIGHT').Value := (Sender as TForm).Height;
    ibsGridsSetup.ParamByName('OBJECT_STATE').Value := (Sender as TForm).WindowState;
    ibsGridsSetup.ParamByName('OBJECT_LEFT').Value := (Sender as TForm).Left;
    ibsGridsSetup.ParamByName('OBJECT_TOP').Value := (Sender as TForm).Top;
    ibsGridsSetup.ExecQuery;
    For k := 0 to Pred(ComponentCount) do
     If (Components[k] is TSplitter) then
      Begin
       ibsGridsSetup.ParamByName('OBJECT_NAME').Value := (Components[k] as TSplitter).Name;
       ibsGridsSetup.ParamByName('OBJECT_WIDTH').Value := (Components[k] as TSplitter).Width;
       ibsGridsSetup.ParamByName('OBJECT_HEIGHT').Value := (Components[k] as TSplitter).Height;
       ibsGridsSetup.ParamByName('OBJECT_STATE').AsVariant := null;
       ibsGridsSetup.ParamByName('OBJECT_LEFT').Value := (Components[k] as TSplitter).Left;
       ibsGridsSetup.ParamByName('OBJECT_TOP').Value := (Components[k] as TSplitter).Top;
       ibsGridsSetup.ExecQuery;
      End;
    ibsGridsSetup.SQL.Clear;
    ibsGridsSetup.SQL.Add('execute procedure SET_USER_TUNING(:ITEM_NAME,:TUNING)');
    ibsGridsSetup.GenerateParamNames := True;
    For k := 0 to Pred(ComponentCount) do
     If (Components[k] is TcxGridDBTableView) and ((Components[k] as TcxGridDBTableView).MasterGridView=Nil) then
      Begin
       MemStream := TMemoryStream.Create;
       (Components[k] as TcxGridDBTableView).StoreToStream(MemStream);
       MemStream.Position := 0;
       ibsGridsSetup.ParamByName('ITEM_NAME').AsString := (Components[k] as TcxGridDBTableView).Owner.Name+'\'+Name;
       ibsGridsSetup.ParamByName('TUNING').LoadFromStream(MemStream);
       MemStream.Free;
       ibsGridsSetup.ExecQuery;
       MemStream := TMemoryStream.Create;
       (Components[k] as TcxGridDBTableView).DataController.Filter.SaveToStream(MemStream);
       MemStream.Position := 0;
       ibsGridsSetup.ParamByName('ITEM_NAME').AsString := (Components[k] as TcxGridDBTableView).Name+'/Filter';
       ibsGridsSetup.ParamByName('TUNING').LoadFromStream(MemStream);
       MemStream.Free;
       ibsGridsSetup.ExecQuery
      End;
    trMain.Commit
   End;
  trMain.Active := False;
 except
  trMain.Rollback
 end;
 With frmMain.dxBarManager.Bars[2].ItemLinks do // TaskBar
  For k := Pred(AvailableItemCount) downto 0 do
   With (AvailableItems[k].Item as TdxBarButton) do
    If (TForm(Tag)=Sender) then
     Begin
      Free;
      Break
     End
end;

procedure TfrmLike.ExportClick(Sender: TObject);
begin
 frmExportOptions := TfrmExportOptions.Create((Sender as TMenuItem).Owner.Owner);
 frmExportOptions.AGrid := ((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid;
 frmExportOptions.ShowModal;
 FreeAndNil(frmExportOptions)
end;

procedure TfrmLike.NewItemRowSelectorClick(Sender: TObject);
begin
 With (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.FocusedView as TcxGridTableView) do
  Begin
   If (OptionsData.Appending or OptionsData.Inserting) then
    OptionsView.NewItemRow := (Sender as TMenuItem).Checked
   else
    (Sender as TMenuItem).Checked := False
  End
end;

procedure TfrmLike.HeaderAutoHeightClick(Sender: TObject);
begin
 (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.FocusedView as TcxGridTableView).OptionsView.HeaderAutoHeight := (Sender as TMenuItem).Checked
end;

procedure TfrmLike.CellAutoHeightClick(Sender: TObject);
begin
 (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.FocusedView as TcxGridTableView).OptionsView.CellAutoHeight := (Sender as TMenuItem).Checked
end;

procedure TfrmLike.ShowPreView(Sender: TObject);
begin
 With (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.FocusedView as TcxGridTableView) do
  Begin
   If (Preview.Column<>Nil) then
    Preview.Visible := (Sender as TMenuItem).Checked
   else
    (Sender as TMenuItem).Checked := False
  End
end;

end.
