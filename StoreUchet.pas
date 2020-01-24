unit StoreUchet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, wwdbdatetimepicker, Buttons, wwdblook, StdCtrls, Mask, wwdbedit,
  DBCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, IBSQL, IBDatabase,
  wwcheckbox, wwclearbuttongroup, wwradiogroup, Db, IBCustomDataSet, FR_Class;

type
  TfrmStoreUchet = class(TfrmLike)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton10: TSpeedButton;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    pnlText: TPanel;
    lblFilter: TLabel;
    sbShowFull: TSpeedButton;
    sbHideFull: TSpeedButton;
    pnlFilter: TPanel;
    Label42: TLabel;
    sbShow: TSpeedButton;
    deDateStart: TwwDBDateTimePicker;
    deDateStop: TwwDBDateTimePicker;
    edName: TwwDBLookupCombo;
    edArticul: TwwDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    lcStore: TwwDBLookupCombo;
    ibdsStores: TIBDataSet;
    ibdsStoresID: TLargeintField;
    ibdsStoresSTORE_NAME: TIBStringField;
    ibdsArticuls: TIBDataSet;
    ibdsStoresENTERPRISE_ID: TLargeintField;
    ibdsArticulsID: TLargeintField;
    ibdsArticulsNAME: TIBStringField;
    dsStores: TDataSource;
    ibdsMadeIn: TIBDataSet;
    ibdsMadeInMADE_IN: TIBStringField;
    dsArticuls: TDataSource;
    ibdsMainMovement: TIBDataSet;
    dsMainMovement: TDataSource;
    ibdsMainMovementPRIMARY_DATE: TDateField;
    ibdsMainMovementNUMBER_STR: TIBStringField;
    ibdsMainMovementNAME: TIBStringField;
    ibdsMainMovementPRICE: TFloatField;
    ibdsMainMovementDECIMALS: TSmallintField;
    ibdsMainMovementAMOUNT: TFloatField;
    ibdsMainMovementSETUP_NAME: TIBStringField;
    ibdsMainMovementCLOSE_DATE: TDateField;
    ibdsMainMovementPRICE_FMT: TStringField;
    ibdsMainMovementSYMBOL: TIBStringField;
    cbPeriod: TwwCheckBox;
    ibdsArticulsARTICUL: TIBStringField;
    pnlMessage: TPanel;
    ibdsMainMovementAMOUNT_AFTER: TFloatField;
    ibdsMainMovementID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure lcMadeInBeforeDropDown(Sender: TObject);
    procedure sbShowClick(Sender: TObject);
    procedure ibdsMainMovementCalcFields(DataSet: TDataSet);
    procedure ibdsMainMovementBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lcStoreChange(Sender: TObject);
    procedure sbHideFullClick(Sender: TObject);
    procedure ibdsStoresAfterOpen(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure edArticulExit(Sender: TObject);
    procedure ibdsMainMovementAfterOpen(DataSet: TDataSet);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure GenerateSelectMainMovement;
  public
    { Public declarations }
  end;

var
  frmStoreUchet: TfrmStoreUchet;

implementation

uses Main, DM, Misk, NaklIn, NaklOut;

{$R *.DFM}

var OrderByMainMovement  : String = ' 10 desc';

procedure TfrmStoreUchet.FormCreate(Sender: TObject);
 var ki : Integer;
begin
 lblFilter.Caption := '';
 FName := 'Складской учет';
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
 GenerateSelectMainMovement;
 deDateStart.Date := date;
 deDateStop.Date := date;
 ibdsStores.Open;
 ibdsArticuls.Open
end;

procedure TfrmStoreUchet.SpeedButton10Click(Sender: TObject);
begin
 Close
end;

procedure TfrmStoreUchet.lcMadeInBeforeDropDown(Sender: TObject);
begin
 ibdsMadeIn.Close;
 ibdsMadeIn.ParamByName('ARTICUL_ID').AsInt64 := ibdsArticulsID.AsLargeInt;
 ibdsMadeIn.Open
end;

procedure TfrmStoreUchet.sbShowClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainMovement.Bookmark;
 Cursor := crHourGlass;
 ibdsMainMovement.Close;
 ibdsMainMovement.Open;
 try
  ibdsMainMovement.Bookmark := BookMark
 except
 end;
 Cursor := crDefault;
 sbShow.Visible := False
end;

procedure TfrmStoreUchet.GenerateSelectMainMovement;
 var k : Integer;
begin
 If NOT (Black) then
  Begin
   ibdsMainMovement.SelectSQL[11] := '';
   ibdsMainMovement.SelectSQL[24] := '';
  End;
 For k := Pred(ibdsMainMovement.SelectSQL.Count) downto 25 do
  ibdsMainMovement.SelectSQL.Delete(k);
 ibdsMainMovement.SelectSQL.Add('order by'+OrderByMainMovement)
end;

procedure TfrmStoreUchet.ibdsMainMovementCalcFields(DataSet: TDataSet);
begin
 ibdsMainMovementPRICE_FMT.Value := FormatFloat('#,##0.'+StringOfChar('0',ibdsMainMovementDecimals.AsInteger)+ibdsMainMovementSYMBOL.AsString,ibdsMainMovementPRICE.AsFloat)
end;

procedure TfrmStoreUchet.ibdsMainMovementBeforeOpen(DataSet: TDataSet);
begin
 lblFilter.AutoSize := False;
 lblFilter.Caption := '';
 If (Black) then
  Begin
   ibdsMainMovement.SelectSQL[11] := 'and (PTIH.FAKE=0)';
   ibdsMainMovement.SelectSQL[24] := 'and (PTOH.FAKE=0)'
  End
 else
  Begin
   ibdsMainMovement.SelectSQL[11] := '';
   ibdsMainMovement.SelectSQL[24] := ''
  End;
 If (cbPeriod.Checked) then
  Begin
   ibdsMainMovement.SelectSQL[11] := ibdsMainMovement.SelectSQL[11]+' and (PTIH.PRIMARY_DATE between :START_DATE and :STOP_DATE)';
   ibdsMainMovement.SelectSQL[24] := ibdsMainMovement.SelectSQL[24]+' and (PTOH.PRIMARY_DATE between :START_DATE and :STOP_DATE)';
   ibdsMainMovement.ParamByName('START_DATE').AsDate := deDateStart.Date;
   ibdsMainMovement.ParamByName('STOP_DATE').AsDate := deDateStop.Date;
   lblFilter.Caption := 'За период с '+FormatDateTime('dd.mm.yyyyг.',deDateStart.Date)+' по '+FormatDateTime('dd.mm.yyyyг.',deDateStop.Date)+'; '
  End;
 ibdsMainMovement.ParamByName('ENTERPRISE_STORE_ID').AsInt64 := ibdsStoresID.Value;
 ibdsMainMovement.ParamByName('ARTICUL_ID').AsInt64 := ibdsArticulsID.Value;
 If (ibdsMadeInMADE_IN.IsNull) then
  ibdsMainMovement.ParamByName('MADE_IN').AsString := '-'
 else
  ibdsMainMovement.ParamByName('MADE_IN').AsString := ibdsMadeInMADE_IN.AsString;
 lblFilter.Caption := lblFilter.Caption+'Склад: '+ibdsStoresSTORE_NAME.AsString+' ;'+
                      'Товар: '+ibdsArticulsNAME.AsString+'; '+
                      'Производитель: '+ibdsMadeInMADE_IN.AsString;
 lblFilter.AutoSize := True
end;

procedure TfrmStoreUchet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 frmStoreUchet := nil
end;

procedure TfrmStoreUchet.lcStoreChange(Sender: TObject);
begin
 sbShow.Visible := True
end;

procedure TfrmStoreUchet.sbHideFullClick(Sender: TObject);
begin
 sbHideFull.Visible := Not sbHideFull.Visible;
 sbShowFull.Visible := Not sbShowFull.Visible;
 pnlText.Visible := False;
 pnlFilter.Visible := Not pnlFilter.Visible;
 pnlText.Visible := True
end;

procedure TfrmStoreUchet.ibdsStoresAfterOpen(DataSet: TDataSet);
begin
 lcStore.Text := ibdsStoresSTORE_NAME.AsString
end;

procedure TfrmStoreUchet.SpeedButton7Click(Sender: TObject);
begin
 ibdsMainMovement.First
end;

procedure TfrmStoreUchet.SpeedButton6Click(Sender: TObject);
begin
 ibdsMainMovement.Prior
end;

procedure TfrmStoreUchet.SpeedButton5Click(Sender: TObject);
begin
 ibdsMainMovement.Next
end;

procedure TfrmStoreUchet.SpeedButton4Click(Sender: TObject);
begin
 ibdsMainMovement.Last
end;

procedure TfrmStoreUchet.edArticulExit(Sender: TObject);
begin
 If (edArticul.Text<>ibdsArticulsARTICUL.AsString) then
  Begin
   ibdsArticuls.First;
   edName.Text := '';
   ibdsArticuls.Locate('ARTICUL',edArticul.Text,[])
  End
end;

procedure TfrmStoreUchet.ibdsMainMovementAfterOpen(DataSet: TDataSet);
 var Total : Double;
begin
 pnlMessage.Visible := True;
 Application.ProcessMessages;
 ibdsMainMovement.DisableControls;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select G.TOTAL_REAL AMOUNT from GOODS G');
 ibsGen_ID.SQL.Add('where (G.ARTICUL_ID='+ibdsArticulsID.AsString+') and (G.MADE_IN=''-'') and');
 ibsGen_ID.SQL.Add('(G.STORE_ID='+ibdsStoresID.AsString+')');
 ibsGen_ID.ExecQuery;
 Total := ibsGen_ID.FieldByName('AMOUNT').AsDouble;
 ibsGen_ID.Close;
 If (cbPeriod.Checked) then
  Begin
   ibsGen_ID.SQL.Clear;
   ibsGen_ID.SQL.Add('select SUM(PTIB.PACK_VALUE*PTIB.PACKS_AMOUNT+PTIB.ITEMS_AMOUNT) AMOUNT');
   ibsGen_ID.SQL.Add('from PRIMARY_TOVAR_INCOME_BODY PTIB, PRIMARY_TOVAR_INCOME_HEADER PTIH');
   ibsGen_ID.SQL.Add('where (PTIH.ID=PTIB.PRIMARI_TOVAR_INCOME_HEADER_ID) and');
   ibsGen_ID.SQL.Add('(PTIB.ARTICUL_ID='+ibdsArticulsID.AsString+') and (PTIB.MADE_IN=''-'') and');
   ibsGen_ID.SQL.Add('(PTIH.ENTERPRISE_STORE_ID='+ibdsStoresID.AsString+') and (PTIH.CLOSED=1)');
   If (Black) then
    ibsGen_ID.SQL.Add('and (PTIH.FAKE=0)');
   ibsGen_ID.SQL.Add('and (PTIH.PRIMARY_DATE>'#39+FormatDateTime('dd.mm.yyyy',deDateStop.Date)+#39')');
   ibsGen_ID.ExecQuery;
   Total := Total-ibsGen_ID.FieldByName('AMOUNT').AsDouble;
   ibsGen_ID.Close;
   ibsGen_ID.SQL.Clear;
   ibsGen_ID.SQL.Add('select SUM(PTOB.PACK_VALUE*PTOB.PACKS_AMOUNT+PTOB.ITEMS_AMOUNT) AMOUNT');
   ibsGen_ID.SQL.Add('from PRIMARY_TOVAR_OUTCOME_BODY PTOB, PRIMARY_TOVAR_OUTCOME_HEADER PTOH');
   ibsGen_ID.SQL.Add('where (PTOH.ID=PTOB.PRIMARY_TOVAR_OUTCOME_HEADER_ID) and');
   ibsGen_ID.SQL.Add('(PTOB.ARTICUL_ID='+ibdsArticulsID.AsString+') and (PTOB.MADE_IN=''-'') and');
   ibsGen_ID.SQL.Add('(PTOH.ENTERPRISE_STORE_ID='+ibdsStoresID.AsString+') and (PTOH.CLOSED=1)');
   If (Black) then
    ibsGen_ID.SQL.Add('and (PTOH.FAKE=0)');
   ibsGen_ID.SQL.Add('and (PTOH.PRIMARY_DATE>'#39+FormatDateTime('dd.mm.yyyy',deDateStop.Date)+#39')');
   ibsGen_ID.ExecQuery;
   Total := Total+ibsGen_ID.FieldByName('AMOUNT').AsDouble;
   ibsGen_ID.Close;
  End;
 While NOT (ibdsMainMovement.Eof) do
  Begin
   ibdsMainMovement.Edit;
   ibdsMainMovementAMOUNT_AFTER.Value := Total;
   Total := Total-ibdsMainMovementAMOUNT.AsFloat;
   ibdsMainMovement.Next
  End;
 ibdsMainMovement.First;
 ibdsMainMovement.EnableControls;
 pnlMessage.Visible := False
end;

procedure TfrmStoreUchet.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If (ibdsMainMovementAMOUNT.AsFloat>0) then
  AFont.Style := [fsBold]
 else
  AFont.Style := []
end;

procedure TfrmStoreUchet.SpeedButton1Click(Sender: TObject);
begin
 frVariables.Clear;
 frVariables['Filter'] := lblFilter.Caption;
 sbPrintClick((Sender as TSpeedButton), ibsGen_ID, ibdsMainMovement)
end;

procedure TfrmStoreUchet.wwDBGrid1DblClick(Sender: TObject);
begin
 If (ibdsMainMovementAMOUNT.Value>0) then
  Begin
   If (frmMain.FindComponent('frmNaklIn')=nil) then
    Begin
     Nakl_In_ID := ibdsMainMovementID.Value;
     frmNaklIn := TfrmNaklIn.Create(frmMain)
    End
   else
    Begin
     If (frmNaklIn.PageControl1.ActivePageIndex<>1) then
      frmNaklIn.PageControl1.ActivePageIndex := 1;
     frmNaklIn.PageControl1Change(PageControl1);
     frmNaklIn.ibdsMainPrimaryTovarIncome.Close;
     frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Close;
     frmNaklIn.ibdsMainPrimaryTovarIncome.ParamByName('ID').AsInt64 := ibdsMainMovementID.Value;
     frmNaklIn.ibdsMainPrimaryTovarIncome.Open;
     frmNaklIn.ibdsMainPrimaryTovarIncomeBody.Open
    End;
   frmNaklIn.Show
  End
 else
  Begin
   If (frmMain.FindComponent('frmNaklOut')=nil) then
    Begin
     Nakl_Out_ID := ibdsMainMovementID.Value;
     frmNaklOut := TfrmNaklOut.Create(frmMain)
    End
   else
    Begin
     If (frmNaklOut.PageControl1.ActivePageIndex<>1) then
      frmNaklOut.PageControl1.ActivePageIndex := 1;
     frmNaklOut.PageControl1Change(PageControl1);
     frmNaklOut.ibdsMainPrimaryTovarOutcome.Close;
     frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Close;
     frmNaklOut.ibdsMainPrimaryTovarOutcome.ParamByName('ID').AsInt64 := ibdsMainMovementID.Value;
     frmNaklOut.ibdsMainPrimaryTovarOutcome.Open;
     frmNaklOut.ibdsMainPrimaryTovarOutcomeBody.Open
    End;
   frmNaklOut.Show
  End
end;

end.
