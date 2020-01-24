unit Reasons;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ExtCtrls, wwdbdatetimepicker, Buttons, wwdblook, StdCtrls, Mask,
  wwdbedit, DBCtrls, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, Wwdotdot, Variants,
  Wwdbcomb, IBDatabase, Db, IBCustomDataSet, IBSQL, ImgList, wwriched,
  wwrichedspell, Wwdbspin, RzTreeVw, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMemo, cxDBEdit, RzPanel, RzSplit, cxStyles,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGridLevel, cxGrid,
  cxGridDBTableView, cxGraphics, cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TfrmReasons = class(TfrmLike)
    PageControl1: TPageControl;
    tsPrimary: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlDetailPrimary: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Panel4: TPanel;
    sbCancelPrimary: TSpeedButton;
    sbApplyPrimary: TSpeedButton;
    sbDeletePrimary: TSpeedButton;
    sbAddPrimary: TSpeedButton;
    sbLastPrimary: TSpeedButton;
    sbNextPrimary: TSpeedButton;
    sbPriorPrimary: TSpeedButton;
    sbFirstPrimary: TSpeedButton;
    SpeedButton9: TSpeedButton;
    sbExit: TSpeedButton;
    tsMain: TTabSheet;
    Panel10: TPanel;
    sbCancelMain: TSpeedButton;
    sbApplyMain: TSpeedButton;
    sbDeleteMain: TSpeedButton;
    sbAddMain: TSpeedButton;
    sbLastMain: TSpeedButton;
    sbNextMain: TSpeedButton;
    sbPriorMain: TSpeedButton;
    sbFirstMain: TSpeedButton;
    SpeedButton20: TSpeedButton;
    sbExitMain: TSpeedButton;
    wwDBEdit11: TwwDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    wwDBLookupCombo2: TwwDBLookupCombo;
    chbLastBuyPrice: TDBCheckBox;
    Panel3: TPanel;
    Panel5: TPanel;
    dbgMain: TwwDBGrid;
    Panel6: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    wwDBEdit1: TwwDBEdit;
    DBCheckBox7: TDBCheckBox;
    wwDBComboBox4: TwwDBComboBox;
    ibdsMainPrimary: TIBDataSet;
    dsMainPrimary: TDataSource;
    ibdsEnterprises: TIBDataSet;
    ibdsMainPrimaryID: TLargeintField;
    ibdsMainPrimaryENTERPRISE_NAME: TIBStringField;
    ibdsMainPrimaryINVOICE_ID_DEFAULT: TLargeintField;
    ibdsMainPrimaryNAME: TIBStringField;
    ibdsMainPrimaryIN_OUT: TIntegerField;
    ibdsMainPrimaryMOVEMENT_TYPE: TIntegerField;
    ibdsMainPrimaryNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsMainPrimaryBLACK_DEFAULT: TIntegerField;
    ibdsMainPrimarySECURITY_LEVEL: TIntegerField;
    ibdsMainPrimaryCURRENCY_ID_DEFAULT: TLargeintField;
    ibdsMainPrimaryCURRENCY_NAME: TIBStringField;
    ibdsMainPrimarySET_NEW_COST: TIntegerField;
    ibdsMainPrimaryTAKE_NSP: TIntegerField;
    ibdsMainPrimaryPRICE_FORMULA: TIBStringField;
    ibdsMainPrimaryBLACK: TIntegerField;
    ibdsMainPrimaryVALID: TIntegerField;
    ibdsMainPrimaryCOMMENTS: TIBStringField;
    ibdsEnterprisesID: TLargeintField;
    ibdsEnterprisesNAME: TIBStringField;
    ibsWhite: TIBSQL;
    ibdsCurrency: TIBDataSet;
    ibdsCurrencyID: TLargeintField;
    ibdsCurrencyNAME: TIBStringField;
    ibdsMainPrimaryDEFAULT_INVOICE_DATE: TDateField;
    ibdsInvoices: TIBDataSet;
    ibdsInvoicesNAME: TIBStringField;
    ibdsInvoicesID: TLargeintField;
    ibdsInvoicesNUMBER: TIBStringField;
    ibdsInvoicesINVOICE_DATE: TDateField;
    dbcbPrimaryNumberFormat: TwwDBComboBox;
    Label15: TLabel;
    ibdsMainPrimaryNUMBER_PREFIX: TIBStringField;
    ibdsMainPrimaryNUMBER_SUFFIX: TIBStringField;
    DBRadioGroup3: TDBRadioGroup;
    Label19: TLabel;
    Label20: TLabel;
    wwDBComboBox9: TwwDBComboBox;
    ibdsMainMain: TIBDataSet;
    ibdsMainMainENTERPRISE_NAME: TIBStringField;
    ibdsMainMainNAME: TIBStringField;
    ibdsMainMainIN_OUT: TIntegerField;
    dsMainMain: TDataSource;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBComboBox10: TwwDBComboBox;
    wwDBLookupCombo5: TwwDBLookupCombo;
    ibdsMainPrimaryInvoiceFullName: TStringField;
    ibdsMainMainID: TLargeintField;
    ibdsMainMainENTERPRISE_ID: TLargeintField;
    ibdsMainMainCONTRACT_ID_DEFAULT: TLargeintField;
    ibdsMainMainVALID_PERIOD: TSmallintField;
    ibdsMainMainNUMBER_PREFIX: TIBStringField;
    ibdsMainMainNUMBER_SUFFIX: TIBStringField;
    ibdsMainMainNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsMainMainBLACK_DEFAULT: TIntegerField;
    ibdsMainMainCURRENCY_ID_DEFAULT: TLargeintField;
    ibdsMainMainCURRENCY_NAME: TIBStringField;
    ibdsMainMainSECURITY_LEVEL: TIntegerField;
    ibdsMainMainPRICE_FORMULA: TIBStringField;
    ibdsMainMainBLACK: TIntegerField;
    ibdsMainMainVALID: TIntegerField;
    ibdsMainMainCOMMENTS: TIBStringField;
    wwDBComboBox6: TwwDBComboBox;
    ibdsMainPrimaryNUMBER_FORMAT: TIntegerField;
    ibdsMainMainNUMBER_FORMAT: TIntegerField;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox3: TwwDBComboBox;
    Label8: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    wwDBSpinEdit2: TwwDBSpinEdit;
    pnlNumberFormat: TPanel;
    sbDate: TSpeedButton;
    sbMonth: TSpeedButton;
    sbYear: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ibdsMainPrimaryDEFAULT_INVOICE_PREFIX: TIBStringField;
    ibdsMainPrimaryDEFAULT_INVOICE_NMB: TIntegerField;
    ibdsMainPrimaryDEFAULT_INVOICE_SUFFIX: TIBStringField;
    ibdsMainPrimaryDEFAULT_INVOICE_NUMBER: TStringField;
    ibdsInvoicesINVOICE_PREFIX: TIBStringField;
    ibdsInvoicesINVOICE_NUMBER: TIntegerField;
    ibdsInvoicesINVOICE_SUFFIX: TIBStringField;
    pnlReasonTypes: TRzSizePanel;
    dbmComments: TcxDBMemo;
    trReasonTypes: TRzTreeView;
    dbgPrimary: TcxGrid;
    glPrimary: TcxGridLevel;
    tvPrimary: TcxGridDBTableView;
    tvPrimaryENTERPRISE_ID: TcxGridDBColumn;
    tvPrimaryNAME: TcxGridDBColumn;
    tvPrimarySECURITY_LEVEL: TcxGridDBColumn;
    tvPrimaryBLACK: TcxGridDBColumn;
    tvPrimaryVALID: TcxGridDBColumn;
    tvPrimaryNUMBER_FORMAT: TcxGridDBColumn;
    dsEnterprises: TDataSource;
    ibdsMainPrimaryENTERPRISE_ID: TIntegerField;
    ibdsMainPrimaryREASON_TYPE: TIntegerField;
    ibdsMainPrimaryMOVEMENT_TYPE_NEW: TIntegerField;
    ibdsMainPrimaryPAYMENT_TYPE: TIntegerField;
    cxGridPopupMenu1: TcxGridPopupMenu;
    procedure FormCreate(Sender: TObject);
    procedure sbExitContractsClick(Sender: TObject);
    procedure ibdsMainPrimaryAfterScroll(DataSet: TDataSet);
    procedure sbFirstPrimaryClick(Sender: TObject);
    procedure sbPriorPrimaryClick(Sender: TObject);
    procedure sbNextPrimaryClick(Sender: TObject);
    procedure sbLastPrimaryClick(Sender: TObject);
    procedure sbAddPrimaryClick(Sender: TObject);
    procedure sbDeletePrimaryClick(Sender: TObject);
    procedure sbCancelPrimaryClick(Sender: TObject);
    procedure sbApplyPrimaryClick(Sender: TObject);
    procedure dsMainPrimaryStateChange(Sender: TObject);
    procedure ibdsMainPrimaryNewRecord(DataSet: TDataSet);
    procedure dbgPrimaryCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgPrimaryCalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgPrimaryCreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure dbgPrimaryTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure ibdsMainPrimaryUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure dsMainPrimaryDataChange(Sender: TObject; Field: TField);
    procedure sbNumberClick(Sender: TObject);
    procedure dbcbPrimaryNumberFormatDropDown(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainPrimaryCalcFields(DataSet: TDataSet);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo5CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainMainAfterScroll(DataSet: TDataSet);
    procedure sbFirstMainClick(Sender: TObject);
    procedure sbPriorMainClick(Sender: TObject);
    procedure sbNextMainClick(Sender: TObject);
    procedure sbLastMainClick(Sender: TObject);
    procedure sbAddMainClick(Sender: TObject);
    procedure sbDeleteMainClick(Sender: TObject);
    procedure sbCancelMainClick(Sender: TObject);
    procedure sbApplyMainClick(Sender: TObject);
    procedure ibdsMainMainNewRecord(DataSet: TDataSet);
    procedure ibdsMainMainUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure dsMainMainDataChange(Sender: TObject; Field: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure ibdsInvoicesCalcFields(DataSet: TDataSet);
    procedure trReasonTypesDeletion(Sender: TObject; Node: TTreeNode);
    procedure tvPrimaryCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure trReasonTypesChange(Sender: TObject; Node: TTreeNode);
    procedure ibdsMainPrimaryFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ibdsMainPrimaryBeforeInsert(DataSet: TDataSet);
    procedure trReasonTypesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure trReasonTypesDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure ibdsMainPrimaryREASON_TYPEChange(Sender: TField);
  private
    { Private declarations }
    function GetWherePrimary: String;
    procedure GenerateSelectMainPrimary;
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereMain: String;
    procedure GenerateSelectMainMain;
    procedure SetDataSources;
  public
    { Public declarations }
  end;

var
  frmReasons: TfrmReasons;

implementation

uses Misk, DM, Main;

{$R *.DFM}

var
  OrderByPrimary  : String = ' 7 asc';
  WhereSqlPrimary : String = '(PS.ENTERPRISE_ID=E.ID)';

  OrderByMain  : String = ' 7 asc';
  WhereSqlMain : String = '(InS.ENTERPRISE_ID=E.ID)';

  DS : TwwDBComboBox;

  ContractBLACK : Integer = 0;
  Saving : Boolean = False;

procedure TfrmReasons.FormCreate(Sender: TObject);
 var ki : Integer;
begin
 FName := 'Основания';
 PageControl1.ActivePageIndex := 0;
 inherited;
 GenerateReasonsTree(trReasonTypes);
 If NOT (Black) then
  Begin
   ibdsMainPrimary.Database := frmDM.dbWhite;
   ibdsMainMain.Database := frmDM.dbWhite;
   ibdsEnterprises.Database := frmDM.dbWhite;
   ibdsCurrency.Database := frmDM.dbWhite;
   ibdsInvoices.Database := frmDM.dbWhite;
   ki := 0;
   While (ki<Pred(ComponentCount)) do
    Begin
     If (Components[ki].Tag=99) then
      Components[ki].Free;
     Inc(ki)
    End;
   ibdsMainPrimary.InsertSQL.Clear;
   ibdsMainPrimary.InsertSQL.Add('insert into PRIMARY_SETUP (ID, ENTERPRISE_ID, INVOICE_ID_DEFAULT, NAME, IN_OUT,');
   ibdsMainPrimary.InsertSQL.Add('MOVEMENT_TYPE, NUMBER_PREFIX, NUMBER_FORMAT, NUMBER_SUFFIX, NUMBER_RESTART_PERIOD, SECURITY_LEVEL,');
   ibdsMainPrimary.InsertSQL.Add('CURRENCY_ID_DEFAULT, SET_NEW_COST, TAKE_NSP, PRICE_FORMULA, VALID, COMMENTS)');
   ibdsMainPrimary.InsertSQL.Add('values (:ID, :ENTERPRISE_ID, :INVOICE_ID_DEFAULT, :NAME, :IN_OUT,');
   ibdsMainPrimary.InsertSQL.Add(':MOVEMENT_TYPE, :NUMBER_PREFIX, :NUMBER_FORMAT, :NUMBER_SUFFIX, :NUMBER_RESTART_PERIOD, :SECURITY_LEVEL,');
   ibdsMainPrimary.InsertSQL.Add(':CURRENCY_ID_DEFAULT, :SET_NEW_COST, :TAKE_NSP, :PRICE_FORMULA, :VALID, :COMMENTS)');
   ibdsMainPrimary.ModifySQL[11] := '';
   ibdsMainPrimary.ModifySQL[17] := '';
   ibdsMainPrimary.RefreshSQL.Clear;
   ibdsMainPrimary.RefreshSQL.Add('select PS.ID, PS.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME, PS.INVOICE_ID_DEFAULT, I.NUMBER DEFAULT_INVOICE_NUMBER,');
   ibdsMainPrimary.RefreshSQL.Add('I.INVOICE_DATE DEFAULT_INVOICE_DATE, PS.NAME, PS.IN_OUT, PS.MOVEMENT_TYPE, PS.NUMBER_PREFIX, PS.NUMBER_FORMAT, PS.NUMBER_SUFFIX, PS.NUMBER_RESTART_PERIOD,');
   ibdsMainPrimary.RefreshSQL.Add('PS.SECURITY_LEVEL, PS.CURRENCY_ID_DEFAULT, C.NAME CURRENCY_NAME, PS.SET_NEW_COST, PS.TAKE_NSP,');
   ibdsMainPrimary.RefreshSQL.Add('PS.PRICE_FORMULA, PS.VALID, PS.COMMENTS from ENTERPRISES E, (PRIMARY_SETUP PS left outer join INVOICE_HEADER I on');
   ibdsMainPrimary.RefreshSQL.Add('(PS.INVOICE_ID_DEFAULT=I.ID)) left outer join CURRENCY C on (PS.CURRENCY_ID_DEFAULT=C.ID)');
   ibdsMainPrimary.RefreshSQL.Add('where PS.ID = :ID');
   ibdsMainMain.InsertSQL[3] := '';
   ibdsMainMain.InsertSQL[5] := '';
   ibdsMainMain.InsertSQL[10] := '';
   ibdsMainMain.InsertSQL[12] := '';
   ibdsMainMain.ModifySQL[11] := '';
   ibdsMainMain.ModifySQL[16] := '';
   ibdsMainMain.RefreshSQL[5] := '';
   ibdsMainMain.RefreshSQL[8] := '';
  End;
 trMain.StartTransaction;
 GenerateSelectMainPrimary;
 GenerateSelectMainMain;
 ibdsMainPrimary.Open;
 ibdsMainMain.Open;
 ibdsEnterprises.Open;
 ibdsInvoices.Open;
 SetDataSources
end;

procedure TfrmReasons.sbExitContractsClick(Sender: TObject);
begin
 Close;
 frmReasons := nil
end;

procedure TfrmReasons.ibdsMainPrimaryAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmReasons,'Primary')
end;

procedure TfrmReasons.sbFirstPrimaryClick(Sender: TObject);
begin
 ibdsMainPrimary.First
end;

procedure TfrmReasons.sbPriorPrimaryClick(Sender: TObject);
begin
 ibdsMainPrimary.Prior
end;

procedure TfrmReasons.sbNextPrimaryClick(Sender: TObject);
begin
 ibdsMainPrimary.Next
end;

procedure TfrmReasons.sbLastPrimaryClick(Sender: TObject);
begin
 ibdsMainPrimary.Last
end;

procedure TfrmReasons.sbAddPrimaryClick(Sender: TObject);
begin
 ibdsMainPrimary.Append
end;

procedure TfrmReasons.sbDeletePrimaryClick(Sender: TObject);
begin
 ibdsMainPrimary.Delete;
 StteChange('Primary', True)
end;

procedure TfrmReasons.sbCancelPrimaryClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPrimary.Bookmark;
 ibdsMainPrimary.CancelUpdates;
 StteChange('Primary', False);
 try
  ibdsMainPrimary.Bookmark := BookMark
 except
 end
end;

procedure TfrmReasons.sbApplyPrimaryClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPrimary.Bookmark;
 try
  PostIfNeeded(ibdsMainPrimary);
  ibdsMainPrimary.DisableControls;
  Saving := True;
  ibdsMainPrimary.Last;
  ibdsMainPrimary.First;
  ibdsMainPrimary.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Primary', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 Saving := False;
 ibdsMainPrimary.Close;
 ibdsMainPrimary.Open;
 ibdsMainPrimary.EnableControls;
 try
  ibdsMainPrimary.Bookmark := BookMark
 except
 end;
end;

procedure TfrmReasons.dsMainPrimaryStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
 else
  StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmReasons.ibdsMainPrimaryNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_PRIMARY_SETUP,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainPrimaryID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainPrimaryENTERPRISE_ID.Value := -1;
 ibdsMainPrimaryENTERPRISE_NAME.Value := 'ВСЕ ПРЕДПРИЯТИЯ';
 If (Black) then
  Begin
   ibdsMainPrimaryBLACK_DEFAULT.Value := 0;
   ibdsMainPrimaryBLACK.Value := 0
  End;
 ibdsMainPrimarySECURITY_LEVEL.Value := 1;
 ibdsMainPrimaryVALID.Value := 1;
 ibdsMainPrimaryREASON_TYPE.Value := PReasonsRec(trReasonTypes.Selected.Data)^.ReasonType;
 ibdsMainPrimaryMOVEMENT_TYPE_NEW.Value := PReasonsRec(trReasonTypes.Selected.Data)^.MovementType;
 ibdsMainPrimaryPAYMENT_TYPE.Value := PReasonsRec(trReasonTypes.Selected.Data)^.PaymentType;
 ibdsMainPrimaryIN_OUT.Value := PReasonsRec(trReasonTypes.Selected.Data)^.InOut;
 ibdsMainPrimaryNUMBER_RESTART_PERIOD.Value := 6;
 ibdsMainPrimarySET_NEW_COST.Value := 0;
 ibdsMainPrimaryTAKE_NSP.Value := 0
end;

procedure TfrmReasons.dbgPrimaryCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If (not Highlight) and ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('Valid').AsInteger=0) then
  ABrush.Color := clSilver
end;

procedure TfrmReasons.dbgPrimaryCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByPrimary);
  2: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMain)
 end
end;

procedure TfrmReasons.dbgPrimaryCreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmReasons.dbgPrimaryTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMain, (GetKeyState(VK_CONTROL)<0),
                          sbApplyMain, sbCancelMain, GenerateSelectMainMain)
end;

function TfrmReasons.GetWherePrimary: String;
begin
 Result := '(PS.ENTERPRISE_ID=E.ID)'
end;

function TfrmReasons.GetWhereMain: String;
begin
 Result := '(InS.ENTERPRISE_ID=E.ID)'
end;

procedure TfrmReasons.ibdsMainPrimaryUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   If (UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (ibdsMainPrimaryBLACK.OldValue=1) and (ibdsMainPrimaryBLACK.NewValue=0)) then
    Begin
     ibsWhite.SQL.Add('insert into PRIMARY_SETUP (ID, ENTERPRISE_ID, INVOICE_ID_DEFAULT, NAME, IN_OUT,');
     ibsWhite.SQL.Add('MOVEMENT_TYPE, NUMBER_PREFIX, NUMBER_FORMAT, NUMBER_SUFFIX, NUMBER_RESTART_PERIOD, SECURITY_LEVEL,');
     ibsWhite.SQL.Add('CURRENCY_ID_DEFAULT, SET_NEW_COST, TAKE_NSP, PRICE_FORMULA, VALID, COMMENTS, REASON_TYPE, MOVEMENT_TYPE_NEW, PAYMENT_TYPE)');
     ibsWhite.SQL.Add('values (:ID, :ENTERPRISE_ID, :INVOICE_ID_DEFAULT, :NAME, :IN_OUT,');
     ibsWhite.SQL.Add(':MOVEMENT_TYPE, :NUMBER_PREFIX, :NUMBER_FORMAT, :NUMBER_SUFFIX, :NUMBER_RESTART_PERIOD, :SECURITY_LEVEL,');
     ibsWhite.SQL.Add(':CURRENCY_ID_DEFAULT, :SET_NEW_COST, :TAKE_NSP, :PRICE_FORMULA, :VALID, :COMMENTS, :REASON_TYPE, :MOVEMENT_TYPE_NEW, :PAYMENT_TYPE)')
    End
   else
    If (UpdateKind=ukModify) and (ibdsMainPrimaryBLACK.OldValue=0) and (ibdsMainPrimaryBLACK.NewValue=0) then
     Begin
      ibsWhite.SQL.AddStrings(ibdsMainPrimary.ModifySQL);
      ibsWhite.SQL[11] := '';
      ibsWhite.SQL[17] := '';
      ibsWhite.SQL[19] := '  COMMENTS = :COMMENTS'
     End
    else
     If (UpdateKind=ukDelete) or ((UpdateKind=ukModify) and (ibdsMainPrimaryBLACK.OldValue=0) and (ibdsMainPrimaryBLACK.NewValue=1)) then
      Begin
       ibsWhite.SQL.AddStrings(ibdsMainPrimary.DeleteSQL)
      End;
   ibsWhite.GenerateParamNames := True;
   If ((UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (ibdsMainPrimaryBLACK.OldValue=1) and (ibdsMainPrimaryBLACK.NewValue=0))) or
      ((UpdateKind=ukModify) and (ibdsMainPrimaryBLACK.OldValue=0) and (ibdsMainPrimaryBLACK.NewValue=0)) then
    Begin
     ibsWhite.ParamByName('ENTERPRISE_ID').AsInteger := ibdsMainPrimaryENTERPRISE_ID.Value;
     If (ibdsMainPrimaryINVOICE_ID_DEFAULT.IsNull) then
      ibsWhite.ParamByName('INVOICE_ID_DEFAULT').Value := null
     else
      ibsWhite.ParamByName('INVOICE_ID_DEFAULT').AsInt64 := ibdsMainPrimaryINVOICE_ID_DEFAULT.Value;
     ibsWhite.ParamByName('NAME').Value := ibdsMainPrimaryNAME.AsVariant;
     ibsWhite.ParamByName('IN_OUT').Value := ibdsMainPrimaryIN_OUT.AsVariant;
     ibsWhite.ParamByName('MOVEMENT_TYPE').Value := ibdsMainPrimaryMOVEMENT_TYPE.AsVariant;
     ibsWhite.ParamByName('REASON_TYPE').Value := ibdsMainPrimaryREASON_TYPE.AsVariant;
     ibsWhite.ParamByName('MOVEMENT_TYPE_NEW').Value := ibdsMainPrimaryMOVEMENT_TYPE_NEW.AsVariant;
     ibsWhite.ParamByName('PAYMENT_TYPE').Value := ibdsMainPrimaryPAYMENT_TYPE.AsVariant;
     ibsWhite.ParamByName('NUMBER_PREFIX').Value := ibdsMainPrimaryNUMBER_PREFIX.AsVariant;
     ibsWhite.ParamByName('NUMBER_FORMAT').Value := ibdsMainPrimaryNUMBER_FORMAT.AsVariant;
     ibsWhite.ParamByName('NUMBER_SUFFIX').Value := ibdsMainPrimaryNUMBER_SUFFIX.AsVariant;
     ibsWhite.ParamByName('NUMBER_RESTART_PERIOD').Value := ibdsMainPrimaryNUMBER_RESTART_PERIOD.AsVariant;
     ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsMainPrimarySECURITY_LEVEL.AsVariant;
     If (ibdsMainPrimaryCURRENCY_ID_DEFAULT.IsNull) then
      ibsWhite.ParamByName('CURRENCY_ID_DEFAULT').Value := null
     else
      ibsWhite.ParamByName('CURRENCY_ID_DEFAULT').AsInt64 := ibdsMainPrimaryCURRENCY_ID_DEFAULT.Value;
     ibsWhite.ParamByName('SET_NEW_COST').Value := ibdsMainPrimarySET_NEW_COST.AsVariant;
     ibsWhite.ParamByName('TAKE_NSP').Value := ibdsMainPrimaryTAKE_NSP.AsVariant;
     ibsWhite.ParamByName('PRICE_FORMULA').Value := ibdsMainPrimaryPRICE_FORMULA.AsVariant;
     ibsWhite.ParamByName('VALID').Value := ibdsMainPrimaryVALID.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainPrimaryCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (ibdsMainPrimaryBLACK.OldValue=1) and (ibdsMainPrimaryBLACK.NewValue=0)) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainPrimaryID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainPrimaryID.Value;
   ibsWhite.ExecQuery
  End
end;

procedure TfrmReasons.wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainPrimaryCURRENCY_ID_DEFAULT.Value := ibdsCurrencyID.Value
end;

procedure TfrmReasons.GenerateSelectMainPrimary;
begin
 WhereSqlPrimary := GetWherePrimary;
 ibdsMainPrimary.SelectSQL.Clear;
 ibdsMainPrimary.SelectSQL.Add('select PS.ID, cast(PS.ENTERPRISE_ID as INTEGER) ENTERPRISE_ID, E.NAME ENTERPRISE_NAME,');
 ibdsMainPrimary.SelectSQL.Add('PS.INVOICE_ID_DEFAULT, I.NUMBER_PREFIX DEFAULT_INVOICE_PREFIX, I.NUMBER DEFAULT_INVOICE_NMB, I.NUMBER_SUFFIX DEFAULT_INVOICE_SUFFIX,');
 ibdsMainPrimary.SelectSQL.Add('I.INVOICE_DATE DEFAULT_INVOICE_DATE, PS.NAME, PS.IN_OUT,');
 ibdsMainPrimary.SelectSQL.Add('PS.MOVEMENT_TYPE, PS.NUMBER_PREFIX, PS.NUMBER_FORMAT, PS.NUMBER_SUFFIX, PS.NUMBER_RESTART_PERIOD,');
 If (Black) then
  ibdsMainPrimary.SelectSQL.Add('PS.BLACK_DEFAULT,');
 ibdsMainPrimary.SelectSQL.Add('PS.SECURITY_LEVEL, PS.CURRENCY_ID_DEFAULT,');
 ibdsMainPrimary.SelectSQL.Add('C.NAME CURRENCY_NAME, PS.SET_NEW_COST, PS.TAKE_NSP,');
 ibdsMainPrimary.SelectSQL.Add('PS.PRICE_FORMULA,');
 If (Black) then
  ibdsMainPrimary.SelectSQL.Add('PS.BLACK,');
 ibdsMainPrimary.SelectSQL.Add('PS.VALID, PS.COMMENTS, PS.REASON_TYPE, PS.MOVEMENT_TYPE_NEW, PS.PAYMENT_TYPE');
 ibdsMainPrimary.SelectSQL.Add('from ENTERPRISES E,');
 ibdsMainPrimary.SelectSQL.Add('(PRIMARY_SETUP PS left outer join INVOICE_HEADER I on');
 ibdsMainPrimary.SelectSQL.Add('(PS.INVOICE_ID_DEFAULT=I.ID)) left outer join CURRENCY C on');
 ibdsMainPrimary.SelectSQL.Add('(PS.CURRENCY_ID_DEFAULT=C.ID)');
 ibdsMainPrimary.SelectSQL.Add('where '+WhereSqlPrimary);
 ibdsMainPrimary.SelectSQL.Add('order by'+OrderByPrimary)
end;

procedure TfrmReasons.GenerateSelectMainMain;
begin
 WhereSqlMain := GetWhereMain;
 ibdsMainMain.SelectSQL.Clear;
 ibdsMainMain.SelectSQL.Add('select InS.ID, InS.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME,');
 ibdsMainMain.SelectSQL.Add('InS.CONTRACT_ID_DEFAULT,');
 ibdsMainMain.SelectSQL.Add('InS.NAME,');
 ibdsMainMain.SelectSQL.Add('InS.IN_OUT, InS.VALID_PERIOD, InS.NUMBER_PREFIX,');
 ibdsMainMain.SelectSQL.Add('InS.NUMBER_FORMAT, InS.NUMBER_SUFFIX, InS.NUMBER_RESTART_PERIOD,');
 If (Black) then
  ibdsMainMain.SelectSQL.Add('InS.BLACK_DEFAULT,');
 ibdsMainMain.SelectSQL.Add('InS.CURRENCY_ID_DEFAULT, C.NAME CURRENCY_NAME,');
 ibdsMainMain.SelectSQL.Add('InS.SECURITY_LEVEL, InS.PRICE_FORMULA,');
 If (Black) then
  ibdsMainMain.SelectSQL.Add('InS.BLACK,');
 ibdsMainMain.SelectSQL.Add('InS.VALID, InS.COMMENTS');
 ibdsMainMain.SelectSQL.Add('from  ENTERPRISES E join INVOICE_SETUP InS on (InS.ENTERPRISE_ID=E.ID)');
 ibdsMainMain.SelectSQL.Add('join (USERS U join USER_RIGHTS_FOR_INVOICE UR on (U.PERSON_ID=:PERSON_ID) and (UR.USER_ID=U.ID)) on (U.SECURITY_LEVEL!<InS.SECURITY_LEVEL) and (UR.INVOICE_SETUP_ID=InS.ID)');
 ibdsMainMain.SelectSQL.Add('left outer join CURRENCY C on (InS.CURRENCY_ID_DEFAULT=C.ID)');
 If (WhereSqlMain<>'') then
  ibdsMainMain.SelectSQL.Add('where '+WhereSqlMain);
 ibdsMainMain.SelectSQL.Add('group by InS.ID, InS.ENTERPRISE_ID, E.NAME, InS.CONTRACT_ID_DEFAULT, InS.NAME, InS.IN_OUT,');
 ibdsMainMain.SelectSQL.Add('InS.VALID_PERIOD, InS.NUMBER_PREFIX, InS.NUMBER_FORMAT, InS.NUMBER_SUFFIX,');
 ibdsMainMain.SelectSQL.Add('InS.NUMBER_RESTART_PERIOD, InS.BLACK_DEFAULT, InS.CURRENCY_ID_DEFAULT, C.NAME,');
 ibdsMainMain.SelectSQL.Add('InS.SECURITY_LEVEL, InS.PRICE_FORMULA, InS.BLACK, InS.VALID, InS.COMMENTS');
 ibdsMainMain.SelectSQL.Add('order by'+OrderByMain);
 ibdsMainMain.ParamByName('PERSON_ID').Value := PersonID
end;

procedure TfrmReasons.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
begin
 If (frmReasons<>nil) then
  For k := 0 to Pred(frmReasons.ComponentCount) do
   Begin
    If (frmReasons.Components[k].Name='sbApply'+Suf) or
       (frmReasons.Components[k].Name='sbCancel'+Suf) then
     (frmReasons.Components[k] as TControl).Enabled := Enabled;
    If (frmReasons.Components[k] is TTabSheet) and
       (frmReasons.Components[k].Name<>'ts'+Suf) then
     (frmReasons.Components[k] as TTabSheet).TabVisible := NOT Enabled
   End
end;

procedure TfrmReasons.dsMainPrimaryDataChange(Sender: TObject;
  Field: TField);
 var Many, Income : Boolean;
begin
 If (Black) then
  Begin
   If (ibdsMainPrimaryBLACK.Value=1) and (ibdsMainPrimaryBLACK_DEFAULT.Value<>1) then
    Begin
     If NOT (dsMainPrimary.State in [dsEdit,dsInsert]) then
      ibdsMainPrimary.Edit;
     ibdsMainPrimaryBLACK_DEFAULT.Value := 1
    End;
   DBCheckBox1.Enabled := (ibdsMainPrimaryBLACK.Value<>1)
  End;
 Many := (ibdsMainPrimaryMOVEMENT_TYPE.AsInteger in [1,2]);
 Income := (ibdsMainPrimaryIN_OUT.AsInteger=2);
 chbLastBuyPrice.Visible := Income and NOT Many
end;

procedure TfrmReasons.sbNumberClick(Sender: TObject);
 var Sl : String;
begin
 Sl := '';
 If NOT (DS.DataSource.DataSet.State in [dsEdit,dsInsert]) then
  DS.DataSource.DataSet.Edit;
 Case (Sender as TComponent).Tag of
  11 : Sl := 'дд';
  12 : Sl := 'мм';
  14 : Sl := 'гггг';
 end;
 DS.DataSource.DataSet.FieldByName(DS.DataField).Value := DS.Text+Sl
end;

procedure TfrmReasons.dbcbPrimaryNumberFormatDropDown(Sender: TObject);
begin
 DS := Sender as TwwDBComboBox;
 pnlNumberFormat.Parent := (Sender as TwwDBComboBox).Parent;
 pnlNumberFormat.Top := (Sender as TwwDBComboBox).Top+(Sender as TwwDBComboBox).Height-1;
 pnlNumberFormat.Left := (Sender as TwwDBComboBox).Left;
 pnlNumberFormat.Width := (Sender as TwwDBComboBox).Width;
 pnlNumberFormat.Show
end;

procedure TfrmReasons.SpeedButton4Click(Sender: TObject);
begin
 pnlNumberFormat.Hide
end;

procedure TfrmReasons.wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainMainCURRENCY_ID_DEFAULT.Value := ibdsCurrencyID.Value
end;

procedure TfrmReasons.ibdsMainPrimaryCalcFields(DataSet: TDataSet);
begin
 ibdsMainPrimaryDEFAULT_INVOICE_NUMBER.Value := ibdsMainPrimaryDEFAULT_INVOICE_PREFIX.AsString+
                                                ibdsMainPrimaryDEFAULT_INVOICE_NMB.AsString+
                                                ibdsMainPrimaryDEFAULT_INVOICE_SUFFIX.AsString;
 If (ibdsMainPrimaryDEFAULT_INVOICE_NUMBER.Value<>'') then
  ibdsMainPrimaryInvoiceFullName.Value := 'Счет № '+ ibdsMainPrimaryDEFAULT_INVOICE_NUMBER.AsString+
                                          ' от '+FormatDateTime('dd.mm.yyyy',ibdsMainPrimaryDEFAULT_INVOICE_DATE.AsDateTime)
end;

procedure TfrmReasons.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainPrimaryINVOICE_ID_DEFAULT.Value := ibdsInvoicesID.Value;
   ibdsMainPrimaryDEFAULT_INVOICE_NUMBER.Value := ibdsInvoicesNUMBER.Value;
   ibdsMainPrimaryDEFAULT_INVOICE_DATE.Value := ibdsInvoicesINVOICE_DATE.Value
  End
end;

procedure TfrmReasons.wwDBLookupCombo5CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainMainENTERPRISE_ID.Value := ibdsEnterprisesID.Value
end;

procedure TfrmReasons.ibdsMainMainAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmReasons,'Main')
end;

procedure TfrmReasons.sbFirstMainClick(Sender: TObject);
begin
 ibdsMainMain.First
end;

procedure TfrmReasons.sbPriorMainClick(Sender: TObject);
begin
 ibdsMainMain.Prior
end;

procedure TfrmReasons.sbNextMainClick(Sender: TObject);
begin
 ibdsMainMain.Next
end;

procedure TfrmReasons.sbLastMainClick(Sender: TObject);
begin
 ibdsMainMain.Last
end;

procedure TfrmReasons.sbAddMainClick(Sender: TObject);
begin
 ibdsMainMain.Append
end;

procedure TfrmReasons.sbDeleteMainClick(Sender: TObject);
begin
 ibdsMainMain.Delete;
 StteChange('Main', True)
end;

procedure TfrmReasons.sbCancelMainClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainMain.Bookmark;
 ibdsMainMain.CancelUpdates;
 StteChange('Main', False);
 try
  ibdsMainMain.Bookmark := BookMark
 except
 end
end;

procedure TfrmReasons.sbApplyMainClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainMain.Bookmark;
 try
  ibdsMainMain.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Main', False);
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainMain.Bookmark := BookMark
 except
 end
end;

procedure TfrmReasons.ibdsMainMainNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_CONTRACTS_SETUP,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainMainID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainMainENTERPRISE_ID.Value := -1;
 ibdsMainMainENTERPRISE_NAME.Value := 'ВСЕ ПРЕДПРИЯТИЯ';
 If (Black) then
  Begin
   ibdsMainMainBLACK_DEFAULT.Value := 0;
   ibdsMainMainBLACK.Value := 0
  End;
 ibdsMainMainSECURITY_LEVEL.Value := 1;
 ibdsMainMainVALID.Value := 1
end;

procedure TfrmReasons.ibdsMainMainUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   If (UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (ibdsMainMainBLACK.OldValue=1) and (ibdsMainMainBLACK.NewValue=0)) then
    Begin
     ibsWhite.SQL.AddStrings(ibdsMainMain.InsertSQL);
     ibsWhite.SQL[3] := '';
     ibsWhite.SQL[5] := '';
     ibsWhite.SQL[10] := '';
     ibsWhite.SQL[12] := ''
    End
   else
    If (UpdateKind=ukModify) and (ibdsMainMainBLACK.OldValue=0) and (ibdsMainMainBLACK.NewValue=0) then
     Begin
      ibsWhite.SQL.AddStrings(ibdsMainMain.ModifySQL);
      ibsWhite.SQL[11] := '';
      ibsWhite.SQL[15] := ''
     End
    else
     If (UpdateKind=ukDelete) or ((UpdateKind=ukModify) and (ibdsMainMainBLACK.OldValue=0) and (ibdsMainMainBLACK.NewValue=1)) then
      Begin
       ibsWhite.SQL.AddStrings(ibdsMainMain.DeleteSQL)
      End;
   ibsWhite.GenerateParamNames := True;
   If ((UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (ibdsMainMainBLACK.OldValue=1) and (ibdsMainMainBLACK.NewValue=0))) or
      ((UpdateKind=ukModify) and (ibdsMainMainBLACK.OldValue=0) and (ibdsMainMainBLACK.NewValue=0)) then
    Begin
     ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainMainENTERPRISE_ID.Value;
     If (ContractBLACK=1) or (ibdsMainMainCONTRACT_ID_DEFAULT.IsNull) then
      ibsWhite.ParamByName('CONTRACT_ID_DEFAULT').Value := null
     else
      ibsWhite.ParamByName('CONTRACT_ID_DEFAULT').AsInt64 := ibdsMainMainCONTRACT_ID_DEFAULT.Value;
     ibsWhite.ParamByName('NAME').Value := ibdsMainMainNAME.AsVariant;
     ibsWhite.ParamByName('IN_OUT').Value := ibdsMainMainIN_OUT.AsVariant;
     ibsWhite.ParamByName('VALID_PERIOD').Value := ibdsMainMainVALID_PERIOD.AsVariant;
     ibsWhite.ParamByName('NUMBER_PREFIX').Value := ibdsMainMainNUMBER_PREFIX.AsVariant;
     ibsWhite.ParamByName('NUMBER_FORMAT').Value := ibdsMainMainNUMBER_FORMAT.AsVariant;
     ibsWhite.ParamByName('NUMBER_SUFFIX').Value := ibdsMainMainNUMBER_SUFFIX.AsVariant;
     ibsWhite.ParamByName('NUMBER_RESTART_PERIOD').Value := ibdsMainMainNUMBER_RESTART_PERIOD.AsVariant;
     ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsMainMainSECURITY_LEVEL.AsVariant;
     If (ibdsMainMainCURRENCY_ID_DEFAULT.IsNull) then
      ibsWhite.ParamByName('CURRENCY_ID_DEFAULT').Value := null
     else
      ibsWhite.ParamByName('CURRENCY_ID_DEFAULT').AsInt64 := ibdsMainMainCURRENCY_ID_DEFAULT.Value;
     ibsWhite.ParamByName('PRICE_FORMULA').Value := ibdsMainMainPRICE_FORMULA.AsVariant;
     ibsWhite.ParamByName('VALID').Value := ibdsMainMainVALID.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainMainCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (ibdsMainMainBLACK.OldValue=1) and (ibdsMainMainBLACK.NewValue=0)) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainMainID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainMainID.Value;
   ibsWhite.ExecQuery
  End;
 UpdateAction := uaApply
end;

procedure TfrmReasons.dsMainMainDataChange(Sender: TObject; Field: TField);
begin
 If (Black) then
  Begin
   If (ibdsMainMainBLACK.Value=1) and (ibdsMainMainBLACK_DEFAULT.Value<>1) then
    Begin
     If NOT (dsMainMain.State in [dsEdit,dsInsert]) then
      ibdsMainMain.Edit;
     ibdsMainMainBLACK_DEFAULT.Value := 1
    End;
   DBCheckBox7.Enabled := (ibdsMainMainBLACK.Value<>1)
  End
end;

procedure TfrmReasons.PageControl1Change(Sender: TObject);
begin
 SetDataSources
end;

procedure TfrmReasons.SetDataSources;
begin
 ibdsCurrency.Close;
 If (PageControl1.ActivePage=tsPrimary) then
  ibdsCurrency.DataSource := dsMainPrimary
 else
  If (PageControl1.ActivePage=tsMain) then
   ibdsCurrency.DataSource := dsMainMain;
 ibdsCurrency.Open
end;

procedure TfrmReasons.ibdsInvoicesCalcFields(DataSet: TDataSet);
begin
 ibdsInvoicesNUMBER.Value := ibdsInvoicesINVOICE_PREFIX.AsString+
                             ibdsInvoicesINVOICE_NUMBER.AsString+
                             ibdsInvoicesINVOICE_SUFFIX.AsString
end;

procedure TfrmReasons.trReasonTypesDeletion(Sender: TObject;
  Node: TTreeNode);
begin
 Dispose(PReasonsRec(Node.Data))
end;

procedure TfrmReasons.tvPrimaryCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
 GridDBTableViewCustomDrawColumnHeader((Sender as TcxGridDBTableView), ACanvas, AViewInfo)
end;

procedure TfrmReasons.trReasonTypesChange(Sender: TObject;
  Node: TTreeNode);
begin
 PostIfNeeded(ibdsMainPrimary);
 ibdsMainPrimary.First
end;

procedure TfrmReasons.ibdsMainPrimaryFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 If (Saving) then
  Accept := True
 else
  If (trReasonTypes.Selected<>nil) then
   Begin
    Accept := (PReasonsRec(trReasonTypes.Selected.Data)^.ReasonType=ibdsMainPrimaryREASON_TYPE.AsInteger);
    Accept := Accept and
              ((PReasonsRec(trReasonTypes.Selected.Data)^.MovementType=-1) or
               (PReasonsRec(trReasonTypes.Selected.Data)^.MovementType=ibdsMainPrimaryMOVEMENT_TYPE_NEW.AsInteger));
    Accept := Accept and
              ((PReasonsRec(trReasonTypes.Selected.Data)^.PaymentType=-1) or
               (PReasonsRec(trReasonTypes.Selected.Data)^.PaymentType=ibdsMainPrimaryPAYMENT_TYPE.AsInteger));
    Accept := Accept and
              ((PReasonsRec(trReasonTypes.Selected.Data)^.InOut=-1) or
               (PReasonsRec(trReasonTypes.Selected.Data)^.InOut=ibdsMainPrimaryIN_OUT.AsInteger))
   End
end;

procedure TfrmReasons.ibdsMainPrimaryBeforeInsert(DataSet: TDataSet);
begin
 If (PReasonsRec(trReasonTypes.Selected.Data)^.InOut=-1) then
  Abort
end;

procedure TfrmReasons.trReasonTypesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
 Accept := (trReasonTypes.GetNodeAt(X,Y)<>Nil) and
           (PReasonsRec(trReasonTypes.GetNodeAt(X,Y).Data)^.InOut<>-1)
end;

procedure TfrmReasons.trReasonTypesDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
 If (trReasonTypes.GetNodeAt(X,Y)<>Nil) and
    (PReasonsRec(trReasonTypes.GetNodeAt(X,Y).Data)^.InOut<>-1) and
    (MessageDlg('Перенести основание в группу '+trReasonTypes.PathFromNode(trReasonTypes.GetNodeAt(X,Y)),mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   ibdsMainPrimary.Edit;
   ibdsMainPrimaryREASON_TYPE.Value := PReasonsRec(trReasonTypes.GetNodeAt(X,Y).Data)^.ReasonType;
   ibdsMainPrimaryMOVEMENT_TYPE_NEW.Value := PReasonsRec(trReasonTypes.GetNodeAt(X,Y).Data)^.MovementType;
   ibdsMainPrimaryPAYMENT_TYPE.Value := PReasonsRec(trReasonTypes.GetNodeAt(X,Y).Data)^.PaymentType;
   ibdsMainPrimaryIN_OUT.Value := PReasonsRec(trReasonTypes.GetNodeAt(X,Y).Data)^.InOut;
   ibdsMainPrimary.Post
  End
end;

procedure TfrmReasons.ibdsMainPrimaryREASON_TYPEChange(Sender: TField);
begin
 If Not((ibdsMainPrimaryREASON_TYPE.IsNull) or (ibdsMainPrimaryMOVEMENT_TYPE_NEW.IsNull) or
        (ibdsMainPrimaryPAYMENT_TYPE.IsNull)) then
  Begin
   Case ibdsMainPrimaryREASON_TYPE.Value of
    0,1,3 : Case ibdsMainPrimaryMOVEMENT_TYPE_NEW.Value of
             0 : ibdsMainPrimaryMOVEMENT_TYPE.Value := 0;
             1 : Case ibdsMainPrimaryPAYMENT_TYPE.Value of
                  1 : ibdsMainPrimaryMOVEMENT_TYPE.Value := 1;
                  2 : ibdsMainPrimaryMOVEMENT_TYPE.Value := 2;
                  3 : ibdsMainPrimaryMOVEMENT_TYPE.Value := 4;
                  4,5 : ibdsMainPrimaryMOVEMENT_TYPE.Value := 2
                 end;
            end;
    2 : Case ibdsMainPrimaryMOVEMENT_TYPE_NEW.Value of
             0 : ibdsMainPrimaryMOVEMENT_TYPE.Value := 5;
             1 : Case ibdsMainPrimaryPAYMENT_TYPE.Value of
                  1 : ibdsMainPrimaryMOVEMENT_TYPE.Value := 1;
                  2 : ibdsMainPrimaryMOVEMENT_TYPE.Value := 2;
                  3 : ibdsMainPrimaryMOVEMENT_TYPE.Value := 4;
                  4,5 : ibdsMainPrimaryMOVEMENT_TYPE.Value := 2
                 end;
        end;
   end;
  End
end;

end.
