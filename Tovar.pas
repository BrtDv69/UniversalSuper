unit Tovar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, wwdblook, StdCtrls, Mask, wwdbedit, DBCtrls, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, IBSQL, IBDatabase, Db, IBCustomDataSet,
  wwclearbuttongroup, wwradiogroup, Wwdotdot, Wwdbcomb, wwcheckbox,
  wwdbdatetimepicker, ComCtrls, wwriched, Menus, FR_Class, RzTreeVw;

type
 TObjProcedure = procedure of object;

type
  TfrmTovar = class(TfrmLike)
    Panel7: TPanel;
    pnlFilter: TPanel;
    pnlDetail: TPanel;
    Label24: TLabel;
    wwDBEdit18: TwwDBEdit;
    Panel12: TPanel;
    sbCancelGoods: TSpeedButton;
    sbApplyGoods: TSpeedButton;
    sbDetails: TSpeedButton;
    sbFilterGoods: TSpeedButton;
    SpeedButton32: TSpeedButton;
    ibdsGoodsTotals: TIBDataSet;
    dsGoodsTotals: TDataSource;
    dbgGoodsTotals: TwwDBGrid;
    ibdsStores: TIBDataSet;
    ibsAux: TIBSQL;
    ibsWhite: TIBSQL;
    ibdsCountries: TIBDataSet;
    ibdsCountriesNAME: TIBStringField;
    ibdsCountriesID: TLargeintField;
    ibdsGoodsTotalsARTICUL_ID: TLargeintField;
    ibdsGoodsTotalsARTICUL: TIBStringField;
    ibdsGoodsTotalsNAME: TIBStringField;
    ibdsGoodsTotalsMADE_IN: TIBStringField;
    ibdsGoodsTotalsMIN_AMOUNT: TFloatField;
    ibdsGoodsTotalsTOTAL: TFloatField;
    ibdsGoodsTotalsTOTAL_REAL: TFloatField;
    wwExpandButton1: TwwExpandButton;
    ibdsGoods: TIBDataSet;
    dsGoods: TDataSource;
    ibdsGoodsID: TLargeintField;
    ibdsGoodsSTORE_ID: TLargeintField;
    ibdsGoodsENTERPRISE_ID: TLargeintField;
    ibdsGoodsPRICE: TFloatField;
    ibdsGoodsPACK_VALUE: TFloatField;
    ibdsGoodsTOTAL_REAL: TFloatField;
    ibdsGoodsTOTAL: TFloatField;
    ibdsGoodsMIN_AMOUNT: TFloatField;
    ibdsGoodsLAST_BUY_PRICE: TFloatField;
    ibdsGoodsSERTIFICATE_INFORMATION: TIBStringField;
    ibdsGoodsVALID_DATE: TDateField;
    ibdsGoodsCOUNTRY_ID: TLargeintField;
    ibdsGoodsDECLARATION_NUMBER: TIBStringField;
    ibdsGoodsCOMMENTS: TIBStringField;
    dblpEnterprises: TwwDBLookupCombo;
    dblpStores: TwwDBLookupCombo;
    dblpCountries: TwwDBLookupCombo;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesID: TLargeintField;
    ibdsEnterprisesNAME: TIBStringField;
    ibdsStoresID: TLargeintField;
    ibdsStoresNAME: TIBStringField;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBRichEdit1: TwwDBRichEdit;
    ibdsGoodsTotalsRESERV_AMOUNT: TFloatField;
    dbgGoods: TwwDBGrid;
    PopupMenu6: TPopupMenu;
    N13: TMenuItem;
    ibdsGoodsARTICUL_ID: TLargeintField;
    ibdsGoodsARTICUL_NAME: TIBStringField;
    ibdsGoodsMADE_IN: TIBStringField;
    ibdsGoodsSTORE_NAME: TIBStringField;
    ibdsGoodsENTERPRISE_NAME: TIBStringField;
    ibdsGoodsCOUNTRY_NAME: TIBStringField;
    ibdsArticuls: TIBDataSet;
    ibdsArticulsNAME: TIBStringField;
    ibdsArticulsID: TLargeintField;
    dblpArticulName: TwwDBLookupCombo;
    pnlText: TPanel;
    lblFilter: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ibdsStoresFilter: TIBDataSet;
    Splitter1: TSplitter;
    ibdsStoresFilterCHECKED: TIntegerField;
    cbName: TwwCheckBox;
    edName: TwwDBEdit;
    cbBiggerThanZero: TwwCheckBox;
    cbSmallerThanZero: TwwCheckBox;
    cbHaveMin: TwwCheckBox;
    cbNeedBuying: TwwCheckBox;
    sbReFilter: TSpeedButton;
    ibdsGoodsTotalsITOGO: TFloatField;
    ibdsGoodsITOGO: TFloatField;
    ibdsStoresFilterID: TLargeintField;
    ibdsStoresFilterNAME: TIBStringField;
    ibdsGoodsTotalsIN_SETS: TFloatField;
    ibdsGoodsIN_SETS: TFloatField;
    cbHaveBiggerThanZero: TwwCheckBox;
    cbHaveSmallerThanZero: TwwCheckBox;
    ibdsGoodsTotalsFutureIncome: TFloatField;
    dbgGoodsIButton: TwwIButton;
    ibdsGoodsTotalsLAST_BUY_PRICE: TFloatField;
    sbPrintTovar: TSpeedButton;
    ibdsLastByPrise: TIBDataSet;
    ibdsReportByStoresBody: TIBDataSet;
    ibdsReportByStoresBodyARTICUL_NAME: TIBStringField;
    ibdsReportByStoresBodyMADE_IN: TIBStringField;
    ibdsReportByStoresBodyPRICE: TFloatField;
    ibdsReportByStoresBodyPACK_VALUE: TFloatField;
    ibdsReportByStoresBodyIN_SETS: TFloatField;
    ibdsReportByStoresBodyTOTAL: TFloatField;
    ibdsReportByStoresBodyTOTAL_WHITE: TFloatField;
    ibdsReportByStoresBodyLAST_BUY_PRICE: TFloatField;
    ibdsReportByStoresBodyLAST_BUY_PRICE_CENTRAL: TFloatField;
    rgByDate: TwwRadioGroup;
    dbtpDate: TwwDBDateTimePicker;
    trStores: TRzCheckTree;
    dsStoresFilter: TDataSource;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure sbDetailsClick(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgGoodsTotalsCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure sbApplyGoodsClick(Sender: TObject);
    procedure sbCancelGoodsClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ibdsGoodsTotalsCalcFields(DataSet: TDataSet);
    procedure N13Click(Sender: TObject);
    procedure dsGoodsStateChange(Sender: TObject);
    procedure ibdsGoodsNewRecord(DataSet: TDataSet);
    procedure dblpEnterprisesCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure dblpStoresCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure dblpCountriesCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure dblpArticulNameCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure dbgGoodsTotalsCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgGoodsTotalsTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure ibdsGoodsTotalsBeforeScroll(DataSet: TDataSet);
    procedure wwExpandButton1BeforeExpand(Sender: TObject);
    procedure sbFilterGoodsClick(Sender: TObject);
    procedure ibdsStoresFilterCHECKEDChange(Sender: TField);
    procedure edNameChange(Sender: TObject);
    procedure wwExpandButton1AfterCollapse(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure ibdsGoodsTotalsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbgGoodsIButtonClick(Sender: TObject);
    procedure ibdsGoodsFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsGoodsCalcFields(DataSet: TDataSet);
    procedure dbgGoodsTotalsCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure sbPrintTovarClick(Sender: TObject);
    procedure ibdsGoodsAfterOpen(DataSet: TDataSet);
    procedure rgByDateChange(Sender: TObject);
    procedure ibdsStoresFilterAfterOpen(DataSet: TDataSet);
    procedure ibdsStoresFilterFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure N1Click(Sender: TObject);
    procedure trStoresExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure trStoresDeletion(Sender: TObject; Node: TTreeNode);
    procedure trStoresStateChange(Sender: TObject; Node: TTreeNode;
      NewState: TRzCheckState);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereGoodsTotals: String;
    procedure GenerateSelectGoodsTotals;
    function GetWhereGoods: String;
    procedure GenerateSelectGoods;
    procedure SetCurrencyFmt;
    function GetWhereReportByStoresBody: String;
    procedure GenerateStoresTree(Node: TTreeNode);
  public
    { Public declarations }
    LookUpProcedureUpdate : TObjProcedure;
    LookUpProcedureInsert : TObjProcedure;
    procedure GenerateSelectReportByStoresBody;
  end;

var
  frmTovar: TfrmTovar;
  ibdsReport, ibdsReportBody: TIBDataSet;

type
  PItemRec = ^ItemRec;
  ItemRec = Record
   Id    : Int64;
   Parent: Int64;
   IType : Byte;
  end;

implementation

uses DM, Misk, GoodInfo, Main, ComplectDetails;

{$R *.DFM}

var
  OrderByGoodsTotals  : String = ' 3 asc';
  OrderByGoods : String = ' 6 asc, 8 asc, 3 asc';
  StoreID : Largeint;
  
procedure TfrmTovar.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
begin
 If (frmTovar<>nil) then
  Begin
   For k := 0 to Pred(frmTovar.ComponentCount) do
    Begin
     If (Components[k].Name='sbApply'+Suf) or
        (Components[k].Name='sbCancel'+Suf) then
      (Components[k] as TControl).Enabled := Enabled;
     If (Components[k].Name='sbFilter'+Suf) then
      (Components[k] as TControl).Enabled := NOT Enabled
    End
  End
end;

procedure TfrmTovar.FormCreate(Sender: TObject);
 var ki : Integer;
begin
 FName := 'Товар';
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
 ibdsEnterprises.Open;
 ibdsStores.Open;
 ibdsCountries.Open;
 ibdsArticuls.Open;
 ibdsStoresFilter.Open;
 GenerateStoresTree(trStores.Items[0]);
 trStores.Items[0].Expand(True);
 trStores.OnExpanding := nil;
 ki := 1;
 While ki<trStores.Items.Count do
  If (PItemRec(trStores.Items[ki].Data)^.IType=1) and NOT (trStores.Items[ki].HasChildren) then
   Begin
    trStores.Items[ki].Delete;
    ki := 1
   End
  else
   Inc(ki);
 For ki := 1 to Pred(trStores.Items.Count) do
  If (PItemRec(trStores.Items[ki].Data)^.IType=0) then
   Begin
    ibdsStoresFilter.Locate('ID',IntToStr(PItemRec(trStores.Items[ki].Data)^.ID),[]);
    If (ibdsStoresFilterCHECKED.AsInteger=0) then
     trStores.ChangeNodeCheckState(trStores.Items[ki],csUnchecked)
    else
     trStores.ChangeNodeCheckState(trStores.Items[ki],csChecked);
   End;
 ibdsGoodsTotalsFutureIncome.Visible := False;
 SetCurrencyFmt
end;

procedure TfrmTovar.sbDetailsClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlDetail.Show
 else
  pnlDetail.Hide
end;

procedure TfrmTovar.SpeedButton32Click(Sender: TObject);
begin
 Close;
 frmTovar := nil
end;

procedure TfrmTovar.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedureUpdate) then
  LookUpProcedureUpdate;
 If (Key=vk_F9) and Assigned(LookUpProcedureInsert) then
  LookUpProcedureInsert
end;

procedure TfrmTovar.SetCurrencyFmt;
begin
 ibsAux.SQL.Clear;
 ibsAux.SQL.Add('select MAX(C.DECIMALS_IN) DECIMALS_IN, MAX(C.DECIMALS_OUT) DECIMALS_OUT');
 ibsAux.SQL.Add('from CURRENCY C');
 ibsAux.SQL.Add('where (C.MAIN=1)');
 ibsAux.ExecQuery;
 ibdsGoodsPRICE.DisplayFormat := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_OUT').AsInteger);
 ibdsGoodsLAST_BUY_PRICE.DisplayFormat := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_IN').AsInteger);
 ibdsGoodsTotalsLAST_BUY_PRICE.DisplayFormat := '#,##0.'+StringOfChar('0',ibsAux.FieldByName('DECIMALS_IN').AsInteger);
 ibsAux.Close
end;

procedure TfrmTovar.dbgGoodsTotalsCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmTovar.sbApplyGoodsClick(Sender: TObject);
begin
 try
  ibdsGoods.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Goods', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
end;

procedure TfrmTovar.sbCancelGoodsClick(Sender: TObject);
begin
 ibdsGoods.CancelUpdates;
 StteChange('Goods', False)
end;

procedure TfrmTovar.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 wwExpandButton1.Expanded := False
end;

procedure TfrmTovar.ibdsGoodsTotalsCalcFields(DataSet: TDataSet);
begin
 If (Black) then
  ibdsGoodsTotalsITOGO.Value := ibdsGoodsTotalsIN_SETS.AsFloat+ibdsGoodsTotalsTOTAL_REAL.AsFloat
 else
  ibdsGoodsTotalsITOGO.Value := ibdsGoodsTotalsTOTAL.AsFloat
end;

procedure TfrmTovar.N13Click(Sender: TObject);
begin
 If ((Sender as TMenuItem).Owner.FindComponent('frmGoodInfo')=nil) then
  frmGoodInfo := TfrmGoodInfo.Create((Sender as TMenuItem).Owner);
 frmGoodInfo.ibdsGoods.Close;
 frmGoodInfo.ibdsReservation.Close;
 If (ibdsGoodsTotals.Active) then
  Begin
   frmGoodInfo.ibdsGoods.DataSource := dsGoodsTotals;
   frmGoodInfo.ibdsReservation.DataSource := dsGoodsTotals
  End
 else
  Begin
   frmGoodInfo.ibdsGoods.DataSource := dsGoods;
   frmGoodInfo.ibdsReservation.DataSource := dsGoods
  End;
 frmGoodInfo.ibdsGoods.Open;
 frmGoodInfo.ibdsReservation.Open;
 frmGoodInfo.Show
end;

procedure TfrmTovar.dsGoodsStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('Goods', True)
  else
   StteChange('Goods', ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmTovar.ibdsGoodsNewRecord(DataSet: TDataSet);
begin
 If (ibdsGoods.DataSource<>nil) then
  Begin
   ibdsGoodsARTICUL_ID.Value := ibdsGoodsTotalsARTICUL_ID.AsLargeInt;
   ibdsGoodsMADE_IN.Value := ibdsGoodsTotalsMADE_IN.AsString
  End
 else
  If NOT (ibdsGoodsENTERPRISE_NAME.Visible) then
   Begin
    ibdsGoodsSTORE_ID.Value := StoreID;
    ibdsGoodsMADE_IN.Value := '-'
   End;
 ibdsGoodsMIN_AMOUNT.Value := 0   
end;

procedure TfrmTovar.dblpEnterprisesCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsGoodsENTERPRISE_ID.Value := ibdsEnterprisesID.AsLargeInt
end;

procedure TfrmTovar.dblpStoresCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsGoodsSTORE_ID.Value := ibdsStoresID.AsLargeInt
end;

procedure TfrmTovar.dblpCountriesCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsGoodsCOUNTRY_ID.Value := ibdsCountriesID.AsLargeInt
end;

procedure TfrmTovar.dblpArticulNameCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsGoodsARTICUL_ID.Value := ibdsArticulsID.AsLargeInt
end;

function TfrmTovar.GetWhereGoodsTotals: String;
 var S, SS : String;
     I: Integer;
begin
 Result := '';
 ibdsGoodsTotals.Filtered := False;
 ibdsGoodsTotalsFutureIncome.Visible := cbNeedBuying.Checked;
 If (sbFilterGoods.Down) then
  Begin
   lblFilter.Caption := '';
   If (trStores.Items[0].StateIndex<>2) then
    Begin
     S := '';
     SS := '';
     For I := 1 to Pred(trStores.Items.Count) do
      If (PItemRec(trStores.Items[I].Data)^.IType=0) and
         (trStores.Items[I].StateIndex=2) then
       Begin
        S := S+IntToStr(PItemRec(trStores.Items[I].Data)^.Id)+',';
        SS := SS+trStores.Items[I].Text+','
       End;
     If (S<>'') then
      Begin
       Delete(S,Length(S),1);
       Delete(SS,Length(SS),1);
       Result := Result+'and (S.ID in ('+S+')) ';
       lblFilter.Caption := lblFilter.Caption+'Склады: '+SS+'; '
      End
     else
      trStores.ChangeNodeCheckState(trStores.Items[0], csChecked)
    End;
   If (cbName.Checked) then
    Begin
     Result := Result+'and (UPPER(A.NAME collate PXW_CYRL) like '#39+AnsiUpperCase(edName.Text)+#39') ';
     lblFilter.Caption := lblFilter.Caption+'Наименование: '+edName.Text+'; '
    End;
   If (cbBiggerThanZero.Checked) then
    Begin
     ibdsGoodsTotals.Filtered := True;
     lblFilter.Caption := lblFilter.Caption+'Итого>0; '
    End;
   If (cbSmallerThanZero.Checked) then
    Begin
     ibdsGoodsTotals.Filtered := True;
     lblFilter.Caption := lblFilter.Caption+'Итого<0; '
    End;
   If (cbHaveBiggerThanZero.Checked) then
    Begin
     ibdsGoodsTotals.Filtered := True;
     lblFilter.Caption := lblFilter.Caption+'Имеется>0; '
    End;
   If (cbHaveSmallerThanZero.Checked) then
    Begin
     ibdsGoodsTotals.Filtered := True;
     lblFilter.Caption := lblFilter.Caption+'Имеется<0; '
    End;
   If (cbHaveMin.Checked) then
    Begin
     ibdsGoodsTotals.Filtered := True;
     lblFilter.Caption := lblFilter.Caption+'Минимум>0; '
    End;
   If (cbNeedBuying.Checked) then
    Begin
     ibdsGoodsTotals.Filtered := True;
     lblFilter.Caption := lblFilter.Caption+'Нужна закупка; '
    End;
   lblFilter.Caption := Trim(lblFilter.Caption);
   pnlText.Visible := True;
   lblFilter.AutoSize := True;
   If (lblFilter.Caption='') then
    sbFilterGoods.Down := False;
  End
end;

function TfrmTovar.GetWhereGoods: String;
 var S : String;
     k, I : Integer;
begin
 Result := '';
 ibdsGoods.Filtered := False;
 ibdsGoodsENTERPRISE_NAME.Visible := True;
 ibdsGoodsSTORE_NAME.Visible := True;
 If (sbFilterGoods.Down) then
  Begin
   If (trStores.Items[0].StateIndex<>2) then
    Begin
     S := '';
     k := 0;
     For I := 1 to Pred(trStores.Items.Count) do
      If (PItemRec(trStores.Items[I].Data)^.IType=0) and
         (trStores.Items[I].StateIndex=2) then
       Begin
        S := S+IntToStr(PItemRec(trStores.Items[I].Data)^.Id)+',';
        StoreID := PItemRec(trStores.Items[I].Data)^.Id;
        Inc(k)
       End;
     If (S<>'') then
      Begin
       Delete(S,Length(S),1);
       Result := Result+'and (S.ID in ('+S+')) '
      End
     else
      trStores.ChangeNodeCheckState(trStores.Items[0], csChecked)
    End;
   If NOT (cbNeedBuying.Checked) and (k=1) then
    Begin
     ibdsGoods.DataSource := nil;
     dbgGoodsTotals.Visible := False;
     dbgGoods.Parent := Panel7;
     dbgGoods.Align := alClient;
     dbgGoods.Visible := True;
     ibdsGoodsENTERPRISE_NAME.Visible := False;
     ibdsGoodsSTORE_NAME.Visible := False;
     ibdsGoodsARTICUL_NAME.Visible := True;
     ibdsGoodsMADE_IN.Visible := True
    End
   else
    Begin
     ibdsGoods.DataSource := dsGoodsTotals;
     dbgGoods.Visible := False;
     dbgGoods.Parent := dbgGoodsTotals;
     dbgGoodsTotals.Visible := True;
     dbgGoods.Align := alNone;
     ibdsGoodsARTICUL_NAME.Visible := False;
     ibdsGoodsMADE_IN.Visible := False;
     wwExpandButton1.Expanded := False
    End;
   If (cbName.Checked) then
    Result := Result+'and (UPPER(A.NAME collate PXW_CYRL) like '#39+AnsiUpperCase(edName.Text)+#39') ';
   If (cbBiggerThanZero.Checked) then
    ibdsGoods.Filtered := True;
   If (cbSmallerThanZero.Checked) then
    ibdsGoods.Filtered := True;
   If (cbHaveBiggerThanZero.Checked) then
    If (Black) then
     Result := Result+'and (G.TOTAL_REAL>0) '
    else
     Result := Result+'and (G.TOTAL>0) ';
   If (cbHaveSmallerThanZero.Checked) then
    If (Black) then
     Result := Result+'and (G.TOTAL_REAL<0) '
    else
     Result := Result+'and (G.TOTAL<0) ';
   If (cbHaveMin.Checked) then
    ibdsGoods.Filtered := True
  End
end;

function TfrmTovar.GetWhereReportByStoresBody: String;
begin
 Result := '';
 If (sbFilterGoods.Down) then
  Begin
   If (cbName.Checked) then
    Result := Result+'and (UPPER(A.NAME collate PXW_CYRL) like '#39+AnsiUpperCase(edName.Text)+#39') ';
   If (cbBiggerThanZero.Checked) then
    If (Black) then
     Result := Result+'and (G.IN_SETS+G.TOTAL_REAL>0) '
    else
     Result := Result+'and (G.IN_SETS+G.TOTAL>0) ';
   If (cbSmallerThanZero.Checked) then
    If (Black) then
     Result := Result+'and (G.IN_SETS+G.TOTAL_REAL<0) '
    else
     Result := Result+'and (G.IN_SETS+G.TOTAL<0) ';
   If (cbHaveBiggerThanZero.Checked) then
    If (Black) then
     Result := Result+'and (G.TOTAL_REAL>0) '
    else
     Result := Result+'and (G.TOTAL>0) ';
   If (cbHaveSmallerThanZero.Checked) then
    If (Black) then
     Result := Result+'and (G.TOTAL_REAL<0) '
    else
     Result := Result+'and (G.TOTAL<0) ';
   If (cbHaveMin.Checked) then
    If (rgByDate.ItemIndex=0) then
     Result := Result+'and (G.MIN_AMOUNT>0) '
    else
     Result := Result+'and (GC.MIN_AMOUNT>0) '
  End
end;

procedure TfrmTovar.GenerateSelectGoodsTotals;
 var k : Integer;
begin
 If (rgByDate.ItemIndex=0) then
  ibdsGoodsTotals.SelectSQL[0] := 'select G.ARTICUL_ID, A.ARTICUL, A.NAME, G.MADE_IN, MAX(G.LAST_BUY_PRICE) LAST_BUY_PRICE, SUM(G.IN_RESERV) RESERV_AMOUNT, SUM(G.FUTURE_INCOME) FutureIncome,'
 else
  ibdsGoodsTotals.SelectSQL[0] := 'select G.ARTICUL_ID, A.ARTICUL, A.NAME, CAST(NULL as VARCHAR(30)) MADE_IN, MAX(G.LAST_BUY_PRICE) LAST_BUY_PRICE, CAST(NULL as DOUBLE PRECISION) RESERV_AMOUNT, CAST(NULL as DOUBLE PRECISION) FutureIncome,';
 If (Black) then
  If (rgByDate.ItemIndex=0) then
   ibdsGoodsTotals.SelectSQL[1] := 'SUM(G.MIN_AMOUNT) MIN_AMOUNT, SUM(G.TOTAL_WHITE) TOTAL,'
  else
   ibdsGoodsTotals.SelectSQL[1] := 'CAST(NULL as DOUBLE PRECISION) MIN_AMOUNT, SUM(G.TOTAL_WHITE) TOTAL,'
 else
  Begin
   ibdsGoodsTotals.SelectSQL[1] := 'SUM(G.MIN_AMOUNT) MIN_AMOUNT, SUM(G.TOTAL) TOTAL';
   ibdsGoodsTotals.SelectSQL[2] := ''
  End;
 If (rgByDate.ItemIndex=0) then
  ibdsGoodsTotals.SelectSQL[3] := 'from ARTICULS A, STORES S, GOODS G'
 else
  ibdsGoodsTotals.SelectSQL[3] := 'from ARTICULS A, STORES S, GOODS_BY_DATE(:START,0) G';
 For k := Pred(ibdsGoodsTotals.SelectSQL.Count) downto 5 do
  ibdsGoodsTotals.SelectSQL.Delete(k);
 ibdsGoodsTotals.SelectSQL.Add(GetWhereGoodsTotals);
 ibdsGoodsTotals.SelectSQL.Add('group by G.ARTICUL_ID, A.ARTICUL, A.NAME');
 If (rgByDate.ItemIndex=0) then
  ibdsGoodsTotals.SelectSQL.Add(', G.MADE_IN');
 ibdsGoodsTotals.SelectSQL.Add('order by'+OrderByGoodsTotals);
 If (rgByDate.ItemIndex<>0) then
  ibdsGoodsTotals.ParamByName('START').AsDate := dbtpDate.Date
end;

procedure TfrmTovar.GenerateSelectReportByStoresBody;
begin
 ibdsReportByStoresBody.SelectSQL.Clear;
 If (rgByDate.ItemIndex=0) then
  Begin
   ibdsReportByStoresBody.SelectSQL.Add('select A.NAME ARTICUL_NAME, G.MADE_IN, G.PRICE, G.PACK_VALUE,');
   If (Black) then
    ibdsReportByStoresBody.SelectSQL.Add('G.IN_SETS, G.TOTAL_REAL TOTAL, G.TOTAL_WHITE TOTAL_WHITE,')
   else
    ibdsReportByStoresBody.SelectSQL.Add('G.IN_SETS, G.TOTAL TOTAL,');
   ibdsReportByStoresBody.SelectSQL.Add('G.LAST_BUY_PRICE, G.LAST_BUY_PRICE LAST_BUY_PRICE_CENTRAL');
   ibdsReportByStoresBody.SelectSQL.Add('from ARTICULS A, GOODS G');
   ibdsReportByStoresBody.SelectSQL.Add('where (A.ID=G.ARTICUL_ID) and (G.STORE_ID=:ID)')
{   ibdsReportByStoresBody.SelectSQL.Add('from ARTICULS A, GOODS G, GOODS GC');
   ibdsReportByStoresBody.SelectSQL.Add('where (A.ID=G.ARTICUL_ID) and (G.STORE_ID=:ID) and');
   ibdsReportByStoresBody.SelectSQL.Add('(GC.ARTICUL_ID=G.ARTICUL_ID) and (GC.MADE_IN=G.MADE_IN) and (GC.STORE_ID=5001)')}
  End
 else
  Begin
   ibdsReportByStoresBody.SelectSQL.Add('select A.NAME ARTICUL_NAME, cast(null as VARCHAR(30)) MADE_IN, cast(null as DOUBLE PRECISION) PRICE, cast(null as DOUBLE PRECISION) PACK_VALUE,');
   If (Black) then
    ibdsReportByStoresBody.SelectSQL.Add('G.IN_SETS, G.TOTAL_REAL TOTAL, G.TOTAL_WHITE TOTAL_WHITE,')
   else
    ibdsReportByStoresBody.SelectSQL.Add('G.IN_SETS, G.TOTAL TOTAL,');
   ibdsReportByStoresBody.SelectSQL.Add('G.LAST_BUY_PRICE, G.LAST_BUY_PRICE LAST_BUY_PRICE_CENTRAL');
   ibdsReportByStoresBody.SelectSQL.Add('from ARTICULS A, GOODS_BY_DATE_BY_STORE(:START,1,:ID) G');
   ibdsReportByStoresBody.SelectSQL.Add('where (A.ID=G.ARTICUL_ID)')
  End;
 ibdsReportByStoresBody.SelectSQL.Add(GetWhereReportByStoresBody);
 ibdsReportByStoresBody.SelectSQL.Add('order by 1 asc, 2 asc');
 If (rgByDate.ItemIndex<>0) then
  ibdsReportByStoresBody.ParamByName('START').AsDate := dbtpDate.Date
end;

procedure TfrmTovar.GenerateSelectGoods;
 var S : String;
begin
 S := GetWhereGoods;
 ibdsGoods.SelectSQL.Clear;
 If (rgByDate.ItemIndex=0) then
  Begin
   dbgGoods.ReadOnly := False;
   ibdsGoods.SelectSQL.Add('select G.ID, G.ARTICUL_ID, A.NAME ARTICUL_NAME, G.MADE_IN,');
   ibdsGoods.SelectSQL.Add('G.STORE_ID, S.NAME STORE_NAME, S.ENTERPRISE_ID,');
   ibdsGoods.SelectSQL.Add('E.NAME ENTERPRISE_NAME, G.PRICE, G.PACK_VALUE, G.IN_SETS,');
   If (Black) then
    ibdsGoods.SelectSQL.Add('G.TOTAL_REAL, G.TOTAL_WHITE TOTAL, G.MIN_AMOUNT, G.LAST_BUY_PRICE,')
   else
    ibdsGoods.SelectSQL.Add('G.TOTAL TOTAL, G.MIN_AMOUNT, G.LAST_BUY_PRICE,');
   ibdsGoods.SelectSQL.Add('G.SERTIFICATE_INFORMATION, G.VALID_DATE, G.COUNTRY_ID,');
   ibdsGoods.SelectSQL.Add('C.NAME COUNTRY_NAME, G.DECLARATION_NUMBER, G.COMMENTS');
   ibdsGoods.SelectSQL.Add('from ENTERPRISES E join STORES S on (E.ID=S.ENTERPRISE_ID) join GOODS G on');
   ibdsGoods.SelectSQL.Add('(S.ID=G.STORE_ID) and (G.ARTICUL_ID=:ARTICUL_ID) and (G.MADE_IN=:MADE_IN)');
   ibdsGoods.SelectSQL.Add('join ARTICULS A on (A.ID=G.ARTICUL_ID)'+S+' left outer join COUNTRIES C on');
   ibdsGoods.SelectSQL.Add('(C.ID=G.COUNTRY_ID)')
  End
 else
  Begin
   dbgGoods.ReadOnly := True;
   ibdsGoods.SelectSQL.Add('select CAST(NULL as DECIMAL(18,0)) ID, G.ARTICUL_ID, A.NAME ARTICUL_NAME, CAST(NULL as VARCHAR(30)) MADE_IN,');
   ibdsGoods.SelectSQL.Add('G.STORE_ID, S.NAME STORE_NAME, S.ENTERPRISE_ID,');
   ibdsGoods.SelectSQL.Add('E.NAME ENTERPRISE_NAME, CAST(NULL as DOUBLE PRECISION) PRICE, CAST(NULL as DOUBLE PRECISION) PACK_VALUE, G.IN_SETS,');
   If (Black) then
    ibdsGoods.SelectSQL.Add('G.TOTAL_REAL, G.TOTAL_WHITE TOTAL, CAST(NULL as DOUBLE PRECISION) MIN_AMOUNT, G.LAST_BUY_PRICE,')
   else
    ibdsGoods.SelectSQL.Add('G.TOTAL TOTAL, CAST(NULL as DOUBLE PRECISION) MIN_AMOUNT, G.LAST_BUY_PRICE,');
   ibdsGoods.SelectSQL.Add('CAST(NULL as VARCHAR(100)) SERTIFICATE_INFORMATION, CAST(NULL as DATE) VALID_DATE, CAST(NULL as DECIMAL(18,0)) COUNTRY_ID,');
   ibdsGoods.SelectSQL.Add('CAST(NULL as VARCHAR(50)) COUNTRY_NAME, CAST(NULL as VARCHAR(30)) DECLARATION_NUMBER, CAST(NULL as VARCHAR(100)) COMMENTS');
   ibdsGoods.SelectSQL.Add('from ENTERPRISES E join STORES S on (E.ID=S.ENTERPRISE_ID) join GOODS_BY_DATE(:START,0) G on');
   ibdsGoods.SelectSQL.Add('(S.ID=G.STORE_ID) and (G.ARTICUL_ID=:ARTICUL_ID)');
   ibdsGoods.SelectSQL.Add('join ARTICULS A on (A.ID=G.ARTICUL_ID)'+S)
  End;
 ibdsGoods.SelectSQL[7] := '(S.ID=G.STORE_ID) ';
 If (ibdsGoods.DataSource<>nil) then
  Begin
   ibdsGoods.SelectSQL[7] := ibdsGoods.SelectSQL[7]+' and (G.ARTICUL_ID=:ARTICUL_ID)';
   If (rgByDate.ItemIndex=0) then
    ibdsGoods.SelectSQL[7] := ibdsGoods.SelectSQL[7]+' and (G.MADE_IN=:MADE_IN)'
  End;
 ibdsGoods.SelectSQL.Add('order by'+OrderByGoods);
 If (rgByDate.ItemIndex<>0) then
  ibdsGoods.ParamByName('START').AsDate := dbtpDate.Date
end;

procedure TfrmTovar.dbgGoodsTotalsCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByGoodsTotals);
  2: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByGoods)
 end
end;

procedure TfrmTovar.dbgGoodsTotalsTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByGoodsTotals, (GetKeyState(VK_CONTROL)<0),
                              nil, nil, GenerateSelectGoodsTotals);
  2: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByGoods, (GetKeyState(VK_CONTROL)<0),
                              sbApplyGoods, sbCancelGoods, GenerateSelectGoods)
 end
end;

procedure TfrmTovar.ibdsGoodsTotalsBeforeScroll(DataSet: TDataSet);
begin
 If (sbApplyGoods.Enabled) then
  Case MessageDlg('Имеются несохраненные изменения. Сохранить?', mtConfirmation, [mbYes,mbNo],0) of
   mrYes: sbApplyGoods.Click;
   mrNo: sbCancelGoods.Click
  End
end;

procedure TfrmTovar.wwExpandButton1BeforeExpand(Sender: TObject);
begin
 dbgGoods.Width := dbgGoodsTotals.Width-wwExpandButton1.Left-29;
 dbgGoods.Height := 154;
 ibdsGoods.Open
end;

procedure TfrmTovar.sbFilterGoodsClick(Sender: TObject);
begin
 If NOT (sbFilterGoods.Down) then
  ibdsGoodsTotals.Filtered := False;
 pnlFilter.Visible := sbFilterGoods.Down;
 pnlText.Visible := sbFilterGoods.Down;
 Cursor := crHourGlass;
 ibdsGoods.Close;
 ibdsGoodsTotals.Close;
 GenerateSelectGoodsTotals;
 GenerateSelectGoods;
 If (ibdsGoods.DataSource<>nil) then
  ibdsGoodsTotals.Open
 else
  ibdsGoods.Open;
 Cursor := crDefault
end;

procedure TfrmTovar.ibdsStoresFilterCHECKEDChange(Sender: TField);
begin
 sbReFilter.Visible := True
end;

procedure TfrmTovar.edNameChange(Sender: TObject);
begin
 sbReFilter.Visible := (cbName.Checked)
end;

procedure TfrmTovar.wwExpandButton1AfterCollapse(Sender: TObject);
begin
 ibdsGoods.Close
end;

procedure TfrmTovar.SpeedButton5Click(Sender: TObject);
begin
 SpeedButton5.Visible := Not SpeedButton5.Visible;
 SpeedButton3.Visible := Not SpeedButton3.Visible;
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True
end;

procedure TfrmTovar.sbReFilterClick(Sender: TObject);
var I: Integer;
begin
 For I := 1 to Pred(trStores.Items.Count) do
  If (PItemRec(trStores.Items[I].Data)^.IType=0) then
   Begin
    ibdsStoresFilter.Locate('ID',IntToStr(PItemRec(trStores.Items[I].Data)^.ID),[]);
    ibdsStoresFilter.Edit;
    ibdsStoresFilterCHECKED.Value := (trStores.Items[I].StateIndex-1);
    ibdsStoresFilter.Post;
   End;
 SetUserSelect(trMain,ibdsStoresFilter,ibsAux,1,Integer(frmTovar),-1);
 sbFilterGoods.Click;
 sbReFilter.Visible := False
end;

procedure TfrmTovar.ibdsGoodsTotalsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := False;
 If (cbBiggerThanZero.Checked) then
  Accept := Accept or (ibdsGoodsTotalsITOGO.AsFloat>0);
 If (cbSmallerThanZero.Checked) then
  Accept := Accept or (ibdsGoodsTotalsITOGO.AsFloat<0);
 If (cbHaveBiggerThanZero.Checked) then
  Accept := Accept or (ibdsGoodsTotalsTOTAL_REAL.AsFloat>0);
 If (cbHaveSmallerThanZero.Checked) then
  Accept := Accept or (ibdsGoodsTotalsTOTAL_REAL.AsFloat<0);
 If (cbHaveMin.Checked) then
  Accept := Accept or (ibdsGoodsTotalsMIN_AMOUNT.AsFloat>0);
 If (cbNeedBuying.Checked) then
  Accept := Accept or ((ibdsGoodsTotalsITOGO.AsFloat<ibdsGoodsTotalsMIN_AMOUNT.AsFloat+
                                                     ibdsGoodsTotalsRESERV_AMOUNT.AsFloat) and
                       ((ibdsGoodsTotalsMIN_AMOUNT.AsFloat>0) or (ibdsGoodsTotalsRESERV_AMOUNT.AsFloat>0)))
end;

procedure TfrmTovar.dbgGoodsIButtonClick(Sender: TObject);
begin
 If (ibdsGoods.DataSource<>nil) then
  Begin
   ibdsGoods.Close;
   ibdsGoods.DataSource := nil;
   GenerateSelectGoods;
   dbgGoodsTotals.Visible := False;
   dbgGoods.Parent := Panel7;
   dbgGoods.Visible := True;
   dbgGoods.Align := alClient;
   ibdsGoodsARTICUL_NAME.Visible := True;
   ibdsGoodsMADE_IN.Visible := True;
   ibdsGoods.Open
  End
 else
  Begin
   ibdsGoods.Close;
   GenerateSelectGoods;
   ibdsGoods.SelectSQL[10] := 'and (G.ARTICUL_ID=:ARTICUL_ID) and (G.MADE_IN=:MADE_IN)';
   ibdsGoods.DataSource := dsGoodsTotals;
   dbgGoods.Parent := dbgGoodsTotals;
   dbgGoodsTotals.Visible := True;
   dbgGoods.Visible := False;
   ibdsGoodsARTICUL_NAME.Visible := False;
   ibdsGoodsMADE_IN.Visible := False;
   dbgGoods.Align := alNone;
   wwExpandButton1.Expanded := False
  End
end;

procedure TfrmTovar.ibdsGoodsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept := False;
 If (Black) then
  Begin
   If (cbBiggerThanZero.Checked) then
    Accept := Accept or (ibdsGoodsITOGO.AsFloat>0);
   If (cbSmallerThanZero.Checked) then
    Accept := Accept or (ibdsGoodsITOGO.AsFloat<0);
   If (cbHaveMin.Checked) then
    Accept := Accept or (ibdsGoodsMIN_AMOUNT.AsFloat>0)
  End
 else
  Begin
   If (cbBiggerThanZero.Checked) then
    Accept := Accept or (ibdsGoodsITOGO.AsFloat>0);
   If (cbSmallerThanZero.Checked) then
    Accept := Accept or (ibdsGoodsITOGO.AsFloat<0);
   If (cbHaveMin.Checked) then
    Accept := Accept or (ibdsGoodsMIN_AMOUNT.AsFloat>0)
  End
end;

procedure TfrmTovar.ibdsGoodsCalcFields(DataSet: TDataSet);
begin
 If (Black) then
  ibdsGoodsITOGO.Value := ibdsGoodsIN_SETS.AsFloat+ibdsGoodsTOTAL_REAL.AsFloat
 else
  ibdsGoodsITOGO.Value := ibdsGoodsIN_SETS.AsFloat+ibdsGoodsTOTAL.AsFloat
end;

procedure TfrmTovar.dbgGoodsTotalsCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByGoodsTotals);
  2: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByGoods)
 end
end;

procedure TfrmTovar.sbPrintTovarClick(Sender: TObject);
begin
 ibdsLastByPrise.Close;
 frVariables.Clear;
 frVariables['DisplayFormat'] := ibdsGoodsPRICE.DisplayFormat;
 frVariables['Filter'] := lblFilter.Caption;
 If (rgByDate.ItemIndex=0) then
  frVariables['ViewDate'] := FormatDateTime('по состоянию на dd.mm.yyyyг. hh:nn',now)
 else
  frVariables['ViewDate'] := FormatDateTime('входящие остатки на dd.mm.yyyyг.',dbtpDate.Date);
 If (trstores.Items[0].StateIndex=2) then
  frVariables['Все склады'] := 1
 else
  frVariables['Все склады'] := 0;
 If (ibdsGoodsTotals.Active) then
  Begin
   ibdsReport := ibdsGoods;
   ibdsReportBody := ibdsGoodsTotals;
   ibdsLastByPrise.DataSource := dsGoodsTotals
  End
 else
  Begin
   ibdsReport := ibdsGoodsTotals;
   ibdsReportBody := ibdsGoods;
   ibdsLastByPrise.DataSource := dsGoods
  End;
 ibdsLastByPrise.Open;
 sbPrintClick((Sender as TSpeedButton), ibsAux, ibdsReportBody)
end;

procedure TfrmTovar.ibdsGoodsAfterOpen(DataSet: TDataSet);
begin
 If (ibdsGoods.DataSource<>nil) then
  sbPrintTovar.Tag := 1
 else
  sbPrintTovar.Tag := 0
end;

procedure TfrmTovar.rgByDateChange(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

procedure TfrmTovar.ibdsStoresFilterAfterOpen(DataSet: TDataSet);
begin
 ReadUserSelect(ibdsStoresFilter,ibsAux,1,Integer(frmTovar),1)
end;

procedure TfrmTovar.ibdsStoresFilterFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var I: Integer;
begin
 Accept := False;
 For I := 1 to Pred(trStores.Items.Count) do
  If (PItemRec(trStores.Items[I].Data)^.IType=0) and
     (PItemRec(trStores.Items[I].Data)^.ID=ibdsStoresFilterID.AsLargeInt) and
     (trStores.ItemState[I]=csChecked) then
   Begin
    Accept := True;
    Break
   End
end;

procedure TfrmTovar.N1Click(Sender: TObject);
begin
 If ((Sender as TMenuItem).Owner.FindComponent('frmComplectDetails')=nil) then
  frmComplectDetails := TfrmComplectDetails.Create((Sender as TMenuItem).Owner);
 With frmComplectDetails do
  Begin
   ibdsCompounds.Close;
   If (ibdsGoodsTotals.Active) then
    Begin
     ibdsCompounds.SelectSQL[4] := '(A.ID=:ARTICUL_ID)';
     ibdsCompounds.DataSource := dsGoodsTotals;
     ibdsComposition.DataSource := dsGoodsTotals
    End
   else
    Begin
     ibdsCompounds.SelectSQL[4] := '(G.ID=:ID)';
     ibdsCompounds.DataSource := dsGoods;
     ibdsComposition.DataSource := dsGoods
    End;
   ibdsCompounds.Open;
   ibdsComposition.Open;
   Show
  End    // with
end;

procedure TfrmTovar.GenerateStoresTree(Node: TTreeNode);
 var R : PItemRec;
     NewNode : TTreeNode;
     ibsLocalAux : TIBSQL;
begin
 ibsLocalAux := TIBSQL.Create(Nil);
 ibsLocalAux.Database := ibdsGoodsTotals.Database;
 ibsLocalAux.Transaction := trMain;
 ibsLocalAux.SQL.Clear;
 Node.DeleteChildren;
 If (Node=trStores.Items[0]) then
  ibsLocalAux.SQL.Add('select SG.ID, SG.NAME from STORE_GROUPS SG where (SG.PARENT_ID is null) order by 2')
 else
  ibsLocalAux.SQL.Add('select SG.ID, SG.NAME from STORE_GROUPS SG where (SG.PARENT_ID='+IntToStr(PItemRec(Node.Data)^.ID)+') order by 2');
 ibsLocalAux.ExecQuery;
 While not (ibsLocalAux.EOF) do
  Begin
   NewNode := trStores.Items.AddChild(Node, ibsLocalAux.FieldByName('NAME').asString);
   New(R);
   NewNode.Data := R;
   R^.Id := ibsLocalAux.FieldByName('ID').AsInt64;
   If (Node=trStores.Items[0]) then
    R^.Parent := 0
   else
    R^.Parent := PItemRec(Node.Data)^.ID;
   R^.IType := 1;
   NewNode.HasChildren := True;
   ibsLocalAux.Next
  End;
 ibsLocalAux.Close;
 ibsLocalAux.SQL.Clear;
 If (Node=trStores.Items[0]) then
  ibsLocalAux.SQL.Add('select S.ID, S.NAME from STORES S where (S.STORE_GROUP_ID is null) and (S.ID!=-1) order by 2')
 else
  ibsLocalAux.SQL.Add('select S.ID, S.NAME from STORES S where (S.STORE_GROUP_ID='+IntToStr(PItemRec(Node.Data)^.ID)+') order by 2');
 ibsLocalAux.ExecQuery;
 While not (ibsLocalAux.EOF) do
  Begin
   NewNode := trStores.Items.AddChild(Node, ibsLocalAux.FieldByName('NAME').asString);
   New(R);
   NewNode.Data := R;
   R^.Id := ibsLocalAux.FieldByName('ID').AsInt64;
   If (Node=trStores.Items[0]) then
    R^.Parent := 0
   else
    R^.Parent := PItemRec(Node.Data)^.ID;
   R^.IType := 0;
   ibsLocalAux.Next
  End;
 ibsLocalAux.Close;
 ibsLocalAux.Free
end;

procedure TfrmTovar.trStoresExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
 GenerateStoresTree(Node)
end;

procedure TfrmTovar.trStoresDeletion(Sender: TObject; Node: TTreeNode);
begin
 Dispose(PItemRec(Node.Data))
end;

procedure TfrmTovar.trStoresStateChange(Sender: TObject; Node: TTreeNode;
  NewState: TRzCheckState);
begin
 sbReFilter.Visible := True
end;

end.
