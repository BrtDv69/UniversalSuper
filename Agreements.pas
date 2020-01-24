unit Agreements;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, wwdbdatetimepicker, Buttons, wwdblook, StdCtrls, Mask, wwdbedit,
  DBCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, wwriched,
  wwrichedspell, fcLabel, fcText, IBDatabase, Db, IBSQL, IBCustomDataSet,
  Wwdotdot, Wwdbcomb, StrUtils, Wwdbspin, Variants;

type
 TObjProcedure = procedure of object;

type
  TfrmAgreements = class(TfrmLike)
    PageControl1: TPageControl;
    tsAgrimentsList: TTabSheet;
    Panel1: TPanel;
    Panel4: TPanel;
    sbCancelAgrimentsList: TSpeedButton;
    sbApplyAgrimentsList: TSpeedButton;
    sbDeleteAgrimentsList: TSpeedButton;
    sbAddAgrimentsList: TSpeedButton;
    sbLastAgrimentsList: TSpeedButton;
    sbNextAgrimentsList: TSpeedButton;
    sbPriorAgrimentsList: TSpeedButton;
    sbFirstAgrimentsList: TSpeedButton;
    SpeedButton9: TSpeedButton;
    sbCloseAgrimentsList: TSpeedButton;
    tsAgriment: TTabSheet;
    Panel5: TPanel;
    Panel10: TPanel;
    sbCancelAgriment: TSpeedButton;
    sbApplyAgriment: TSpeedButton;
    sbDeleteAgriment: TSpeedButton;
    sbAddAgriment: TSpeedButton;
    sbCloseAgriment: TSpeedButton;
    TabSheet3: TTabSheet;
    Panel7: TPanel;
    Panel12: TPanel;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    sbDetailsStors: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    wwDBGrid1: TwwDBGrid;
    sbPrintAgrimentsList: TSpeedButton;
    sbPrintAgriment: TSpeedButton;
    SpeedButton34: TSpeedButton;
    wwDBGrid3: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    Splitter1: TSplitter;
    ibdsMainAgrimentsList: TIBDataSet;
    dsMainAgrimentsList: TDataSource;
    ibsWhite: TIBSQL;
    ibdsMainAgrimentsListID: TLargeintField;
    ibdsMainAgrimentsListSETUP_NAME: TIBStringField;
    ibdsMainAgrimentsListMASTER_NAME: TIBStringField;
    ibdsMainAgrimentsListENTERPRISE_NAME: TIBStringField;
    ibdsMainAgrimentsListCONTRACTOR_NAME: TIBStringField;
    ibdsMainAgrimentsListBLACK: TIntegerField;
    ibdsMainAgrimentsListNUMBER_STR: TIBStringField;
    ibdsMainAgrimentsListCONTRACT_DATE: TDateField;
    ibdsMainAgrimentsListNAME: TIBStringField;
    ibdsMainAgrimentsListCLOSED: TIntegerField;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Label11: TLabel;
    wwDBEdit12: TwwDBEdit;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBCheckBox2: TDBCheckBox;
    Label18: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    Label17: TLabel;
    wwDBEdit10: TwwDBEdit;
    dbcbBlack: TDBCheckBox;
    fcAgriment: TfcLabel;
    Label14: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label1: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Label2: TLabel;
    wwDBLookupCombo6: TwwDBLookupCombo;
    Label12: TLabel;
    wwDBEdit9: TwwDBEdit;
    Panel6: TPanel;
    Label5: TLabel;
    Splitter3: TSplitter;
    Panel8: TPanel;
    Label6: TLabel;
    wwDBGrid4: TwwDBGrid;
    ibdsMainAgriment: TIBDataSet;
    ibdsMainAgrimentID: TLargeintField;
    ibdsMainAgrimentSETUP_ID: TLargeintField;
    ibdsMainAgrimentSETUP_NAME: TIBStringField;
    ibdsMainAgrimentMASTER_ID: TLargeintField;
    ibdsMainAgrimentMASTER_NAME: TIBStringField;
    ibdsMainAgrimentSECURITY_LEVEL: TIntegerField;
    ibdsMainAgrimentDOUBLE_SOSTAV: TIntegerField;
    ibdsMainAgrimentENTERPRISE_ID: TLargeintField;
    ibdsMainAgrimentENTERPRISE_NAME: TIBStringField;
    ibdsMainAgrimentCONTRACTOR_ID: TLargeintField;
    ibdsMainAgrimentCONTRACTOR_NAME: TIBStringField;
    ibdsMainAgrimentBLACK: TIntegerField;
    ibdsMainAgrimentNUMBER_PREFIX: TIBStringField;
    ibdsMainAgrimentNUMBER: TIntegerField;
    ibdsMainAgrimentNUMBER_SUFFIX: TIBStringField;
    ibdsMainAgrimentCONTRACT_DATE: TDateField;
    ibdsMainAgrimentNAME: TIBStringField;
    ibdsMainAgrimentTEXT: TIBStringField;
    ibdsMainAgrimentCLOSED: TIntegerField;
    ibdsMainAgrimentCOMMENTS: TIBStringField;
    ibdsMainAgrimentNUMBER_STR: TIBStringField;
    dsMainAgriment: TDataSource;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesNAME: TIBStringField;
    ibdsEnterprisesID: TLargeintField;
    ibdsPersons: TIBDataSet;
    dsEnterprises: TDataSource;
    ibdsContracts_Setup: TIBDataSet;
    ibdsContractors: TIBDataSet;
    ibdsMainAgrimentValues: TIBDataSet;
    ibdsMainAgrimentValuesID: TLargeintField;
    ibdsMainAgrimentValuesCONTRACT_ID: TLargeintField;
    ibdsMainAgrimentValuesCURRENCY_ID: TLargeintField;
    ibdsMainAgrimentValuesCURRENCY_NAME: TIBStringField;
    ibdsMainAgrimentValuesCURRENCY_RATE: TFloatField;
    ibdsMainAgrimentValuesAMOUNT: TFloatField;
    ibdsMainAgrimentValuesCOMMENTS: TIBStringField;
    dsMainAgrimentValues: TDataSource;
    wwDBLookupCombo5: TwwDBLookupCombo;
    ibdsContracts_SetupID: TLargeintField;
    ibdsContracts_SetupNAME: TIBStringField;
    ibdsContractorsID: TLargeintField;
    ibdsContractorsNAME: TIBStringField;
    ibdsCurrency: TIBDataSet;
    ibdsCurrencyID: TLargeintField;
    ibdsCurrencyNAME: TIBStringField;
    ibdsPersonsID: TLargeintField;
    ibdsPersonsNAME: TIBStringField;
    wwDBComboBox1: TwwDBComboBox;
    trLock: TIBTransaction;
    pnlMessage: TPanel;
    ibsNumb: TIBSQL;
    ibdsMainAgrimentNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsContracts_SetupNUMBER_RESTART_PERIOD: TIntegerField;
    ibdsContracts_SetupNUMBER_PREFIX: TIBStringField;
    ibdsContracts_SetupNUMBER_SUFFIX: TIBStringField;
    ibdsMainAgrimentOPPOSITE_SOSTAV_ID: TLargeintField;
    dbcbDouble: TDBCheckBox;
    pnlNumber: TPanel;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    ibdsContracts_SetupNUMBER_FORMAT: TIntegerField;
    ibdsMainAgrimentNUMBER_FORMAT: TIntegerField;
    ibdsMainAgrimentsListDOUBLE_SOSTAV: TIntegerField;
    ibdsMainAgrimentsListCONTRACTOR_ID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure fcAgrimentMouseEnter(Sender: TObject);
    procedure fcAgrimentMouseLeave(Sender: TObject);
    procedure fcAgrimentMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure fcAgrimentMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbDetailsStorsClick(Sender: TObject);
    procedure sbCloseAgrimentsListClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ibdsMainAgrimentsListAfterScroll(DataSet: TDataSet);
    procedure sbFirstAgrimentsListClick(Sender: TObject);
    procedure sbPriorAgrimentsListClick(Sender: TObject);
    procedure sbNextAgrimentsListClick(Sender: TObject);
    procedure sbLastAgrimentsListClick(Sender: TObject);
    procedure sbDeleteAgrimentsListClick(Sender: TObject);
    procedure sbCancelAgrimentsListClick(Sender: TObject);
    procedure sbApplyAgrimentsListClick(Sender: TObject);
    procedure dsMainAgrimentsListStateChange(Sender: TObject);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1CreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure ibdsMainAgrimentsListUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure PageControl1Change(Sender: TObject);
    procedure sbDeleteAgrimentClick(Sender: TObject);
    procedure sbAddAgrimentClick(Sender: TObject);
    procedure sbCancelAgrimentClick(Sender: TObject);
    procedure sbApplyAgrimentClick(Sender: TObject);
    procedure dsMainAgrimentValuesStateChange(Sender: TObject);
    procedure ibdsMainAgrimentUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure ibdsMainAgrimentValuesUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo6CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo5CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure sbAddAgrimentsListClick(Sender: TObject);
    procedure ibdsMainAgrimentNewRecord(DataSet: TDataSet);
    procedure ibdsMainAgrimentCalcFields(DataSet: TDataSet);
    procedure tsAgrimentShow(Sender: TObject);
    procedure ibdsMainAgrimentValuesNewRecord(DataSet: TDataSet);
    procedure ibdsMainAgrimentAfterOpen(DataSet: TDataSet);
    procedure fcAgrimentClick(Sender: TObject);
    procedure wwDBComboBox1DropDown(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ibdsMainAgrimentDOUBLE_SOSTAVChange(Sender: TField);
    procedure wwDBLookupCombo6KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereMainAgrimentsList: String;
    procedure GenerateSelectMainAgrimentsList;
    procedure GenerateSelectMainAgrimentValues;
    procedure GenerateSelectMainAgriment;
    procedure SetContractor;
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

var
  frmAgreements: TfrmAgreements;

implementation

uses DM, Misk, Main, KontrAgList;

{$R *.DFM}

var
  OrderByMainAgrimentsList  : String = ' 8 desc, 7 asc, 9 asc';
  WhereSqlMainAgrimentsList : String = '';

  OrderByMainAgrimentValues  : String = ' 4 asc';

  NumberPrefix, NumberSuffix : String;

procedure TfrmAgreements.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
     ActivePage: TTabSheet;
begin
 If (frmAgreements<>nil) then
  Begin
   ActivePage := PageControl1.ActivePage;
   For k := 0 to Pred(frmAgreements.ComponentCount) do
    Begin
     If (Components[k].Name='sbApply'+Suf) or
        (Components[k].Name='sbCancel'+Suf) then
      (Components[k] as TControl).Enabled := Enabled;
     If (Black) and (Components[k].Name='fc'+Suf) then
      If (ibdsMainAgrimentDOUBLE_SOSTAV.Value=1) and (NOT Enabled) then
       Begin
        If (ibdsMainAgrimentBLACK.Value=1) then
         If (ibdsMainAgrimentOPPOSITE_SOSTAV_ID.IsNull) then
          fcAgriment.Caption := 'Создать первый состав'
         else 
           fcAgriment.Caption := 'Показать первый состав'
        else
         If (ibdsMainAgrimentOPPOSITE_SOSTAV_ID.IsNull) then
          fcAgriment.Caption := 'Создать второй состав'
         else
          fcAgriment.Caption := 'Показать второй состав';
        (Components[k] as TControl).Visible := True
       End
      else
       (Components[k] as TControl).Visible := False;
     If (Components[k] is TTabSheet) and
        (Components[k].Name<>'ts'+Suf) then
      (Components[k] as TTabSheet).TabVisible := NOT Enabled
    End;
   PageControl1.ActivePage := ActivePage
  End
end;

function TfrmAgreements.GetWhereMainAgrimentsList: String;
begin
 Result := ''
end;

procedure TfrmAgreements.GenerateSelectMainAgrimentsList;
begin
 WhereSqlMainAgrimentsList := GetWhereMainAgrimentsList;
 ibdsMainAgrimentsList.SelectSQL.Clear;
 ibdsMainAgrimentsList.SelectSQL.Add('select C.ID, CS.NAME SETUP_NAME, P.SURNAME||'' ''||P.NAME||'' ''||P.SECOND_NAME MASTER_NAME,');
 ibdsMainAgrimentsList.SelectSQL.Add('E.NAME ENTERPRISE_NAME, CNTR.NAME CONTRACTOR_NAME,');
 If (Black) then
  ibdsMainAgrimentsList.SelectSQL.Add('C.BLACK, C.DOUBLE_SOSTAV,');
 ibdsMainAgrimentsList.SelectSQL.Add('C.NUMBER_PREFIX||cast(C.NUMBER as varchar(30))||C.NUMBER_SUFFIX NUMBER_STR,');
 ibdsMainAgrimentsList.SelectSQL.Add('C.CONTRACT_DATE, C.NAME, C.CLOSED, C.CONTRACTOR_ID');
 ibdsMainAgrimentsList.SelectSQL.Add('from CONTRACTS C, CONTRACTS_SETUP CS, PERSONS P, ENTERPRISES E,');
 ibdsMainAgrimentsList.SelectSQL.Add('CONTRACTORS CNTR');
 ibdsMainAgrimentsList.SelectSQL.Add('where (C.SETUP_ID=CS.ID) and (C.MASTER_ID=P.ID) and');
 ibdsMainAgrimentsList.SelectSQL.Add('(C.ENTERPRISE_ID=E.ID) and (C.CONTRACTOR_ID=CNTR.ID)');
 ibdsMainAgrimentsList.SelectSQL.Add(WhereSqlMainAgrimentsList);
 ibdsMainAgrimentsList.SelectSQL.Add('order by'+OrderByMainAgrimentsList)
end;

procedure TfrmAgreements.GenerateSelectMainAgrimentValues;
begin
 ibdsMainAgrimentValues.SelectSQL.Clear;
 ibdsMainAgrimentValues.SelectSQL.Add('select CV.ID, CV.CONTRACT_ID, CV.CURRENCY_ID,');
 ibdsMainAgrimentValues.SelectSQL.Add('C.NAME CURRENCY_NAME, CV.CURRENCY_RATE, CV.AMOUNT, CV.COMMENTS');
 ibdsMainAgrimentValues.SelectSQL.Add('from CONTRACTS_VALUES CV, CURRENCY C');
 ibdsMainAgrimentValues.SelectSQL.Add('where (CV.CONTRACT_ID=:ID) and (CV.CURRENCY_ID=C.ID)');
 ibdsMainAgrimentValues.SelectSQL.Add('order by'+OrderByMainAgrimentValues);
 ibdsMainAgrimentValues.ParamByName('ID').AsInt64 := ibdsMainAgrimentID.Value
end;

procedure TfrmAgreements.GenerateSelectMainAgriment;
begin
 ibdsMainAgriment.SelectSQL.Clear;
 ibdsMainAgriment.SelectSQL.Add('select C.ID, C.SETUP_ID, CS.NAME SETUP_NAME, CS.NUMBER_RESTART_PERIOD, CS.NUMBER_FORMAT, C.MASTER_ID,');
 ibdsMainAgriment.SelectSQL.Add('P.SURNAME||'' ''||P.NAME||'' ''||P.SECOND_NAME MASTER_NAME, C.SECURITY_LEVEL,');
 If (Black) then
  ibdsMainAgriment.SelectSQL.Add('C.DOUBLE_SOSTAV, C.OPPOSITE_SOSTAV_ID,');
 ibdsMainAgriment.SelectSQL.Add('C.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME,');
 ibdsMainAgriment.SelectSQL.Add('C.CONTRACTOR_ID, CNTR.NAME CONTRACTOR_NAME,');
 If (Black) then
  ibdsMainAgriment.SelectSQL.Add('C.BLACK,');
 ibdsMainAgriment.SelectSQL.Add('C.NUMBER_PREFIX, C.NUMBER, C.NUMBER_SUFFIX, C.CONTRACT_DATE,');
 ibdsMainAgriment.SelectSQL.Add('C.NAME, C.TEXT, C.CLOSED, C.COMMENTS');
 ibdsMainAgriment.SelectSQL.Add('from CONTRACTS C, CONTRACTS_SETUP CS, PERSONS P, ENTERPRISES E,');
 ibdsMainAgriment.SelectSQL.Add('CONTRACTORS CNTR');
 ibdsMainAgriment.SelectSQL.Add('where (C.SETUP_ID=CS.ID) and (C.MASTER_ID=P.ID) and');
 ibdsMainAgriment.SelectSQL.Add('(C.ENTERPRISE_ID=E.ID) and (C.CONTRACTOR_ID=CNTR.ID) and');
 ibdsMainAgriment.SelectSQL.Add('(C.ID=:ID)')
end;

procedure TfrmAgreements.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 Key := MyUpCase(Key)
end;

procedure TfrmAgreements.FormCreate(Sender: TObject);
 var ki : Integer;
begin
 FName := 'Договора';
 inherited;
 If NOT (Black) then
  Begin
   ibdsMainAgrimentsList.Database := frmDM.dbWhite;
   ibdsMainAgriment.Database := frmDM.dbWhite;
   ibdsMainAgrimentValues.Database := frmDM.dbWhite;
   ibsNumb.Database := frmDM.dbWhite;
   ibdsEnterprises.Database := frmDM.dbWhite;
   ibdsPersons.Database := frmDM.dbWhite;
   ibdsContracts_Setup.Database := frmDM.dbWhite;
   ibdsContractors.Database := frmDM.dbWhite;
   ibdsCurrency.Database := frmDM.dbWhite;
   ki := 0;
   While (ki<Pred(ComponentCount)) do
    Begin
     If (Components[ki].Tag=99) then
      Components[ki].Free;
     Inc(ki)
    End;
   ibdsMainAgriment.InsertSQL.Strings[2] := '';
   ibdsMainAgriment.InsertSQL.Strings[8] := '';
   ibdsMainAgriment.ModifySQL.Strings[5] := '';
   ibdsMainAgriment.ModifySQL.Strings[6] := '';
   ibdsMainAgriment.ModifySQL.Strings[9] := '';
   ibdsMainAgriment.RefreshSQL.Strings[2] := '';
   ibdsMainAgriment.RefreshSQL.Strings[5] := ''
  End;
 PageControl1.ActivePageIndex := 0;
 trMain.StartTransaction;
 GenerateSelectMainAgrimentsList;
 GenerateSelectMainAgriment;
 ibdsMainAgrimentsList.Open
end;

procedure TfrmAgreements.fcAgrimentMouseEnter(Sender: TObject);
begin
 fcAgriment.TextOptions.Style := fclsRaised
end;

procedure TfrmAgreements.fcAgrimentMouseLeave(Sender: TObject);
begin
 fcAgriment.TextOptions.Style := fclsLowered
end;

procedure TfrmAgreements.fcAgrimentMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 fcAgriment.TextOptions.Style := fclsLowered
end;

procedure TfrmAgreements.fcAgrimentMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 fcAgriment.TextOptions.Style := fclsRaised
end;

procedure TfrmAgreements.sbDetailsStorsClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  Begin
   wwDBGrid2.Show;
   Splitter1.Show
  End
 else
  Begin
   wwDBGrid2.Hide;
   Splitter1.Hide
  End
end;

procedure TfrmAgreements.sbCloseAgrimentsListClick(Sender: TObject);
begin
 Close;
 frmAgreements := nil
end;

procedure TfrmAgreements.ibdsMainAgrimentsListAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmAgreements,'AgrimentsList')
end;

procedure TfrmAgreements.sbFirstAgrimentsListClick(Sender: TObject);
begin
 ibdsMainAgrimentsList.First
end;

procedure TfrmAgreements.sbPriorAgrimentsListClick(Sender: TObject);
begin
 ibdsMainAgrimentsList.Prior
end;

procedure TfrmAgreements.sbNextAgrimentsListClick(Sender: TObject);
begin
 ibdsMainAgrimentsList.Next
end;

procedure TfrmAgreements.sbLastAgrimentsListClick(Sender: TObject);
begin
 ibdsMainAgrimentsList.Last
end;

procedure TfrmAgreements.sbDeleteAgrimentsListClick(Sender: TObject);
begin
 ibdsMainAgrimentsList.Delete;
 StteChange('AgrimentsList', True)
end;

procedure TfrmAgreements.sbCancelAgrimentsListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainAgrimentsList.Bookmark;
 ibdsMainAgrimentsList.CancelUpdates;
 StteChange('AgrimentsList', False);
 try
  ibdsMainAgrimentsList.Bookmark := BookMark
 except
 end
end;

procedure TfrmAgreements.sbApplyAgrimentsListClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainAgrimentsList.Bookmark;
 try
  ibdsMainAgrimentsList.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('AgrimentsList', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainAgrimentsList.Bookmark := BookMark
 except
 end
end;

procedure TfrmAgreements.dsMainAgrimentsListStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmAgreements.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainAgrimentsList);
  2: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainAgrimentValues);
 end
end;

procedure TfrmAgreements.wwDBGrid1CreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmAgreements.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainAgrimentsList, (GetKeyState(VK_CONTROL)<0),
                              sbApplyAgrimentsList, sbCancelAgrimentsList, GenerateSelectMainAgrimentsList);
  2: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainAgrimentValues, (GetKeyState(VK_CONTROL)<0),
                              sbApplyAgriment, sbCancelAgriment, GenerateSelectMainAgrimentValues);
 end
end;

procedure TfrmAgreements.ibdsMainAgrimentsListUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   ibsWhite.SQL.AddStrings(ibdsMainAgrimentsList.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainAgrimentsListID.OldValue);
   ibsWhite.ExecQuery
  End
end;

procedure TfrmAgreements.PageControl1Change(Sender: TObject);
begin
 ibdsMainAgriment.Active := (PageControl1.ActivePage<>tsAgrimentsList);
 ibdsEnterprises.Active := (PageControl1.ActivePage<>tsAgrimentsList);
 ibdsPersons.Active := (PageControl1.ActivePage<>tsAgrimentsList);
 ibdsContracts_Setup.Active := (PageControl1.ActivePage<>tsAgrimentsList);
 ibdsContractors.Active := (PageControl1.ActivePage<>tsAgrimentsList);
 ibdsMainAgrimentValues.Active := (PageControl1.ActivePage<>tsAgrimentsList);
 ibdsCurrency.Active := (PageControl1.ActivePage<>tsAgrimentsList)
end;

procedure TfrmAgreements.sbDeleteAgrimentClick(Sender: TObject);
begin
 If (ActiveControl=wwDBGrid4) then
  ibdsMainAgrimentValues.Delete
 else
  ibdsMainAgriment.Delete;
 StteChange('Agriment', True)
end;

procedure TfrmAgreements.sbAddAgrimentClick(Sender: TObject);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_CONTRACTS,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainAgriment.Close;
 ibdsMainAgriment.ParamByName('ID').AsInt64 := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibdsMainAgriment.Open;
 ibsGen_ID.Close;
 ibdsMainAgriment.Append
end;

procedure TfrmAgreements.sbCancelAgrimentClick(Sender: TObject);
begin
 If (trLock.InTransaction) then
  trLock.Commit;
 ibdsMainAgrimentValues.CancelUpdates;
 ibdsMainAgriment.CancelUpdates;
 StteChange('Agriment', False)
end;

procedure TfrmAgreements.sbApplyAgrimentClick(Sender: TObject);
 var BookMark : String;
begin
 try
  ibdsMainAgriment.ApplyUpdates;
  ibdsMainAgrimentValues.ApplyUpdates;
  trMain.CommitRetaining;
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 If (trLock.InTransaction) then
  trLock.Commit;
 StteChange('Agriment', False);
 ibdsMainAgriment.Refresh;
 BookMark := ibdsMainAgrimentsList.Bookmark;
 ibdsMainAgrimentsList.DisableControls;
 ibdsMainAgrimentsList.Close;
 ibdsMainAgrimentsList.Open;
 try
  ibdsMainAgrimentsList.Bookmark := BookMark
 finally
  ibdsMainAgrimentsList.EnableControls
 end
end;

procedure TfrmAgreements.dsMainAgrimentValuesStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange('Agriment', True)
  else
   StteChange('Agriment', ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending);
end;

procedure TfrmAgreements.ibdsMainAgrimentUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
 var MinNumber, MaxNumber, Number, BlackOld, BlackNew, Number_FormatOld, Number_FormatNew : Integer;
     SetupOld, SetupNew : String;
begin
 If (Black) then
  Begin
   BlackOld := ibdsMainAgrimentBLACK.OldValue;
   BlackNew := ibdsMainAgrimentBLACK.NewValue
  End
 else
  Begin
   BlackOld := 0;
   BlackNew := 0
  End;
 Number_FormatOld := ibdsMainAgrimentNumber_Format.OldValue;
 Number_FormatNew := ibdsMainAgrimentNumber_Format.NewValue;
 SetupOld := ibdsMainAgrimentSETUP_NAME.OldValue;
 SetupNew := ibdsMainAgrimentSETUP_NAME.NewValue;
 If (UpdateKind=ukInsert) or (BLACKOld<>BLACKNew) or (SetupOld<>SetupNew) then
  Begin
   If (UpdateKind=ukInsert) or (BLACKOld<>BLACKNew) or (Number_FormatOld<>Number_FormatNew) then
    Begin
     pnlMessage.Show;
     Application.ProcessMessages;
     If NOT (trLock.InTransaction) then
      trLock.StartTransaction;
     pnlMessage.Hide;
     Application.ProcessMessages;
     If (ibdsMainAgrimentNUMBER_RESTART_PERIOD.Value<>1) then
      Begin
       ibsNumb.SQL.Clear;
       ibsNumb.SQL.Add('select max(C.NUMBER) MinNumber');
       ibsNumb.SQL.Add('from CONTRACTS C, CONTRACTS_SETUP CS');
       ibsNumb.SQL.Add('where (C.CONTRACT_DATE>=:START_DATE) and (C.CONTRACT_DATE<:CONTRACT_DATE)');
       If (Black) then
        ibsNumb.SQL.Add('and (C.BLACK=:BLACK)');
       ibsNumb.SQL.Add('and (CS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (C.SETUP_ID=CS.ID)');
       ibsNumb.GenerateParamNames := True;
       ibsNumb.ParamByName('START_DATE').AsDate := GetStartDate(ibdsMainAgrimentNUMBER_RESTART_PERIOD.Value, ibdsMainAgrimentCONTRACT_DATE.Value);
       ibsNumb.ParamByName('CONTRACT_DATE').AsDate := ibdsMainAgrimentCONTRACT_DATE.Value;
       If (Black) then
        ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
       ibsNumb.ExecQuery;
       MinNumber := ibsNumb.FieldByName('MinNumber').AsInteger;
       ibsNumb.Close
      End
     else
      MinNumber := 0; //1 - нумерация начинается ежедневно
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select min(C.NUMBER) MaxNumber');
     ibsNumb.SQL.Add('from CONTRACTS C, CONTRACTS_SETUP CS');
     ibsNumb.SQL.Add('where (C.CONTRACT_DATE>:CONTRACT_DATE) and (C.CONTRACT_DATE<:STOP_DATE)');
     If (Black) then
      ibsNumb.SQL.Add('and (C.BLACK=:BLACK)');
     ibsNumb.SQL.Add('and (CS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (C.SETUP_ID=CS.ID)');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('CONTRACT_DATE').AsDate := ibdsMainAgrimentCONTRACT_DATE.Value;
     ibsNumb.ParamByName('STOP_DATE').AsDate := GetStopDate(ibdsMainAgrimentNUMBER_RESTART_PERIOD.Value, ibdsMainAgrimentCONTRACT_DATE.Value);
     If (Black) then
      ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
     ibsNumb.ExecQuery;
     If (ibsNumb.FieldByName('MaxNumber').IsNull) then
      MaxNumber := High(MaxNumber)
     else
      MaxNumber := ibsNumb.FieldByName('MaxNumber').AsInteger;
     ibsNumb.Close;
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select C.NUMBER');
     ibsNumb.SQL.Add('from CONTRACTS C, CONTRACTS_SETUP CS');
     ibsNumb.SQL.Add('where (C.CONTRACT_DATE=:CONTRACT_DATE)');
     If (Black) then
      ibsNumb.SQL.Add('and (C.BLACK=:BLACK)');
     ibsNumb.SQL.Add('and (CS.NUMBER_FORMAT='+IntToStr(Number_FormatNew)+') and (C.SETUP_ID=CS.ID)');
     ibsNumb.SQL.Add('order by 1');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('CONTRACT_DATE').AsDate := ibdsMainAgrimentCONTRACT_DATE.Value;
     If (Black) then
      ibsNumb.ParamByName('BLACK').AsInteger := BLACKNew;
     ibsNumb.ExecQuery;
     ibdsMainAgriment.Edit;
     If (ibsNumb.Eof) then
      ibdsMainAgrimentNUMBER.Value := Succ(MinNumber)
     else
      Begin
       While Not (ibsNumb.Eof) do
        Begin
         Number := ibsNumb.FieldByName('NUMBER').AsInteger;
         ibsNumb.Next;
         If ((ibsNumb.FieldByName('NUMBER').AsInteger-Number)>1) then
          Begin
           ibdsMainAgrimentNUMBER.Value := Succ(Number);
           Break
          End
        End;
       If (ibdsMainAgrimentNUMBER.Value=0) then
        ibdsMainAgrimentNUMBER.Value := Succ(ibsNumb.FieldByName('NUMBER').AsInteger);
      End;
     ibsNumb.Close;
     If (ibdsMainAgrimentNUMBER.Value>=MaxNumber) then
      FlashMsg('Внимание!','Такой номер уже существует в последующих днях. После сохранения измените префикс/суффикс.',2000);
    End;
   If (UpdateKind=ukInsert) or (SETUPOld<>SETUPNew) then
    Begin
     NumberPrefix := ReplaceDateStr(NumberPrefix,ibdsMainAgrimentCONTRACT_DATE.Value);
     NumberSuffix := ReplaceDateStr(NumberSuffix,ibdsMainAgrimentCONTRACT_DATE.Value);
     ibdsMainAgrimentNUMBER_PREFIX.Value := NumberPrefix;
     ibdsMainAgrimentNUMBER_SUFFIX.Value := NumberSuffix
    End
  End;
 If (ibdsMainAgriment.State in [dsEdit, dsInsert]) then
  ibdsMainAgriment.Post;
 UpdateAction := uaApply;
 If (Black) and ((BLACKOld=0) or (BLACKNew=0)) then
  Begin
   ibsWhite.SQL.Clear;
   If (UpdateKind=ukInsert) or
      ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
    Begin
     ibsWhite.SQL.AddStrings(ibdsMainAgriment.InsertSQL);
     ibsWhite.SQL[2] := '';
     ibsWhite.SQL[8] := ''
    End
   else
    If (UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0) then
     Begin
      ibsWhite.SQL.AddStrings(ibdsMainAgriment.ModifySQL);
      ibsWhite.SQL[5] := '';
      ibsWhite.SQL[6] := '';
      ibsWhite.SQL[9] := ''
     End
    else
     If (UpdateKind=ukDelete) or ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=1)) then
      ibsWhite.SQL.AddStrings(ibdsMainAgriment.DeleteSQL);
   ibsWhite.GenerateParamNames := True;
   If ((UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0))) or
      ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0)) then
    Begin
     ibsWhite.ParamByName('SETUP_ID').AsInt64 := ibdsMainAgrimentSETUP_ID.Value;
     If (ibdsMainAgrimentMASTER_ID.IsNull) then
      ibsWhite.ParamByName('MASTER_ID').Value := null
     else
      ibsWhite.ParamByName('MASTER_ID').AsInt64 := ibdsMainAgrimentMASTER_ID.Value;
     ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsMainAgrimentSECURITY_LEVEL.AsVariant;
     ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainAgrimentENTERPRISE_ID.Value;
     ibsWhite.ParamByName('CONTRACTOR_ID').AsInt64 := ibdsMainAgrimentCONTRACTOR_ID.Value;
     ibsWhite.ParamByName('NUMBER_PREFIX').Value := ibdsMainAgrimentNUMBER_PREFIX.AsVariant;
     ibsWhite.ParamByName('NUMBER').Value := ibdsMainAgrimentNUMBER.AsVariant;
     ibsWhite.ParamByName('NUMBER_SUFFIX').Value := ibdsMainAgrimentNUMBER_SUFFIX.AsVariant;
     ibsWhite.ParamByName('CONTRACT_DATE').Value := ibdsMainAgrimentCONTRACT_DATE.AsVariant;
     ibsWhite.ParamByName('NAME').Value := ibdsMainAgrimentNAME.AsVariant;
     ibsWhite.ParamByName('TEXT').Value := ibdsMainAgrimentTEXT.AsVariant;
     ibsWhite.ParamByName('CLOSED').Value := ibdsMainAgrimentCLOSED.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainAgrimentCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) or ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainAgrimentID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainAgrimentID.Value;
   ibsWhite.ExecQuery;
   If (UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0) then
    Begin
     ibsNumb.SQL.Clear;
     ibsNumb.SQL.Add('select * from CONTRACTS_VALUES where (CONTRACT_ID=:ID)');
     ibsNumb.GenerateParamNames := True;
     ibsNumb.ParamByName('ID').AsInt64 := ibdsMainAgrimentID.Value;
     ibsNumb.ExecQuery;
     While NOT (ibsNumb.Eof) do
      Begin
       ibsWhite.SQL.Clear;
       ibsWhite.SQL.AddStrings(ibdsMainAgrimentValues.InsertSQL);
       ibsWhite.GenerateParamNames := True;
       ibsWhite.ParamByName('CONTRACT_ID').AsInt64 := ibsNumb.FieldByName('CONTRACT_ID').AsInt64;
       ibsWhite.ParamByName('CURRENCY_ID').AsInt64 := ibsNumb.FieldByName('CURRENCY_ID').AsInt64;
       ibsWhite.ParamByName('CURRENCY_RATE').Value := ibsNumb.FieldByName('CURRENCY_RATE').AsVariant;
       ibsWhite.ParamByName('AMOUNT').Value := ibsNumb.FieldByName('AMOUNT').AsVariant;
       ibsWhite.ParamByName('COMMENTS').Value := ibsNumb.FieldByName('COMMENTS').AsVariant;
       ibsWhite.ParamByName('ID').AsInt64 := ibsNumb.FieldByName('ID').AsInt64;
       ibsWhite.ExecQuery;
       ibsNumb.Next
      End;
     ibsNumb.Close
    End
  End
end;

procedure TfrmAgreements.ibdsMainAgrimentValuesUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   ibsWhite.SQL.Add('select count(*) from CONTRACTS where ID='+ibdsMainAgrimentValuesCONTRACT_ID.AsString);
   ibsWhite.ExecQuery;
   If (ibsWhite.FieldByName('COUNT').AsInteger>0) then
    Begin
     ibsWhite.Close;
     ibsWhite.SQL.Clear;
     Case UpdateKind of
      ukInsert: ibsWhite.SQL.AddStrings(ibdsMainAgrimentValues.InsertSQL);
      ukModify: ibsWhite.SQL.AddStrings(ibdsMainAgrimentValues.ModifySQL);
      ukDelete: ibsWhite.SQL.AddStrings(ibdsMainAgrimentValues.DeleteSQL)
     end;
     ibsWhite.GenerateParamNames := True;
     If (UpdateKind in [ukInsert, ukModify]) then
      Begin
       ibsWhite.ParamByName('CONTRACT_ID').AsInt64 := ibdsMainAgrimentValuesCONTRACT_ID.Value;
       ibsWhite.ParamByName('CURRENCY_ID').AsInt64 := ibdsMainAgrimentValuesCURRENCY_ID.Value;
       ibsWhite.ParamByName('CURRENCY_RATE').Value := ibdsMainAgrimentValuesCURRENCY_RATE.AsVariant;
       ibsWhite.ParamByName('AMOUNT').Value := ibdsMainAgrimentValuesAMOUNT.AsVariant;
       ibsWhite.ParamByName('COMMENTS').Value := ibdsMainAgrimentValuesCOMMENTS.AsVariant
      End;
     If (UpdateKind=ukInsert) then
      ibsWhite.ParamByName('ID').AsInt64 := ibdsMainAgrimentValuesID.Value
     else
      ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainAgrimentValuesID.OldValue);
     ibsWhite.ExecQuery
    End;
   ibsWhite.Close
  End
end;

procedure TfrmAgreements.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainAgrimentENTERPRISE_ID.Value := ibdsEnterprisesID.Value
end;

procedure TfrmAgreements.wwDBLookupCombo3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainAgrimentMASTER_ID.Value := ibdsPersonsID.Value
end;

procedure TfrmAgreements.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainAgrimentSETUP_ID.Value := ibdsContracts_SetupID.Value;
   ibdsMainAgrimentNUMBER_RESTART_PERIOD.Value := ibdsContracts_SetupNUMBER_RESTART_PERIOD.Value;
   ibdsMainAgrimentNUMBER_FORMAT.Value := ibdsContracts_SetupNUMBER_FORMAT.Value;
   NumberPrefix := ibdsContracts_SetupNUMBER_PREFIX.Value;
   NumberSuffix := ibdsContracts_SetupNUMBER_SUFFIX.Value
  End
end;

procedure TfrmAgreements.wwDBLookupCombo6CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainAgrimentCONTRACTOR_ID.Value := ibdsContractorsID.Value
end;

procedure TfrmAgreements.wwDBLookupCombo5CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainAgrimentValuesCURRENCY_ID.Value := ibdsCurrencyID.Value
end;

procedure TfrmAgreements.sbAddAgrimentsListClick(Sender: TObject);
begin
 tsAgriment.Show;
 PageControl1Change(PageControl1);
 sbAddAgriment.Click
end;

procedure TfrmAgreements.ibdsMainAgrimentNewRecord(DataSet: TDataSet);
begin
 ibdsMainAgrimentID.Value := ibdsMainAgriment.ParamByName('ID').AsInt64;
 ibdsMainAgrimentCONTRACT_DATE.Value := Date;
 ibdsMainAgrimentCLOSED.Value := 0;
 If (Black) then
  Begin
   ibdsMainAgrimentBLACK.Value := 0;
   ibdsMainAgrimentDOUBLE_SOSTAV.Value := 0
  End;
 ibdsMainAgrimentSECURITY_LEVEL.Value := 1;
 ibdsMainAgrimentNUMBER_PREFIX.Value := 'НОВЫЙ';
 ibdsMainAgrimentNUMBER_SUFFIX.Value := ' ';
 ibdsMainAgrimentNUMBER.Value := 0
end;

procedure TfrmAgreements.ibdsMainAgrimentCalcFields(DataSet: TDataSet);
begin                                
 ibdsMainAgrimentNUMBER_STR.Value := ibdsMainAgrimentNUMBER_PREFIX.AsString;
 If (ibdsMainAgrimentNUMBER.Value<>0) then
  ibdsMainAgrimentNUMBER_STR.Value := ibdsMainAgrimentNUMBER_STR.Value+
                                      ibdsMainAgrimentNUMBER.AsString;
 ibdsMainAgrimentNUMBER_STR.Value := ibdsMainAgrimentNUMBER_STR.Value+
                                     ibdsMainAgrimentNUMBER_SUFFIX.AsString
end;

procedure TfrmAgreements.tsAgrimentShow(Sender: TObject);
begin
 PageControl1Change(PageControl1)
end;

procedure TfrmAgreements.ibdsMainAgrimentValuesNewRecord(
  DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_CONTRACTS_VALUES,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainAgrimentValuesID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainAgrimentValuesCONTRACT_ID.Value := ibdsMainAgrimentID.Value
end;

procedure TfrmAgreements.ibdsMainAgrimentAfterOpen(DataSet: TDataSet);
begin
 ibdsMainAgrimentValues.Close;
 ibdsMainAgrimentValues.ParamByName('ID').AsInt64 := ibdsMainAgriment.ParamByName('ID').AsInt64;
 ibdsMainAgrimentValues.Open;
 If (Black) then
  Begin
   dbcbBlack.Enabled := ibdsMainAgrimentOPPOSITE_SOSTAV_ID.IsNull;
   dbcbDouble.Enabled := ibdsMainAgrimentOPPOSITE_SOSTAV_ID.IsNull
  End
end;

procedure TfrmAgreements.fcAgrimentClick(Sender: TObject);
 var ID, OPPOSITE_SOSTAV_ID, SETUP_ID, MASTER_ID, ENTERPRISE_ID, CONTRACTOR_ID : Int64;
     SETUP_NAME, MASTER_NAME, ENTERPRISE_NAME, CONTRACTOR_NAME, NAME, TEXT : String;
     NUMBER_RESTART_PERIOD, SECURITY_LEVEL, BLACK : Integer;
     CONTRACT_DATE : TDate;
begin
 If (ibdsMainAgrimentOPPOSITE_SOSTAV_ID.IsNull) then
  Begin
   ibsGen_ID.SQL.Clear;
   ibsGen_ID.SQL.Add('select gen_id(GEN_ID_CONTRACTS,1) from rdb$database');
   ibsGen_ID.ExecQuery;
   ID := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
   ibdsMainAgriment.Edit;
   ibdsMainAgrimentOPPOSITE_SOSTAV_ID.Value := ID;
   ibsGen_ID.Close;
   SETUP_ID := ibdsMainAgrimentSETUP_ID.Value;
   SETUP_NAME := ibdsMainAgrimentSETUP_NAME.AsVariant;
   NUMBER_RESTART_PERIOD := ibdsMainAgrimentNUMBER_RESTART_PERIOD.AsVariant;
   ibdsContracts_Setup.Locate('NAME',ibdsMainAgrimentSETUP_NAME.Value,[]);
   NumberPrefix := ibdsContracts_SetupNUMBER_PREFIX.Value;
   NumberSuffix := ibdsContracts_SetupNUMBER_SUFFIX.Value;
   MASTER_ID := ibdsMainAgrimentMASTER_ID.Value;
   MASTER_NAME := ibdsMainAgrimentMASTER_NAME.AsVariant;
   SECURITY_LEVEL := ibdsMainAgrimentSECURITY_LEVEL.AsVariant;
   OPPOSITE_SOSTAV_ID := ibdsMainAgrimentID.Value;
   ENTERPRISE_ID := ibdsMainAgrimentENTERPRISE_ID.Value;
   ENTERPRISE_NAME := ibdsMainAgrimentENTERPRISE_NAME.AsVariant;
   CONTRACTOR_ID := ibdsMainAgrimentCONTRACTOR_ID.Value;
   CONTRACTOR_NAME := ibdsMainAgrimentCONTRACTOR_NAME.AsVariant;
   BLACK := ibdsMainAgrimentBLACK.AsVariant;
   CONTRACT_DATE := ibdsMainAgrimentCONTRACT_DATE.AsVariant;
   NAME := ibdsMainAgrimentNAME.AsVariant;
   TEXT := ibdsMainAgrimentTEXT.AsVariant;
   ibdsMainAgriment.Append;
   ibdsMainAgrimentID.Value := ID;
   ibdsMainAgrimentValues.Close;
   ibdsMainAgrimentValues.ParamByName('ID').AsInt64 := ibdsMainAgrimentID.Value;
   ibdsMainAgrimentValues.Open;
   StteChange('Agriment', True);
   ibdsMainAgrimentSETUP_ID.Value := SETUP_ID;
   ibdsMainAgrimentSETUP_NAME.Value := SETUP_NAME;
   ibdsMainAgrimentNUMBER_RESTART_PERIOD.Value := NUMBER_RESTART_PERIOD;
   ibdsMainAgrimentMASTER_ID.Value := MASTER_ID;
   ibdsMainAgrimentMASTER_NAME.Value := MASTER_NAME;
   ibdsMainAgrimentSECURITY_LEVEL.Value := SECURITY_LEVEL;
   ibdsMainAgrimentDOUBLE_SOSTAV.Value := 1;
   ibdsMainAgrimentOPPOSITE_SOSTAV_ID.Value := OPPOSITE_SOSTAV_ID;
   ibdsMainAgrimentENTERPRISE_ID.Value := ENTERPRISE_ID;
   ibdsMainAgrimentENTERPRISE_NAME.Value := ENTERPRISE_NAME;
   ibdsMainAgrimentCONTRACTOR_ID.Value := CONTRACTOR_ID;
   ibdsMainAgrimentCONTRACTOR_NAME.Value := CONTRACTOR_NAME;
   ibdsMainAgrimentBLACK.Value := Abs(BLACK-1);
   ibdsMainAgrimentCONTRACT_DATE.Value := CONTRACT_DATE;
   ibdsMainAgrimentNAME.Value := NAME;
   ibdsMainAgrimentTEXT.Value := TEXT;
   dbcbBlack.Enabled := False;
   dbcbDouble.Enabled := False
  End
 else
  Begin
   ID := ibdsMainAgrimentOPPOSITE_SOSTAV_ID.Value;
   ibdsMainAgriment.DisableControls;
   ibdsMainAgriment.Close;
   ibdsMainAgriment.ParamByName('ID').AsInt64 := ID;
   ibdsMainAgriment.Open;
   ibdsMainAgriment.EnableControls;
   ibdsMainAgrimentValues.Close;
   ibdsMainAgrimentValues.ParamByName('ID').AsInt64 := ibdsMainAgrimentID.Value;
   ibdsMainAgrimentValues.Open
  End
end;

procedure TfrmAgreements.wwDBComboBox1DropDown(Sender: TObject);
begin
 pnlNumber.Top := (Sender as TwwDBComboBox).Top+(Sender as TwwDBComboBox).Height-1;
 pnlNumber.Left := (Sender as TwwDBComboBox).Left;
 pnlNumber.Show
end;

procedure TfrmAgreements.SpeedButton4Click(Sender: TObject);
begin
 pnlNumber.Hide
end;

procedure TfrmAgreements.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
 AllowChange := True;
 If (PageControl1.ActivePage=tsAgrimentsList) then
  ibdsMainAgriment.ParamByName('ID').AsInt64 := ibdsMainAgrimentsListID.Value;
end;

procedure TfrmAgreements.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmAgreements.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 wwDBGridCalcCellColors(Sender, Field, State, Highlight, AFont, ABrush)
end;

procedure TfrmAgreements.ibdsMainAgrimentDOUBLE_SOSTAVChange(
  Sender: TField);
begin
 If (ibdsMainAgrimentDOUBLE_SOSTAV.AsInteger=0) and
    (ibdsMainAgriment.State in [dsEdit, dsInsert]) then
  ibdsMainAgrimentOPPOSITE_SOSTAV_ID.AsVariant := null
end;

procedure TfrmAgreements.SetContractor;
begin
 ibdsContractors.Close;
 ibdsContractors.Open;
 ibdsContractors.Locate('ID',frmKontrAgList.ibdsMainContractorsID.AsString,[]);
 If NOT (ibdsMainAgriment.State in [dsEdit, dsInsert]) then
  ibdsMainAgriment.Edit;
 ibdsMainAgrimentCONTRACTOR_ID.Value := ibdsContractorsID.Value;
 wwDBLookupCombo6.Text := ibdsContractorsNAME.AsString;
 frmKontrAgList.LookUpProcedure := nil
end;

procedure TfrmAgreements.wwDBLookupCombo6KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 If (Key=vk_F6) then
  Begin
   If (frmMain.FindComponent('frmKontrAgList')=nil) then
    frmKontrAgList := TfrmKontrAgList.Create(frmMain);
   frmKontrAgList.LookUpProcedure := SetContractor;
   If NOT (ibdsMainAgrimentCONTRACTOR_ID.IsNull) then
    frmKontrAgList.ibdsMainContractors.Locate('ID',ibdsMainAgrimentCONTRACTOR_ID.AsString,[]);
   frmKontrAgList.Show
  End
end;

end.
