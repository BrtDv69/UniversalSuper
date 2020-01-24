unit Currency;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, ExtCtrls, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel, wwrcdpnl, Mask,
  wwdblook, DBCtrls, wwdbedit, wwdbdatetimepicker, IBDatabase, Db, IBSQL,
  IBCustomDataSet, ImgList, Wwdbspin, TeeProcs, TeEngine, Chart, DBChart;

type
  TfrmCurrency = class(TfrmLike)
    ibdsMain: TIBDataSet;
    ibsWhite: TIBSQL;
    dsMain: TDataSource;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesNAME: TIBStringField;
    ibdsMainID: TLargeintField;
    ibdsMainENTERPRISE_ID: TLargeintField;
    ibdsMainENTERPRISE_NAME: TIBStringField;
    ibdsMainSTORE_ID: TLargeintField;
    ibdsMainSTORE_NAME: TIBStringField;
    ibdsMainNAME: TIBStringField;
    ibdsMainSYMBOL: TIBStringField;
    ibdsMainDECIMALS_IN: TSmallintField;
    ibdsMainDECIMALS_OUT: TSmallintField;
    ibdsMainNAME1: TIBStringField;
    ibdsMainNAME3: TIBStringField;
    ibdsMainNAME5: TIBStringField;
    ibdsMainNAME001: TIBStringField;
    ibdsMainMAIN: TIntegerField;
    ibdsMainCURRENT_RATE: TFloatField;
    ibdsMainVALID: TIntegerField;
    ibdsMainCOMMENTS: TIBStringField;
    ibdsStores: TIBDataSet;
    IBStringField1: TIBStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBLookupCombo01: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    pnlDetail: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBEdit10: TwwDBEdit;
    DBCheckBox1: TDBCheckBox;
    dbcbBlack: TDBCheckBox;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    Panel4: TPanel;
    sbCancel: TSpeedButton;
    sbApply: TSpeedButton;
    sbDelete: TSpeedButton;
    sbAdd: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrior: TSpeedButton;
    sbFirst: TSpeedButton;
    sbDetail: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DBChart1: TDBChart;
    Label7: TLabel;
    wwDBEdit6: TwwDBEdit;
    ibdsMainCURRENT_RATE_OLD: TFloatField;
    ibdsEnterprisesID: TLargeintField;
    ibdsStoresID: TLargeintField;
    Label24: TLabel;
    wwDBEdit18: TwwDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure sbDetailClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ibdsMainAfterScroll(DataSet: TDataSet);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure ibdsMainNewRecord(DataSet: TDataSet);
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
    procedure ibdsMainUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
    procedure wwDBLookupCombo01CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
    function GetWhere: String;
    procedure GenerateSelectMain;
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
  end;

var
  frmCurrency: TfrmCurrency;

implementation

uses Misk, DM;

{$R *.DFM}

var
  OrderBy  : String = ' 6 asc';
  WhereSql : String = '';

procedure TfrmCurrency.FormCreate(Sender: TObject);
begin
 FName := 'Справочник валют';
 inherited;
 If NOT (Black) then
  Begin
   ibdsMain.Database := frmDM.dbWhite;
   ibdsEnterprises.Database := frmDM.dbWhite;
   ibdsStores.Database := frmDM.dbWhite
  End;
 trMain.StartTransaction;
 GenerateSelectMain;
 ibdsEnterprises.Open;
 ibdsStores.Open;
 ibdsMain.Open
end;

procedure TfrmCurrency.sbDetailClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlDetail.Show
 else
  pnlDetail.Hide
end;

procedure TfrmCurrency.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmCurrency := nil
end;

procedure TfrmCurrency.ibdsMainAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmCurrency,'')
end;

procedure TfrmCurrency.StteChange(Enabled: Boolean);
begin
 sbApply.Enabled := Enabled;
 sbCancel.Enabled := Enabled
end;

function TfrmCurrency.GetWhere: String;
begin
 Result := ''
end;

procedure TfrmCurrency.GenerateSelectMain;
begin
 WhereSql := GetWhere;
 ibdsMain.SelectSQL.Clear;
 ibdsMain.SelectSQL.Add('select C.ID, C.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME, C.STORE_ID,');
 ibdsMain.SelectSQL.Add('S.NAME STORE_NAME, C.NAME, C.SYMBOL, C.DECIMALS_IN, C.DECIMALS_OUT,');
 ibdsMain.SelectSQL.Add('C.NAME1, C.NAME3, C.NAME5, C.NAME001, C.MAIN, C.CURRENT_RATE, C.CURRENT_RATE CURRENT_RATE_OLD,');
 ibdsMain.SelectSQL.Add('C.VALID, C.COMMENTS');
 ibdsMain.SelectSQL.Add('from (CURRENCY C LEFT OUTER JOIN ENTERPRISES E ON');
 ibdsMain.SelectSQL.Add('(E.ID=C.ENTERPRISE_ID)) LEFT OUTER JOIN STORES S ON');
 ibdsMain.SelectSQL.Add('(S.ID=C.STORE_ID)');
 ibdsMain.SelectSQL.Add(WhereSql);
 ibdsMain.SelectSQL.Add('order by'+OrderBy)
end;

procedure TfrmCurrency.sbFirstClick(Sender: TObject);
begin
 ibdsMain.First
end;

procedure TfrmCurrency.sbPriorClick(Sender: TObject);
begin
 ibdsMain.Prior
end;

procedure TfrmCurrency.sbNextClick(Sender: TObject);
begin
 ibdsMain.Next
end;

procedure TfrmCurrency.sbLastClick(Sender: TObject);
begin
 ibdsMain.Last
end;

procedure TfrmCurrency.sbAddClick(Sender: TObject);
begin
 ibdsMain.Append
end;

procedure TfrmCurrency.sbDeleteClick(Sender: TObject);
begin
 ibdsMain.Delete;
 StteChange(True)
end;

procedure TfrmCurrency.sbCancelClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMain.Bookmark;
 ibdsMain.CancelUpdates;
 StteChange(False);
 try
  ibdsMain.Bookmark := BookMark
 except
 end
end;

procedure TfrmCurrency.sbApplyClick(Sender: TObject);
 var BookMark : String;
begin
 BookMark := ibdsMain.Bookmark;
 try
  ibdsMain.ApplyUpdates;
  trMain.CommitRetaining;
  StteChange(False);
 except
  trMain.RollbackRetaining;
  MessageDlg('Ошибка сохранения. Проверьте введенные данные.', mtError, [mbOK],0)
 end;
 try
  ibdsMain.DisableControls;
  ibdsMain.Close;
  ibdsMain.Open;
  ibdsMain.Bookmark := BookMark
 finally
  ibdsMain.EnableControls
 end 
end;

procedure TfrmCurrency.dsMainStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange(True)
 else
  StteChange(ibdsMain.UpdatesPending)
end;

procedure TfrmCurrency.ibdsMainNewRecord(DataSet: TDataSet);
begin
 If NOT (pnlDetail.Visible) then
  Begin
   sbDetail.Down := True;
   sbDetail.Click
  End;
 wwDBLookupCombo2.SetFocus;
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_CURRENCY,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainID.Value := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainENTERPRISE_ID.Value := -1;
 ibdsMainDECIMALS_IN.Value := 2;
 ibdsMainDECIMALS_OUT.Value := 2;
 ibdsMainMAIN.Value := 0;
 ibdsMainValid.Value := 1
end;

procedure TfrmCurrency.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If (not Highlight) and ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('Valid').AsInteger=0) then
  ABrush.Color := clSilver
end;

procedure TfrmCurrency.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderBy)
end;

procedure TfrmCurrency.wwDBGrid1CreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height;
end;

procedure TfrmCurrency.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderBy, (GetKeyState(VK_CONTROL)<0),
                          sbApply, sbCancel, GenerateSelectMain);
end;

procedure TfrmCurrency.ibdsMainUpdateRecord(DataSet: TDataSet;
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
      ibsWhite.ParamByName('ENTERPRISE_ID').AsInt64 := ibdsMainENTERPRISE_ID.Value;
      ibsWhite.ParamByName('STORE_ID').AsInt64 := ibdsMainSTORE_ID.Value;
      ibsWhite.ParamByName('NAME').Value := ibdsMainNAME.AsVariant;
      ibsWhite.ParamByName('SYMBOL').Value := ibdsMainSYMBOL.AsVariant;
      ibsWhite.ParamByName('DECIMALS_IN').Value := ibdsMainDECIMALS_IN.AsVariant;
      ibsWhite.ParamByName('DECIMALS_OUT').Value := ibdsMainDECIMALS_OUT.AsVariant;
      ibsWhite.ParamByName('NAME1').Value := ibdsMainNAME1.AsVariant;
      ibsWhite.ParamByName('NAME3').Value := ibdsMainNAME3.AsVariant;
      ibsWhite.ParamByName('NAME5').Value := ibdsMainNAME5.AsVariant;
      ibsWhite.ParamByName('NAME001').Value := ibdsMainNAME001.AsVariant;
      ibsWhite.ParamByName('MAIN').Value := ibdsMainMAIN.AsVariant;
      ibsWhite.ParamByName('CURRENT_RATE').Value := ibdsMainCURRENT_RATE.AsVariant;
      ibsWhite.ParamByName('VALID').Value := ibdsMainVALID.AsVariant;
      ibsWhite.ParamByName('COMMENTS').Value := ibdsMainCOMMENTS.AsVariant;
      If (UpdateKind=ukInsert) then
        ibsWhite.ParamByName('ID').AsInt64 := ibdsMainID.Value
      else
       ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainID.Value
     End;
    ukDelete:
     Begin
      ibsWhite.SQL.AddStrings(ibdsMain.DeleteSQL);
      ibsWhite.GenerateParamNames := True;
      ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainID.Value
     End
   End;
   try
    ibsWhite.ExecQuery
   except
    MessageDlg('Ошибка при сохранении в белой базе. В белую базу данные не попали!',mtError,[mbOK],0)
   end
  End
end;

procedure TfrmCurrency.wwDBLookupCombo01CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  Begin
   ibdsMainENTERPRISE_ID.Value := ibdsEnterprisesID.Value;
   ibdsStores.Close;
   ibdsStores.SelectSQL.Clear;
   If (ibdsEnterprisesID.Value=-1) then
    ibdsStores.SelectSQL.Add('select ID, NAME from STORES order by 2')
   else
    ibdsStores.SelectSQL.Add('select ID, NAME from STORES where ENTERPRISE_ID='+ibdsEnterprisesID.AsString+' order by 2');
   ibdsStores.Open
  End
end;

procedure TfrmCurrency.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainSTORE_ID.Value := ibdsStoresID.Value
end;

end.
