unit Banks;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, IBDatabase, Db,
  IBQuery, IBSQL, IBCustomDataSet, StdCtrls, Mask, wwdbedit, IBStoredProc,
  ImgList, Menus, fcButton, fcImgBtn;

type
  TfrmBanks = class(TfrmLike)
    Panel1: TPanel;
    wwDBGridMain: TwwDBGrid;
    Panel4: TPanel;
    sbCancel: TSpeedButton;
    sbApply: TSpeedButton;
    sbDelete: TSpeedButton;
    sbAdd: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrior: TSpeedButton;
    sbFirst: TSpeedButton;
    sbReOpen: TSpeedButton;
    sbExit: TSpeedButton;
    ibdsMain: TIBDataSet;
    sbComments: TSpeedButton;
    pnlComments: TPanel;
    wwdbedComments: TwwDBEdit;
    ibdsMainNAME: TIBStringField;
    ibdsMainADDRESS: TIBStringField;
    ibdsMainACCOUNT: TIBStringField;
    ibdsMainBIK: TIntegerField;
    ibdsMainVALID: TIntegerField;
    ibdsMainCOMMENTS: TIBStringField;
    dsMain: TDataSource;
    ibsWhite: TIBSQL;
    ibdsMainID: TIntegerField;
    Label11: TLabel;
    Splitter1: TSplitter;
    pnlFilter: TPanel;
    Panel5: TPanel;
    cbName: TCheckBox;
    edName: TEdit;
    Panel6: TPanel;
    cbAddress: TCheckBox;
    edAddress: TEdit;
    Panel7: TPanel;
    cbAccount: TCheckBox;
    edAccount: TEdit;
    Panel8: TPanel;
    cbBIK: TCheckBox;
    edBIK: TEdit;
    cbValid: TCheckBox;
    cbNotValid: TCheckBox;
    pnlText: TPanel;
    lblFilter: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ibsFilter: TIBSQL;
    procedure FormCreate(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure ibdsMainUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainNewRecord(DataSet: TDataSet);
    procedure sbDeleteClick(Sender: TObject);
    procedure ibdsMainAfterScroll(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbCommentsClick(Sender: TObject);
    procedure wwDBGridMainCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure wwDBGridMainCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGridMainTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure pnlFilterResize(Sender: TObject);
    procedure wwDBGridMainCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure sbReOpenClick(Sender: TObject);
    procedure edNameChange(Sender: TObject);
    procedure ibdsMainAfterOpen(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure GenerateSelectMain;
    function GetWhere: String;
  public
    { Public declarations }
  end;

var
  frmBanks: TfrmBanks;

implementation

uses Misk, DM;

{$R *.DFM}

var
  OrderBy : String = ' 2 asc';
  WhereSql : String = 'where (Valid=1)';

procedure TfrmBanks.GenerateSelectMain;
begin
 WhereSql := GetWhere;
 ibdsMain.SelectSQL.Clear;
 ibdsMain.SelectSQL.Add('select ID, NAME, ADDRESS, ACCOUNT, BIK, VALID, COMMENTS');
 ibdsMain.SelectSQL.Add('from BANKS');
 ibdsMain.SelectSQL.Add(WhereSql);
 ibdsMain.SelectSQL.Add('order by'+OrderBy)
end;

procedure TfrmBanks.FormCreate(Sender: TObject);
begin
 FName := 'Банки';
 inherited;
 If NOT (Black) then
  Begin
   ibdsMain.Database := frmDM.dbWhite;
   ibsFilter.Database := frmDM.dbWhite;
  End;
 trMain.StartTransaction;
{ ibsFilter.SQL.Clear;
 ibsFilter.SQL.Add('select FILTER_NAME, FILTER_VALUE from FILTERS where (CHEKED=1) and (USER_ID='+IntToStr(UserID)+')');
 ibsFilter.ExecQuery;
 While NOT (ibsFilter.Eof) do
  Begin
   For i:=0 to Pred(pnlFilter.ControlCount) do
    If (pnlFilter.Controls[i] is TPanel) then
     For k:=0 to Pred(pnlFilter.Controls[i].ComponentCount) do
      If (pnlFilter.Controls[i].Components[k].Name=ibsFilter.FieldByName('FILTER_NAME').AsString) then
       Begin
        (pnlFilter.Controls[i].Components[k] as TCheckBox).Checked := True;
        If (ibsFilter.FieldByName('FILTER_VALUE').AsString<>'') then
         (pnlFilter.Controls[i].FindComponent('ed'+Copy(ibsFilter.FieldByName('FILTER_NAME').AsString,3,Length(ibsFilter.FieldByName('FILTER_NAME').AsString)-2)) as TEdit).Text := ibsFilter.FieldByName('FILTER_VALUE').AsString
       End;
   ibsFilter.Next
  End;
 ibsFilter.Close;}
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(gen_id_banks,1) from rdb$database');
 GenerateSelectMain;
 ibdsMain.Open
end;

procedure TfrmBanks.sbExitClick(Sender: TObject);
begin
 Close;
 frmBanks := nil
end;

procedure TfrmBanks.sbApplyClick(Sender: TObject);
 var BookMarkID : Integer;
begin
 BookMarkID := ibdsMainID.AsInteger;
 try
  ibdsMain.ApplyUpdates;
  trMain.Commit;
  sbApply.Enabled := False;
  sbCancel.Enabled := False;
  try
   trMain.StartTransaction;
   ibdsMain.Open
  except
   MessageDlg('Невозможно открыть запрос, возможно утеряна связь с базой данных.', mtError, [mbOK],0)
  end;
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 ibdsMain.Locate('ID',BookMarkID,[])
end;

procedure TfrmBanks.ibdsMainUpdateRecord(DataSet: TDataSet;
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
      ibsWhite.ParamByName('ID').Value := ibdsMainID.Value;
      ibsWhite.ParamByName('Name').Value := ibdsMainNAME.Value;
      ibsWhite.ParamByName('ADDRESS').Value := ibdsMainADDRESS.Value;
      ibsWhite.ParamByName('ACCOUNT').Value := ibdsMainACCOUNT.Value;
      ibsWhite.ParamByName('BIK').Value := ibdsMainBIK.Value;
      ibsWhite.ParamByName('VALID').Value := ibdsMainVALID.Value;
      ibsWhite.ParamByName('COMMENTS').Value := ibdsMainCOMMENTS.Value;
      ibsWhite.ExecQuery
     End;
    ukDelete:
     Begin
      ibsWhite.SQL.AddStrings(ibdsMain.DeleteSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('OLD_ID').Value := ibdsMainID.OldValue;
      ibsWhite.ExecQuery
     End
   End
  End
end;

procedure TfrmBanks.ibdsMainNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.ExecQuery;
 ibdsMainID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInteger;
 ibsGen_ID.Close;
 ibdsMainValid.Value := 1
end;

procedure TfrmBanks.sbDeleteClick(Sender: TObject);
begin
 ibdsMain.Delete;
 sbApply.Enabled := True;
 sbCancel.Enabled := True
end;

procedure TfrmBanks.ibdsMainAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmBanks,'')
end;

procedure TfrmBanks.dsMainStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  Begin
   sbApply.Enabled := True;
   sbCancel.Enabled := True
  End
 else
  Begin
   sbApply.Enabled := ibdsMain.UpdatesPending;
   sbCancel.Enabled := ibdsMain.UpdatesPending
  End 
end;

procedure TfrmBanks.sbFirstClick(Sender: TObject);
begin
 ibdsMain.First
end;

procedure TfrmBanks.sbPriorClick(Sender: TObject);
begin
 ibdsMain.Prior
end;

procedure TfrmBanks.sbNextClick(Sender: TObject);
begin
 ibdsMain.Next
end;

procedure TfrmBanks.sbLastClick(Sender: TObject);
begin
 ibdsMain.Last
end;

procedure TfrmBanks.sbAddClick(Sender: TObject);
begin
 ibdsMain.Append
end;

procedure TfrmBanks.sbCancelClick(Sender: TObject);
 var BookMarkID : Integer;
begin
 BookMarkID := ibdsMainID.AsInteger;
 ibdsMain.CancelUpdates;
 sbApply.Enabled := False;
 sbCancel.Enabled := False;
 ibdsMain.Locate('ID',BookMarkID,[])
end;

procedure TfrmBanks.sbCommentsClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  Begin
   pnlComments.Show;
   Splitter1.Show
  End
 else
  Begin
   pnlComments.Hide;
   Splitter1.Hide
  End
end;

procedure TfrmBanks.wwDBGridMainCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height;
end;

procedure TfrmBanks.wwDBGridMainCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderBy)
end;

procedure TfrmBanks.wwDBGridMainTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderBy, (GetKeyState(VK_CONTROL)<0),
                          sbApply, sbCancel, GenerateSelectMain)
end;

procedure TfrmBanks.pnlFilterResize(Sender: TObject);
begin
 wwdbedComments.Width := pnlComments.Width-39;
 wwdbedComments.Height := pnlComments.Height-15
end;

procedure TfrmBanks.wwDBGridMainCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If (not Highlight) and (ibdsMainValid.Value=0) then
  ABrush.Color := clSilver
end;

function TfrmBanks.GetWhere: String;
begin
 lblFilter.Caption := '';
 Result := '';
 If (cbName.Checked) then
  Begin
   If (Pos('%',edName.Text)<>0) or (Pos('_',edName.Text)<>0) then
    Result := '(NAME like '+#39+edName.Text+#39+') and'
   else
    Result := '(NAME='+#39+edName.Text+#39+') and';
   lblFilter.Caption := 'Наименование: '+edName.Text+'; '
  End;
 If (cbAddress.Checked) then
  Begin
   If (Pos('%',edAddress.Text)<>0) or (Pos('_',edAddress.Text)<>0) then
    Result := Result+'(ADDRESS like '+#39+edAddress.Text+#39+') and'
   else
    Result := Result+'(ADDRESS='+#39+edAddress.Text+#39+') and';
   lblFilter.Caption := lblFilter.Caption+'Адрес: '+edAddress.Text+'; '
  End;
 If (cbBIK.Checked) then
  Begin
   Result := Result+'(BIK='+edBIK.Text+') and';
   lblFilter.Caption := lblFilter.Caption+'БИК: '+edBIK.Text+'; '
  End;
 If (cbAccount.Checked) then
  Begin
   Result := Result+'(ACCOUNT='+edAccount.Text+') and';
   lblFilter.Caption := lblFilter.Caption+'Кор. счет: '+edBIK.Text+'; '
  End; 
 If (cbValid.Checked) then
  Begin
   Result := Result+'(VALID=1) and';
   lblFilter.Caption := lblFilter.Caption+'Работающие; '
  End;
 If (cbNotValid.Checked) then
  Begin
   Result := Result+'(VALID=0) and';
   lblFilter.Caption := lblFilter.Caption+'Не работающие; '
  End; 
 If (Length(Result)>0) then
  Result := 'where '+Copy(Result,1,Length(Result)-4);
end;

procedure TfrmBanks.sbReOpenClick(Sender: TObject);
 var BookMarkID : Integer;
begin
 BookMarkID := ibdsMainID.AsInteger;
 ibdsMain.DisableControls;
 ibdsMain.Close;
 GenerateSelectMain;
 ibdsMain.Open;
 ibdsMain.Locate('ID',BookMarkID,[]);
 ibdsMain.EnableControls
end;

procedure TfrmBanks.edNameChange(Sender: TObject);
begin
 sbReOpen.Enabled := True
end;

procedure TfrmBanks.ibdsMainAfterOpen(DataSet: TDataSet);
begin
 sbReOpen.Enabled := False
end;

procedure TfrmBanks.SpeedButton1Click(Sender: TObject);
begin
 SpeedButton1.Visible := Not SpeedButton1.Visible;
 SpeedButton2.Visible := Not SpeedButton2.Visible;
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True
end;

procedure TfrmBanks.FormClose(Sender: TObject; var Action: TCloseAction);
{var i, k, Checked : Integer;
    Filter_Value : String[50];}
begin
{ For i:=0 to Pred(pnlFilter.ControlCount) do
 If (pnlFilter.Controls[i] is TPanel) then
  For k:=0 to Pred((pnlFilter.Controls[i] as TPanel).ControlCount) do
   If ((pnlFilter.Controls[i] as TPanel).Controls[k] is TCheckBox) then
    Begin
     ibsFilter.SQL.Clear;
     ibsFilter.SQL.Add('select Count(*) Cnt from FILTERS where (FILTER_NAME='+#39+(pnlFilter.Controls[i] as TPanel).Controls[k].Name+#39+') and (USER_ID='+IntToStr(UserID)+')');
     ibsFilter.ExecQuery;
     If (((pnlFilter.Controls[i] as TPanel).Controls[k] as TCheckBox).Checked) then
      Checked := 1
     else
      Checked := 0;
     try
      Filter_Value := ((pnlFilter.Controls[i] as TPanel).FindComponent('ed'+Copy((pnlFilter.Controls[i] as TPanel).Controls[k].Name,3,Length((pnlFilter.Controls[i] as TPanel).Controls[k].Name)-2)) as TEdit).Text
     except
      Filter_Value := ''
     end;
     If (ibsFilter.FieldByName('Cnt').Value=0) then
      Begin
       ibsFilter.Close;
       ibsFilter.SQL.Clear;
       ibsFilter.SQL.Add('insert into FILTERS values (NULL, '+IntToStr(UserID)+', '+#39+(pnlFilter.Controls[i] as TPanel).Controls[k].Name+#39+', '+IntToStr(Checked)+', '+#39+Filter_Value+#39+')')
      End
     else
      Begin
       ibsFilter.Close;
       ibsFilter.SQL.Clear;
       ibsFilter.SQL.Add('update FILTERS SET CHEKED='+IntToStr(Checked)+', FILTER_VALUE='+#39+Filter_Value+#39+' where (FILTER_NAME='+#39+(pnlFilter.Controls[i] as TPanel).Controls[k].Name+#39+') and (USER_ID='+IntToStr(UserID)+')');
      End;
     ibsFilter.ExecQuery;
     ibsFilter.Close
    End;}
 inherited;
end;

end.
