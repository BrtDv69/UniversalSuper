unit ManyMovement;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, wwdbdatetimepicker, Buttons, wwdblook, StdCtrls, Mask, wwdbedit,
  DBCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, IBSQL, IBDatabase,
  wwcheckbox, wwclearbuttongroup, wwradiogroup, Db, IBCustomDataSet, FR_Class, Math;

type
  TfrmManyMovement = class(TfrmLike)
    ibdsMainMovement: TIBDataSet;
    dsMainMovement: TDataSource;
    Panel2: TPanel;
    dbgMovement: TwwDBGrid;
    pnlText: TPanel;
    lblFilter: TLabel;
    sbShowFull: TSpeedButton;
    sbHideFull: TSpeedButton;
    pnlFilter: TPanel;
    sbShow: TSpeedButton;
    Label5: TLabel;
    Label42: TLabel;
    lcDeskAccouns: TwwDBLookupCombo;
    deDateStart: TwwDBDateTimePicker;
    deDateStop: TwwDBDateTimePicker;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    ibdsMainMovementPAYMENT_DATE: TDateField;
    ibdsMainMovementNUMBER_STR: TIBStringField;
    ibdsMainMovementNAME: TIBStringField;
    ibdsMainMovementDECIMALS: TSmallintField;
    ibdsMainMovementSYMBOL: TIBStringField;
    ibdsMainMovementINCOME: TFloatField;
    ibdsMainMovementOUTCOME: TFloatField;
    ibdsMainMovementSETUP_NAME: TIBStringField;
    ibdsMainMovementIncome_Fmt: TStringField;
    ibdsMainMovementOutcome_Fmt: TStringField;
    ibdsDeskAccouns: TIBDataSet;
    ibdsDeskAccounsID: TLargeintField;
    ibdsDeskAccounsNAME: TIBStringField;
    ibdsDeskAccounsDESK: TIntegerField;
    ibdsMainMovementCURRENCY_NAME: TIBStringField;
    ibdsCurrentAmount: TIBDataSet;
    ibdsCurrentAmountSUM: TFloatField;
    ibdsMainMovementCURRENCY_ID: TLargeintField;
    ibdsIncome: TIBDataSet;
    ibdsIncomeSUM: TFloatField;
    ibdsOutcome: TIBDataSet;
    ibdsOutcomeSUM: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure sbShowClick(Sender: TObject);
    procedure ibdsMainMovementCalcFields(DataSet: TDataSet);
    procedure ibdsMainMovementBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lcDeskAccounsChange(Sender: TObject);
    procedure sbHideFullClick(Sender: TObject);
    procedure ibdsStoresAfterOpen(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ibdsMainMovementAfterOpen(DataSet: TDataSet);
    procedure dbgMovementCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbgMovementCalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure dbgMovementCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgMovementCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure dbgMovementTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure ibdsCurrentAmountBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure GenerateSelectMainMovement;
    procedure GenerateSelectDeskAccouns;
    function GetWhereDeskAccouns: String;
  public
    { Public declarations }
  end;

var
  frmManyMovement: TfrmManyMovement;

implementation

uses Main, DM, Misk;

{$R *.DFM}

var OrderByMainMovement  : String = '';
    WhereSqlDeskAccounts : String = '';

procedure TfrmManyMovement.FormCreate(Sender: TObject);
 var ki : Integer;
begin
 lblFilter.Caption := '';
 FName := 'Движение денежных средств';
 inherited;
 If NOT (Black) then
  Begin
   For ki := Pred(ComponentCount) downto 0 do
    If (Components[ki] is TIBDataSet) and ((Components[ki] as TIBDataSet).Database=frmDM.dbMain) then
     (Components[ki] as TIBDataSet).Database := frmDM.dbWhite
    else
     If (Components[ki] is TIBSQL) and ((Components[ki] as TIBSQL).Database=frmDM.dbMain) then
      (Components[ki] as TIBSQL).Database := frmDM.dbWhite;
   For ki := Pred(ComponentCount) downto 0 do
    If (Components[ki].Tag=99) then
     Components[ki].Free
  End;
 trMain.StartTransaction;
 GenerateSelectDeskAccouns;
 deDateStart.Date := date;
 deDateStop.Date := date;
 ibdsDeskAccouns.Open
end;

procedure TfrmManyMovement.SpeedButton10Click(Sender: TObject);
begin
 Close
end;

procedure TfrmManyMovement.sbShowClick(Sender: TObject);
begin
 Cursor := crHourGlass;
 ibdsMainMovement.Close;
 GenerateSelectMainMovement;
 ibdsMainMovement.Open;
 Cursor := crDefault;
 sbShow.Visible := False
end;

procedure TfrmManyMovement.GenerateSelectMainMovement;
 var k : Integer;
begin
 If (ibdsDeskAccounsDESK.Value=0) then
  Begin
   ibdsMainMovement.SelectSQL[7] := '(PP.ENTERPRISE_ACCOUNT_ID='+ibdsDeskAccounsID.AsString+') and';
   ibdsMainMovement.SelectSQL[21] := '(PP.ENTERPRISE_ACCOUNT_ID='+ibdsDeskAccounsID.AsString+') and'
  End
 else
  Begin
   ibdsMainMovement.SelectSQL[7] := '(PP.ENTERPRISE_CASH_DESK_ID='+ibdsDeskAccounsID.AsString+') and';
   ibdsMainMovement.SelectSQL[21] := '(PP.ENTERPRISE_CASH_DESK_ID='+ibdsDeskAccounsID.AsString+') and'
  End;
 For k := Pred(ibdsMainMovement.SelectSQL.Count) downto 27 do
  ibdsMainMovement.SelectSQL.Delete(k);
 If (OrderByMainMovement<>'') then
  ibdsMainMovement.SelectSQL.Add('order by'+OrderByMainMovement)
end;

procedure TfrmManyMovement.GenerateSelectDeskAccouns;
begin
 WhereSqlDeskAccounts := GetWhereDeskAccouns;
 ibdsDeskAccouns.SelectSQL[3] := WhereSqlDeskAccounts;
 ibdsDeskAccouns.SelectSQL[8] := ''
end;

procedure TfrmManyMovement.ibdsMainMovementCalcFields(DataSet: TDataSet);
begin
 ibdsMainMovementIncome_Fmt.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsMainMovementDecimals.AsInteger)+ibdsMainMovementSYMBOL.AsString,ibdsMainMovementINCOME.AsFloat);
 ibdsMainMovementOutcome_Fmt.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsMainMovementDecimals.AsInteger)+ibdsMainMovementSYMBOL.AsString,ibdsMainMovementOUTCOME.AsFloat)
end;

procedure TfrmManyMovement.ibdsMainMovementBeforeOpen(DataSet: TDataSet);
begin
 lblFilter.AutoSize := False;
 lblFilter.Caption := '';
 ibdsMainMovement.ParamByName('START_DATE').AsDate := deDateStart.Date;
 ibdsMainMovement.ParamByName('STOP_DATE').AsDate := deDateStop.Date;
 lblFilter.Caption := 'За период с '+FormatDateTime('dd.mm.yyyyг.',deDateStart.Date)+
                      ' по '+FormatDateTime('dd.mm.yyyyг.',deDateStop.Date)+'; ';
 If (ibdsDeskAccounsDESK.Value=0) then
  lblFilter.Caption := lblFilter.Caption+'Счет: '
 else
  lblFilter.Caption := lblFilter.Caption+'Касса: ';
 lblFilter.Caption := lblFilter.Caption+ibdsDeskAccounsNAME.AsString+' ;';
 lblFilter.AutoSize := True;
 (DataSet as TIBDataSet).ParamByName('PERSON_ID').AsInt64 := PersonID
end;

procedure TfrmManyMovement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 frmManyMovement := nil
end;

procedure TfrmManyMovement.lcDeskAccounsChange(Sender: TObject);
begin
 sbShow.Visible := True
end;

procedure TfrmManyMovement.sbHideFullClick(Sender: TObject);
begin
 sbHideFull.Visible := NOT pnlFilter.Visible;
 sbShowFull.Visible := pnlFilter.Visible;
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True
end;

procedure TfrmManyMovement.ibdsStoresAfterOpen(DataSet: TDataSet);
begin
 lcDeskAccouns.Text := ibdsDeskAccounsDESK.AsString
end;

procedure TfrmManyMovement.SpeedButton7Click(Sender: TObject);
begin
 ibdsMainMovement.First
end;

procedure TfrmManyMovement.SpeedButton6Click(Sender: TObject);
begin
 ibdsMainMovement.Prior
end;

procedure TfrmManyMovement.SpeedButton5Click(Sender: TObject);
begin
 ibdsMainMovement.Next
end;

procedure TfrmManyMovement.SpeedButton4Click(Sender: TObject);
begin
 ibdsMainMovement.Last
end;

procedure TfrmManyMovement.ibdsMainMovementAfterOpen(DataSet: TDataSet);
 var CurrencyFrmt : String;
     RecordCount : Integer;
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select CR.DECIMALS_IN DECIMALS, CR.SYMBOL, SUM(PP.AMOUNT) INCOME');
 ibsGen_ID.SQL.Add('from PRIMARY_PAYMENTS PP, CURRENCY CR, PRIMARY_SETUP PS, USERS U, USER_RIGHTS_FOR_PRIMARY UR');
 ibsGen_ID.SQL.Add('where (PP.PAYMENT_DATE>=:START_DATE) and (PP.PAYMENT_DATE<=:STOP_DATE) and');
 If (ibdsDeskAccounsDESK.Value=0) then
  ibsGen_ID.SQL.Add('(PP.ENTERPRISE_ACCOUNT_ID='+ibdsDeskAccounsID.AsString+') and')
 else
  ibsGen_ID.SQL.Add('(PP.ENTERPRISE_CASH_DESK_ID='+ibdsDeskAccounsID.AsString+') and');
 ibsGen_ID.SQL.Add('(PS.IN_OUT=2) and (PS.ID=PP.PRIMARY_SETUP_ID) and (CR.ID=PP.CURRENCY_ID) and');
 ibsGen_ID.SQL.Add('(U.PERSON_ID=:PERSON_ID) and ((UR.OWN_ONLY=0) or ((UR.OWN_ONLY=1) and');
 ibsGen_ID.SQL.Add('(PP.MASTER_ID=:PERSON_ID))) and (U.SECURITY_LEVEL!<PP.SECURITY_LEVEL) and');
 ibsGen_ID.SQL.Add('(UR.USER_ID=U.ID) and (UR.PRIMARY_SETUP_ID=PP.PRIMARY_SETUP_ID) and (UR.BLACK=PP.BLACK)');
 ibsGen_ID.SQL.Add('group by CR.DECIMALS_IN, CR.SYMBOL order by 2');
 ibsGen_ID.GenerateParamNames := True;
 ibsGen_ID.ParamByName('START_DATE').AsDate := deDateStart.Date;
 ibsGen_ID.ParamByName('STOP_DATE').AsDate := deDateStop.Date;
 ibsGen_ID.ParamByName('PERSON_ID').AsInt64 := PersonID;
 dbgMovement.ColumnByName('INCOME_FMT').FooterValue := '';
 ibsGen_ID.ExecQuery;
 While NOT (ibsGen_ID.Eof) do
  Begin
   CurrencyFrmt := '#,##0.'+StringOfChar('0',ibsGen_ID.FieldByName('DECIMALS').AsInteger)+ibsGen_ID.FieldByName('SYMBOL').AsString;
   dbgMovement.ColumnByName('INCOME_FMT').FooterValue := dbgMovement.ColumnByName('INCOME_FMT').FooterValue+FormatFloat(CurrencyFrmt,ibsGen_ID.FieldByName('INCOME').AsDouble)+#13#10;
   ibsGen_ID.Next
  End;
 dbgMovement.ColumnByName('INCOME_FMT').FooterValue := Copy(dbgMovement.ColumnByName('INCOME_FMT').FooterValue,1,Length(dbgMovement.ColumnByName('INCOME_FMT').FooterValue)-2);
 RecordCount := ibsGen_ID.RecordCount;
 ibsGen_ID.Close;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select CR.DECIMALS_OUT DECIMALS, CR.SYMBOL, SUM(PP.AMOUNT) OUTCOME');
 ibsGen_ID.SQL.Add('from PRIMARY_PAYMENTS PP, CURRENCY CR, PRIMARY_SETUP PS, USERS U, USER_RIGHTS_FOR_PRIMARY UR');
 ibsGen_ID.SQL.Add('where (PP.PAYMENT_DATE>=:START_DATE) and (PP.PAYMENT_DATE<=:STOP_DATE) and');
 If (ibdsDeskAccounsDESK.Value=0) then
  ibsGen_ID.SQL.Add('(PP.ENTERPRISE_ACCOUNT_ID='+ibdsDeskAccounsID.AsString+') and')
 else
  ibsGen_ID.SQL.Add('(PP.ENTERPRISE_CASH_DESK_ID='+ibdsDeskAccounsID.AsString+') and');
 ibsGen_ID.SQL.Add('(PS.IN_OUT=1) and (PS.ID=PP.PRIMARY_SETUP_ID) and (CR.ID=PP.CURRENCY_ID) and');
 ibsGen_ID.SQL.Add('(U.PERSON_ID=:PERSON_ID) and ((UR.OWN_ONLY=0) or ((UR.OWN_ONLY=1) and');
 ibsGen_ID.SQL.Add('(PP.MASTER_ID=:PERSON_ID))) and (U.SECURITY_LEVEL!<PP.SECURITY_LEVEL) and');
 ibsGen_ID.SQL.Add('(UR.USER_ID=U.ID) and (UR.PRIMARY_SETUP_ID=PP.PRIMARY_SETUP_ID) and (UR.BLACK=PP.BLACK)');
 ibsGen_ID.SQL.Add('group by CR.DECIMALS_OUT, CR.SYMBOL order by 2');
 ibsGen_ID.GenerateParamNames := True;
 ibsGen_ID.ParamByName('START_DATE').AsDate := deDateStart.Date;
 ibsGen_ID.ParamByName('STOP_DATE').AsDate := deDateStop.Date;
 ibsGen_ID.ParamByName('PERSON_ID').AsInt64 := PersonID;
 dbgMovement.ColumnByName('OUTCOME_FMT').FooterValue := '';
 ibsGen_ID.ExecQuery;
 While NOT (ibsGen_ID.Eof) do
  Begin
   CurrencyFrmt := '#,##0.'+StringOfChar('0',ibsGen_ID.FieldByName('DECIMALS').AsInteger)+ibsGen_ID.FieldByName('SYMBOL').AsString;
   dbgMovement.ColumnByName('OUTCOME_FMT').FooterValue := dbgMovement.ColumnByName('OUTCOME_FMT').FooterValue+FormatFloat(CurrencyFrmt,ibsGen_ID.FieldByName('OUTCOME').AsDouble)+#13#10;
   ibsGen_ID.Next
  End;
 dbgMovement.ColumnByName('OUTCOME_FMT').FooterValue := Copy(dbgMovement.ColumnByName('OUTCOME_FMT').FooterValue,1,Length(dbgMovement.ColumnByName('OUTCOME_FMT').FooterValue)-2);
 RecordCount := MAX(RecordCount,ibsGen_ID.RecordCount);
 ibsGen_ID.Close;
 dbgMovement.FooterHeight := 22*RecordCount;
 ibdsCurrentAmount.SelectSQL.Clear;
 If (ibdsDeskAccounsDESK.Value=0) then
  Begin
   ibdsCurrentAmount.SelectSQL.Add('select SUM(EA.CURRENT_VALUE)');
   ibdsCurrentAmount.SelectSQL.Add('from ENTERPRISES_ACCOUNTS EA');
   ibdsCurrentAmount.SelectSQL.Add('where (EA.ID=:ID) and');
   ibdsCurrentAmount.SelectSQL.Add('(EA.CURRENCY_ID=:CURRENCY_ID)');
   ibdsIncome.SelectSQL[3] := '(PP.ENTERPRISE_ACCOUNT_ID=:ID) and';
   ibdsOutcome.SelectSQL[3] := ibdsIncome.SelectSQL[3]
  End
 else
  Begin
   ibdsCurrentAmount.SelectSQL.Add('select SUM(ECDV.CURRENT_VALUE)');
   ibdsCurrentAmount.SelectSQL.Add('from ENTERPRISE_CASH_DESK_VALUES ECDV');
   ibdsCurrentAmount.SelectSQL.Add('where (ECDV.CASH_DESK_ID=:ID) and');
   ibdsCurrentAmount.SelectSQL.Add('(ECDV.CURRENCY_ID=:CURRENCY_ID)');
   ibdsIncome.SelectSQL[3] := '(PP.ENTERPRISE_CASH_DESK_ID=:ID) and';
   ibdsOutcome.SelectSQL[3] := ibdsIncome.SelectSQL[3]
  End
end;

procedure TfrmManyMovement.dbgMovementCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If (ibdsMainMovementINCOME.AsFloat>0) then
  AFont.Style := [fsBold]
 else
  AFont.Style := []
end;

procedure TfrmManyMovement.SpeedButton1Click(Sender: TObject);
begin
 ibdsCurrentAmount.Close;
 ibdsIncome.Close;
 ibdsOutcome.Close;
 ibdsCurrentAmount.Open;
 ibdsIncome.Open;
 ibdsOutcome.Open;
 frVariables.Clear;
 If (ibdsDeskAccounsDESK.Value=0) then
  frVariables['Название'] := 'Выписка с расчетного счета'
 else
  frVariables['Название'] := 'Кассовая книга';
 frVariables['Фильтр'] := lblFilter.Caption;
 sbPrintClick((Sender as TSpeedButton), ibsGen_ID, ibdsMainMovement)
end;

function TfrmManyMovement.GetWhereDeskAccouns: String;
begin
 Result := ''
end;

procedure TfrmManyMovement.dbgMovementCalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainMovement)
end;

procedure TfrmManyMovement.dbgMovementCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainMovement)
end;

procedure TfrmManyMovement.dbgMovementCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmManyMovement.dbgMovementTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainMovement, (GetKeyState(VK_CONTROL)<0),
                          nil, nil, GenerateSelectMainMovement)
end;

procedure TfrmManyMovement.ibdsCurrentAmountBeforeOpen(DataSet: TDataSet);
begin
 (DataSet as TIBDataSet).ParamByName('ID').AsInt64 := ibdsDeskAccounsID.Value
end;

end.
