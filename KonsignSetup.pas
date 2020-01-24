unit KonsignSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, wwdblook, StdCtrls, Mask, wwdbedit, DBCtrls, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, IBSQL, IBDatabase, Db, IBCustomDataSet,
  ImgList;

type
  TfrmPercentKonsign = class(TfrmLike)
    Panel1: TPanel;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    pnlDetail: TPanel;
    Label16: TLabel;
    wwDBEdit11: TwwDBEdit;
    Panel4: TPanel;
    sbCancelPercent: TSpeedButton;
    sbApplyPercent: TSpeedButton;
    sbDeletePercent: TSpeedButton;
    sbAddPercent: TSpeedButton;
    sbLastPercent: TSpeedButton;
    sbNextPercent: TSpeedButton;
    sbPriorPercent: TSpeedButton;
    sbFirstPercent: TSpeedButton;
    sbDetails: TSpeedButton;
    SpeedButton9: TSpeedButton;
    sbClose: TSpeedButton;
    ibdsMainPercent: TIBDataSet;
    dsMainPercent: TDataSource;
    ibdsMainPercentID: TLargeintField;
    ibdsMainPercentENTERPRISE_ID: TLargeintField;
    ibdsMainPercentENTERPRISE_NAME: TIBStringField;
    ibdsMainPercentSTORE_ID: TLargeintField;
    ibdsMainPercentSTORE_NAME: TIBStringField;
    ibdsMainPercentDAYS: TIntegerField;
    ibdsMainPercentPERCENT: TFloatField;
    ibdsMainPercentCOMMENTS: TIBStringField;
    ibsWhite: TIBSQL;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesID: TLargeintField;
    ibdsEnterprisesNAME: TIBStringField;
    ibdsStores: TIBDataSet;
    dsEnterprises: TDataSource;
    ibdsStoresID: TLargeintField;
    ibdsStoresNAME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure sbDetailsClick(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ibdsMainPercentAfterScroll(DataSet: TDataSet);
    procedure sbFirstPercentClick(Sender: TObject);
    procedure sbPriorPercentClick(Sender: TObject);
    procedure sbNextPercentClick(Sender: TObject);
    procedure sbLastPercentClick(Sender: TObject);
    procedure sbAddPercentClick(Sender: TObject);
    procedure sbDeletePercentClick(Sender: TObject);
    procedure sbCancelPercentClick(Sender: TObject);
    procedure sbApplyPercentClick(Sender: TObject);
    procedure dsMainPercentStateChange(Sender: TObject);
    procedure ibdsMainPercentNewRecord(DataSet: TDataSet);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure ibdsMainPercentUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
  private
    { Private declarations }
    function GetWherePercent: String;
    procedure GenerateSelectMainPercent;
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
  end;

var
  frmPercentKonsign: TfrmPercentKonsign;

implementation

uses DM, Misk;

{$R *.DFM}

var
  OrderByPercent    : String = ' 3 asc, 5 asc, 6 asc';
  WhereSqlPercent   : String = '';

procedure TfrmPercentKonsign.FormCreate(Sender: TObject);
begin
 FName := 'Проценты консигнации';
 inherited;
 If NOT (Black) then
  Begin
   ibdsMainPercent.Database := frmDM.dbWhite;
   ibdsEnterprises.Database := frmDM.dbWhite;
   ibdsStores.Database := frmDM.dbWhite
  End;
 trMain.StartTransaction;
 GenerateSelectMainPercent;
 ibdsMainPercent.Open;
 ibdsEnterprises.Open;
 ibdsStores.Open
end;

procedure TfrmPercentKonsign.sbDetailsClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlDetail.Show
 else
  pnlDetail.Hide
end;

procedure TfrmPercentKonsign.sbCloseClick(Sender: TObject);
begin
 Close;
 frmPercentKonsign := nil
end;

procedure TfrmPercentKonsign.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainPercentENTERPRISE_ID.Value := ibdsEnterprisesID.Value
end;

procedure TfrmPercentKonsign.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainPercentSTORE_ID.Value := ibdsStoresID.Value
end;

procedure TfrmPercentKonsign.ibdsMainPercentAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmPercentKonsign,'Percent')
end;

procedure TfrmPercentKonsign.sbFirstPercentClick(Sender: TObject);
begin
 ibdsMainPercent.First
end;

procedure TfrmPercentKonsign.sbPriorPercentClick(Sender: TObject);
begin
 ibdsMainPercent.Prior
end;

procedure TfrmPercentKonsign.sbNextPercentClick(Sender: TObject);
begin
 ibdsMainPercent.Next
end;

procedure TfrmPercentKonsign.sbLastPercentClick(Sender: TObject);
begin
 ibdsMainPercent.Last
end;

procedure TfrmPercentKonsign.sbAddPercentClick(Sender: TObject);
begin
 ibdsMainPercent.Append
end;

procedure TfrmPercentKonsign.sbDeletePercentClick(Sender: TObject);
begin
 ibdsMainPercent.Delete;
 StteChange(True)
end;

procedure TfrmPercentKonsign.sbCancelPercentClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPercent.Bookmark;
 ibdsMainPercent.CancelUpdates;
 StteChange(False);
 try
  ibdsMainPercent.Bookmark := BookMark
 except
 end
end;

procedure TfrmPercentKonsign.sbApplyPercentClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMainPercent.Bookmark;
 try
  ibdsMainPercent.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False)
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMainPercent.Bookmark := BookMark
 except
 end
end;

procedure TfrmPercentKonsign.dsMainPercentStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange(True)
 else
  StteChange(((Sender as TDataSource).DataSet as TIBDataSet).UpdatesPending)
end;

procedure TfrmPercentKonsign.ibdsMainPercentNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_PERCENT_CONSIGN,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainPercentID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close
end;

procedure TfrmPercentKonsign.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderByPercent)
end;

procedure TfrmPercentKonsign.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := MyUpCase(Key)
end;

procedure TfrmPercentKonsign.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderByPercent, (GetKeyState(VK_CONTROL)<0),
                          sbApplyPercent, sbCancelPercent, GenerateSelectMainPercent)
end;

function TfrmPercentKonsign.GetWherePercent: String;
begin
 Result := ''
end;                      

procedure TfrmPercentKonsign.ibdsMainPercentUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (Black) then
  Begin
   ibsWhite.SQL.Clear;
   Case UpdateKind of
    ukInsert: ibsWhite.SQL.AddStrings(ibdsMainPercent.InsertSQL);
    ukModify: ibsWhite.SQL.AddStrings(ibdsMainPercent.ModifySQL);
    ukDelete: ibsWhite.SQL.AddStrings(ibdsMainPercent.DeleteSQL)
   end;
   ibsWhite.GenerateParamNames := True;
   If (UpdateKind in [ukInsert, ukModify]) then
    Begin
     ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainPercentENTERPRISE_ID.Value;
     ibsWhite.ParamByName('STORE_ID').AsInt64 := ibdsMainPercentSTORE_ID.Value;
     ibsWhite.ParamByName('DAYS').Value := ibdsMainPercentDAYS.AsVariant;
     ibsWhite.ParamByName('PERCENT').Value := ibdsMainPercentPERCENT.AsVariant;
     ibsWhite.ParamByName('COMMENTS').Value := ibdsMainPercentCOMMENTS.AsVariant
    End;
   If (UpdateKind=ukInsert) then
    ibsWhite.ParamByName('ID').AsInt64 := ibdsMainPercentID.Value
   else
    ibsWhite.ParamByName('OLD_ID').AsString := IntToStr(ibdsMainPercentID.OldValue);
   ibsWhite.ExecQuery
  End
end;

procedure TfrmPercentKonsign.GenerateSelectMainPercent;
begin
 WhereSqlPercent := GetWherePercent;
 ibdsMainPercent.SelectSQL.Clear;
 ibdsMainPercent.SelectSQL.Add('select PC.ID, PC.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME, PC.STORE_ID,');
 ibdsMainPercent.SelectSQL.Add('S.NAME STORE_NAME, PC.DAYS, PC.PERCENT, PC.COMMENTS');
 ibdsMainPercent.SelectSQL.Add('from PERCENT_CONSIGN PC, ENTERPRISES E, STORES S');
 ibdsMainPercent.SelectSQL.Add('where (PC.ENTERPRISE_ID=E.ID) and (PC.STORE_ID=S.ID)'+WhereSqlPercent);
 ibdsMainPercent.SelectSQL.Add('order by'+OrderByPercent)
end;

procedure TfrmPercentKonsign.StteChange(Enabled: Boolean);
begin
 If (frmPercentKonsign<>nil) then
  Begin
   sbApplyPercent.Enabled := Enabled;
   sbCancelPercent.Enabled := Enabled
  End 
end;

end.
