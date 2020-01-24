unit Peoples;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Like, Buttons, ExtCtrls, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  wwSpeedButton, wwDBNavigator, wwclearpanel, wwrcdpnl, Mask,
  wwdblook, DBCtrls, wwdbedit, wwdbdatetimepicker, IBDatabase, Db, IBSQL,
  IBCustomDataSet, ImgList, wwclearbuttongroup, wwradiogroup;

type
  TfrmPeoples = class(TfrmLike)
    Panel1: TPanel;
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
    Panel2: TPanel;
    pnlDetail: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    DBCheckBox1: TDBCheckBox;
    dbcbBlack: TDBCheckBox;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    Label6: TLabel;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBEdit8: TwwDBEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    ibdsMain: TIBDataSet;
    ibsWhite: TIBSQL;
    dsMain: TDataSource;
    ibdsMainID: TLargeintField;
    ibdsMainKOD: TIntegerField;
    ibdsMainNAME: TIBStringField;
    ibdsMainSURNAME: TIBStringField;
    ibdsMainSECOND_NAME: TIBStringField;
    ibdsMainSEX: TIBStringField;
    ibdsMainBIRTHDAY: TDateField;
    ibdsMainBIRTH_PLACE: TIBStringField;
    ibdsMainPASSPORT_SERIAL: TIBStringField;
    ibdsMainINN: TIBStringField;
    ibdsMainPASSPORT_NUMBER: TIntegerField;
    ibdsMainPASSPORT_KEM_VID: TIBStringField;
    ibdsMainPASSPORT_VID_DATE: TDateField;
    ibdsMainPASSPORT_PROPISKA: TIBStringField;
    ibdsMainPASSPORT_PROPISKA_DATE: TDateField;
    ibdsMainREGISTERED: TIntegerField;
    ibdsMainVALID: TIntegerField;
    ibdsMainCOMMENTS: TIBStringField;
    ibdsEnterprises: TIBDataSet;
    ibdsEnterprisesNAME: TIBStringField;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo01: TwwDBLookupCombo;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    ibdsMainENTERPRISE_NAME: TIBStringField;
    ibdsEnterprisesID: TIntegerField;
    ibdsMainENTERPRISE_ID: TLargeintField;
    wwRadioGroup1: TwwRadioGroup;
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
  private
    { Private declarations }
    function GetWhere: String;
    procedure GenerateSelectMain;
    procedure StteChange(Enabled: Boolean);
  public
    { Public declarations }
  end;

var
  frmPeoples: TfrmPeoples;

implementation

uses Misk, DM;

{$R *.DFM}

var
  OrderBy : String = ' 6 asc';
  WhereSql : String = '';

procedure TfrmPeoples.FormCreate(Sender: TObject);
begin
 FName := 'Сотрудники';
 inherited;
 If NOT (Black) then
  Begin
   ibdsMain.Database := frmDM.dbWhite;
   ibdsEnterprises.Database := frmDM.dbWhite
  End;
 trMain.StartTransaction;
 GenerateSelectMain;
 ibdsEnterprises.Open;
 ibdsMain.Open
end;

procedure TfrmPeoples.sbDetailClick(Sender: TObject);
begin
 If (Sender as TSpeedButton).Down then
  pnlDetail.Show
 else
  pnlDetail.Hide
end;

procedure TfrmPeoples.SpeedButton10Click(Sender: TObject);
begin
 Close;
 frmPeoples := nil
end;

procedure TfrmPeoples.ibdsMainAfterScroll(DataSet: TDataSet);
begin
 ibdsAfterScroll(DataSet,frmPeoples,'')
end;

procedure TfrmPeoples.StteChange(Enabled: Boolean);
begin
 sbApply.Enabled := Enabled;
 sbCancel.Enabled := Enabled
end;

function TfrmPeoples.GetWhere: String;
begin
 Result := ''
end;

procedure TfrmPeoples.GenerateSelectMain;
begin
 WhereSql := GetWhere;
 ibdsMain.SelectSQL.Clear;
 ibdsMain.SelectSQL.Add('select P.ID, P.ENTERPRISE_ID, E.NAME ENTERPRISE_NAME, P.KOD,');
 ibdsMain.SelectSQL.Add('P.NAME, P.SURNAME, P.SECOND_NAME, P.SEX, P.BIRTHDAY,');
 ibdsMain.SelectSQL.Add('P.BIRTH_PLACE, P.PASSPORT_SERIAL, P.INN, P.PASSPORT_NUMBER,');
 ibdsMain.SelectSQL.Add('P.PASSPORT_KEM_VID, P.PASSPORT_VID_DATE, P.PASSPORT_PROPISKA,');
 ibdsMain.SelectSQL.Add('P.PASSPORT_PROPISKA_DATE, P.REGISTERED,');
 ibdsMain.SelectSQL.Add('P.VALID, P.COMMENTS');
 ibdsMain.SelectSQL.Add('from PERSONS P LEFT OUTER JOIN ENTERPRISES E ON (E.ID=P.ENTERPRISE_ID)');
 ibdsMain.SelectSQL.Add(WhereSql);
 ibdsMain.SelectSQL.Add('order by'+OrderBy)
end;

procedure TfrmPeoples.sbFirstClick(Sender: TObject);
begin
 ibdsMain.First
end;

procedure TfrmPeoples.sbPriorClick(Sender: TObject);
begin
 ibdsMain.Prior
end;

procedure TfrmPeoples.sbNextClick(Sender: TObject);
begin
 ibdsMain.Next
end;

procedure TfrmPeoples.sbLastClick(Sender: TObject);
begin
 ibdsMain.Last
end;

procedure TfrmPeoples.sbAddClick(Sender: TObject);
begin
 ibdsMain.Append;
 If NOT (pnlDetail.Visible) then
  Begin
   sbDetail.Down := True;
   pnlDetail.Visible := True
  End
end;

procedure TfrmPeoples.sbDeleteClick(Sender: TObject);
begin
 ibdsMain.Delete;
 StteChange(True)
end;

procedure TfrmPeoples.sbCancelClick(Sender: TObject);
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

procedure TfrmPeoples.sbApplyClick(Sender: TObject);
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
  ibdsMain.Bookmark := BookMark
 except
 end 
end;

procedure TfrmPeoples.dsMainStateChange(Sender: TObject);
begin
 If (Sender as TDataSource).State in [dsEdit,dsInsert] then
  StteChange(True)
 else
  StteChange(ibdsMain.UpdatesPending)
end;

procedure TfrmPeoples.ibdsMainNewRecord(DataSet: TDataSet);
begin
 ibsGen_ID.SQL.Clear;
 ibsGen_ID.SQL.Add('select gen_id(GEN_ID_PERSONS,1) from rdb$database');
 ibsGen_ID.ExecQuery;
 ibdsMainID.AsLargeInt := ibsGen_ID.FieldByName('Gen_ID').AsInt64;
 ibsGen_ID.Close;
 ibdsMainENTERPRISE_ID.Value := -1;
 ibdsMainValid.Value := 1;
 ibdsMainREGISTERED.Value := 0;
 ibdsMainSEX.Value := 'M';
 ibdsMainNAME.Value := ' ';
 ibdsMainSURNAME.Value := ' ';
 ibdsMainSECOND_NAME.Value := ' '
end;

procedure TfrmPeoples.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 If (not Highlight) and ((Sender as TwwDBGrid).DataSource.DataSet.FieldByName('Valid').AsInteger=0) then
  ABrush.Color := clSilver
end;

procedure TfrmPeoples.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
 wwDBGridCalcTitleImage(Sender, Field, TitleImageAttributes, OrderBy)
end;

procedure TfrmPeoples.wwDBGrid1CreateHintWindow(Sender: TObject;
  HintWindow: TwwGridHintWindow; AField: TField; R: TRect;
  var WordWrap: Boolean; var MaxWidth, MaxHeight: Integer;
  var DoDefault: Boolean);
begin
 WordWrap := True;
 if (AField is TBlobField) then
    MaxWidth := 200;
 MaxHeight := Screen.Height;
end;

procedure TfrmPeoples.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 wwDBGridTitleButtonClick(Sender, AFieldName, OrderBy, (GetKeyState(VK_CONTROL)<0),
                          sbApply, sbCancel, GenerateSelectMain)
end;

procedure TfrmPeoples.ibdsMainUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TIBUpdateAction);
begin
 ibdsMain.Edit;
 If (ibdsMainNAME.Value=' ') then
  ibdsMainNAME.Value := '';
 If (ibdsMainSURNAME.Value=' ') then
  ibdsMainSURNAME.Value := '';
 If (ibdsMainSECOND_NAME.Value=' ') then
  ibdsMainSECOND_NAME.Value := '';
// ibdsMain.Post; 
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
      ibsWhite.ParamByName('KOD').Value := ibdsMainKOD.AsVariant;
      ibsWhite.ParamByName('NAME').Value := ibdsMainNAME.AsVariant;
      ibsWhite.ParamByName('SURNAME').Value := ibdsMainSURNAME.AsVariant;
      ibsWhite.ParamByName('SECOND_NAME').Value := ibdsMainSECOND_NAME.AsVariant;
      ibsWhite.ParamByName('SEX').Value := ibdsMainSEX.AsVariant;
      ibsWhite.ParamByName('BIRTHDAY').Value := ibdsMainBIRTHDAY.AsVariant;
      ibsWhite.ParamByName('BIRTH_PLACE').Value := ibdsMainBIRTH_PLACE.AsVariant;
      ibsWhite.ParamByName('PASSPORT_SERIAL').Value := ibdsMainPASSPORT_SERIAL.AsVariant;
      ibsWhite.ParamByName('INN').Value := ibdsMainINN.AsVariant;
      ibsWhite.ParamByName('PASSPORT_NUMBER').Value := ibdsMainPASSPORT_NUMBER.AsVariant;
      ibsWhite.ParamByName('PASSPORT_KEM_VID').Value := ibdsMainPASSPORT_KEM_VID.AsVariant;
      ibsWhite.ParamByName('PASSPORT_VID_DATE').Value := ibdsMainPASSPORT_VID_DATE.AsVariant;
      ibsWhite.ParamByName('PASSPORT_PROPISKA').Value := ibdsMainPASSPORT_PROPISKA.AsVariant;
      ibsWhite.ParamByName('PASSPORT_PROPISKA_DATE').Value := ibdsMainPASSPORT_PROPISKA_DATE.AsVariant;
      ibsWhite.ParamByName('REGISTERED').Value := ibdsMainREGISTERED.AsVariant;
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
      ibsWhite.ParamByName('OLD_ID').AsInt64 := ibdsMainID.AsLargeInt
     End
   End;
   try
    ibsWhite.ExecQuery
   except
    MessageDlg('Ошибка при сохранении в белой базе. В белую базу данные не попали!',mtError,[mbOK],0)
   end
  End;
 UpdateAction := uaApply
end;

procedure TfrmPeoples.wwDBLookupCombo01CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If (modified) then
  ibdsMainENTERPRISE_ID.Value := ibdsEnterprisesID.Value
end;

end.
