unit Organizations;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, ComCtrls, fcStatusBar, ExtCtrls, Buttons, StdCtrls, Grids, Wwdbigrd,
  Wwdbgrid, Mask, DBCtrls, ImgList, Db, wwdblook, wwdbedit, Variants,
  wwdbdatetimepicker, IBDatabase, IBSQL, IBCustomDataSet, Wwdotdot,
  Wwdbcomb, dxtree, dxdbtree, cxControls, cxContainer, cxTreeView, cxEdit,
  cxTextEdit, cxMemo, cxDBEdit, RzPanel, RzSplit, dxdbtrel, Menus;

type
  TfrmOrganizations = class(TfrmLike)
    PageControl1: TPageControl;
    tsOrg: TTabSheet;
    tsAcnts: TTabSheet;
    tsStores: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    pnlDetailOrg: TPanel;
    Panel4: TPanel;
    sbCancelOrg: TSpeedButton;
    sbApplyOrg: TSpeedButton;
    sbDeleteOrg: TSpeedButton;
    sbAddOrg: TSpeedButton;
    sbLastOrg: TSpeedButton;
    sbNextOrg: TSpeedButton;
    sbPriorOrg: TSpeedButton;
    sbFirstOrg: TSpeedButton;
    sbDetailOrg: TSpeedButton;
    sbExit: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    wwDBGrid2: TwwDBGrid;
    pnlDetailAccounts: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBCheckBox4: TDBCheckBox;
    Panel10: TPanel;
    sbCancelAcnts: TSpeedButton;
    sbApplyAcnts: TSpeedButton;
    sbDeleteAcnts: TSpeedButton;
    SpeedButton14: TSpeedButton;
    sbLastAcnts: TSpeedButton;
    sbNextAcnts: TSpeedButton;
    sbPriorAcnts: TSpeedButton;
    sbFirstAcnts: TSpeedButton;
    sbDetailsAccounts: TSpeedButton;
    SpeedButton21: TSpeedButton;
    Panel7: TPanel;
    Panel8: TPanel;
    wwDBGrid3: TwwDBGrid;
    pnlDetailStores: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBCheckBox5: TDBCheckBox;
    Panel12: TPanel;
    sbCancelStores: TSpeedButton;
    sbApplyStores: TSpeedButton;
    sbDeleteStores: TSpeedButton;
    sbAddStores: TSpeedButton;
    sbLastStores: TSpeedButton;
    sbNextStores: TSpeedButton;
    sbPriorStores: TSpeedButton;
    sbFirstStores: TSpeedButton;
    sbDetailStores: TSpeedButton;
    SpeedButton32: TSpeedButton;
    Label1: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    wwDBLookupCombo5: TwwDBLookupCombo;
    ibdsMainOrg: TIBDataSet;
    ibsWhite: TIBSQL;
    dsMainOrg: TDataSource;
    ibdsMainOrgID: TLargeintField;
    ibdsMainOrgNAME: TIBStringField;
    ibdsMainOrgADDRESS: TIBStringField;
    ibdsMainOrgUR_ADDRESS: TIBStringField;
    ibdsMainOrgPHONE: TIBStringField;
    ibdsMainOrgINN: TIBStringField;
    ibdsMainOrgKPP: TIBStringField;
    ibdsMainOrgOKPO: TIntegerField;
    ibdsMainOrgOKONX: TIntegerField;
    ibdsMainOrgTAKE_NDS: TIntegerField;
    ibdsMainOrgVALID: TIntegerField;
    ibdsMainOrgCOMMENTS: TIBStringField;
    ibdsPersons: TIBDataSet;
    ibdsPersonsID: TLargeintField;
    ibdsMainAccounts: TIBDataSet;
    dsMainAccounts: TDataSource;
    ibdsMainAccountsID: TLargeintField;
    ibdsMainAccountsENTERPRISE_NAME: TIBStringField;
    ibdsMainAccountsBANK_NAME: TIBStringField;
    ibdsMainAccountsCURRENCY_NAME: TIBStringField;
    ibdsMainAccountsACCOUNT: TIBStringField;
    ibdsMainAccountsCURRENT_VALUE: TFloatField;
    ibdsMainAccountsVALID: TIntegerField;
    ibdsMainAccountsCOMMENTS: TIBStringField;
    ibdsBanks: TIBDataSet;
    ibdsBanksNAME: TIBStringField;
    ibdsCurrency: TIBDataSet;
    ibdsMainAccountsSTART_DATE: TDateField;
    ibdsMainStores: TIBDataSet;
    dsMainStores: TDataSource;
    ibdsMainStoresID: TLargeintField;
    ibdsMainStoresENTERPRISE_NAME: TIBStringField;
    ibdsMainStoresNAME: TIBStringField;
    ibdsMainStoresSTORE_ADDRESS: TIBStringField;
    ibdsMainStoresSTORE_PHONE: TIBStringField;
    ibdsMainStoresVALID: TIntegerField;
    ibdsMainStoresCOMMENTS: TIBStringField;
    wwDBLookupCombo6: TwwDBLookupCombo;
    ibdsMainStoresENTERPRISE_ID: TLargeintField;
    ibdsMainStoresKEEPER_ID: TLargeintField;
    ibdsMainAccountsENTERPRISE_ID: TLargeintField;
    ibdsMainAccountsCURRENCY_ID: TLargeintField;
    ibdsBanksID: TIntegerField;
    ibdsCurrencyID: TLargeintField;
    ibdsCurrencyNAME: TIBStringField;
    ibdsMainAccountsBANK_ID: TIntegerField;
    ibdsMainOrgID_BOSS: TLargeintField;
    ibdsMainOrgID_CHIEF_ACCOUNTANT: TLargeintField;
    ibdsMainOrgBOSS_NAME: TIBStringField;
    ibdsMainOrgCHIEF_ACCOUNTANT_NAME: TIBStringField;
    ibdsPersonsFULLNAME: TIBStringField;
    ibdsMainStoresKEEPER_NAME: TIBStringField;
    ibdsMainStoresIN_LEAVINGS: TIntegerField;
    Label25: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    Label26: TLabel;
    ibdsMainOrgDEFAULT_ID_ACCOUNT: TLargeintField;
    Label27: TLabel;
    wwDBLookupCombo7: TwwDBLookupCombo;
    tsDesks: TTabSheet;
    Panel3: TPanel;
    sbCancelDesks: TSpeedButton;
    sbApplyDesks: TSpeedButton;
    sbDeleteDesks: TSpeedButton;
    sbAddDesks: TSpeedButton;
    sbLastDesks: TSpeedButton;
    sbNextDesks: TSpeedButton;
    sbPriorDesks: TSpeedButton;
    sbFirstDesks: TSpeedButton;
    SpeedButton10: TSpeedButton;
    ibdsDesks: TIBDataSet;
    dsDesks: TDataSource;
    ibdsDesksID: TLargeintField;
    ibdsDesksENTERPRISE_ID: TLargeintField;
    ibdsDesksSTORE_ID: TLargeintField;
    ibdsDesksNAME: TIBStringField;
    ibdsDesksBLACK: TIntegerField;
    ibdsDesksVALID: TIntegerField;
    ibdsDesksCOMMENTS: TIBStringField;
    Panel9: TPanel;
    wwDBGrid4: TwwDBGrid;
    Label28: TLabel;
    wwDBEdit17: TwwDBEdit;
    wwDBLookupCombo8: TwwDBLookupCombo;
    ibdsStores: TIBDataSet;
    ibdsStoresID: TLargeintField;
    ibdsStoresNAME: TIBStringField;
    ibdsDesksSECURITY_LEVEL: TIntegerField;
    ibdsDesksSTORE_NAME: TIBStringField;
    tsStoreGroups: TTabSheet;
    dbtvStoreGroups: TdxDBTreeView;
    Panel11: TPanel;
    sbCancelStoreGroups: TSpeedButton;
    sbApplyStoreGroups: TSpeedButton;
    sbDeleteStoreGroups: TSpeedButton;
    sbAddStoreGroups: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    pnlComments: TRzSizePanel;
    Label39: TLabel;
    dbmComments: TcxDBMemo;
    Label29: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    ibdsStoreGroups: TIBDataSet;
    dsStoreGroups: TDataSource;
    ibdsStoreGroupsNAME: TIBStringField;
    ibdsStoreGroupsCOMMENTS: TIBStringField;
    ibdsStoreGroupsID: TIntegerField;
    ibdsStoreGroupsPARENT_ID: TIntegerField;
    sbCloneStoreGroups: TSpeedButton;
    DBLookUpTreeView1: TdxDBLookupTreeView;
    Label30: TLabel;
    ibdsMainStoresSTORE_GROUP_ID: TIntegerField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure sbExitClick(Sender: TObject);
    procedure sbDetailOrgClick(Sender: TObject);
    procedure ibdsMainOrgAfterScroll(DataSet: TDataSet);
    procedure sbFirstOrgClick(Sender: TObject);
    procedure sbPriorOrgClick(Sender: TObject);
    procedure sbNextOrgClick(Sender: TObject);
    procedure sbLastOrgClick(Sender: TObject);
    procedure sbAddOrgClick(Sender: TObject);
    procedure sbDeleteOrgClick(Sender: TObject);
    procedure sbCancelOrgClick(Sender: TObject);
    procedure sbApplyOrgClick(Sender: TObject);
    procedure dsMainOrgStateChange(Sender: TObject);
    procedure ibdsMainOrgNewRecord(DataSet: TDataSet);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1CreateHintWindow(Sender: TObject;
      HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
      var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
      var DoDefault: Boolean);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure ibdsMainOrgUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainAccountsAfterScroll(DataSet: TDataSet);
    procedure sbFirstAcntsClick(Sender: TObject);
    procedure sbPriorAcntsClick(Sender: TObject);
    procedure sbNextAcntsClick(Sender: TObject);
    procedure sbLastAcntsClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure sbDeleteAcntsClick(Sender: TObject);
    procedure sbCancelAcntsClick(Sender: TObject);
    procedure sbApplyAcntsClick(Sender: TObject);
    procedure dsMainAccountsStateChange(Sender: TObject);
    procedure ibdsMainAccountsNewRecord(DataSet: TDataSet);
    procedure ibdsMainAccountsUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBLookupCombo3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo5CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainStoresAfterScroll(DataSet: TDataSet);
    procedure sbFirstStoresClick(Sender: TObject);
    procedure sbPriorStoresClick(Sender: TObject);
    procedure sbNextStoresClick(Sender: TObject);
    procedure sbLastStoresClick(Sender: TObject);
    procedure sbAddStoresClick(Sender: TObject);
    procedure sbDeleteStoresClick(Sender: TObject);
    procedure sbCancelStoresClick(Sender: TObject);
    procedure sbApplyStoresClick(Sender: TObject);
    procedure dsMainStoresStateChange(Sender: TObject);
    procedure ibdsMainStoresNewRecord(DataSet: TDataSet);
    procedure ibdsMainStoresUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBLookupCombo6CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsDesksAfterScroll(DataSet: TDataSet);
    procedure sbFirstDesksClick(Sender: TObject);
    procedure sbPriorDesksClick(Sender: TObject);
    procedure sbNextDesksClick(Sender: TObject);
    procedure sbLastDesksClick(Sender: TObject);
    procedure sbAddDesksClick(Sender: TObject);
    procedure sbDeleteDesksClick(Sender: TObject);
    procedure sbApplyDesksClick(Sender: TObject);
    procedure sbCancelDesksClick(Sender: TObject);
    procedure dsDesksStateChange(Sender: TObject);
    procedure ibdsDesksNewRecord(DataSet: TDataSet);
    procedure ibdsDesksUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBLookupCombo8CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure SpeedButton9Click(Sender: TObject);
    procedure sbAddStoreGroupsClick(Sender: TObject);
    procedure sbCloneStoreGroupsClick(Sender: TObject);
    procedure sbDeleteStoreGroupsClick(Sender: TObject);
    procedure sbApplyStoreGroupsClick(Sender: TObject);
    procedure dsStoreGroupsStateChange(Sender: TObject);
    procedure ibdsStoreGroupsNewRecord(DataSet: TDataSet);
    procedure ibdsStoreGroupsAfterDelete(DataSet: TDataSet);
    procedure dbtvStoreGroupsDragDropTreeNode(Destination,
      Source: TTreeNode; var Accept: Boolean);
    procedure sbCancelStoreGroupsClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
    function GetWhereOrg: String;
    function GetWhereAcnts: String;
    function GetWhereStores: String;
    procedure GenerateSelectMainOrg;
    procedure GenerateSelectMainAccounts;
    procedure GenerateSelectMainStores;
    procedure GenerateSelectDesks;
    procedure StteChange(Suf: String; Enabled: Boolean);
  public
    { Public declarations }
  end;

var
  frmOrganizations: TfrmOrganizations;

implementation

uses Misk, DM;

{$R *.DFM}

var
  OrderByOrg  : String = ' 2 asc';
  WhereSqlOrg : String = 'where (E.ID>0)';

  OrderByAcnts  : String = ' 5 asc';
  WhereSqlAcnts : String = 'where (A.ENTERPRISE_ID=:ID)';

  OrderByStores  : String = ' 4 asc';
  WhereSqlStores : String = 'where (S.ENTERPRISE_ID=:ID)';

  OrderByDesks  : String = ' 3 asc, 4 asc';

procedure TfrmOrganizations.FormCreate(Sender: TObject);
var ki : Integer;
begin
 FName := 'Организации';
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
 PageControl1.ActivePageIndex := 0;
 If NOT (Black) then
  Begin
   ibdsMainOrg.Database := frmDM.dbWhite;
   ibdsMainAccounts.Database := frmDM.dbWhite;
   ibdsMainStores.Database := frmDM.dbWhite;
   ibdsPersons.Database := frmDM.dbWhite;
   ibdsBanks.Database := frmDM.dbWhite;
   ibdsCurrency.Database := frmDM.dbWhite;
   ibdsDesks.Database := frmDM.dbWhite;
   ibdsStores.Database := frmDM.dbWhite
  End;
 trMain.StartTransaction;
 GenerateSelectMainOrg;
 GenerateSelectMainAccounts;
 GenerateSelectMainStores;
 GenerateSelectDesks;
 ibdsMainOrg.Open;
 ibdsPersons.Open;
 ibdsMainAccounts.Open;
 ibdsBanks.Open;
 ibdsCurrency.Open;
 ibdsMainStores.Open;
 ibdsStores.Open;
 ibdsStoreGroups.Open;
 ibdsDesks.Open
end;

procedure TfrmOrganizations.sbExitClick(Sender: TObject);
begin
 Close;
 frmOrganizations := nil
end;

procedure TfrmOrganizations.sbDetailOrgClick(Sender: TObject);
 var pnl : TPanel;  
begin
 Case (Sender as TSpeedButton).Tag of
  1 : pnl := pnlDetailOrg;
  2 : pnl := pnlDetailAccounts;
  3 : pnl := pnlDetailStores
 end;
 If (Sender as TSpeedButton).Down then
  pnl.Show
 else
  pnl.Hide
end;

procedure TfrmOrganizations.ibdsMainOrgAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmOrganizations,'Org')
end;

procedure TfrmOrganizations.sbFirstOrgClick(Sender: TObject);
begin
 ibdsMainOrg.First
end;

procedure TfrmOrganizations.sbPriorOrgClick(Sender: TObject);
begin
 ibdsMainOrg.Prior
end;

procedure TfrmOrganizations.sbNextOrgClick(Sender: TObject);
begin
 ibdsMainOrg.Next
end;

procedure TfrmOrganizations.sbLastOrgClick(Sender: TObject);
begin
 ibdsMainOrg.Last
end;

procedure TfrmOrganizations.sbAddOrgClick(Sender: TObject);
begin
 If NOT (pnlDetailOrg.Visible) then
  Begin
   sbDetailOrg.Down := True;
   sbDetailOrg.Click
  End;
 wwDBEdit1.SetFocus;
 ibdsMainOrg.Append
end;

procedure TfrmOrganizations.sbDeleteOrgClick(Sender: TObject);
begin
 ibdsMainOrg.Delete;
 StteChange('Org', True)
end;

procedure TfrmOrganizations.sbCancelOrgClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainOrg.Bookmark;
 ibdsMainOrg.CancelUpdates;
 StteChange('Org', False);
 try
  ibdsMainOrg.Bookmark := BookMark
 except
 end 
end;

procedure TfrmOrganizations.sbApplyOrgClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainOrg.Bookmark;
 try
  ibdsMainOrg.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Org', False);
  ibdsMainOrg.Close;
  ibdsMainOrg.Open
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainOrg.Bookmark := BookMark
 except
 end 
end;

procedure TfrmOrganizations.dsMainOrgStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange('Org', True)
 else
  StteChange('Org', ibdsMainOrg.UpdatesPending)
end;

procedure TfrmOrganizations.ibdsMainOrgNewRecord(DataSet: TDataSet);
begin
 If NOT (pnlDetailOrg.Visible) then
  Begin
   sbDetailOrg.Down := True;
   sbDetailOrg.Click
  End;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_ENTERPRISES,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainOrgID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainOrgValid.Value := 1;
 ibdsMainOrgTake_NDS.Value := 1
end;

procedure TfrmOrganizations.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If (not Highlight) and ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('Valid').AsInteger=0) then
  ABrush.Color := clSilver
end;

procedure TfrmOrganizations.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByOrg);
  2: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByAcnts);
  3: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByStores);
  4: wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByDesks)
 end
end;

procedure TfrmOrganizations.wwDBGrid1CreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height;
end;

procedure TfrmOrganizations.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 Case (Sender as TComponent).Tag of
  1: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByOrg, (GetKeyState(VK_CONTROL)<0),
                              sbApplyOrg, sbCancelOrg, GenerateSelectMainOrg);
  2: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByAcnts, (GetKeyState(VK_CONTROL)<0),
                              sbApplyAcnts, sbCancelAcnts, GenerateSelectMainAccounts);
  3: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByStores, (GetKeyState(VK_CONTROL)<0),
                              sbApplyStores, sbCancelStores, GenerateSelectMainStores);
  4: wwDBGridTitleButtonClick(Sender, AFieldName, OrderByDesks, (GetKeyState(VK_CONTROL)<0),
                              sbApplyDesks, sbCancelDesks, GenerateSelectDesks)
 end
end;

function TfrmOrganizations.GetWhereOrg: String;
begin
 Result := 'where (E.ID>0)';
end;

function TfrmOrganizations.GetWhereAcnts: String;
begin
 Result := 'where (A.ENTERPRISE_ID=:ID)'
end;

function TfrmOrganizations.GetWhereStores: String;
begin
 Result := 'where (S.ENTERPRISE_ID=:ID)';
end;

procedure TfrmOrganizations.ibdsMainOrgUpdateRecord(DataSet: TDataSet;
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
       ibsWhite.SQL.AddStrings(ibdsMainOrg.ModifySQL)
      else
       ibsWhite.SQL.AddStrings(ibdsMainOrg.InsertSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('Name').Value := ibdsMainOrgNAME.AsVariant;
      If (ibdsMainOrgID_BOSS.IsNull) then
       ibsWhite.ParamByName('ID_BOSS').Value := null
      else
       ibsWhite.ParamByName('ID_BOSS').AsInt64 := ibdsMainOrgID_BOSS.Value;
      If (ibdsMainOrgID_CHIEF_ACCOUNTANT.IsNull) then
       ibsWhite.ParamByName('ID_CHIEF_ACCOUNTANT').Value := null
      else
       ibsWhite.ParamByName('ID_CHIEF_ACCOUNTANT').AsInt64 := ibdsMainOrgID_CHIEF_ACCOUNTANT.Value;
      ibsWhite.ParamByName('ADDRESS').Value := ibdsMainOrgADDRESS.AsVariant;
      ibsWhite.ParamByName('UR_ADDRESS').Value := ibdsMainOrgUR_ADDRESS.AsVariant;
      ibsWhite.ParamByName('PHONE').Value := ibdsMainOrgPHONE.AsVariant;
      ibsWhite.ParamByName('INN').Value := ibdsMainOrgINN.AsVariant;
      ibsWhite.ParamByName('KPP').Value := ibdsMainOrgKPP.AsVariant;
      ibsWhite.ParamByName('OKPO').Value := ibdsMainOrgOKPO.AsVariant;
      ibsWhite.ParamByName('OKONX').Value := ibdsMainOrgOKONX.AsVariant;
      ibsWhite.ParamByName('TAKE_NDS').Value := ibdsMainOrgTAKE_NDS.AsVariant;
      ibsWhite.ParamByName('VALID').Value := ibdsMainOrgVALID.AsVariant;
      ibsWhite.ParamByName('COMMENTS').Value := ibdsMainOrgCOMMENTS.AsVariant;
      If (ibdsMainOrgDEFAULT_ID_ACCOUNT.IsNull) then
       ibsWhite.ParamByName('DEFAULT_ID_ACCOUNT').Value := null
      else
       ibsWhite.ParamByName('DEFAULT_ID_ACCOUNT').AsInt64 := ibdsMainOrgDEFAULT_ID_ACCOUNT.Value;
      If (UpdateKind=ukInsert) then
       ibsWhite.ParamByName('ID').AsInt64 := ibdsMainOrgID.Value
      else
       ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainOrgID.Value;
      ibsWhite.ExecQuery;
     End;
    ukDelete:
     Begin
      ibsWhite.SQL.AddStrings(ibdsMainOrg.DeleteSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainOrgID.AsLargeInt;
      ibsWhite.ExecQuery
     End
   End
  End
end;

procedure TfrmOrganizations.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainOrgID_BOSS.Value := ibdsPersonsID.Value
end;

procedure TfrmOrganizations.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainOrgID_CHIEF_ACCOUNTANT.Value := ibdsPersonsID.Value
end;

procedure TfrmOrganizations.GenerateSelectMainOrg;
begin
 WhereSqlOrg := GetWhereOrg;
 ibdsMainOrg.SelectSQL.Clear;
 ibdsMainOrg.SelectSQL.Add('select E.ID, E.NAME, E.ID_BOSS, P.Surname||'' ''||P.Name||'' ''||P.SECOND_NAME BOSS_NAME,');
 ibdsMainOrg.SelectSQL.Add('ID_CHIEF_ACCOUNTANT, PP.Surname||'' ''||PP.Name||'' ''||PP.SECOND_NAME Chief_Accountant_Name, E.ADDRESS, E.UR_ADDRESS, E.PHONE, E.INN, E.KPP, E.OKPO, E.OKONX, E.TAKE_NDS,');
 ibdsMainOrg.SelectSQL.Add('E.VALID, E.COMMENTS, E.DEFAULT_ID_ACCOUNT');
 ibdsMainOrg.SelectSQL.Add('from (ENTERPRISES E LEFT OUTER JOIN PERSONS P ON (P.ID=E.ID_BOSS)) LEFT OUTER JOIN PERSONS PP ON (PP.ID=E.ID_CHIEF_ACCOUNTANT) ');
 ibdsMainOrg.SelectSQL.Add(WhereSqlOrg);
 ibdsMainOrg.SelectSQL.Add(' order by'+OrderByOrg)
end;

procedure TfrmOrganizations.GenerateSelectMainAccounts;
begin
 WhereSqlAcnts := GetWhereAcnts;
 ibdsMainAccounts.SelectSQL.Clear;
 ibdsMainAccounts.SelectSQL.Add('select A.ID, A.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME, A.BANK_ID, B.NAME BANK_NAME,');
 ibdsMainAccounts.SelectSQL.Add('A.CURRENCY_ID, C.NAME CURRENCY_NAME, A.ACCOUNT, A.START_DATE, A.CURRENT_VALUE,');
 ibdsMainAccounts.SelectSQL.Add('A.VALID, A.COMMENTS');
 ibdsMainAccounts.SelectSQL.Add('from ((ENTERPRISES_ACCOUNTS A LEFT OUTER JOIN ENTERPRISES E ON (E.ID=A.ENTERPRISE_ID))');
 ibdsMainAccounts.SelectSQL.Add('LEFT OUTER JOIN BANKS B ON (B.ID=A.BANK_ID))');
 ibdsMainAccounts.SelectSQL.Add('LEFT OUTER JOIN CURRENCY C ON (C.ID=A.CURRENCY_ID)');
 ibdsMainAccounts.SelectSQL.Add(WhereSqlAcnts);
 ibdsMainAccounts.SelectSQL.Add('order by'+OrderByAcnts)
end;

procedure TfrmOrganizations.GenerateSelectMainStores;
begin
 WhereSqlStores := GetWhereStores;
 ibdsMainStores.SelectSQL.Clear;
 ibdsMainStores.SelectSQL.Add('select S.ID, S.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME, S.NAME, S.STORE_ADDRESS, S.STORE_GROUP_ID,');
 ibdsMainStores.SelectSQL.Add('S.STORE_PHONE, S.KEEPER_ID, P.Surname||'' ''||P.Name||'' ''||P.SECOND_NAME Keeper_Name, S.IN_LEAVINGS, S.VALID, S.COMMENTS');
 ibdsMainStores.SelectSQL.Add('from (STORES S LEFT OUTER JOIN ENTERPRISES E ON (E.ID=S.ENTERPRISE_ID))');
 ibdsMainStores.SelectSQL.Add('LEFT OUTER JOIN PERSONS P ON (P.ID=S.KEEPER_ID)');
 ibdsMainStores.SelectSQL.Add(WhereSqlStores);
 ibdsMainStores.SelectSQL.Add('order by'+OrderByStores)
end;

procedure TfrmOrganizations.ibdsMainAccountsAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmOrganizations,'Acnts')
end;

procedure TfrmOrganizations.sbFirstAcntsClick(Sender: TObject);
begin
 ibdsMainAccounts.First
end;

procedure TfrmOrganizations.sbPriorAcntsClick(Sender: TObject);
begin
 ibdsMainAccounts.Prior
end;

procedure TfrmOrganizations.sbNextAcntsClick(Sender: TObject);
begin
 ibdsMainAccounts.Next
end;

procedure TfrmOrganizations.sbLastAcntsClick(Sender: TObject);
begin
 ibdsMainAccounts.Last
end;

procedure TfrmOrganizations.SpeedButton14Click(Sender: TObject);
begin
 If NOT (pnlDetailAccounts.Visible) then
  Begin
   sbDetailsAccounts.Down := True;
   sbDetailsAccounts.Click
  End;
 wwDBLookupCombo3.SetFocus;
 ibdsMainAccounts.Append
end;

procedure TfrmOrganizations.sbDeleteAcntsClick(Sender: TObject);
begin
 ibdsMainAccounts.Delete;
 StteChange('Acnts', True)
end;

procedure TfrmOrganizations.sbCancelAcntsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainAccounts.BookMark;
 ibdsMainAccounts.CancelUpdates;
 StteChange('Acnts', False);
 try
  ibdsMainAccounts.BookMark := BookMark
 except
 end
end;

procedure TfrmOrganizations.sbApplyAcntsClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainAccounts.BookMark;
 try
  ibdsMainAccounts.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Acnts', False);
  ibdsMainAccounts.Close;
  ibdsMainAccounts.Open
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainAccounts.BookMark := BookMark
 except
 end
end;

procedure TfrmOrganizations.dsMainAccountsStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange('Acnts', True)
 else
  StteChange('Acnts', ibdsMainAccounts.UpdatesPending)
end;

procedure TfrmOrganizations.ibdsMainAccountsNewRecord(DataSet: TDataSet);
begin
 If NOT (pnlDetailAccounts.Visible) then
  Begin
   sbDetailsAccounts.Down := True;
   sbDetailsAccounts.Click
  End;
 ibdsMainAccountsENTERPRISE_ID.Value := ibdsMainOrgID.Value;
 ibdsMainAccountsCURRENT_VALUE.Value := 0;
 ibdsMainAccountsValid.Value := 1;
 ibdsMainAccountsSTART_DATE.Value := Date;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_ENTERPRISES_ACCOUNTS,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainAccountsID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
end;

procedure TfrmOrganizations.ibdsMainAccountsUpdateRecord(DataSet: TDataSet;
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
       ibsWhite.SQL.AddStrings(ibdsMainAccounts.ModifySQL)
      else
       ibsWhite.SQL.AddStrings(ibdsMainAccounts.InsertSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('BANK_ID').Value := ibdsMainAccountsBANK_ID.AsVariant;
      ibsWhite.ParamByName('CURRENCY_ID').AsInt64 := ibdsMainAccountsCURRENCY_ID.Value;
      ibsWhite.ParamByName('ACCOUNT').Value := ibdsMainAccountsACCOUNT.AsVariant;
      ibsWhite.ParamByName('START_DATE').Value := ibdsMainAccountsSTART_DATE.AsVariant;
      ibsWhite.ParamByName('CURRENT_VALUE').Value := ibdsMainAccountsCURRENT_VALUE.AsVariant;
      ibsWhite.ParamByName('VALID').Value := ibdsMainAccountsVALID.AsVariant;
      ibsWhite.ParamByName('COMMENTS').Value := ibdsMainAccountsCOMMENTS.AsVariant;
      If (UpdateKind=ukInsert) then
       Begin
        ibsWhite.ParamByName('ID').AsInt64 := ibdsMainAccountsID.Value;
        ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainAccountsENTERPRISE_ID.Value
       End
      else
       ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainAccountsID.Value;
      ibsWhite.ExecQuery
     End;
    ukDelete:
     Begin
      ibsWhite.SQL.AddStrings(ibdsMainAccounts.DeleteSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainAccountsID.AsLargeInt;
      ibsWhite.ExecQuery
     End
   End
  End
end;

procedure TfrmOrganizations.wwDBLookupCombo3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainAccountsBANK_ID.Value := LookupTable.FieldByName('ID').AsInteger
end;

procedure TfrmOrganizations.wwDBLookupCombo4CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainAccountsCURRENCY_ID.Value := ibdsCurrencyID.Value
end;

procedure TfrmOrganizations.wwDBLookupCombo5CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainStoresKEEPER_ID.Value := ibdsPersonsID.Value
end;

procedure TfrmOrganizations.ibdsMainStoresAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmOrganizations,'Stores')
end;

procedure TfrmOrganizations.sbFirstStoresClick(Sender: TObject);
begin
 ibdsMainStores.First
end;

procedure TfrmOrganizations.sbPriorStoresClick(Sender: TObject);
begin
 ibdsMainStores.Prior
end;

procedure TfrmOrganizations.sbNextStoresClick(Sender: TObject);
begin
 ibdsMainStores.Next
end;

procedure TfrmOrganizations.sbLastStoresClick(Sender: TObject);
begin
 ibdsMainStores.Last
end;

procedure TfrmOrganizations.sbAddStoresClick(Sender: TObject);
begin
 If NOT (pnlDetailStores.Visible) then
  Begin
   sbDetailStores.Down := True;
   sbDetailStores.Click
  End;
 wwDBEdit14.SetFocus;
 ibdsMainStores.Append
end;

procedure TfrmOrganizations.sbDeleteStoresClick(Sender: TObject);
begin
 ibdsMainStores.Delete;
 StteChange('Stores', True)
end;

procedure TfrmOrganizations.sbCancelStoresClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainStores.BookMark;
 ibdsMainStores.CancelUpdates;
 StteChange('Stores', False);
 try
  ibdsMainStores.BookMark := BookMark
 except
 end
end;

procedure TfrmOrganizations.sbApplyStoresClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainStores.BookMark;
 try
  ibdsMainStores.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Stores', False);
  ibdsMainStores.Close;
  ibdsMainStores.Open
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainStores.BookMark := BookMark
 except
 end
end;

procedure TfrmOrganizations.dsMainStoresStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange('Stores', True)
 else
  StteChange('Stores', ibdsMainStores.UpdatesPending)
end;

procedure TfrmOrganizations.ibdsMainStoresNewRecord(DataSet: TDataSet);
begin
 If NOT (pnlDetailStores.Visible) then
  Begin
   sbDetailStores.Down := True;
   sbDetailStores.Click
  End;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_STORES,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainStoresID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainStoresENTERPRISE_ID.Value := ibdsMainOrgID.Value;
 ibdsMainStoresENTERPRISE_NAME.Value := ibdsMainOrgNAME.Value;
 ibdsMainStoresVALID.Value := 1;
 ibdsMainStoresIN_LEAVINGS.Value := 0
end;

procedure TfrmOrganizations.ibdsMainStoresUpdateRecord(DataSet: TDataSet;
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
       Begin
        ibsWhite.SQL.AddStrings(ibdsMainStores.ModifySQL);
        ibsWhite.SQL[8] := ''
       End
      else
       Begin
        ibsWhite.SQL.AddStrings(ibdsMainStores.InsertSQL);
        ibsWhite.SQL[2] := '';
        ibsWhite.SQL[6] := ''
       End;
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainStoresENTERPRISE_ID.Value;
      ibsWhite.ParamByName('NAME').Value := ibdsMainStoresNAME.AsVariant;
      ibsWhite.ParamByName('STORE_ADDRESS').Value := ibdsMainStoresSTORE_ADDRESS.AsVariant;
      ibsWhite.ParamByName('STORE_PHONE').Value := ibdsMainStoresSTORE_PHONE.AsVariant;
      If (ibdsMainStoresKEEPER_ID.IsNull) then
       ibsWhite.ParamByName('KEEPER_ID').Value := null
      else
       ibsWhite.ParamByName('KEEPER_ID').AsInt64 := ibdsMainStoresKEEPER_ID.Value;
      ibsWhite.ParamByName('IN_LEAVINGS').Value := ibdsMainStoresIN_LEAVINGS.AsVariant;
      ibsWhite.ParamByName('VALID').Value := ibdsMainStoresVALID.AsVariant;
      ibsWhite.ParamByName('COMMENTS').Value := ibdsMainStoresCOMMENTS.AsVariant;
      If (UpdateKind=ukInsert) then
       ibsWhite.ParamByName('ID').AsInt64 := ibdsMainStoresID.AsLargeInt
      else
       ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainStoresID.AsLargeInt;
      ibsWhite.ExecQuery
     End;
    ukDelete:
     Begin
      ibsWhite.SQL.AddStrings(ibdsMainAccounts.DeleteSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainStoresID.AsLargeInt;
      ibsWhite.ExecQuery
     End
   End
  End
end;

procedure TfrmOrganizations.wwDBLookupCombo6CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainStoresENTERPRISE_ID.Value := ibdsMainOrgID.Value
end;

procedure TfrmOrganizations.StteChange(Suf: String; Enabled: Boolean);
 var k : Integer;
begin
 If (frmOrganizations<>nil) then
  For k := 0 to Pred(frmOrganizations.ComponentCount) do
   Begin
    If (frmOrganizations.Components[k].Name='sbApply'+Suf) or
       (frmOrganizations.Components[k].Name='sbCancel'+Suf) then
     (frmOrganizations.Components[k] as TControl).Enabled := Enabled;
    If (frmOrganizations.Components[k] is TTabSheet) and
       (frmOrganizations.Components[k].Name<>'ts'+Suf) then
     (frmOrganizations.Components[k] as TTabSheet).TabVisible := NOT Enabled
   End
end;

procedure TfrmOrganizations.ibdsDesksAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmOrganizations,'Desks')
end;

procedure TfrmOrganizations.sbFirstDesksClick(Sender: TObject);
begin
 ibdsDesks.First
end;

procedure TfrmOrganizations.sbPriorDesksClick(Sender: TObject);
begin
 ibdsDesks.Prior
end;

procedure TfrmOrganizations.sbNextDesksClick(Sender: TObject);
begin
 ibdsDesks.Next
end;

procedure TfrmOrganizations.sbLastDesksClick(Sender: TObject);
begin
 ibdsDesks.Last
end;

procedure TfrmOrganizations.sbAddDesksClick(Sender: TObject);
begin
 ibdsDesks.Append;
end;

procedure TfrmOrganizations.sbDeleteDesksClick(Sender: TObject);
begin
 ibdsDesks.Delete;
 StteChange('Desks', True)
end;

procedure TfrmOrganizations.sbApplyDesksClick(Sender: TObject);
begin
 try
  ibdsDesks.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('Desks', False);
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
end;

procedure TfrmOrganizations.sbCancelDesksClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsDesks.BookMark;
 ibdsDesks.CancelUpdates;
 StteChange('Desks', False);
 try
  ibdsDesks.BookMark := BookMark
 except
 end
end;

procedure TfrmOrganizations.dsDesksStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange('Desks', True)
 else
  StteChange('Desks', ibdsMainOrg.UpdatesPending)
end;

procedure TfrmOrganizations.ibdsDesksNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_ENTERPRISE_CASH_DESKS,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsDesksID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsDesksValid.Value := 1;
 ibdsDesksENTERPRISE_ID.Value := ibdsMainOrgID.AsLargeInt;
 ibdsDesksSTORE_ID.Value := ibdsMainStoresID.AsLargeInt;
 ibdsDesksSECURITY_LEVEL.Value := 1;
 If (Black) then
  ibdsDesksBLACK.Value := 0
end;

procedure TfrmOrganizations.ibdsDesksUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
 var BlackOld, BlackNew : Integer;
begin
 If (Black) then
  Begin
   BlackOld := ibdsDesksBLACK.OldValue;
   BlackNew := ibdsDesksBLACK.NewValue;
   ibsWhite.SQL.Clear;
   If (BLACKOld=0) or (BLACKNew=0) then
    Begin
     If (UpdateKind=ukInsert) or
        ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
      Begin
       ibsWhite.SQL.AddStrings(ibdsDesks.InsertSQL);
       ibsWhite.SQL[2] := '';
       ibsWhite.SQL[6] := ''
      End
     else
      If (UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=0) then
       Begin
        ibsWhite.SQL.AddStrings(ibdsDesks.ModifySQL);
        ibsWhite.SQL[5] := ''
       End
      else
       If (UpdateKind=ukDelete) or ((UpdateKind=ukModify) and (BLACKOld=0) and (BLACKNew=1)) then
        ibsWhite.SQL.AddStrings(ibdsDesks.DeleteSQL);
     ibsWhite.GenerateParamNames := True;
     If (UpdateKind=ukInsert) or
        ((UpdateKind=ukModify) and (BLACKNew=0)) then
      Begin
       ibsWhite.ParamByName('Name').Value := ibdsDesksNAME.AsVariant;
       If (UpdateKind=ukInsert) or
          ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
        If (ibdsDesksENTERPRISE_ID.IsNull) then
         ibsWhite.ParamByName('ENTERPRISE_ID').Value := null
        else
         ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsDesksENTERPRISE_ID.Value;
       If (ibdsDesksSTORE_ID.IsNull) then
        ibsWhite.ParamByName('STORE_ID').Value := null
       else
        ibsWhite.ParamByName('STORE_ID').AsInt64 := ibdsDesksSTORE_ID.Value;
       ibsWhite.ParamByName('SECURITY_LEVEL').Value := ibdsDesksSECURITY_LEVEL.AsVariant;
       ibsWhite.ParamByName('VALID').Value := ibdsDesksVALID.AsVariant;
       ibsWhite.ParamByName('COMMENTS').Value := ibdsDesksCOMMENTS.AsVariant;
      End;
     If (UpdateKind=ukInsert) or
        ((UpdateKind=ukModify) and (BLACKOld=1) and (BLACKNew=0)) then
      ibsWhite.ParamByName('ID').AsInt64 := ibdsDesksID.Value
     else
      ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsDesksID.Value;
     ibsWhite.ExecQuery;
    End;
  End;
 UpdateAction := uaApply
end;

procedure TfrmOrganizations.GenerateSelectDesks;
begin
 If NOT (Black) then
  Begin
   ibdsDesks.SelectSQL[2] := '';
   ibdsDesks.ModifySQL[5] := '';
   ibdsDesks.InsertSQL[2] := '';
   ibdsDesks.InsertSQL[6] := '';
   ibdsDesks.RefreshSQL[2] := ''
  End;
 ibdsDesks.SelectSQL[6] := 'order by'+OrderByDesks
end;

procedure TfrmOrganizations.wwDBLookupCombo8CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 ibdsDesksSTORE_ID.Value := ibdsStoresID.AsLargeInt
end;

procedure TfrmOrganizations.SpeedButton9Click(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlComments.RestoreHotSpot
 else
  pnlComments.CloseHotSpot
end;

procedure TfrmOrganizations.sbAddStoreGroupsClick(Sender: TObject);
begin
 dbtvStoreGroups.Items.Add(dbtvStoreGroups.Selected, 'Новая группа')
end;

procedure TfrmOrganizations.sbCloneStoreGroupsClick(Sender: TObject);
begin
 If (dbtvStoreGroups.Selected<>Nil) then
  dbtvStoreGroups.Items.AddChild(dbtvStoreGroups.Selected,'Потомок ' + dbtvStoreGroups.Selected.Text)
end;

procedure TfrmOrganizations.sbDeleteStoreGroupsClick(Sender: TObject);
begin
 If (dbtvStoreGroups.Selected<>Nil) then
  dbtvStoreGroups.Selected.Delete
end;

procedure TfrmOrganizations.sbApplyStoreGroupsClick(Sender: TObject);
begin
 try
  ibdsStoreGroups.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange('StoreGroups', False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end
end;

procedure TfrmOrganizations.dsStoreGroupsStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange('StoreGroups', True)
 else
  StteChange('StoreGroups', ibdsStoreGroups.UpdatesPending)
end;

procedure TfrmOrganizations.ibdsStoreGroupsNewRecord(DataSet: TDataSet);
begin
 ibdsStoreGroupsID.Value := GetNewID(ibsGen_ID,'GEN_STORE_GROUPS_ID')
end;

procedure TfrmOrganizations.ibdsStoreGroupsAfterDelete(DataSet: TDataSet);
begin
 StteChange('StoreGroups', True)
end;

procedure TfrmOrganizations.dbtvStoreGroupsDragDropTreeNode(Destination,
  Source: TTreeNode; var Accept: Boolean);
begin
 Accept := (Destination<>nil)
end;

procedure TfrmOrganizations.sbCancelStoreGroupsClick(Sender: TObject);
begin
 ibdsStoreGroups.Close;
 ibdsStoreGroups.Open;
 StteChange('StoreGroups', False)
end;

procedure TfrmOrganizations.N1Click(Sender: TObject);
begin
 If NOT (ibdsMainStores.State in [dsEdit,dsInsert]) then
  ibdsMainStores.Edit;
 ibdsMainStoresSTORE_GROUP_ID.AsVariant := null
end;

end.
