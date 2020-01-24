unit KontrAgList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, wwdbdatetimepicker, Buttons, wwdblook, StdCtrls, Mask, wwdbedit,
  DBCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ComCtrls, fcdbtreeview,
  IBSQL, IBDatabase, ImgList, Db, IBCustomDataSet, wwcheckbox, Variants;

type
 TObjProcedure = procedure of object;

type
  TfrmKontrAgList = class(TfrmLike)
    PageControl1: TPageControl;
    tsContractors: TTabSheet;
    Panel1: TPanel;
    Panel4: TPanel;
    sbCancelContractors: TSpeedButton;
    sbApplyContractors: TSpeedButton;
    sbDeleteContractors: TSpeedButton;
    sbAddContractors: TSpeedButton;
    sbLastContractors: TSpeedButton;
    sbNextContractors: TSpeedButton;
    sbPriorContractors: TSpeedButton;
    sbFirstContractors: TSpeedButton;
    sbDetailsContractors: TSpeedButton;
    sbFilterContractors: TSpeedButton;
    sbCloseContractors: TSpeedButton;
    tsAccounts: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    wwDBGrid2: TwwDBGrid;
    pnlDetailAccounts: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label13: TLabel;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBEdit9: TwwDBEdit;
    DBCheckBox4: TDBCheckBox;
    wwDBEdit12: TwwDBEdit;
    wwDBLookupCombo4: TwwDBLookupCombo;
    Panel10: TPanel;
    sbCancelAccounts: TSpeedButton;
    sbApplyAccounts: TSpeedButton;
    sbDeleteAccounts: TSpeedButton;
    sbAddAccounts: TSpeedButton;
    sbLastAccounts: TSpeedButton;
    sbNextAccounts: TSpeedButton;
    sbPriorAccounts: TSpeedButton;
    sbFirstAccounts: TSpeedButton;
    sbDetailsAccounts: TSpeedButton;
    SpeedButton20: TSpeedButton;
    sbCloseAccounts: TSpeedButton;
    tsTypes: TTabSheet;
    Panel7: TPanel;
    Panel12: TPanel;
    sbCancelTypesInclude: TSpeedButton;
    sbApplyTypesInclude: TSpeedButton;
    sbDeleteTypesInclude: TSpeedButton;
    sbAddTypesInclude: TSpeedButton;
    sbLastTypesInclude: TSpeedButton;
    sbNextTypesInclude: TSpeedButton;
    sbPriorTypesInclude: TSpeedButton;
    sbFirstTypesInclude: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    Panel2: TPanel;
    pnlDetailContrAgent: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    wwDBEdit2: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label6: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label7: TLabel;
    wwDBEdit5: TwwDBEdit;
    Label8: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label9: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label10: TLabel;
    wwDBEdit8: TwwDBEdit;
    Label16: TLabel;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit19: TwwDBEdit;
    wwDBEdit20: TwwDBEdit;
    Label25: TLabel;
    wwDBEdit21: TwwDBEdit;
    Panel3: TPanel;
    Splitter1: TSplitter;
    wwDBGrid4: TwwDBGrid;
    Panel9: TPanel;
    wwDBGrid1: TwwDBGrid;
    Splitter2: TSplitter;
    wwDBGrid5: TwwDBGrid;
    ibdsMainContractors: TIBDataSet;
    dsMainContractors: TDataSource;
    ibsWhite: TIBSQL;
    ibdsMainContractorsID: TLargeintField;
    ibdsMainContractorsNAME: TIBStringField;
    ibdsMainContractorsPRIVATE: TIntegerField;
    ibdsMainContractorsBOSS: TIBStringField;
    ibdsMainContractorsCONTACT_PERSON: TIBStringField;
    ibdsMainContractorsADDRESS: TIBStringField;
    ibdsMainContractorsUR_ADDRESS: TIBStringField;
    ibdsMainContractorsPHONE: TIBStringField;
    ibdsMainContractorsINN: TIBStringField;
    ibdsMainContractorsKPP: TIBStringField;
    ibdsMainContractorsOKPO: TIntegerField;
    ibdsMainContractorsOKONX: TIntegerField;
    ibdsMainContractorsCOMMENTS: TIBStringField;
    ibdsAccounts: TIBDataSet;
    ibdsSaldo: TIBDataSet;
    dsAccounts: TDataSource;
    dsSaldo: TDataSource;
    ibdsAccountsBANK_NAME: TIBStringField;
    ibdsAccountsCURRENCY_NAME: TIBStringField;
    ibdsAccountsACCOUNT: TIBStringField;
    ibdsSaldoCURRENCY_NAME: TIBStringField;
    ibdsMainAccounts: TIBDataSet;
    dsMainAccounts: TDataSource;
    ibdsMainAccountsID: TLargeintField;
    ibdsMainAccountsCONTRACTOR_ID: TLargeintField;
    ibdsMainAccountsCONTRACTOR_NAME: TIBStringField;
    ibdsMainAccountsBANK_ID: TIntegerField;
    ibdsMainAccountsBANK_NAME: TIBStringField;
    ibdsMainAccountsCURRENCY_ID: TLargeintField;
    ibdsMainAccountsCURRENCY_NAME: TIBStringField;
    ibdsMainAccountsACCOUNT: TIBStringField;
    ibdsMainAccountsVALID: TIntegerField;
    ibdsMainAccountsCOMMENTS: TIBStringField;
    ibdsSaldoSALDO_REAL: TFloatField;
    ibdsSaldoSALDO: TFloatField;
    ibdsAccountsSYMBOL: TIBStringField;
    wwDBLookupCombo2: TwwDBLookupCombo;
    ibdsCurrency: TIBDataSet;
    ibdsCurrencyID: TLargeintField;
    ibdsCurrencyNAME: TIBStringField;
    ibdsBanks: TIBDataSet;
    ibdsBanksID: TIntegerField;
    ibdsBanksNAME: TIBStringField;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Splitter3: TSplitter;
    Panel8: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    TreeView1: TTreeView;
    Panel11: TPanel;
    wwDBGrid3: TwwDBGrid;
    pnlAvailable: TPanel;
    dbgAvailableContractors: TwwDBGrid;
    Label1: TLabel;
    spAvailable: TSplitter;
    SpeedButton4: TSpeedButton;
    Panel16: TPanel;
    sbCancelTypes: TSpeedButton;
    sbApplyTypes: TSpeedButton;
    sbDeleteTypes: TSpeedButton;
    sbAddTypes: TSpeedButton;
    SpeedButton6: TSpeedButton;
    sbFilterAvailable: TSpeedButton;
    Label17: TLabel;
    wwDBEdit1: TwwDBEdit;
    Label19: TLabel;
    wwDBEdit10: TwwDBEdit;
    ibsChild: TIBSQL;
    ibdsMainTypes: TIBDataSet;
    ibdsMainTypesID: TLargeintField;
    ibdsMainTypesENTERPRISE_ID: TLargeintField;
    ibdsMainTypesENTERPRISE_NAME: TIBStringField;
    ibdsMainTypesPARENT_ID: TLargeintField;
    ibdsMainTypesNAME: TIBStringField;
    ibdsMainTypesCOMMENTS: TIBStringField;
    dsMainTypes: TDataSource;
    Label15: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesNAME: TIBStringField;
    ibdsEnterprisesID: TLargeintField;
    ibdsTree: TIBDataSet;
    ibdsTreeID: TLargeintField;
    ibdsTreePARENT_ID: TLargeintField;
    ibdsTreeNAME: TIBStringField;
    ibdsMainTypesInclude: TIBDataSet;
    ibdsMainTypesIncludeTYPE_ID: TLargeintField;
    ibdsMainTypesIncludeCONTRACTOR_ID: TLargeintField;
    ibdsMainTypesIncludeNAME: TIBStringField;
    dsMainTypesInclude: TDataSource;
    ibdsAvailableContractors: TIBDataSet;
    dsAvailableContractors: TDataSource;
    ibdsAvailableContractorsID: TLargeintField;
    ibdsAvailableContractorsNAME: TIBStringField;
    ibdsMainContractorsPRICE_PERCENT: TFloatField;
    pnlFilter: TPanel;
    SpeedButton1: TSpeedButton;
    sbReFilter: TSpeedButton;
    cbContractor: TwwCheckBox;
    edContractor: TwwDBEdit;
    pnlFilterAvailable: TPanel;
    SpeedButton2: TSpeedButton;
    sbReFilterAvailable: TSpeedButton;
    edAvailable: TwwDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure sbCloseContractorsClick(Sender: TObject);
    procedure sbDetailsContractorsClick(Sender: TObject);
    procedure ibdsMainContractorsAfterScroll(DataSet: TDataSet);
    procedure sbFirstContractorsClick(Sender: TObject);
    procedure sbPriorContractorsClick(Sender: TObject);
    procedure sbNextContractorsClick(Sender: TObject);
    procedure sbLastContractorsClick(Sender: TObject);
    procedure sbAddContractorsClick(Sender: TObject);
    procedure sbDeleteContractorsClick(Sender: TObject);
    procedure sbCancelContractorsClick(Sender: TObject);
    procedure sbApplyContractorsClick(Sender: TObject);
    procedure dsMainContractorsStateChange(Sender: TObject);
    procedure ibdsMainContractorsNewRecord(DataSet: TDataSet);
    procedure wwDBGrid4CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid4CreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure wwDBGrid4TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure ibdsMainContractorsUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainAccountsAfterScroll(DataSet: TDataSet);
    procedure sbFirstAccountsClick(Sender: TObject);
    procedure sbPriorAccountsClick(Sender: TObject);
    procedure sbNextAccountsClick(Sender: TObject);
    procedure sbLastAccountsClick(Sender: TObject);
    procedure sbAddAccountsClick(Sender: TObject);
    procedure sbDeleteAccountsClick(Sender: TObject);
    procedure sbCancelAccountsClick(Sender: TObject);
    procedure sbApplyAccountsClick(Sender: TObject);
    procedure ibdsMainAccountsNewRecord(DataSet: TDataSet);
    procedure ibdsMainAccountsUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Changing(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure TreeView1Deletion(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure sbAddTypesClick(Sender: TObject);
    procedure sbDeleteTypesClick(Sender: TObject);
    procedure ibdsMainTypesNewRecord(DataSet: TDataSet);
    procedure sbCancelTypesClick(Sender: TObject);
    procedure sbApplyTypesClick(Sender: TObject);
    procedure ibdsMainTypesUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainTypesIncludeAfterScroll(DataSet: TDataSet);
    procedure sbFirstTypesIncludeClick(Sender: TObject);
    procedure sbPriorTypesIncludeClick(Sender: TObject);
    procedure sbNextTypesIncludeClick(Sender: TObject);
    procedure sbLastTypesIncludeClick(Sender: TObject);
    procedure sbAddTypesIncludeClick(Sender: TObject);
    procedure sbDeleteTypesIncludeClick(Sender: TObject);
    procedure sbCancelTypesIncludeClick(Sender: TObject);
    procedure sbApplyTypesIncludeClick(Sender: TObject);
    procedure dsMainTypesIncludeStateChange(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ibdsMainTypesIncludeUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure SpeedButton6Click(Sender: TObject);
    procedure sbFilterContractorsClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbReFilterClick(Sender: TObject);
    procedure edContractorChange(Sender: TObject);
    procedure pnlFilterMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbReFilterAvailableClick(Sender: TObject);
    procedure sbFilterAvailableClick(Sender: TObject);
    procedure edAvailableChange(Sender: TObject);
    procedure wwDBGrid4CalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function GetWhereContractors: String;
    procedure GenerateSelectMainContractors;
    procedure StteChange(Suf: String; Enabled: Boolean);
    function GetWhereAccounts: String;
    procedure GenerateSelectAccounts;
    function GetWhereSaldo: String;
    procedure GenerateSelectSaldo;
    function GetWhereMainAccounts: String;
    procedure GenerateSelectMainAccounts;
    procedure GenerateTree(Node: TTreeNode);
    procedure GenerateSelectMainTypes;
    function GetWhereMainTypesInclude: String;
    procedure GenerateSelectMainTypesInclude;
    function GetWhereAvailableContractors: String;
    procedure GenerateSelectAvailableContractors;
  public
    { Public declarations }
    LookUpProcedure : TObjProcedure;
  end;

type
  PItemRec = ^ItemRec;
  ItemRec = Record
   Id    : Int64;
   Parent: Int64;
   CCount: Int64;
   Enterprise: Int64;
  end;

var
  frmKontrAgList: TfrmKontrAgList;

implementation

uses DM, Misk;

{$R *.DFM}

var
  OrderByContractors  : String = ' 3 asc, 2 asc';
  WhereSqlContractors : String = '';

  OrderByAccounts  : String = ' 1 asc, 2 asc, 3 asc';
  WhereSqlAccounts : String = '';

  OrderBySaldo  : String = ' 1 asc';
  WhereSqlSaldo : String = '';

  OrderByMainAccounts  : String = ' 3 asc, 5 asc, 7 asc';
  WhereSqlMainAccounts : String = '';

  GenerateSQLNode : TTreeNode;
  Enterprise_Name : String;

  OrderByMainTypesInclude  : String = ' 3 asc';
  WhereSqlMainTypesInclude : String = '';

  OrderByAvailableContractors  : String = ' 2 asc';
  WhereSqlAvailableContractors : String = '';
  
procedure TfrmKontrAgList.FormCreate(Sender: TObject);
 var ki : Integer;
begin
 PageControl1.ActivePageIndex := 0;
 FName := 'Контрагенты';
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
 GenerateSelectMainContractors;
 GenerateSelectMainAccounts;
 GenerateSelectSaldo;
 GenerateSelectAccounts;
 ibdsMainContractors.Open;
 ibdsMainAccounts.Open;
 ibdsAccounts.Open;
 ibdsSaldo.Open;
 ibdsBanks.Open;
 ibdsCurrency.Open;
 ibdsEnterprises.Open;
 GenerateTree(Nil)
end;

procedure TfrmKontrAgList.sbCloseContractorsClick(Sender: TObject);
begin
 Close;
 frmKontrAgList := nil
end;

procedure TfrmKontrAgList.sbDetailsContractorsClick(Sender: TObject);
 var pnl : TPanel;  
begin
 Case (Sender as TSpeedButton).Tag of
  1 : pnl := pnlDetailContrAgent;
  2 : pnl := pnlDetailAccounts;
 end;
 If (Sender as TSpeedButton).Down then
  pnl.Show
 else
  pnl.Hide
end;

procedure TfrmKontrAgList.ibdsMainContractorsAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmKontrAgList,'Contractors')
end;

procedure TfrmKontrAgList.sbFirstContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.First
end;

procedure TfrmKontrAgList.sbPriorContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.Prior
end;

procedure TfrmKontrAgList.sbNextContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.Next
end;

procedure TfrmKontrAgList.sbLastContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.Last
end;

procedure TfrmKontrAgList.sbAddContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.Append
end;

procedure TfrmKontrAgList.sbDeleteContractorsClick(Sender: TObject);
begin
 ibdsMainContractors.Delete;
 StteChange('Contractors', True)
end;

procedure TfrmKontrAgList.sbCancelContractorsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainContractors.Bookmark;
 ibdsMainContractors.CancelUpdates;
 StteChange('Contractors', False);
 try
  ibdsMainContractors.Bookmark := BookMark
 except
 end
end;

procedure TfrmKontrAgList.sbApplyContractorsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainContractors.Bookmark;
 try
  ibdsMainContractors.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Contractors', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainContractors.Bookmark := BookMark
 except
 end
end;

procedure TfrmKontrAgList.dsMainContractorsStateChange(Sender: TObject);
begin
 If ((Sender as TDataSource).State<>dsInactive) then
  If (Sender as TDataSource).State in [dsEdit,dsInsert] then
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), True)
  else
   StteChange(Copy((Sender as TDataSource).Name,7,Length((Sender as TDataSource).Name)-6), ((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmKontrAgList.ibdsMainContractorsNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_CONTRACTORS,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainContractorsID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainContractorsPRIVATE.Value := 0;
 ibdsMainContractorsPRICE_PERCENT.Value := 0
end;

procedure TfrmKontrAgList.wwDBGrid4CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByContractors);
  2: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByAccounts);
  3: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderBySaldo);
  4: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainAccounts);
  5: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByMainTypesInclude);
  6: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByAvailableContractors);
 end
end;

procedure TfrmKontrAgList.wwDBGrid4CreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height
end;

procedure TfrmKontrAgList.wwDBGrid4TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByContractors, (GetKeyState(VK_CONTROL)<0),
                              sbApplyContractors, sbCancelContractors, GenerateSelectMainContractors);
  2: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByAccounts, (GetKeyState(VK_CONTROL)<0),
                              sbApplyContractors, sbCancelContractors, GenerateSelectAccounts);
  3: wwDBGridTitleButtonClick(Sender, AFieldName, OrderBySaldo, (GetKeyState(VK_CONTROL)<0),
                              sbApplyContractors, sbCancelContractors, GenerateSelectSaldo);
  4: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainAccounts, (GetKeyState(VK_CONTROL)<0),
                              sbApplyAccounts, sbCancelAccounts, GenerateSelectMainAccounts);
  5: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByMainTypesInclude, (GetKeyState(VK_CONTROL)<0),
                              sbApplyTypesInclude, sbCancelTypesInclude, GenerateSelectMainTypesInclude);
  6: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByAvailableContractors, (GetKeyState(VK_CONTROL)<0),
                              sbApplyTypesInclude, sbCancelTypesInclude, GenerateSelectAvailableContractors);
 end
end;

function TfrmKontrAgList.GetWhereContractors: String;
begin
 Result := '';
 If (sbFilterContractors.Down) then
  If (cbContractor.Checked) and (edContractor.Text<>'') then
   Result := Result+'(UPPER(C.NAME collate PXW_CYRL) like '#39+AnsiUpperCase(edContractor.Text)+#39')';
 If (Result<>'') then
  Result := 'where '+Result  
end;

function TfrmKontrAgList.GetWhereAccounts: String;
begin
 Result := ''
end;

function TfrmKontrAgList.GetWhereSaldo: String;
begin
 Result := ''
end;

function TfrmKontrAgList.GetWhereMainAccounts: String;
begin
 Result := ''
end;

function TfrmKontrAgList.GetWhereMainTypesInclude: String;
begin
 Result := ''
end;

function TfrmKontrAgList.GetWhereAvailableContractors: String;
begin
 Result := '';
 If (sbFilterAvailable.Down) then
  If (edAvailable.Text<>'') then
   Result := Result+' and (UPPER(C.NAME collate PXW_CYRL) like '#39+AnsiUpperCase(edAvailable.Text)+#39')'
end;

procedure TfrmKontrAgList.GenerateSelectMainContractors;
begin
 WhereSqlContractors := GetWhereContractors;
 ibdsMainContractors.SelectSQL.Clear;
 ibdsMainContractors.SelectSQL.Add('select C.ID, C.NAME, C.PRIVATE, C.BOSS, C.CONTACT_PERSON,');
 ibdsMainContractors.SelectSQL.Add('C.ADDRESS, C.UR_ADDRESS, C.PHONE, C.INN, C.KPP, C.OKPO,');
 ibdsMainContractors.SelectSQL.Add('C.OKONX, C.PRICE_PERCENT, C.COMMENTS');
 ibdsMainContractors.SelectSQL.Add('from CONTRACTORS C');
 ibdsMainContractors.SelectSQL.Add(WhereSqlContractors);
 ibdsMainContractors.SelectSQL.Add('order by'+OrderByContractors)
end;

procedure TfrmKontrAgList.GenerateSelectAccounts;
begin
 WhereSqlAccounts := GetWhereAccounts;
 ibdsAccounts.SelectSQL.Clear;
 ibdsAccounts.SelectSQL.Add('select B.NAME BANK_NAME,C.NAME CURRENCY_NAME, C.SYMBOL, CA.ACCOUNT');
 ibdsAccounts.SelectSQL.Add('from CONTRACTORS_ACCOUNTS CA, BANKS B, CURRENCY C');
 ibdsAccounts.SelectSQL.Add('where  (CA.CONTRACTOR_ID=:ID) and (CA.CURRENCY_ID=C.ID) and');
 ibdsAccounts.SelectSQL.Add('(CA.BANK_ID=B.ID)');
 ibdsAccounts.SelectSQL.Add(WhereSqlAccounts);
 ibdsAccounts.SelectSQL.Add('order by'+OrderByAccounts)
end;

procedure TfrmKontrAgList.GenerateSelectSaldo;
begin
 WhereSqlSaldo := GetWhereSaldo;
 ibdsSaldo.SelectSQL.Clear;
 ibdsSaldo.SelectSQL.Add('select C.NAME CURRENCY_NAME,');
 If (Black) then
  ibdsSaldo.SelectSQL.Add('CS.SALDO_REAL,');
 ibdsSaldo.SelectSQL.Add('CS.SALDO');
 ibdsSaldo.SelectSQL.Add('from CONTRACTORS_SALDO CS, CURRENCY C');
 ibdsSaldo.SelectSQL.Add('where  (CS.CONTRACTOR_ID=:ID) and (CS.CURRENCY_ID=C.ID)');
 ibdsSaldo.SelectSQL.Add(WhereSqlSaldo);
 ibdsSaldo.SelectSQL.Add('order by'+OrderBySaldo)
end;

procedure TfrmKontrAgList.GenerateSelectMainAccounts;
begin
 WhereSqlMainAccounts := GetWhereMainAccounts;
 ibdsMainAccounts.SelectSQL.Clear;
 ibdsMainAccounts.SelectSQL.Add('select CA.ID, CA.CONTRACTOR_ID, CO.NAME CONTRACTOR_NAME,');
 ibdsMainAccounts.SelectSQL.Add('CA.BANK_ID, B.NAME BANK_NAME, CA.CURRENCY_ID,');
 ibdsMainAccounts.SelectSQL.Add('C.NAME CURRENCY_NAME, CA.ACCOUNT, CA.VALID, CA.COMMENTS');
 ibdsMainAccounts.SelectSQL.Add('from CONTRACTORS_ACCOUNTS CA, BANKS B, CURRENCY C, CONTRACTORS CO');
 ibdsMainAccounts.SelectSQL.Add('where  (CA.CONTRACTOR_ID=CO.ID) and (CA.CURRENCY_ID=C.ID) and');
 ibdsMainAccounts.SelectSQL.Add('(CA.BANK_ID=B.ID)');
 ibdsMainAccounts.SelectSQL.Add(WhereSqlMainAccounts);
 ibdsMainAccounts.SelectSQL.Add('order by'+OrderByMainAccounts)
end;

procedure TfrmKontrAgList.GenerateSelectMainTypesInclude;
begin
 WhereSqlMainAccounts := GetWhereMainTypesInclude;
 ibdsMainTypesInclude.SelectSQL.Clear;
 ibdsMainTypesInclude.SelectSQL.Add('select CTI.TYPE_ID, CTI.CONTRACTOR_ID, C.NAME');
 ibdsMainTypesInclude.SelectSQL.Add('from CONTRACTOR_TYPES_INCLUDE CTI, CONTRACTORS C');
 ibdsMainTypesInclude.SelectSQL.Add('where (CTI.TYPE_ID=:ID) and (CTI.CONTRACTOR_ID=C.ID)');
 ibdsMainTypesInclude.SelectSQL.Add(WhereSqlMainTypesInclude);
 ibdsMainTypesInclude.SelectSQL.Add('order by'+OrderByMainTypesInclude)
end;

procedure TfrmKontrAgList.GenerateSelectAvailableContractors;
begin
 WhereSqlAvailableContractors := GetWhereAvailableContractors;
 ibdsAvailableContractors.SelectSQL.Clear;
 ibdsAvailableContractors.SelectSQL.Add('select C.ID, C.NAME');
 ibdsAvailableContractors.SelectSQL.Add('from CONTRACTORS C');
 ibdsAvailableContractors.SelectSQL.Add('where NOT (exists(');
 ibdsAvailableContractors.SelectSQL.Add('select * from CONTRACTOR_TYPES_INCLUDE CTI');
 ibdsAvailableContractors.SelectSQL.Add('where (C.ID=CTI.CONTRACTOR_ID) and (CTI.TYPE_ID=:TYPE_ID)))');
 ibdsAvailableContractors.SelectSQL.Add(WhereSqlAvailableContractors);
 ibdsAvailableContractors.SelectSQL.Add('order by'+OrderByAvailableContractors);
 ibdsAvailableContractors.ParamByName('TYPE_ID').AsInt64 := ibdsMainTypesIncludeTYPE_ID.Value
end;

procedure TfrmKontrAgList.ibdsMainContractorsUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsMainContractors.InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings(ibdsMainContractors.ModifySQL);
    ukDelete: ibsWhite.SQL.AddStrings(ibdsMainContractors.DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   If (UpdateKind in [ukInsert, ukModify]) then
    Begin
     ibsWhite.ParamByName('NAME').Value := ibdsMainContractorsNAME.AsVariant;
     ibsWhite.ParamByName('PRIVATE').Value := ibdsMainContractorsPRIVATE.AsVariant;
     ibsWhite.ParamByName('BOSS').Value := ibdsMainContractorsBOSS.AsVariant;
     ibsWhite.ParamByName('CONTACT_PERSON').Value := ibdsMainContractorsCONTACT_PERSON.AsVariant;
     ibsWhite.ParamByName('ADDRESS').Value := ibdsMainContractorsADDRESS.AsVariant;
     ibsWhite.ParamByName('UR_ADDRESS').Value := ibdsMainContractorsUR_ADDRESS.AsVariant;
     ibsWhite.ParamByName('PHONE').Value := ibdsMainContractorsPHONE.AsVariant;
     ibsWhite.ParamByName('INN').Value := ibdsMainContractorsINN.AsVariant;
     ibsWhite.ParamByName('KPP').Value := ibdsMainContractorsKPP.AsVariant;
     ibsWhite.ParamByName('OKPO').Value := ibdsMainContractorsOKPO.AsVariant;
     ibsWhite.ParamByName('OKONX').Value := ibdsMainContractorsOKONX.AsVariant;
     ibsWhite.ParamByName('PRICE_PERCENT').Value := ibdsMainContractorsPRICE_PERCENT.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainContractorsCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainContractorsID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainContractorsID.OldValue);
   ibsWhite.ExecQuery
  End
end;

procedure TfrmKontrAgList.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
begin
 If (frmKontrAgList<>nil) then
  For k := 0 to Pred(frmKontrAgList.ComponentCount) do
   Begin
    If (Components[k].Name='sbApply'+Suf) or
       (Components[k].Name='sbCancel'+Suf) then
     (Components[k] as TControl).Enabled := Enabled;
    If (Components[k] is TTabSheet) and
       (Components[k].Name<>'ts'+Suf) then
     (Components[k] as TTabSheet).TabVisible := NOT Enabled
   End
end;

procedure TfrmKontrAgList.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainAccountsCONTRACTOR_ID.Value := ibdsMainContractorsID.Value
end;

procedure TfrmKontrAgList.wwDBLookupCombo3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainAccountsBANK_ID.Value := ibdsBanksID.Value
end;

procedure TfrmKontrAgList.wwDBLookupCombo4CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainAccountsCURRENCY_ID.Value := ibdsCurrencyID.Value
end;

procedure TfrmKontrAgList.ibdsMainAccountsAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmKontrAgList,'Accounts')
end;

procedure TfrmKontrAgList.sbFirstAccountsClick(Sender: TObject);
begin
 ibdsMainAccounts.First
end;

procedure TfrmKontrAgList.sbPriorAccountsClick(Sender: TObject);
begin
 ibdsMainAccounts.Prior
end;

procedure TfrmKontrAgList.sbNextAccountsClick(Sender: TObject);
begin
 ibdsMainAccounts.Next
end;

procedure TfrmKontrAgList.sbLastAccountsClick(Sender: TObject);
begin
 ibdsMainAccounts.Last
end;

procedure TfrmKontrAgList.sbAddAccountsClick(Sender: TObject);
begin
 ibdsMainAccounts.Append
end;

procedure TfrmKontrAgList.sbDeleteAccountsClick(Sender: TObject);
begin
 ibdsMainAccounts.Delete;
 StteChange('Accounts', True)
end;

procedure TfrmKontrAgList.sbCancelAccountsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainAccounts.Bookmark;
 ibdsMainAccounts.CancelUpdates;
 StteChange('Accounts', False);
 try
  ibdsMainAccounts.Bookmark := BookMark
 except
 end
end;

procedure TfrmKontrAgList.sbApplyAccountsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainAccounts.Bookmark;
 try
  ibdsMainAccounts.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Accounts', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainAccounts.Bookmark := BookMark
 except
 end
end;

procedure TfrmKontrAgList.ibdsMainAccountsNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_CONTRACTORS_ACCOUNTS,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainAccountsID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainAccountsCONTRACTOR_ID.Value := ibdsMainContractorsID.Value;
 ibdsMainAccountsCONTRACTOR_NAME.Value := ibdsMainContractorsNAME.Value;
 ibdsMainAccountsVALID.Value := 1
end;

procedure TfrmKontrAgList.ibdsMainAccountsUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsMainAccounts.InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings(ibdsMainAccounts.ModifySQL);
    ukDelete: ibsWhite.SQL.AddStrings(ibdsMainAccounts.DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   If (UpdateKind in [ukInsert, ukModify]) then
    Begin
     ibsWhite.ParamByName('CONTRACTOR_ID').AsInt64 := ibdsMainAccountsCONTRACTOR_ID.Value;
     ibsWhite.ParamByName('BANK_ID').AsInt64 := ibdsMainAccountsBANK_ID.Value;
     ibsWhite.ParamByName('CURRENCY_ID').AsInt64 := ibdsMainAccountsCURRENCY_ID.Value;
     ibsWhite.ParamByName('ACCOUNT').Value := ibdsMainAccountsACCOUNT.AsVariant;
     ibsWhite.ParamByName('VALID').Value := ibdsMainAccountsVALID.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainAccountsCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainAccountsID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainAccountsID.OldValue);
   ibsWhite.ExecQuery
  End
end;

procedure TfrmKontrAgList.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If (not Highlight) and ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('Valid').AsInteger=0) then
  ABrush.Color := clSilver
end;

procedure TfrmKontrAgList.GenerateTree(Node: TTreeNode);
 var R : PItemRec;
     NewNode : TTreeNode;
begin
 ibsChild.SQL.Clear;
 If (Node=nil) then
  Begin
   ibsChild.SQL.Add('select E.ID, E.NAME, E.ID ENTERPRISE, NULL PARENT_ID, count(CT.ID) CHIELD_COUNT');
   ibsChild.SQL.Add('from ENTERPRISES E left outer join CONTRACTOR_TYPES CT on');
   ibsChild.SQL.Add('(CT.ENTERPRISE_ID=E.ID) or (CT.ENTERPRISE_ID=-1)');
   ibsChild.SQL.Add('group by E.ID, E.NAME')
  End
 else
  Begin
   If (PItemRec(Node.Data)^.Parent=0) then
    Begin
     ibsChild.SQL.Add('select CT.ID, CT.NAME, '+IntToStr(PItemRec(Node.Data)^.ID)+' ENTERPRISE, -1 PARENT_ID, CT.CHIELD_COUNT');
     ibsChild.SQL.Add('from CONTRACTOR_TYPES CT');
     ibsChild.SQL.Add('where ((CT.ENTERPRISE_ID='+IntToStr(PItemRec(Node.Data)^.ID)+') or (CT.ENTERPRISE_ID=-1)) and (CT.PARENT_ID is null)')
    End
   else
    Begin
     ibsChild.SQL.Add('select CT.ID, CT.NAME, CT.ENTERPRISE_ID ENTERPRISE, PARENT_ID, CT.CHIELD_COUNT');
     ibsChild.SQL.Add('from CONTRACTOR_TYPES CT');
     ibsChild.SQL.Add('where (CT.PARENT_ID='+IntToStr(PItemRec(Node.Data)^.ID)+')');
    End;
   Node.DeleteChildren
  End;
 ibsChild.SQL.Add('order by 2');
 ibsChild.ExecQuery;
 While not (ibsChild.EOF) do
  Begin
   NewNode := TreeView1.Items.AddChild(Node, ibsChild.FieldByName('NAME').asString);
   New(R);
   NewNode.Data := R;
   R^.Id := ibsChild.FieldByName('ID').AsInt64;
   R^.Parent := ibsChild.FieldByName('PARENT_ID').asInt64;
   R^.CCount := ibsChild.FieldByName('CHIELD_COUNT').asInt64;
   R^.Enterprise := ibsChild.FieldByName('ENTERPRISE').asInt64;
   NewNode.HasChildren := (R^.CCount > 0);
   ibsChild.Next
  End;
 ibsChild.Close
end;

procedure TfrmKontrAgList.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
 GenerateSQLNode := Node;
 ibdsMainTypesInclude.Close;
 ibdsMainTypesInclude.Open
end;

procedure TfrmKontrAgList.TreeView1Changing(Sender: TObject;
  Node: TTreeNode; var AllowChange: Boolean);
 var k : Integer;
begin
 If (sbApplyTypes.Enabled) or (sbApplyTypesInclude.Enabled) then
  Begin
   AllowChange := False;
   Case MessageDlg('Имеются несохраненные изменения. Сохранить?', mtConfirmation, [mbYes,mbNo,mbCancel],0) of
    mrYes   : Begin
               k := Node.AbsoluteIndex;
               If (sbApplyTypes.Enabled) then sbApplyTypes.Click;
               If (sbApplyTypesInclude.Enabled) then sbApplyTypesInclude.Click;
               TreeView1.Selected := TreeView1.Items[k];
               TreeView1.Items[k].Expand(False)
              End;
    mrNo    : Begin
               AllowChange := True;
               If (sbApplyTypes.Enabled) then sbCancelTypes.Click;
               If (sbApplyTypesInclude.Enabled) then sbCancelTypesInclude.Click;
               ibdsMainTypes.Close;
               ibdsAvailableContractors.Close;
               GenerateSQLNode := Node;
               GenerateSelectMainTypes;
               ibdsMainTypes.Open;
               ibdsMainTypesInclude.Open;
               ibdsAvailableContractors.ParamByName('TYPE_ID').AsInt64 := ibdsMainTypesIncludeTYPE_ID.Value;
               ibdsAvailableContractors.Open
              End;
    mrCancel: Exit
   End
  End
 else
  Begin
   ibdsMainTypes.Close;
   ibdsAvailableContractors.Close;
   GenerateSQLNode := Node;
   GenerateSelectMainTypes;
   ibdsMainTypes.Open;
   ibdsMainTypesInclude.Open;
   ibdsAvailableContractors.ParamByName('TYPE_ID').AsInt64 := ibdsMainTypesIncludeTYPE_ID.Value;
   ibdsAvailableContractors.Open
  End
end;

procedure TfrmKontrAgList.GenerateSelectMainTypes;
begin
 ibdsMainTypes.SelectSQL.Clear;
 If (GenerateSQLNode<>nil) and (PItemRec(GenerateSQLNode.Data)^.Parent=0) then
  Begin
   ibdsMainTypes.SelectSQL.Add('select CT.ID, CT.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME,');
   ibdsMainTypes.SelectSQL.Add('CT.PARENT_ID, CT.NAME, CT.COMMENTS');
   ibdsMainTypes.SelectSQL.Add('from CONTRACTOR_TYPES CT, ENTERPRISES E');
   ibdsMainTypes.SelectSQL.Add('where (CT.ENTERPRISE_ID=E.ID) and ((CT.ENTERPRISE_ID='+IntToStr(PItemRec(GenerateSQLNode.Data)^.Enterprise)+') or (CT.ENTERPRISE_ID=-1)) and (CT.PARENT_ID is null)');
   ibdsMainTypes.SelectSQL.Add('order by 5')
  End
 else
  Begin
   ibdsMainTypes.SelectSQL.Add('select CT.ID, CT.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME,');
   ibdsMainTypes.SelectSQL.Add('CT.PARENT_ID, CT.NAME, CT.COMMENTS');
   ibdsMainTypes.SelectSQL.Add('from CONTRACTOR_TYPES CT, ENTERPRISES E');
   ibdsMainTypes.SelectSQL.Add('where (CT.ENTERPRISE_ID=E.ID) and (CT.ID='+IntToStr(PItemRec(GenerateSQLNode.Data)^.ID)+')');
   ibdsMainTypes.SelectSQL.Add('order by 5')
  End
end;

procedure TfrmKontrAgList.TreeView1Deletion(Sender: TObject;
  Node: TTreeNode);
begin
 Dispose(PItemRec(Node.Data))
end;

procedure TfrmKontrAgList.TreeView1Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
begin
 GenerateTree(Node)
end;

procedure TfrmKontrAgList.sbAddTypesClick(Sender: TObject);
begin
 Enterprise_Name := ibdsMainTypesENTERPRISE_NAME.Value;
 ibdsMainTypes.Append
end;

procedure TfrmKontrAgList.sbDeleteTypesClick(Sender: TObject);
begin
 ibdsMainTypes.Delete;
 StteChange('Types', True)
end;

procedure TfrmKontrAgList.ibdsMainTypesNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_CONTRACTOR_TYPES,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainTypesID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainTypesENTERPRISE_ID.Value := PItemRec(TreeView1.Selected.Data)^.Enterprise;
 ibdsMainTypesENTERPRISE_NAME.Value := Enterprise_Name;
 If (PItemRec(TreeView1.Selected.Data)^.Parent <>0) then
  ibdsMainTypesPARENT_ID.Value := PItemRec(TreeView1.Selected.Data)^.ID
end;

procedure TfrmKontrAgList.sbCancelTypesClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainTypes.Bookmark;
 ibdsMainTypes.CancelUpdates;
 StteChange('Types', False);
 try
  ibdsMainTypes.Bookmark := BookMark
 except
 end
end;

procedure TfrmKontrAgList.sbApplyTypesClick(Sender: TObject);
 var BookMark : String;
     k : Integer;
begin
 BookMark := ibdsMainTypes.Bookmark;
 try
  ibdsMainTypes.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Types', False);
  ibdsTree.ParamByName('ID').AsInt64 := PItemRec(TreeView1.Selected.Data)^.ID;
  TreeView1.Items.Clear;
  GenerateTree(Nil);
  TreeView1.Items[0].Expand(False);
  ibdsTree.Open;
  ibdsTree.Last;
  While Not (ibdsTree.Bof) do
   Begin
    For k := 0 to Pred(TreeView1.Items.Count) do
     If (TreeView1.Items[k].Text=ibdsTreeNAME.Value) then
      Begin
       TreeView1.Selected := TreeView1.Items[k];
       TreeView1.Items[k].Expand(False);
       Break
      End;
    ibdsTree.Prior
   End;
  ibdsTree.Close
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainTypes.Bookmark := BookMark
 except
 end
end;

procedure TfrmKontrAgList.ibdsMainTypesUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsMainTypes.InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings(ibdsMainTypes.ModifySQL);
    ukDelete: ibsWhite.SQL.AddStrings(ibdsMainTypes.DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   If (UpdateKind in [ukInsert, ukModify]) then
    Begin
     ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainTypesENTERPRISE_ID.Value;
     If (ibdsMainTypesPARENT_ID.IsNull) then
      ibsWhite.ParamByName('PARENT_ID').AsVariant := NULL
     else
      ibsWhite.ParamByName('PARENT_ID').AsInt64 := ibdsMainTypesPARENT_ID.Value;
     ibsWhite.ParamByName('NAME').Value := ibdsMainTypesNAME.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainTypesCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainTypesID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainTypesID.OldValue);
   ibsWhite.ExecQuery
  End
end;

procedure TfrmKontrAgList.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainTypesENTERPRISE_ID.Value := ibdsEnterprisesID.Value
end;

procedure TfrmKontrAgList.ibdsMainTypesIncludeAfterScroll(
  DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmKontrAgList,'TypesInclude')
end;

procedure TfrmKontrAgList.sbFirstTypesIncludeClick(Sender: TObject);
begin
 ibdsMainTypesInclude.First
end;

procedure TfrmKontrAgList.sbPriorTypesIncludeClick(Sender: TObject);
begin
 ibdsMainTypesInclude.Prior
end;

procedure TfrmKontrAgList.sbNextTypesIncludeClick(Sender: TObject);
begin
 ibdsMainTypesInclude.Next
end;

procedure TfrmKontrAgList.sbLastTypesIncludeClick(Sender: TObject);
begin
 ibdsMainTypesInclude.Last
end;

procedure TfrmKontrAgList.sbAddTypesIncludeClick(Sender: TObject);
begin
 pnlAvailable.Show;
 spAvailable.Show
end;

procedure TfrmKontrAgList.sbDeleteTypesIncludeClick(Sender: TObject);
begin
 ibdsMainTypesInclude.Delete;
 sbApplyTypesInclude.Enabled := True;
 sbCancelTypesInclude.Enabled := True;
 tsContractors.Hide;
 tsAccounts.Hide
end;

procedure TfrmKontrAgList.sbCancelTypesIncludeClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainTypesInclude.Bookmark;
 ibdsMainTypesInclude.CancelUpdates;
 sbApplyTypesInclude.Enabled := False;
 sbCancelTypesInclude.Enabled := False;
 tsContractors.Visible := True;
 tsAccounts.Visible := True;
 try
  ibdsMainTypesInclude.Bookmark := BookMark
 except
 end
end;

procedure TfrmKontrAgList.sbApplyTypesIncludeClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainTypesInclude.Bookmark;
 try
  ibdsMainTypesInclude.ApplyUpdates;
  trMain.CommitRetaining;
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 sbApplyTypesInclude.Enabled := False;
 sbCancelTypesInclude.Enabled := False;
 tsContractors.Visible := True;
 tsAccounts.Visible := True;
 ibdsAvailableContractors.Close;
 ibdsAvailableContractors.Open;
 try
  ibdsMainTypesInclude.Bookmark := BookMark
 except
 end
end;

procedure TfrmKontrAgList.dsMainTypesIncludeStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  Begin
   sbApplyTypesInclude.Enabled := True;
   sbCancelTypesInclude.Enabled := True;
   tsContractors.Hide;
   tsAccounts.Hide
  End
 else
  Begin
   sbApplyTypesInclude.Enabled := ibdsMainTypesInclude.UpdatesPending;
   sbCancelTypesInclude.Enabled := ibdsMainTypesInclude.UpdatesPending;
   tsContractors.Visible := NOT ibdsMainTypesInclude.UpdatesPending;
   tsAccounts.Visible := NOT ibdsMainTypesInclude.UpdatesPending
  End
end;

procedure TfrmKontrAgList.SpeedButton4Click(Sender: TObject);
begin
 pnlAvailable.Hide;
 spAvailable.Hide
end;

procedure TfrmKontrAgList.ibdsMainTypesIncludeUpdateRecord(
  DataSet: TDataSet; UpdateKind: TUpdateKind;
  var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsMainTypesInclude.InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings(ibdsMainTypesInclude.ModifySQL);
    ukDelete: ibsWhite.SQL.AddStrings(ibdsMainTypesInclude.DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   If (UpdateKind in [ukInsert, ukModify]) then
    Begin
     ibsWhite.ParamByName('TYPE_ID').AsInt64 := ibdsMainTypesIncludeTYPE_ID.Value;
     ibsWhite.ParamByName('CONTRACTOR_ID').AsInt64 := ibdsMainTypesIncludeCONTRACTOR_ID.Value
    End;
   If (UpdateKind<>ukInsert) then
    Begin
     ibsWhite.ParamByName('OLD_TYPE_ID').AsString := IntToStr(ibdsMainTypesIncludeTYPE_ID.OldValue);
     ibsWhite.ParamByName('OLD_CONTRACTOR_ID').AsString := IntToStr(ibdsMainTypesIncludeCONTRACTOR_ID.OldValue)
    End;
   ibsWhite.ExecQuery
  End
end;

procedure TfrmKontrAgList.SpeedButton6Click(Sender: TObject);
 var k : Integer;
begin
 For k := 0 to Pred(dbgAvailableContractors.SelectedList.Count) do
  Begin
   ibdsAvailableContractors.GotoBookmark(dbgAvailableContractors.SelectedList.Items[k]);
   If NOT (ibdsMainTypesInclude.Locate('NAME',ibdsAvailableContractorsNAME.Value,[])) then
    Begin
     ibdsMainTypesInclude.Append;
     ibdsMainTypesIncludeTYPE_ID.Value := PItemRec(TreeView1.Selected.Data)^.Id;
     ibdsMainTypesIncludeCONTRACTOR_ID.Value := ibdsAvailableContractorsID.Value;
     ibdsMainTypesIncludeNAME.Value := ibdsAvailableContractorsNAME.Value
    End 
  End;
 dbgAvailableContractors.SelectedList.Clear
end;

procedure TfrmKontrAgList.sbFilterContractorsClick(Sender: TObject);
 var BookMark : String;
begin
 pnlFilter.Visible := sbFilterContractors.Down;
 If (sbFilterContractors.Down) then
  edContractor.SetFocus;
 ibdsMainContractors.DisableControls;
 BookMark := ibdsMainContractorsID.AsString;
 Cursor := crHourGlass;
 ibdsMainContractors.Close;
 GenerateSelectMainContractors;
 ibdsMainContractors.Open;
 try
  ibdsMainContractors.Locate('ID',BookMark,[])
 finally
  ibdsMainContractors.EnableControls
 end;
 Cursor := crDefault
end;

procedure TfrmKontrAgList.SpeedButton1Click(Sender: TObject);
begin
 (Sender as TSpeedButton).Parent.Hide
end;

procedure TfrmKontrAgList.sbReFilterClick(Sender: TObject);
begin
 sbFilterContractors.Click;
 sbReFilter.Visible := False
end;

procedure TfrmKontrAgList.edContractorChange(Sender: TObject);
begin
 sbReFilter.Visible := True
end;

procedure TfrmKontrAgList.pnlFilterMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 const SC_DRAGMOVE = $F012;
begin
 ReleaseCapture;
 (Sender as TPanel).Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
end;

procedure TfrmKontrAgList.wwDBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedure) then
  LookUpProcedure
end;

procedure TfrmKontrAgList.sbReFilterAvailableClick(Sender: TObject);
begin
 sbFilterAvailable.Click;
 (Sender as TSpeedButton).Visible := False
end;

procedure TfrmKontrAgList.sbFilterAvailableClick(Sender: TObject);
 var BookMark : String;
begin
 pnlFilterAvailable.Visible := sbFilterAvailable.Down;
 If (sbFilterAvailable.Down) then
  edAvailable.SetFocus;
 ibdsAvailableContractors.DisableControls;
 BookMark := ibdsAvailableContractors.Bookmark;
 Cursor := crHourGlass;
 ibdsAvailableContractors.Close;
 GenerateSelectAvailableContractors;
 ibdsAvailableContractors.Open;
 try
  ibdsAvailableContractors.Bookmark := BookMark
 finally
  ibdsAvailableContractors.EnableControls
 end;
 Cursor := crDefault
end;

procedure TfrmKontrAgList.edAvailableChange(Sender: TObject);
begin
 sbReFilterAvailable.Visible := True
end;

procedure TfrmKontrAgList.wwDBGrid4CalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByContractors);
  2: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByAccounts);
  3: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderBySaldo);
  4: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainAccounts);
  5: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByMainTypesInclude);
  6: wwDBGridCalcTitleAttributes(Sender, AFieldName, AFieldName, AFont, ABrush, ATitleAlignment, OrderByAvailableContractors);
 end
end;

procedure TfrmKontrAgList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 frmKontrAgList := nil
end;

end.
